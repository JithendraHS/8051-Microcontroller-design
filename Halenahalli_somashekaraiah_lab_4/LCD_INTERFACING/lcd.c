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
 * @file lcd_utils.c
 * @brief Implementation of LCD functions for displaying messages, controlling the cursor, and creating custom characters.
 * @author Jithendra H S
 * @date 11-10-2023
 */

#include "lcd.h"
#include <at89c51ed2.h>
#include "delay.h"
#include "stdio.h"
#include "uart.h"

#define R_W (P1_7)
#define RS (P1_6)
#define BF (P0_7)
#define PULSE_HIGH (1)
#define PULSE_LOW (0)
#define BYTE_LENGTH (8)

extern __xdata uint8_t db = 0;
extern __xdata uint8_t * ptr = &db;
static char min_high;
static char min_low;
static char sec_high;
static char sec_low ;
static char mili_sec;
extern volatile unsigned int clockrun_flag = 0;

static uint8_t custom_char_code = 1;
static uint32_t  elapsed_tick = 0;

/**
 * @brief Sends a command to the LCD module.
 * @param rs Register Select.
 * @param r_w Read/Write.
 * @param data Command/data byte.
 */
void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
    RS = rs;              // Set the Register Select pin based on the provided parameter.
    R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
    *ptr = data;          // Write the specified data byte to the LCD data buffer.
}

/**
 * @brief Waits for the LCD module to become idle by polling the busy flag.
 */
void lcdbusywait() {
    RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
    R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
    while (*ptr & (0b10000000)) {
        ; // Poll the busy flag until it becomes 0, indicating the LCD is ready for the next command.
    }
}

/**
 * @brief Sets the cursor address on the LCD module.
 * @param addr The address to set the cursor to.
 */
void lcdgotoaddr(uint8_t addr) {
    RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
    R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
    *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
    lcdbusywait();               // Wait until the LCD becomes idle.
}

/**
 * @brief Sets the cursor to the specified position on the LCD module.
 * @param row The row number (1 to 4) where the cursor should be placed.
 * @param column The column number (1 to 16) where the cursor should be placed.
 */
void lcdgotoxy(uint8_t row, uint8_t column) {
    // Calculate the corresponding address based on row and column, and set the cursor.
    lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
}

/**
 * @brief Writes a character to the LCD module at the current cursor position.
 * @param cc The character to be written.
 */
void lcdputch(uint8_t cc) {
    // Set RS to High (indicating data mode), R_W to Low (indicating write operation), and write the character.
    RS = PULSE_HIGH;
    R_W = PULSE_LOW;
    *ptr = cc;
    lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
}


/**
 * @brief Writes a null-terminated string to the LCD module.
 * @param ss Pointer to the string to be written.
 */
void lcdputstr(uint8_t *ss) {
    uint8_t lcd_ptr_addr = 0;

    // Iterate through each character in the string until a null terminator is encountered.
    while (*ss != '\0') {
        // Set RS to Low (indicating command mode), R_W to High (indicating read operation), and write the character.
        RS = PULSE_LOW;
        R_W = PULSE_HIGH;
        lcdputch(*ss);

        // Get the LCD pointer address and perform operations based on its value.
        lcd_ptr_addr = *ptr & (0b01111111);
        switch (lcd_ptr_addr) {
            case 0x10:
                lcdgotoaddr(0x40);
                break;
            case 0x50:
                lcdgotoaddr(0x10);
                break;
            case 0x20:
                lcdgotoaddr(0x50);
                break;
            case 0x60:
                lcdgotoaddr(0x00);
                break;
            default:
                break;
        }

        ss++;  // Move to the next character in the string.
    }
}

/**
 * @brief Initializes the LCD module with specific configuration settings.
 */
void lcdinit() {
    // Wait for 15ms (1.085us * 14000 ~= 15ms) as part of the initialization process.
    delay(14000);

    // Perform the system set command three times with delays in between.
    lcd_command(0, 0, 0x30);
    delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
    lcd_command(0, 0, 0x30);
    delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
    lcd_command(0, 0, 0x30);

    lcdbusywait();  // Wait for the LCD to finish processing the commands.

    lcd_command(0, 0, 0x38);  // Function set command
    lcdbusywait();

    lcd_command(0, 0, 0x08);  // Turn off display command
    lcdbusywait();

    lcd_command(0, 0, 0x0C);  // Turn on display command
    lcdbusywait();

    lcd_command(0, 0, 0x06);  // Entry mode set command
    lcdbusywait();

    lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
}

/**
 * @brief Clears the LCD screen by sending the appropriate command.
 */
void lcdclear() {
    RS = PULSE_LOW;
    R_W = PULSE_LOW;
    *ptr = 0b00000001;  // Send the command to clear the screen.
    lcdbusywait();      // Wait for the LCD to finish processing the command.
}

