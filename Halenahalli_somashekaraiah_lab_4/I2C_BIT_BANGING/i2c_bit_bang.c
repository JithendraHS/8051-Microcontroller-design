#include "i2c_bit_bang.h"
#include <mcs51reg.h>
#include <at89c51ed2.h>
#ifdef DEBUG
#include "debug.h"
#include <stdio.h>
#endif // DEBUG

#define START_BYTE (0b10100000)  // Start byte for I2C communication (including device address and write bit).
#define WRITE_BYTE (0)       // Value representing a write operation in I2C communication.
#define READ_BYTE (1)        // Value representing a read operation in I2C communication.

/**
 * @brief Delays the program execution for a specified number of cycles.
 * @param t Number of cycles to delay.
 */
void delay(unsigned int t)
{
    while(t--){
        NOP;  // Assembly NOP instruction for delaying program execution.
    } /* Decrement till it reaches 0 */
}

/**
 * @brief Sends a byte of data over I2C communication.
 * @param byte The byte of data to be sent.
 */
void sendByte(uint8_t byte) {
    for(int i = 0; i < BYTE_LENGTH; i++){
        SDA = byte & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        byte = byte << 1;
        delay(0);
    }
}

/**
 * @brief Writes a byte of data to a specific address in the EEPROM.
 * @param data The data byte to be written.
 * @param block The block number within the EEPROM.
 * @param address The address within the specified block.
 */
void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
    // Set the I2C clock and data lines to a high level to start the communication.
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;

    // Generate a start condition by pulling the data line low while the clock line is high.
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;

    // Construct the start byte including device address and write bit (0).
    uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;

    // Send the start byte.
    sendByte(byte);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    delay(0);
    // Send the address byte.
    sendByte(address);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    delay(0);
    // Send the data byte.
    sendByte(data);

    // Generate a stop condition by pulling the data line high while the clock line is high.
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);

    // DEBUG implementation: Check if SDA is low (an acknowledgment was not received).
    #ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55); // Send a debug signal or handle the error.
    }
    #endif // DEBUG
    // Generate a stop condition by pulling the data line high while the clock line is high.
    SCL = PULSE_LOW;
    delay(1);
    SDA = PULSE_LOW;
    delay(1);
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_HIGH;
}

/**
 * @brief Reads a byte of data from a specific address in the EEPROM.
 * @param block The block number within the EEPROM.
 * @param address The address within the specified block.
 * @return The data byte read from the EEPROM.
 */
__xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
    // Set the I2C clock and data lines to a high level to start the communication.
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;

    // Generate a start condition by pulling the data line low while the clock line is high.
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;

    // Construct the start byte including device address and write bit (0).
    uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;

    // Send the start byte.
    sendByte(byte);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(3);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    delay(0);
    // Send the address byte.
    sendByte(address);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    SDA = PULSE_HIGH;
    delay(2);
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;
    byte = START_BYTE | (block << 1) | READ_BYTE;

    // Send the repeated start byte.
    sendByte(byte);

    SDA = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
       DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    delay(2);
    byte = 0;
    for(int k = 0; k < BYTE_LENGTH; k++){
        byte = byte << 1;
        SCL = PULSE_HIGH;
        delay(2);
        byte |= SDA;
        SCL = PULSE_LOW;
        delay(1);
    }
    // Generate a stop condition by pulling the data line high while the clock line is high.
    SDA = PULSE_HIGH;
    delay(2);
    SCL = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_HIGH;
    delay(2);
    SDA = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    delay(2);
    return byte;
}


/**
 * @brief Reads a sequential range of bytes from the EEPROM.
 * @param block The block number within the EEPROM.
 * @param start_address The starting address within the specified block.
 * @param address_range The number of bytes to read sequentially.
 * @return A pointer to the read data array.
 */
__xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
                                     __xdata uint8_t address_range){
    // Declare a buffer to store the read data, initialized with zeros.
    __xdata uint8_t buffer[256] = {0};

    // Initialize the I2C communication by setting the clock and data lines to a high level.
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;

    // Construct the start byte including device address and write bit (0) for write operation.
    uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;

    // Send the start byte.
    sendByte(byte);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(3);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    delay(0);
    // Send the address byte.
    sendByte(start_address);

    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    SDA = PULSE_HIGH;
    delay(2);
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;
    byte = START_BYTE | (block << 1) | READ_BYTE;

    // Send the repeated start byte.
    sendByte(byte);
    SDA = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
       DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    delay(2);
    // Read the data bytes one by one and store them in the buffer.
    for(int l = 0; l < (address_range + 1); l++){
        for(int k = 0; k < BYTE_LENGTH; k++){
            SDA= PULSE_HIGH;
            buffer[l] = buffer[l] << 1;
            SCL = PULSE_HIGH;
            delay(1);
            buffer[l] |= SDA;
            SCL = PULSE_LOW;
            delay(1);
        }
        // Send acknowledgment after reading each byte except for the last byte.
        if(l < address_range){
            SDA = PULSE_LOW;
            delay(0);
            SCL = PULSE_HIGH;
            delay(2);
            SCL = PULSE_LOW;
            delay(1);
        }
    }
    // Generate a stop condition by pulling the data line high while the clock line is high.
    SDA = PULSE_HIGH;
    delay(2);
    SCL = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_HIGH;
    delay(2);
    SDA = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    delay(2);

    // Return the pointer to the read data array.
    return buffer;
}

/**
 * @brief Resets the EEPROM to its initial state.
 */
void eeprom_reset(){
    // Initialize the I2C communication by setting the clock and data lines to a high level.
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;
    delay(2);
    SDA = PULSE_LOW;
    delay(0);
    SCL = PULSE_LOW;
    delay(0);

    // Send a sequence of clock and data pulses to reset the EEPROM.
    for(int i = 0; i < (BYTE_LENGTH + 1); i++){
        SDA = PULSE_HIGH;
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        delay(1);
    }

    // Generate a start and stop stop condition by pulling the data line low
    // and high while the clock line is high.
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_LOW;
    delay(0);
    SCL = PULSE_LOW;
    SDA = PULSE_LOW;
    delay(1);
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_HIGH;
    delay(0);
    SCL = PULSE_LOW;
}

