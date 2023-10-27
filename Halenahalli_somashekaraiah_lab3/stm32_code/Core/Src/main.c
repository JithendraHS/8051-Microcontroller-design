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
 * @file main.c
 * @brief Main program file containing the entry point and main loop of the application.
 * @author Jithendra H S
 * @date Oct 24, 2023
 */

#include "main.h"
#include "stdint.h"
#include "uart.h"
#include "stdio.h"
#include "stm32f4xx.h"
#include "pwm.h"

/**
 * @brief Main function of the program.
 *
 * @return int The program exit status.
 */
int main(void) {
    // Initialize UART communication
    UART_Init();

    // Initialize PWM ,TIM2 and button functionality
    PWM_Init();
    TIM2_Init();
    Button_Init();

    // Main program loop
    while(1) {
        // Check the status of the button
        Check_button_status();

        // Print the current PWM duty cycle value over UART
        print_uart(pwmDutyCycle);
    }

    return 0;
}