/**
 * @brief Performs a series of tests to check LCD functionality.
 */
void test_functionality() {
    printf_tiny("test_functionality start\n\r");

    // Testing goto address directly and write functionality
    lcdgotoaddr(0x01);
    lcdputch('E');
    delay(100000);

    // Testing goto address based on rows and column values and write functionality
    lcdgotoxy(1, 1);
    lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
    delay(100000);

    // Testing clear display
    lcdclear();

    printf_tiny("test_functionality end\n\r");
}

/**
 * @brief Sets the CGRAM address for custom character creation.
 * @param cgram_address The CGRAM address to be set.
 */
void set_cgram_address(uint8_t cgram_address) {
    RS = PULSE_LOW;
    R_W = PULSE_LOW;
    *ptr = cgram_address;
    lcdbusywait();
}

/**
 * @brief Creates a custom character on the LCD.
 * @param char_num The custom character code to be created.
 */
void lcdcreatechar(uint8_t char_num, uint8_t c) {
    // Set the CGRAM address
    set_cgram_address(char_num);

    // Write the pixel pattern to the cgram
    lcdputch(c);
}


/**
 * @brief Resets the clock variables and updates the LCD display.
 */
void reset_clock() {
    // Reset clock variables
    min_high = '0';
    min_low = '0';
    sec_high = '0';
    sec_low = '0';
    mili_sec = '0';

    // Update the LCD display with the reset values
    lcdgotoaddr(0x59);
    lcdputch(min_high);
    lcdputch(min_low);
    lcdputch(':');
    lcdputch(sec_high);
    lcdputch(sec_low);
    lcdputch('.');
    lcdputch(mili_sec);
}

/**
 * @brief Updates the clock values and LCD display based on the elapsed time.
 */
void clock_run() {
    // Check if the clock is running, the tick is even, and a new tick has occurred
    if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
        elapsed_tick = tick;  // Update the elapsed tick

        mili_sec++;  // Increment milliseconds
        if (mili_sec > '9') {
            mili_sec = '0';
            lcdgotoaddr(0x5F);
            lcdputch(mili_sec);
            sec_low++;
            lcdgotoaddr(0x5D);
            lcdputch(sec_low);
        }
        if (sec_low > '9') {
            sec_low = '0';
            lcdgotoaddr(0x5D);
            lcdputch(sec_low);
            sec_high++;
            lcdgotoaddr(0x5C);
            lcdputch(sec_high);
        }
        if (sec_high > '5') {
            sec_high = '0';
            lcdgotoaddr(0x5C);
            lcdputch(sec_high);
            min_low++;
            lcdgotoaddr(0x5A);
            lcdputch(min_low);
        }
        if (min_low > '9') {
            min_low = '0';
            lcdgotoaddr(0x5A);
            lcdputch(min_low);
            min_high++;
            lcdgotoaddr(0x59);
            lcdputch(min_high);
        }
        if (min_high > '5') {
            min_high = '0';
            lcdgotoaddr(0x59);
            lcdputch(min_high);
        }
        lcdgotoaddr(0x5F);
        lcdputch(mili_sec);
    }
}

/**
 * @brief Initializes the menu on the LCD.
 */
void menu_lcd() {
    reset_clock();  // Reset clock values for display consistency
    lcdgotoxy(1, 1);
    lcdputstr("Clock status:");
    lcdgotoxy(2, 1);
    lcdputstr("Running");
    lcdgotoxy(3, 1);
    lcdputstr("Stopped");
    lcdgotoxy(4, 1);
    lcdputstr("Reset");
}

/**
 * @brief Sets arrow indicators on the LCD for menu options.
 * @param a Indicator for the "Running" option.
 * @param b Indicator for the "Stopped" option.
 * @param c Indicator for the "Reset" option.
 */
void arrow_set(char a, char b, char c) {
    lcdgotoxy(2, 8);
    lcdputch(a);  // Display arrow indicator for "Running"
    lcdgotoxy(3, 8);
    lcdputch(b);  // Display arrow indicator for "Stopped"
    lcdgotoxy(4, 6);
    lcdputch(c);  // Display arrow indicator for "Reset"
}


/**
 * @brief Sets the DDRAM (Display Data RAM) address for the LCD.
 *
 * @param ddram_address The DDRAM address to set. Should be in the range of 0 to 0x27.
 *
 * @return None.
 */
void set_ddram_address(uint8_t ddram_address) {
    RS = PULSE_LOW;            // Set RS (Register Select) to LOW for command mode
    R_W = PULSE_LOW;           // Set R_W (Read/Write) to LOW for write operation
    *ptr = ddram_address | 0b10000000; // Set the DDRAM address with the required command
    lcdbusywait();             // Wait for the LCD to process the command
}


/**
 * @brief Reads the data from the specified XRAM address.
 *
 * @return The data read from the XRAM address.
 */
