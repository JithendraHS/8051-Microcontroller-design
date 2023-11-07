#include "stdint.h"

void delay(unsigned int t);
void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address);
__xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address);
__xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
                                      __xdata uint8_t address_range);
void eeprom_reset();
