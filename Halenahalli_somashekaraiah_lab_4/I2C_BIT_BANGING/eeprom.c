#include "eeprom.h"
#include <stdio.h>
#include <stdlib.h>
#include <at89c51ed2.h>
#include "i2c_bit_bang.h"
#include "uart.h"
__xdata uint8_t get_hex_value(){
    int8_t value = 0;
    printf_tiny("0x");
    for(int i = 0; i < 2; i++){
        __xdata uint8_t char_received = echo(); // Read a character from UART
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
            break;
        }
        value |= char_received << ((1 - i) * 4);
    }
    printf_tiny("\n\r");
    return value;
}
void user_input_write_handle(){
    __xdata uint8_t  address = 0;
    __xdata uint8_t  data = 0;
    __xdata uint8_t block = 0;
    while(1){
        printf_tiny("Please enter block # in hex format to store data\n\r");
        block = get_hex_value();
        if(block > 7){
            printf_tiny("Please enter block # in range of 0-7\n\r");
            continue;
        }
        printf_tiny("Please enter address in hex format to store the data byte\n\r");
        address = get_hex_value();
        printf_tiny("Please enter data in hex format to store\n\r");
        data = get_hex_value();
        break;
    }
    Byte_Write(data, block, address);
    printf_tiny("=========================================================================\n\r");
}

void user_input_read_handle(){
    __xdata uint8_t  address = 0;
    __xdata uint8_t  data = 0;
    __xdata uint8_t block = 0;
    while(1){
        printf_tiny("Please enter block # in hex format to store data\n\r");
        block = get_hex_value();
        if(block > 7){
            printf_tiny("Please enter block # in range of 0-7\n\r");
            continue;
        }
        printf_tiny("Please enter address in hex format to get the data byte\n\r");
        address = get_hex_value();
        break;
    }
    data = Byte_Read(block, address);
    printf_tiny("Read byte--> 0x%x: 0x%x\n\r", address, data);
    printf_tiny("=========================================================================\n\r");
}

void user_input_hex_dump_handle(){
    __xdata uint8_t start_address = 0;
    __xdata uint8_t end_address = 0;
    __xdata uint8_t block = 0;
    __xdata uint8_t * buffer;
    while(1){
        printf_tiny("Please enter block # in hex format to store data\n\r");
        block = get_hex_value();
        if(block > 7){
            printf_tiny("Please enter block # in range of 0-7\n\r");
            continue;
        }
        printf_tiny("Please enter start address in hex format\n\r");
        start_address = get_hex_value();
        printf_tiny("Please enter end address in hex format\n\r");
        end_address = get_hex_value();
        if(end_address > start_address){
            break;
        }
        printf_tiny("Invalid address range, end address should be greater than start address\n\r");
    }
    uint8_t address_range = end_address - start_address;
    buffer = Byte_Read_Sequential(block, start_address, address_range);
    for(int i = 0; i < (address_range + 1); i++){
         if(i % 16 == 0){
            printf_tiny("\n\r0x%x :",start_address);
         }
         printf_tiny(" 0x%x", buffer[i]);
         start_address++;
    }
    printf_tiny("\n\r");
    printf_tiny("=========================================================================\n\r");
}

void user_input_reset_handle(){
    printf_tiny("Reset mode\n\r");
    eeprom_reset();
    printf_tiny("=========================================================================\n\r");
}
