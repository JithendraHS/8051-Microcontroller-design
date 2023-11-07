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
 * @brief Main program logic for user interactions.
 * @author Jithendra H S
 * @date 11-04-2023
 */
/*
 Linker setting : --code-loc 0x3000 --code-size 0x4F40 --xram-loc 0x0000 --xram-size  0x1f40 -D DEBUG=1
*/

#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdint.h"
#include "_heap.h"
#include "i2c_bit_bang.h"
#include "menu.h"
#include "uart.h"
#include "eeprom.h"

/**
 * @brief External startup code for SDCC.
 * @return 0 on successful startup.
 */
_sdcc_external_startup()
{
    AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
    //CKCON0 |= SET_X2;      // Configure X2 mode (Switching from 12 clock periods to 6 clock periods per instruction)
    return 0;               // Return 0 to indicate successful startup
}

void main()
{
    menu();
    while(1)
    {
        int8_t user_input = echo(); // Read user input from UART
        if(((user_input >= '0') && (user_input <= '9'))
           || ((user_input >= 'A') && (user_input <= 'Z'))) {
             // Display a message if user enters uppercase commands
            printf_tiny("Please enter commands in small cases\n\r");
        }else{
            printf_tiny("\n\r");  // Print newline for better output formatting
        }
         switch(user_input) {
            case 'w':
                user_input_write_handle();
                break;
            case 'r':
                user_input_read_handle();
                break;
            case 'h':
                user_input_hex_dump_handle();
                break;
            case 'e':
                user_input_reset_handle();
                break;
            default:
                break;  // Do nothing for other user inputs
        }
       delay(3);
    }
}
