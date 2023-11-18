#include "spi.h"
#include <at89c51ed2.h>
#include "stdio.h"
#include "uart.h"

#define CS (P1_4)
/**
 * @brief Initialize the SPI communication for the DAC.
 *
 * This function configures the SPI communication parameters for the MCP4802 DAC,
 * such as baud rate, clock phase, and enables SPI transmission.
 */
void spi_init() {
    printf("DAC\n\r");
    SPCON |= SPR1 | SPR0; // Set baud rate for 57600
    SPCON |= CPHA;               // Set clock phase to falling edge
    SPCON |= MSTR;               // Set MCU as SPI master
    SPCON |= SSDIS;              // Disable /SS in master and slave modes
    SPCON |= SPEN;               // Enable SPI transmission
}


/**
 * @brief Generate a waveform using SPI communication.
 *
 * This function generates a waveform by sending a sequence of values (0 to 255)
 * to the MCP4802 DAC using SPI communication. It starts from 0 and increments to 255,
 * then decrements back to 0, creating a triangular waveform. The CS (Chip Select)
 * signal is used to select and deselect the SPI device for each data transmission.
 */
void spi_wave_generator() {
    uint32_t t = 1000; // Number of times to repeat the waveform
    while (t) {
        // Generate an ascending triangular waveform (0 to 255)
        for (uint16_t i = 0; i <= 255; i++) {
            spi_single_value(i);
        }

        // Generate a descending triangular waveform (255 to 0)
        for (int16_t j = 255; j >= 0 ; j--) {
           spi_single_value(j);
        }
        t--; // Decrement the repetition counter
    }
}

/**
 * @brief Send a single value to the SPI device.
 *
 * This function sends a single 8-bit value (level) to the MCP4802 DAC using SPI communication.
 * It asserts the CS (Chip Select) signal to select the SPI device, sends the data using SPI,
 * and waits for the transmission to complete before deselecting the SPI device.
 *
 * @param level The 8-bit value to be sent to the SPI device.
 */
void spi_single_value(uint8_t level) {
    uint16_t cmd_data =  level;
    cmd_data = (cmd_data << 4) | 0x1000;
    uint8_t * c = &cmd_data;
    CS = 0;          // Select the SPI device (assert CS low)
    SPDAT = c[1];    // Send Instruction to SPI
    while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
    SPDAT = c[0];    // Send data to SPI
    while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
    CS = 1;          // Deselect the SPI device (assert CS high)
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

