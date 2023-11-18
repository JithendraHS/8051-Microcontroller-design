#include "ioexpander.h"
#include "eeprom.h"
#include <mcs51reg.h>
#include <at89c51ed2.h>
#include "stdio.h"
#include "i2c_bit_bang.h"

void user_input_write_ioexpander_handle(__xdata uint8_t  data){
    // Write the data to the I/O port
    // Set the I2C clock and data lines to a high level to start the communication.
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;

    // Generate a start condition by pulling the data line low while the clock line is high.
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;

    // Construct the start byte including device address and write bit (0).
    uint8_t byte = 0b01110100;
    // Send the start byte.
    sendByte(byte);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
    SCL = PULSE_LOW;
    delay(0);

    // Send the data byte.
    sendByte(data);

    // looking for ack.
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
    // Generate a stop condition by pulling the data line high while the clock line is high.
    SCL = PULSE_LOW;
    delay(1);
    SDA = PULSE_LOW;
    delay(1);
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_HIGH;
}
__xdata uint8_t user_input_read_ioexpander_handle(){
     // Declare a buffer to store the read data, initialized with zeros.
    __xdata uint8_t buffer = 0;
    // Set the I2C clock and data lines to a high level to start the communication.
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;

    // Generate a start condition by pulling the data line low while the clock line is high.
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;

    // Construct the start byte including device address and read bit (1).
    uint8_t byte = 0b01110101;

    // Send the start byte.
    sendByte(byte);
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(3);
    SCL = PULSE_LOW;
    delay(0);

    for(int k = 0; k < BYTE_LENGTH; k++){
        SDA= PULSE_HIGH;
        buffer = buffer << 1;
        SCL = PULSE_HIGH;
        delay(1);
        buffer |= SDA;
        SCL = PULSE_LOW;
        delay(1);
    }
    // Generate a stop condition by pulling the data line high while the clock line is high.
    SDA = PULSE_LOW;
    delay(1);
    SCL = PULSE_HIGH;
    delay(1);
    SDA = PULSE_HIGH;
    delay(1);
    SCL = PULSE_LOW;
    delay(1);
    SDA = PULSE_LOW;
    return buffer;
}
void user_input_toggle_ioexpander_handle(){
    __xdata uint8_t data = user_input_read_ioexpander_handle();
    delay(0);
    user_input_write_ioexpander_handle(~data);
}
