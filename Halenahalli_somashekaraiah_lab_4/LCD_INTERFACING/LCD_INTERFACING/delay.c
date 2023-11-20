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
 * @file delay.c
 * @brief Implementation of delay functions and Timer 2 initialization.
 * @author Jithendra H S
 * @date 11-10-2023
 */
#include "delay.h"
#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include "lcd.h"
#include "stdio.h"

#define NOP __asm nop __endasm  // Assembly NOP instruction to introduce delays.
extern volatile unsigned int tick = 0;  // External declaration of the tick variable

/**
 * @brief Delays the program execution for a specified number of cycles.
 * @param t Number of cycles to delay.
 */
void delay(uint32_t t)
{
    while(t--){
        NOP;  // Assembly NOP instruction for delaying program execution.
    } /* Decrement till it reaches 0 */
}

/**
 * @brief Initializes Timer 2 for periodic interrupts.
 */
void timer2_init(){
    T2MOD = 0b00000001;  // Set Timer 2 to 8-bit auto-reload mode
    RCAP2L = 0xFC;  // Set the low byte of the reload value for 50ms interrupt
    RCAP2H = 0x4B;  // Set the high byte of the reload value for 50ms interrupt

    TL2 = RCAP2L;  // Load the low byte of the reload value into Timer 2
    TH2 = RCAP2H;  // Load the high byte of the reload value into Timer 2
    TR2 = 1;  // Start Timer 2
}

/**
 * @brief Initializes Timer 2 interrupt.
 */
void timer2_interrupt_Init(){
    timer2_init();  // Initialize Timer 2
    ET2 = 1;  // Enable Timer 2 interrupt
    EA = 1;  // Enable global interrupts
}
