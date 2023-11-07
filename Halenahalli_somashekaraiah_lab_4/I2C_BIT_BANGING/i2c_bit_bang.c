#include "i2c_bit_bang.h"
#include <mcs51reg.h>
#include <at89c51ed2.h>
#ifdef DEBUG
#include "debug.h"
#include <stdio.h>
#endif // DEBUG

#define SET_CIDL (1 << 7)
#define SET_CLOCK (1 << 1)
#define SET_ECOM (1 << 6)
#define SET_TOG (1 << 2)
#define SET_MATCH (1 << 3)
#define SET_X2 (0x35)  // Constant for configuring X2 mode in CKCON0 register
#define PULSE_HIGH 1
#define PULSE_LOW 0
#define NOP __asm nop __endasm
#define SCL P1_2
#define SDA P1_3
#define BYTE_LENGTH 8
#define START_BYTE (0b10100000)
#define WRITE_BYTE (0)
#define READ_BYTE (1)

void delay(unsigned int t)
{
  while(t--){
    NOP;
  } /* Decrement till it reaches 0 */
}

void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;
    uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
    for(int i = 0; i < BYTE_LENGTH; i++){
        SDA = byte & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        byte = byte << 1;
        delay(0);
    }
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
    for(int j = 0; j < BYTE_LENGTH; j++){
        SDA = address & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        address = address << 1;
        delay(0);
    }
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
    for(int k = 0; k < BYTE_LENGTH; k++){
        SDA = data & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        data = data << 1;
        delay(0);
    }
    SDA = PULSE_HIGH;
    SCL = PULSE_HIGH;
    delay(2);
#ifdef DEBUG
    if(SDA == PULSE_LOW){
        DEBUGPORT(DEBUG_PORT_ADDRESS, 0x55);
    }
#endif // DEBUG
    SCL = PULSE_LOW;
    delay(1);
    SDA = PULSE_LOW;
    delay(1);
    SCL = PULSE_HIGH;
    delay(0);
    SDA = PULSE_HIGH;
}
__xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;
    uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
    for(int i = 0; i < BYTE_LENGTH; i++){
        SDA = byte & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        byte = byte << 1;
        delay(0);
    }
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
    for(int j = 0; j < BYTE_LENGTH; j++){
        SDA = address & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        address = address << 1;
        delay(0);
    }
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
    for(int i = 0; i < BYTE_LENGTH; i++){
        SDA = byte & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        byte = byte << 1;
        delay(0);
    }
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

__xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
                                     __xdata uint8_t address_range){
    __xdata uint8_t buffer[256] = {0};
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;
    delay(2);
    SDA = PULSE_LOW;
    delay(2);
    SCL = PULSE_LOW;
    uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
    for(int i = 0; i < BYTE_LENGTH; i++){
        SDA = byte & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        byte = byte << 1;
        delay(0);
    }
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
    for(int j = 0; j < BYTE_LENGTH; j++){
        SDA = start_address & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        start_address = start_address << 1;
        delay(0);
    }
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
    for(int i = 0; i < BYTE_LENGTH; i++){
        SDA = byte & (0b10000000);
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        byte = byte << 1;
        delay(0);
    }
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
        if(l < address_range){
            SDA = PULSE_LOW;
            delay(0);
            SCL = PULSE_HIGH;
            delay(2);
            SCL = PULSE_LOW;
            delay(1);
        }
    }
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
    return buffer;
}

void eeprom_reset(){
    SCL = PULSE_HIGH;
    SDA = PULSE_HIGH;
    delay(2);
    SDA = PULSE_LOW;
    delay(0);
    SCL = PULSE_LOW;
    delay(0);
    for(int i = 0; i < (BYTE_LENGTH + 1); i++){
        SDA = PULSE_HIGH;
        SCL = PULSE_HIGH;
        delay(2);
        SCL = PULSE_LOW;
        delay(1);
    }
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
