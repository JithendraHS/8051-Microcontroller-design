#include "stdint.h"

/**
 * @brief Delays the program execution for a specified number of cycles.
 * @param t Number of cycles to delay.
 */
void delay(unsigned int t);

/**
 * @brief Writes a byte of data to a specific address in the EEPROM.
 * @param data The data byte to be written.
 * @param block The block number within the EEPROM.
 * @param address The address within the specified block.
 */
void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address);

/**
 * @brief Reads a byte of data from a specific address in the EEPROM.
 * @param block The block number within the EEPROM.
 * @param address The address within the specified block.
 * @return The data byte read from the EEPROM.
 */
__xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address);

/**
 * @brief Reads a sequential range of bytes from the EEPROM.
 * @param block The block number within the EEPROM.
 * @param start_address The starting address within the specified block.
 * @param address_range The number of bytes to read sequentially.
 * @return A pointer to the read data array.
 */
__xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
                                      __xdata uint8_t address_range);

/**
 * @brief Resets the EEPROM to its initial state.
 */
void eeprom_reset();
