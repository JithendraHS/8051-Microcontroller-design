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
 * @brief Main file that interacts with users through a menu and utilizes PCA functions.
 * @author Jithendra H S
 * @date 10-27-2023
 */
#include <stdio.h>
#include <menu.h>

// Function to display the menu options
void menu(){
    // Print the menu options for the user
    printf_tiny("Choose the options from below menu: \n\r");
    printf_tiny("[a]. Run PWM (turn on PWM output)\n\r");
    printf_tiny("[b]. Stop PWM (turn off PWM output)\n\r");
    printf_tiny("[c]. Set FCLK PERIPH at the minimum frequency supported by the CKRL register\n\r");
    printf_tiny("[d]. Set FCLK PERIPH at the maximum frequency supported by the CKRL register\n\r");
    printf_tiny("[e]. Set Idle mode (set IDLE bit in PCON register)\n\r");
    printf_tiny("[f]. Clear Idle mode (clear IDLE bit in PCON register)\n\r");
    printf_tiny("[g]. Start watchdog timer \n\r");
    printf_tiny("[h]. Stop watchdog timer \n\r");
    printf_tiny("[i]. Set Power Down mode (set PDE bit in PCON register)\n\r");
    printf_tiny("[j]. Clear Power Down mode (clear PDE bit in PCON register)\n\r");
    printf_tiny("[k]. Enable High-Speed output \n\r");
    printf_tiny("[l]. Disable High-Speed output\n\r");
}
