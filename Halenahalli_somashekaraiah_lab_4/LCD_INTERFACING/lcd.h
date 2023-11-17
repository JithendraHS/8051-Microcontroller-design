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
 * @file lcd.h
 * @brief Header file for LCD functions.
 * @author Jithendra H S
 * @date 11-10-2023
 */

#ifndef LCD_H
#define LCD_H

#include "stdint.h"

// External variables for LCD control
extern __xdata uint8_t db;
extern __xdata uint8_t *ptr;
extern volatile unsigned int clockrun_flag;

/**
 * @brief Sends a command to the LCD.
 * @param rs RS (Register Select) value.
 * @param r_w R/W (Read/Write) value.
 * @param data Data to be sent.
 */
void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data);

/**
 * @brief Waits until the LCD is not busy.
 */
void lcdbusywait();

/**
 * @brief Sets the address on the LCD.
 * @param addr Address to set.
 */
void lcdgotoaddr(uint8_t addr);

/**
 * @brief Sets the cursor position on the LCD.
 * @param row Row number.
 * @param column Column number.
 */
void lcdgotoxy(uint8_t row, uint8_t column);

/**
 * @brief Writes a character to the LCD.
 * @param cc Character to be written.
 */
void lcdputch(uint8_t cc);

/**
 * @brief Writes a string to the LCD.
 * @param ss String to be written.
 */
void lcdputstr(uint8_t *ss);

/**
 * @brief Initializes the LCD.
 */
void lcdinit();

/**
 * @brief Clears the LCD screen.
 */
void lcdclear();

/**
 * @brief Tests LCD functionality.
 */
void test_functionality();

/**
 * @brief Sets the CGRAM address on the LCD.
 * @param cgram_address CGRAM address to be set.
 */
void set_cgram_address(uint8_t cgram_address);

/**
 * @brief Creates a custom character on the LCD.
 * @param char_num Character number for the custom character.
 */
void lcdcreatechar(uint8_t char_num, uint8_t c);

/**
 * @brief Resets the clock values on the LCD.
 */
void reset_clock();

/**
 * @brief Updates the running clock on the LCD.
 */
void clock_run();

/**
 * @brief Initializes the menu on the LCD.
 */
void menu_lcd();

/**
 * @brief Sets arrow indicators on the LCD for menu options.
 * @param a Indicator for the "Running" option.
 * @param b Indicator for the "Stopped" option.
 * @param c Indicator for the "Reset" option.
 */
void arrow_set(char a, char b, char c);

/**
 * @brief Sets the DDRAM (Display Data RAM) address for the LCD.
 *
 * This function sets the DDRAM address for positioning the cursor on the LCD display.
 * It uses the specified DDRAM address and performs necessary LCD commands.
 *
 * @param ddram_address The DDRAM address to set.
 */
void set_ddram_address(uint8_t ddram_address);

/**
 * @brief Reads a byte from the LCD's data RAM (xxRAM).
 *
 * This function reads a byte from the current address pointed to by the LCD.
 *
 * @return The data read from the xxRAM address.
 */
uint8_t read_xxram_address();

/**
 * @brief Dumps the contents of DDRAM in hexadecimal format.
 *
 * This function dumps the contents of DDRAM in hexadecimal format,
 * organized by rows on the LCD display.
 */
void ddram_hex_dump();

/**
 * @brief Dumps the contents of CGRAM in hexadecimal format.
 *
 * This function dumps the contents of CGRAM in hexadecimal format,
 * organized by rows on the LCD display.
 */
void cgram_hex_dump();

/**
 * @brief Processes the creation of a custom character for the LCD.
 *
 * This function guides the user through entering the LCD display address
 * and character code for a custom character. It then prompts the user to
 * enter the pixel pattern in hex format for each row of the custom character.
 */
void process_custom_character();

#endif  // LCD_H
