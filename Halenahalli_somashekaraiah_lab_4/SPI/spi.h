#include "stdint.h"
/**
 * @brief Initialize the SPI communication.
 */
void spi_init();

/**
 * @brief Generate a wave using SPI communication.
 */
void spi_wave_generator();

/**
 * @brief Send a single value through SPI communication.
 * @param level The value to be sent (8 bits).
 */
void spi_single_value(uint8_t level);

/**
 * @brief Get a hexadecimal value from the user through UART.
 * @return The hexadecimal value entered by the user.
 */
uint8_t get_hex_value();

