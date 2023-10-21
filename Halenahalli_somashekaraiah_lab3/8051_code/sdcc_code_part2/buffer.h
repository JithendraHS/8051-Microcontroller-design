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
 * @file buffer.h
 * @brief Header file containing buffer management function declarations.
 * @date [Date]
 */

#include <stdint.h>
#include <debug.h>

/**
 * @brief Gets a valid buffer size from the user within a given range and divisible
 *        by a specified value.
 *
 * This function reads characters from the standard input until a valid buffer size
 * is entered by the user. The buffer size must be within the specified minimum
 * and maximum values and divisible by the provided value.
 *
 * @param min Minimum allowed value for buffer size.
 * @param max Maximum allowed value for buffer size.
 * @param divisible Value by which the buffer size must be divisible.
 * @return Valid buffer size entered by the user.
 */
__xdata int16_t get_buffer_size(uint32_t min, uint32_t max, uint32_t divisible);