uint8_t read_xxram_address() {
    uint8_t data = 0;        // Variable to store the read data
    RS = PULSE_HIGH;         // Set RS (Register Select) to HIGH for data mode
    R_W = PULSE_HIGH;        // Set R_W (Read/Write) to HIGH for read operation
    data = *ptr;             // Read the data from the specified XRAM address
    lcdbusywait();           // Wait for the LCD to process the read operation
    return data;             // Return the read data
}

/**
 * @brief Dumps the content of the DDRAM in hexadecimal format.
 *
 * This function prints the hexadecimal content of the DDRAM, organized in rows and columns.
 */
void ddram_hex_dump() {
    for(uint8_t i = 0; i < 4; i++) {
        switch (i) {
            case 0:
                set_ddram_address(0x00);
                printf_tiny("0x%x: ", 0x00);
                break;
            case 1:
                set_ddram_address(0x40);
                printf_tiny("0x%x: ", 0x40);
                break;
            case 2:
                set_ddram_address(0x10);
                printf_tiny("0x%x: ", 0x10);
                break;
            case 3:
                set_ddram_address(0x50);
                printf_tiny("0x%x: ", 0x50);
                break;
            default:
                break;
        }

        for(int j = 0; j < 16; j++) {
            printf_tiny(" %x", read_xxram_address());
        }

        printf_tiny("\n\r");
    }
}

/**
 * @brief Dumps the content of the CGRAM in hexadecimal format.
 *
 * This function prints the hexadecimal content of the CGRAM, organized in rows and columns.
 */
void cgram_hex_dump() {
    set_cgram_address(0x00); // Set the CGRAM address to the start

    for(uint8_t i = 0; i < 4; i++) {
        printf_tiny("0x%x: ", i << 4);

        for(int j = 0; j < 16; j++) {
            printf_tiny(" %x", read_xxram_address());
        }

        printf_tiny("\n\r");
    }
}



/**
 * @brief Reads a hexadecimal value from user input.
 * @return The hexadecimal value entered by the user.
 */
uint8_t get_hex_value(){
    uint8_t value = 0;
    for(int i = 0; i < 2; i++){
        if(i == 0) printf_tiny("0x");
        uint8_t char_received = echo(); // Read a character from UART
        if((char_received >= '0') && (char_received <= '9')){
            char_received = char_received - '0'; // Convert ASCII character to its
                                                 // corresponding numerical value
        }else if((char_received >= 'A') && (char_received <= 'F')){
            char_received = char_received - 'A' + 10; // Convert ASCII character to its
                                                 // corresponding numerical value
        }else if((char_received >= 'a') && (char_received <= 'f')){
            char_received = char_received - 'a' + 10; // Convert ASCII character to its
                                                 // corresponding numerical value
        }else if((char_received == '\n') || (char_received == '\r')){
            printf_tiny("\n\r");
            return value;
        }else{
            printf_tiny("-->Invalid input\n\r");
            i = -1;
            value = 0;
            continue;
        }
        if(i == 0){
            value |= char_received;
        }else{
           value = (value << 4) | char_received;
        }
    }
    printf_tiny("\n\r");
    return value;
}

/**
 * @brief Process the creation of a custom character for the LCD.
 *
 * This function guides the user through entering the LCD display address
 * and character code for a custom character. It then prompts the user to
 * enter the pixel pattern in hex format for each row of the custom character.
 */
void process_custom_character() {
    uint8_t ccode = 0;
    uint8_t address = 0;

    // Get the LCD display address for the custom character
    while (1) {
        printf_tiny("Enter LCD display address for the character\n\r");
        address = get_hex_value();
        if (address < 0x60) {
            break;
        } else {
            printf_tiny("Invalid input\n\r");
        }
    }

    // Get the character code for the custom character
    while (1) {
        printf_tiny("Enter the character code in range 0x00 <--> 0x07\n\r");
        ccode = get_hex_value();
        if (ccode < 0x08) {
            break;
        } else {
            printf_tiny("Invalid input\n\r");
        }
    }

    uint8_t char_array[8] = {0};

    // Prompt the user to enter pixel pattern hex format for each row of custom character
    printf_tiny("Enter pixel pattern hex format for each row of custom character\n\r");

    // Iterate through each row of the character
    for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
        printf_tiny("0x%x->", i);

        // Calculate the CGRAM address for each row of the custom character
        uint8_t cgram_address = 0b01000000 | (ccode << 3) | i;

        // Get the hex value for the pixel pattern in the row
        char_array[i] = get_hex_value() & 0b00011111;

        // Create the custom character in the LCD CGRAM
        lcdcreatechar(cgram_address, char_array[i]);

        // Display the custom character at the specified LCD display address
        lcdgotoaddr(address);
        lcdputch(ccode);
    }
}

