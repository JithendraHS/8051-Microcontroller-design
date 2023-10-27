/*******************************************************************************
 * Copyright (C) 2023 by Jithendra H S
 *
 * Redistribution, modification, or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Jithendra H S and the University of Colorado are not liable for
 * any misuse of this material.
 * ****************************************************************************/
/**
 * @file pwm.c
 * @brief Implementation of PWM control and button handling functions.
 * @author Jithendra H S
 * @date Oct 25, 2023
 */

#include "pwm.h"
#include "stm32f4xx.h"
#include "uart.h"

#define PRESCALAR (700)
#define TIM2_PERIOD (1860)
#define RCC_TIM2_ENR  (0b01)
#define TIM2_SR_UIF  (0b01)
#define TIM2_CR1_CE   (0b01)
#define TIM2_DIER_UIE  (0b01)

// Global variables
volatile uint8_t pwmDutyCycle = 60; // Initial duty cycle: 60%
volatile uint8_t uartBuffer[50] = { 0 }; // UART output buffer
volatile uint8_t increment_flag = 1; // Flag to indicate whether
                  //the duty cycle should be incremented or decremented
uint8_t debounce_flag = 0;
uint8_t debouce_average = 0;

/**
 * @brief Initializes PWM configuration for controlling a green LED.
 */
void PWM_Init() {
    // Clock gating to port D
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;

    // Set PD12 pin to alternate mode for PWM (TIM4_CH1)
    GPIOD->MODER |= GPIO_MODER_MODER12_1;
    GPIOD->AFR[1] |= (2 << GPIO_AFRH_AFSEL12_Pos); // Set PD12 with TIM4_CH1

    // Enable TIM4 clock
    RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;

    // Configure Timer 4 for PWM mode 1
    TIM4->PSC = 0; // No prescaler
    TIM4->ARR = 65536 - 1; // PWM period
    TIM4->CCR1 = (pwmDutyCycle * TIM4->ARR) / 100; // Initial duty cycle

    TIM4->CCMR1 |= TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2; // PWM mode 1
    TIM4->CCER |= TIM_CCER_CC1E; // Enable capture/compare channel 1

    TIM4->CR1 |= TIM_CR1_ARPE; // Enable auto-reload preload
    TIM4->EGR |= TIM_EGR_UG; // Update generation
    TIM4->CR1 |= TIM_CR1_CEN; // Enable timer
}

/**
 * @brief Initializes the button functionality.
 */
void Button_Init() {
    // Clock gating to port A
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    // Set PA0 pin to input mode
    GPIOA->MODER &= ~GPIO_MODER_MODER0_0;
}

/**
 * @brief Initializes TIM2 in interrupt mode for switch debouncing.
 *
 * This function configures TIM2 to generate interrupts at a specified frequency.
 * The timer is used for debouncing a switch connected to GPIO pin PA0.
 */
void TIM2_Init()
{
	//Enable clock access
	RCC->APB1ENR |= RCC_TIM2_ENR;

	//Configure the peripheral to have visible period
    TIM2->DIER |= TIM2_DIER_UIE;
    TIM2->PSC = PRESCALAR;
    TIM2->ARR = TIM2_PERIOD;

	//Enable clock
	TIM2->CR1 |= TIM2_CR1_CE;
}

/**
 * @brief Interrupt Service Routine for TIM2.
 *
 * This ISR handles the debounce logic for a switch connected to GPIO pin PA0.
 * It checks the state of the switch and updates the `debounce_average` variable
 * based on the button's state to debounce the switch.
 */
void TIM2_IRQHandler(void) {
	/* clearing update Interrupt flag */
	TIM2->SR &= ~(TIM2_SR_UIF);
	// Check if the button is pressed (logic low)
	if(!((GPIOA->IDR & GPIO_IDR_ID0) == GPIO_IDR_ID0)){
		debouce_average++;
	}else{
		if(debouce_average)debouce_average--;
	}
}
/**
 * @brief Checks the status of the button and modifies the duty cycle accordingly.
 *
 * This function checks the state of the button connected to GPIOA pin 0.
 * If the button is pressed, it waits for debounce and then calls modify_duty_cycle
 * function with a specific increment and trigger ('B' for button) to adjust the duty cycle.
 * Debouncing is ensured by waiting for the button to be released before further actions.
 */
void Check_button_status() {
    // Check if the button is pressed (logic high)
    if ((GPIOA->IDR & GPIO_IDR_ID0) == GPIO_IDR_ID0 && !debounce_flag) {
    	debounce_flag = 1;

    	// Enable interrupts
    	NVIC_EnableIRQ(TIM2_IRQn);
    }
    if(debouce_average > 10){
    	debounce_flag = 0;
    	// Disable interrupts
    	NVIC_DisableIRQ(TIM2_IRQn);
    	debouce_average = 0;
    	// Button released, modify the duty cycle
    	modify_duty_cycle(10, &increment_flag, 'B'); // Modify duty cycle by 10%
    }
}

/**
 * @brief Modifies the duty cycle based on the specified trigger.
 *
 * @param alter_percentage The percentage by which to alter the duty cycle.
 * @param increment Pointer to the increment flag.
 * @param trigger A character indicating whether to increment ('I'),
 *       decrement ('D'), or button action ('B') the duty cycle.
 * @return uint8_t The modified duty cycle value.
 */
uint8_t modify_duty_cycle(uint8_t alter_percentage,
		    volatile uint8_t *increment, char trigger) {
    // Check the trigger character to determine the action
    switch (trigger) {
        case 'B':
            // If button action, modify duty cycle based on increment flag
            if (*increment) {
                pwmDutyCycle += alter_percentage;
            } else {
                pwmDutyCycle -= alter_percentage;
            }
            break;
        case 'I':
            // If 'I', increment duty cycle
            pwmDutyCycle += alter_percentage;
            break;
        case 'D':
            // If 'D', decrement duty cycle
            pwmDutyCycle -= alter_percentage;
            break;
        default:
            break;
    }

    // Handle edge cases (duty cycle boundaries)
    if (pwmDutyCycle <= 0) {
        *increment = 1;
    } else if (pwmDutyCycle >= 100) {
        *increment = 0;
    }

    // Update PWM duty cycle
    TIM4->CCR1 = (pwmDutyCycle * TIM4->ARR) / 100; // Calculate modified duty cycle
    print_string("Duty_cycle modified to :");
    print_decimal(pwmDutyCycle);
    return pwmDutyCycle; // Return the modified duty cycle
}
