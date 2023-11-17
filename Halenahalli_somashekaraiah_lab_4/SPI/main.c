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
#include "spi.h"
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

// --code-loc 0x5000 --code-size 0x7000 --xram-loc 0xF000 --xram-size  0xFBFF -D DEBUG=1

void main(void)
{
    uint16_t level = 0;
    spi_init(); // Initialize SPI communication

    while (1)
    {
        int8_t user_input = echo(); // Read user input from UART

        // Check if the user input is a digit or an uppercase letter
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

        // Switch case to handle different user inputs
        switch (user_input)
        {
            case 'a':
                // Call a function to generate a wave using SPI
                spi_wave_generator();
                break;

            case 'b':
                printf_tiny("Enter the level(0-255) in hex format\n\r");
                level = get_hex_value(); // Get a hexadecimal value from the user
                // Call a function to send a single value (level) using SPI
                spi_single_value((uint8_t)level);
                break;

            default:
                // Handle other cases or do nothing for unrecognized input
                break;
        }
    }
}

