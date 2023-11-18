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
 * @brief Main file that interacts with users through a menu.
 * @author Jithendra H S
 * @date 11-05-2023
 */
#include <stdio.h>
#include <menu.h>

// Function to display the menu options
void menu(){
    // Print the menu options for the user
    printf_tiny("*************************************************************************\n\r");
    printf_tiny("Choose the options from below menu : \n\r");
    printf_tiny("[w]. To WRITE byte into EEPROM\n\r");
    printf_tiny("[r]. To READ byte from EEPROM\n\r");
    printf_tiny("[h]. To see HEX dump of EEPROM\n\r");
    printf_tiny("[e]. To do software reset of EEPROM\n\r");
    printf_tiny("[a]. To WRITE byte into I/O expander\n\r");
    printf_tiny("[b]. To READ byte from I/O expander\n\r");
    printf_tiny("[c]. Toggle port value\n\r");
    printf_tiny("*************************************************************************\n\r");
}
