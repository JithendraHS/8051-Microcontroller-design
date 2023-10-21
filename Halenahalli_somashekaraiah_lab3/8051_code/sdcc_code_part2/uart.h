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
 * @file uart.h
 * @brief Header file containing UART communication function declarations.
 * @date 10-20-2023
 */

#include <stdint.h>
#include <at89c51ed2.h>

extern int total_characters_count; ///< External declaration of the total
                                   ///< character count variable

/**
 * @brief Outputs a character to the standard output.
 * @param c The character to be output.
 * @return The output character.
 */
int putchar(int c);

/**
 * @brief Reads a character from the standard input.
 * @return The character read from the standard input.
 */
int getchar(void);

/**
 * @brief Outputs a null-terminated string to the standard output.
 * @param s Pointer to the null-terminated string to be output.
 * @return The number of characters written.
 */
int putstr(char *s);

/**
 * @brief Reads a character from the standard input and echoes it back.
 * @return The character read from the standard input.
 */
int8_t echo();
