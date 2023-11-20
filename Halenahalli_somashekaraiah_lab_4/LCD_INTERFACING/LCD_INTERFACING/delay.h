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
 * @file delay.h
 * @brief Implementation of delay functions and Timer 2 initialization.
 * @author Jithendra H S
 * @date 11-10-2023
 */
#include "stdint.h"

extern volatile unsigned int tick;  // External declaration of the tick variable

/**
 * @brief Delays the program execution for a specified number of cycles.
 * @param t Number of cycles to delay.
 */
void delay(uint32_t t);

/**
 * @brief Initializes Timer 2 for periodic interrupts.
 */
void timer2_init();

/**
 * @brief Initializes Timer 2 interrupt.
 */
void timer2_interrupt_Init();

