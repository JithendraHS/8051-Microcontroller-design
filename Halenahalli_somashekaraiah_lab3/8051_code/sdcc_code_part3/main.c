/*******************************************************************************
 * Copyright (C) 2023 by Jithendra H S                                         *
 *                                                                             *
 * Redistribution, modification or use of this software in source or binary    *
 * forms is permitted as long as the files maintain this copyright. Users      *
 * are permitted to modify this and use it to learn about the field of         *
 * embedded software. Jithendra H S and the University of Colorado are not     *
 * liable for any misuse of this material.                                     *
 ******************************************************************************/

/**
 * @file main.c
 * @brief Main program logic for managing buffers and user interactions.
 * @author Jithendra H S
 * @date 10-27-2023
 */
/*
 Linker setting : --code-loc 0x3000 --code-size 0x4F40 --xram-loc 0x0000
  --xram-size  0x1f40 -D DEBUG=1
*/

#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include <uart.h>
#include <_heap.h>
#include "menu.h"
#include "pca_mode.h"  // PCA mode functions are defined in pca_mode.h

#define SET_X2 (0x35)  // Constant for configuring X2 mode in CKCON0 register

/**
 * @brief External startup code for SDCC.
 * @return 0 on successful startup.
 */
_sdcc_external_startup()
{
    AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
    CKCON0 |= SET_X2;      // Configure X2 mode (Switching from 12 clock periods to 6 clock periods per instruction)
    return 0;               // Return 0 to indicate successful startup
}

void external_interrupt_Init(){
    EX0 = 1;
    EA = 1;
    //P3_2 = 1;
}
void isr_zero(void) __interrupt (0)
{
	//printf_tiny("Hello!\n\r");
	//PCON &= ~(1 << 0);
	//PCON &= ~(1 << 1);
}
/**
 * @brief Main function to manage buffers and user interactions.
 */
void main(void)
{
    PWM_Init();            // Initialize PWM module
    WDT_Init();            // Initialize Watchdog Timer
    HSO_Init();            // Initialize High-Speed Output module
    menu();
    external_interrupt_Init();

    while(1) {
        int8_t user_input = echo(); // Read user input from UART
        if((user_input == '\n') || (user_input == '\r')) {
            printf_tiny("\n\r");  // Print newline for better output formatting
        }
        if((user_input >= 'A') && (user_input <= 'Z')) {
             // Display a message if user enters uppercase commands
            printf_tiny("Please enter commands in small cases\n\r");
        }
        switch(user_input) {
            case 'a':
                start_pwm();  // Call function to start PWM output
                break;
            case 'b':
                stop_pwm();   // Call function to stop PWM output
                break;
            case 'c':
                set_min_frequency();  // Call function to set minimum frequency
                break;
            case 'd':
                set_max_frequency();  // Call function to set maximum frequency
                break;
            case 'e':
                set_power_idle_mode();  // Call function to enter Idle mode
                break;
            case 'f':
                clear_power_idle_mode();  // Call function to exit Idle mode
                break;
            case 'g':
                start_watchdog_timer();  // Call function to start watchdog timer
                break;
            case 'h':
                stop_watchdog_timer();   // Call function to stop watchdog timer
                break;
            case 'i':
                set_power_down_mode();   // Call function to enter Power Down mode
                break;
            case 'j':
                clear_power_down_mode();  // Call function to exit Power Down mode
                break;
            case 'k':
                enable_highspeed_output();  // Call function to enable High-Speed output
                break;
            case 'l':
                disable_highspeed_output();  // Call function to disable High-Speed output
                break;
            default:
                break;  // Do nothing for other user inputs
        }
    }
}

