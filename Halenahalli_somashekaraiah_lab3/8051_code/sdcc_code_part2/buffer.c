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
 * @file buffer.c
 * @brief Implementation of functions related to buffer management.
 * @date [Date]
 */

#include <buffer.h>
#include <uart.h>
#include <stdio.h>

/**
 * @brief Gets a valid buffer size from the user within a given range and divisible
 *        by a specified value.
 *
 * This function reads characters from UART until a valid buffer size is entered by
 * the user. The buffer size must be within the specified minimum and maximum
 * values and divisible by the provided value.
 *
 * @param min Minimum allowed value for buffer size.
 * @param max Maximum allowed value for buffer size.
 * @param divisible Value by which the buffer size must be divisible.
 * @return Valid buffer size entered by the user.
 */
__xdata int16_t get_buffer_size(uint32_t min, uint32_t max, uint32_t divisible) {
    __xdata int16_t buffer_size = 0;

    // Continuously read characters from UART until a valid buffer size is entered
    while (1) {
        __xdata uint8_t char_received = echo(); // Read a character from UART

        // Check if the character is a newline or carriage return, indicating the
        // end of user input
        if ((char_received == '\n') || (char_received == '\r')) {
            // Validate the buffer size against the specified constraints
            if ((buffer_size < min) || (buffer_size > max)) {
                printf("Input value is out of expected range! Try a different "
                       "value\r\n");
                buffer_size = 0;
                continue; // Input is invalid, continue reading user input
            } else if (buffer_size % divisible) {
                printf("Input value is not divisible by %d! Try a different "
                       "value\r\n", divisible);
                buffer_size = 0;
                continue; // Input is not divisible, continue reading user input
            } else {
                break; // Input is valid, exit the loop
            }
        } else if ((char_received >= '0') && (char_received <= '9')) {
            char_received = char_received - '0'; // Convert ASCII character to its
                                                 // corresponding numerical value
        } else {
            printf("Invalid input character\r\n"); // Inform the user about invalid input
        }

        // Update the buffer size by appending the new digit
        buffer_size = (buffer_size * 10) + char_received;
    }
    DEBUGPORT(99); // sending 99 to virtual debug port
    printf("%d\r\n", buffer_size); // Display the validated buffer size to the user
    return buffer_size; // Return the validated buffer size
}

