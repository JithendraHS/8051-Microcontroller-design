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
 * @date 10-20-2023
 */

 /**
 * Linker setting : --code-loc 0x4000 --code-size 0x4F40 --xram-loc 0x0000 --xram-size  0x1f40 -D DEBUG=1
 */

#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include "_heap.h"
#include "uart.h"
#include "buffer.h"
#define ARRAY_SIZE 10
#define DIVISIBLE 16
#define ZERO 0
#define ONE 1

extern int total_characters_count; // External declaration of total character
                                   // count variable

/**
 * @struct Buffer_info
 * @brief Structure to hold buffer information.
 */
struct Buffer_info{
    __xdata uint8_t *buffer_pointer; // Pointer to the buffer in external memory
    int16_t buffer_size; // Size of the buffer
    int16_t buffer_occupied; // Number of characters occupied in the buffer
};

/**
 * @brief External startup code for SDCC.
 * @return 0 on successful startup.
 */
_sdcc_external_startup()
{
    AUXR |= (XRS1 | XRS0); // Configure XRAM
    return 0;
}

/**
 * @brief Main function to manage buffers and user interactions.
 */
void main(void)
{
    /*__xdata uint8_t value = 66;
    __xdata uint8_t * address_1;
    address_1 = &value;
    printf("address %p %p\n\r", address_1, &value);
    *address_1 = 111;
    printf("address %p %p\n\r", address_1, &value);
    */
    while (1) {
        struct Buffer_info buffer_array[ARRAY_SIZE]; // Structure array to store buffer pointers
        __xdata int16_t user_input_1 = 0;
        __xdata int16_t user_input_2 = 0;
        int buffer_count = 0;
        __xdata uint16_t buffer_0_index = 0;
        __xdata int16_t divisible = 16;
        int inserted = 0;
        total_characters_count = 0;
        int since_last = total_characters_count;

        // Print instructions for user input
        printf("Specify the buffer size (range 32 to 4800) divisible by 16: \n\r");
        user_input_1 = get_buffer_size(32, 4800, DIVISIBLE);

        // Attempt to allocate memory for buffer 0
        buffer_array[buffer_count].buffer_pointer = (uint8_t *)malloc(user_input_1 * sizeof(uint8_t));
        if (buffer_array[buffer_count].buffer_pointer == NULL) {
            printf("Failed to allocate memory\n\r");
            continue;
        }
        buffer_array[buffer_count].buffer_size = user_input_1;
        buffer_array[buffer_count].buffer_occupied = 0;
        buffer_count++;

        // Attempt to allocate memory for buffer 1
        buffer_array[buffer_count].buffer_pointer = (uint8_t *)malloc(user_input_1 * sizeof(uint8_t));
        if (buffer_array[buffer_count].buffer_pointer == NULL) {
            printf("Failed to allocate memory\n\r");
            free(buffer_array[0].buffer_pointer);
            buffer_array[0].buffer_pointer = NULL;
            continue;
        }
        buffer_array[buffer_count].buffer_size = user_input_1;
        buffer_array[buffer_count].buffer_occupied = 0;
        buffer_count++;

        // Print user options
        printf("* Enter any UPPERCASE letter to append characters into buffer 0\n\r");
        printf("* Press '+' to allocate a new buffer \n\r");
        printf("* Press '-' to remove allocated buffers \n\r");
        printf("* Press '?' to get the heap report \n\r");
        printf("* Press '=' to get buffer 0 content \n\r");
        printf("* Press '@' to restart the program \n\r");

        int32_t switch_case = 0;

        // User interaction loop
        while (1) {
            __xdata uint8_t char_received = echo(); // Receive a character from UART
            // Handle user input based on cases
            if (((char_received >= 'A') && (char_received <= 'Z')) && !switch_case) {
                switch_case = 1;
            } else if (char_received == '+') {
                if (!switch_case) {
                    printf(" mode, specify buffer size (range 20 to 800): \n\r");
                    switch_case = 2;
                } else {
                    printf("First exit the current mode \n\r");
                }
            } else if (char_received == '-') {
                if (!switch_case) {
                    printf(" mode, specify buffer number to destroy: \n\r");
                    switch_case = 3;
                } else {
                    printf("First exit the current mode \n\r");
                }
            } else if (char_received == '?') {
                if (!switch_case) {
                    printf(" mode\n\r");
                    switch_case = 4;
                } else {
                    printf("First exit the current mode \n\r");
                }
            } else if ((char_received == '\n') || (char_received == '\r')) {
                if(!switch_case){
                    printf("\n\r");
                }
                switch_case = 0;
            } else if (char_received == '=') {
                if (!switch_case) {
                    printf(" mode\n\r");
                    switch_case = 5;
                } else {
                    printf("First exit the current mode \n\r");
                }
            } else if (char_received == '@') {
                printf(" mode - restarting program \n\r");
                break;
            }

            // Handle different modes of operation
            switch (switch_case) {
                case 1:
                    //if ((char_received == '\n') || (char_received == '\r')) {
                    //    printf("Characters added to buffer 0 - exiting mode \n\r");
                    //    switch_case = 0;
                    //} else
                    if (buffer_array[0].buffer_occupied < user_input_1) {
                        buffer_array[0].buffer_pointer[buffer_array[0].buffer_occupied] = char_received;
                        buffer_array[0].buffer_occupied++;
                    } else {
                        printf("\n\rNot enough memory to load, echoing to serial output %c\n\r", char_received);
                        switch_case = 0;
                    }
                    break;
                case 2:
                    // Attempt to allocate memory for a new buffer
                    user_input_2 = get_buffer_size(20, 800, 1);
                    for (int32_t index = 1; index < 10; index++) {
                        if (buffer_array[index].buffer_pointer == NULL) {
                            buffer_array[index].buffer_pointer = (int8_t *)malloc(user_input_2 * sizeof(int8_t));
                            if (buffer_array[index].buffer_pointer == NULL) {
                                printf("Failed to allocate memory for buffer, try deleting some using '-' \n\r");
                            } else {
                                buffer_array[index].buffer_size = user_input_2;
                                buffer_array[index].buffer_occupied = 0;
                                inserted = index;
                            }
                            break;
                        }
                    }
                    if (inserted) {
                        printf("Allocated memory for buffer #%d \n\r", inserted);
                        buffer_count++;
                        inserted = 0;
                    }
                    switch_case = 0;
                    break;
                case 3:
                    user_input_2 = get_buffer_size(ZERO, ARRAY_SIZE, ONE);
                    if (user_input_2 == 0) {
                        printf("Not allowed to remove buffer 0\n\r");
                    } else if ((user_input_2 < buffer_count) && (buffer_array[user_input_2].buffer_pointer != NULL)) {
                        free(buffer_array[user_input_2].buffer_pointer);
                        buffer_array[user_input_2].buffer_pointer = NULL;
                        buffer_array[user_input_2].buffer_size = 0;
                        buffer_array[user_input_2].buffer_occupied = 0;
                        printf("Freed buffer #%d, try '?' to get info of existing buffers  \n\r", user_input_2);
                        buffer_count--;
                    } else {
                        printf("No such buffer exists, try '?' to get info of existing buffers \n\r");
                    }
                    switch_case = 0;
                    break;
                case 4:
                    // Print heap information and buffer details
                    printf("Total characters count: %d \n\r", total_characters_count);
                    printf("Since last '?': %d \n\r", (total_characters_count - since_last));
                    since_last = total_characters_count;
                    for (int8_t index = 0; index <= buffer_count; index++) {
                        if (buffer_array[index].buffer_pointer == NULL) {
                            continue;
                        } else {
                            printf("Buffer %d -->\n\r Start address: %p\n\r End address: %p\n\r Allocated size: %u\n\r "
                                   "Storage character counts: %u\n\r Free space available: %u\n\r", index,
                                   buffer_array[index].buffer_pointer,
                                   (buffer_array[index].buffer_pointer + buffer_array[index].buffer_size),
                                   buffer_array[index].buffer_size, buffer_array[index].buffer_occupied,
                                   (buffer_array[index].buffer_size - buffer_array[index].buffer_occupied));
                            printf("Buffer %d content: \n\r", index);
                            for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
                                if (!(j % 32)) {
                                     printf("\n\r");
                                }
                                printf("%c", buffer_array[index].buffer_pointer[j]);
                                buffer_array[index].buffer_pointer[j] = 0;
                            }
                            printf("\n\r\n\r");
                            buffer_array[index].buffer_occupied = 0;
                        }
                    }
                    switch_case = 0;
                    break;
                case 5:
                    // Print content of buffer 0 in hexadecimal format
                    for (int k = 0; k < buffer_array[0].buffer_size; k++) {
                         if (!(k % 16)) {
                             printf("\n\r%p :", &buffer_array[0].buffer_pointer[k]);
                         }
                         printf(" %x", buffer_array[0].buffer_pointer[k]);
                    }
                    printf("\n\r");
                    switch_case = 0;
                    break;
                default:
                    break;
            }
        }

        // Free allocated memory before restarting the program
        for (int8_t l = 0; l < ARRAY_SIZE; l++) {
            free(buffer_array[l].buffer_pointer);
            buffer_array[l].buffer_pointer = NULL;
        }
    }
}
