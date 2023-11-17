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
 * @brief Main program file for controlling clock functionality.
 * @author Jithendra H S
 * @date 11-10-2023
 */

#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdint.h"
#include "uart.h"
#include "lcd.h"
#include "delay.h"
#include "menu.h"

/**
 * @brief External startup code for SDCC.
 * @return 0 on successful startup.
 */
_sdcc_external_startup()
{
    AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
    return 0;               // Return 0 to indicate successful startup
}

// --code-loc 0x2000 --code-size 0x3F40 --xram-loc 0xFC00 --xram-size  0xFFFF -D DEBUG=1

// Enable is controlled by (A15 & A14 & A13 & A12 & A11 & A10) & !(RD & WR)
// tested ENABLE signal activity at address range 0x8000 to 0xFBFF, and ENABLING is not toggling for this address range
void isr_timer2(void) __interrupt(5)
{
    __critical
    {
        tick++;
    }
    clock_run();
    TF2 = 0;
}

void main(void)
{
    char indicator = '<';
    lcdinit();
    test_functionality();
    timer2_interrupt_Init();
    menu();
    menu_lcd();

    while (1)
    {
        int8_t user_input = echo(); // Read user input from UART
        if (((user_input >= '0') && (user_input <= '9')) ||
            ((user_input >= 'A') && (user_input <= 'Z')))
        {
            // Display a message if the user enters uppercase commands
            printf_tiny("Please enter commands in lowercase\n\r");
        }
        else
        {
            printf_tiny("\n\r"); // Print newline for better output formatting
        }

        switch (user_input)
        {
            case 'a':
                // User chose to restart the clock
                printf_tiny("Restarting clock\n\r");
                clockrun_flag = 1;
                arrow_set(indicator, ' ', ' ');
                break;

            case 'b':
                // User chose to stop the clock
                printf_tiny("Stopping clock\n\r");
                clockrun_flag = 0;
                arrow_set(' ', indicator, ' ');
                break;

            case 'c':
                // User chose to reset the clock
                printf_tiny("Resetting clock\n\r");
                reset_clock();
                arrow_set(' ', ' ', indicator);

                // Display the arrow indicator based on the clock running state
                if (clockrun_flag)
                {
                    lcdgotoxy(2, 8);
                    lcdputch(indicator);
                }
                else
                {
                    lcdgotoxy(3, 8);
                    lcdputch(indicator);
                }
                break;
            case 'd':
                printf_tiny("LCD RAM dump:\n\r");
                printf_tiny("DDRAM dump:\n\r");
                ddram_hex_dump();
                printf_tiny("CGRAM dump:\n\r");
                cgram_hex_dump();
                break;
            case 'e':
                process_custom_character();
                break;
            default:
                // Handle other cases or do nothing for unrecognized input
                break;
        }
    }
}
