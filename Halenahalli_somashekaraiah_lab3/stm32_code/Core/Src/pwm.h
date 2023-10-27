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
 * @file pwm.h
 * @brief Header file for PWM control and button handling functions.
 * @author Jithendra H S
 * @date Oct 25, 2023
 */

#ifndef SRC_PWM_H_
#define SRC_PWM_H_

#include "stdint.h"

// Global variables
extern volatile uint8_t pwmDutyCycle; // Initial duty cycle
extern volatile uint8_t uartBuffer[50]; // UART output buffer
extern volatile uint8_t increment_flag; // Flag to indicate whether the
                        // duty cycle should be incremented or decremented

/**
 * @brief Initializes PWM configuration.
 */
void PWM_Init();

/**
 * @brief Initializes button functionality.
 */
void Button_Init();

/**
 * @brief Checks the status of the button.
 */
void Check_button_status();

/**
 * @brief Modifies the duty cycle based on the specified trigger.
 *
 * @param alter_percentage The percentage by which to alter the duty cycle.
 * @param increment Pointer to the increment flag.
 * @param trigger A character indicating whether to increment ('I') or
 *         decrement ('D') the duty cycle.
 * @return uint8_t The modified duty cycle value.
 */
uint8_t modify_duty_cycle(uint8_t alter_percentage,
		volatile uint8_t* increment, char trigger);

/**
 * @brief Initializes TIM2 in interrupt mode for switch debouncing.
 *
 * This function configures TIM2 to generate interrupts at a specified frequency.
 * The timer is used for debouncing a switch connected to GPIO pin PA0.
 */
void TIM2_Init();

/**
 * @brief Interrupt Service Routine for TIM2.
 *
 * This ISR handles the debounce logic for a switch connected to GPIO pin PA0.
 * It checks the state of the switch and updates the `debounce_average` variable
 * based on the button's state to debounce the switch.
 */
void TIM2_IRQHandler(void);

#endif /* SRC_PWM_H_ */

