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
 * @file uart.c
 * @brief Implementation of UART communication functions.
 * @date 10-20-2023
 */

#include <uart.h> // Assuming uart.h contains necessary declarations for UART
                  // communication

/**
 * @brief Outputs a character to the UART (transmit).
 * @param c The character to be transmitted.
 * @return The transmitted character.
 */
int putchar(int c)
{
    while(!TI); // Wait until the UART transmit buffer is ready to accept new
                // data
    SBUF = c;   // Load the character into the transmit buffer
    TI = 0;     // Clear the transmit interrupt flag to indicate data has been
                // sent
    return c;   // Return the character written
}

/**
 * @brief Reads a character from the UART (receive).
 * @return The received character.
 */
int getchar(void)
{
    while(!RI); // Wait until a character is received and ready to be read
    RI = 0;     // Clear the receive interrupt flag to indicate data has been
                // read
    return SBUF; // Return the received character
}

/**
 * @brief Outputs a null-terminated string to the UART.
 * @param s Pointer to the null-terminated string to be transmitted.
 * @return The total number of characters sent, including the null terminator.
 */
int putstr(char *s)
{
    int i = 0;
    while (*s)
    {
        putchar(*s++); // Output each character of the string
        i++;
    }
    return i + 1; // Return the total number of characters sent, including the
                  // null terminator
}

/**
 * @brief Reads a character from the UART and immediately echoes it back.
 * @return The character received.
 */
int8_t echo()
{
    int8_t ch = getchar(); // Read a character from the UART
    putchar(ch);           // Output the character, providing an echo effect
    return ch;             // Return the character read
}
