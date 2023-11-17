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
 * @file menu.c
 * @brief Defined User menu.
 * @author Jithendra H S
 * @date 11-10-2023
 */
#include <stdio.h>
#include <menu.h>

// Function to display the menu options
void menu(){
    // Print the menu options for the user
    printf_tiny("*************************************************************************\n\r");
    printf_tiny("CLOCK MENU:\n\r");
    printf_tiny("[a]. Clock restart\n\r");
    printf_tiny("[b]. Clock stop\n\r");
    printf_tiny("[c]. Clock reset\n\r");
    printf_tiny("[d]. LCD RAM Dump\n\r");
    printf_tiny("[e]. Create custom character\n\r");
    printf_tiny("*************************************************************************\n\r");
}
