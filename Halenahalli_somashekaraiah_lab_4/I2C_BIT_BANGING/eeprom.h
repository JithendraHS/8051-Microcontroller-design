#include "stdint.h"

/**
 * @brief Gets a hexadecimal value from user input.
 * @return The hexadecimal value entered by the user.
 */
__xdata uint8_t get_hex_value();

/**
 * @brief Handles user input for writing data to the EEPROM.
 */
void user_input_write_handle();

/**
 * @brief Handles user input for reading data from the EEPROM.
 */
void user_input_read_handle();

/**
 * @brief Handles user input for dumping data from the EEPROM in hexadecimal format.
 */
void user_input_hex_dump_handle();

/**
 * @brief Handles user input for resetting the EEPROM.
 */
void user_input_reset_handle();

