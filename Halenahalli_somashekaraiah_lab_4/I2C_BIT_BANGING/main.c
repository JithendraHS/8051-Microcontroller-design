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

__xdata uint8_t get_hex_value(){
    int8_t value = 0;
    printf_tiny("0x");
    for(int i = 0; i < 2; i++){
        __xdata uint8_t char_received = echo(); // Read a character from UART
        if((char_received >= '0') && (char_received <= '9')){
            char_received = char_received - '0'; // Convert ASCII character to its
                                                 // corresponding numerical value
        }else if((char_received >= 'A') && (char_received <= 'F')){
            char_received = char_received - 'A' + 10; // Convert ASCII character to its
                                                 // corresponding numerical value
        }else if((char_received >= 'a') && (char_received <= 'f')){
            char_received = char_received - 'a' + 10; // Convert ASCII character to its
                                                 // corresponding numerical value
        }else if((char_received == '\n') || (char_received == '\r')){
            printf_tiny("\n\r");
            break;
        }
        value |= char_received << ((1 - i) * 4);
    }
    printf_tiny("\n\r");
    return value;
}
void user_input_write_handle(){
    __xdata uint8_t  address = 0;
    __xdata uint8_t  data = 0;
    __xdata uint8_t block = 7;
    while(1){
        printf_tiny("Please enter address in hex format to store the data byte\n\r");
        address = get_hex_value();
        /*if((address < 0) && (address > 255)){
             printf_tiny("Please enter a valid address in the range(0x00 - 0xFF)\n\r");
             continue;
        }*/
        printf_tiny("Please enter data in hex format to store\n\r");
        data = get_hex_value();
        /*if((address < 0) && (address > 255)){
             printf_tiny("Please enter a valid data in the range(0x00 - 0xFF)\n\r");
             continue;
        }*/
        break;
    }
    Byte_Write(data, block, address);
    printf_tiny("=========================================================================\n\r");
}

void user_input_read_handle(){
    __xdata uint8_t  address = 0;
    __xdata uint8_t  data = 0;
    __xdata uint8_t block = 7;
    while(1){
        printf_tiny("Please enter address in hex format to get the data byte\n\r");
        address = get_hex_value();
        /*if((address < 0) && (address > 255)){
             printf_tiny("Please enter a valid address in the range(0x00 - 0xFF)\n\r");
             continue;
        }*/
        break;
    }
    data = Byte_Read(block, address);
    printf_tiny("Read byte--> 0x%x: 0x%x\n\r", address, data);
    printf_tiny("=========================================================================\n\r");
}

void user_input_hex_dump_handle(){
    __xdata uint8_t start_address = 0;
    __xdata uint8_t end_address = 0;
    __xdata uint8_t block = 7;
    while(1){
        printf_tiny("Please enter start address in hex format\n\r");
        start_address = get_hex_value();
        /*if((start_address < 0) && (start_address > 255)){
             printf_tiny("Please enter a valid address in the range(0x00 - 0xFF)\n\r");
             continue;
        }*/
        printf_tiny("Please enter end address in hex format\n\r");
        end_address = get_hex_value();
        /*if((end_address < 0) && (end_address > 255)){
             printf_tiny("Please enter a valid address in the range(0x00 - 0xFF)\n\r");
             continue;
        }*/
        if(end_address > start_address){
            break;
        }
        printf_tiny("Invalid address range, end address should be greater than start address\n\r");
    }
    uint8_t address_range = end_address - start_address;
    for(int i = 0; i < address_range + 1; i++){
         if(i % 16 == 0){
            printf_tiny("\n\r0x%x :",start_address);
         }
         uint8_t data = Byte_Read(block, start_address);
         printf_tiny(" 0x%x", data);
         start_address++;
    }
    printf_tiny("\n\r");
    printf_tiny("=========================================================================\n\r");
}

void user_input_reset_handle(){
    printf_tiny("Reset mode\n\r");
    eeprom_reset();
    printf_tiny("=========================================================================\n\r");
}
void main()
{
    //HSO_Init();

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
