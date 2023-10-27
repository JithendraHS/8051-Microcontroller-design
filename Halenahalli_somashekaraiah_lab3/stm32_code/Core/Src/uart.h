/*******************************************************************************
 * Copyright (C) 2023 by Jithendra H S
 *
 * Redistribution, modification, or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Jithendra H S and the University of Colorado are not liable for
 * any misuse of this material.
 * ****************************************************************************/
/**
 * @file uart.h
 * @brief Header file for UART communication functions.
 * @authorJithendra H S
 * @date Oct 24, 2023
 */

#ifndef SRC_UART_H_
#define SRC_UART_H_

#include "stdint.h"

// Buffer size for UART communication
#define BUFFER_SIZE 72

// External variables for UART buffer and pointers
extern volatile uint8_t rx_head;
extern volatile uint8_t rx_tail;
extern volatile uint8_t tx_head;
extern volatile uint8_t tx_tail;
extern volatile uint8_t tx_buffer[BUFFER_SIZE];
extern volatile uint8_t rx_buffer[BUFFER_SIZE];

/**
 * @brief Initializes UART communication.
 */
void UART_Init();

/**
 * @brief Transmits a byte over UART.
 *
 * @param data The byte to be transmitted.
 * @return int8_t Return value indicating the success of transmission.
 */
int8_t USART_Tx(int8_t data);

/**
 * @brief Receives a byte over UART.
 *
 * @return int8_t The received byte.
 */
int8_t USART_Rx();

/**
 * @brief UART interrupt handler.
 */
void USART2_IRQHandler(void);

/**
 * @brief Transmits a character over UART.
 *
 * @param c The character to be transmitted.
 */
void Tx_char(char c);

/**
 * @brief Prints an 8-bit value over UART.
 *
 * @param value The 8-bit value to be printed.
 */
void print_uart(uint8_t value);

/**
 * @brief Prints a string over UART.
 *
 * @param string The null-terminated string to be printed.
 */
void print_string(char *string);

/**
 * @brief Convert decimal to ascii.
 *
 * @param Number to convert to ascii.
 */
void print_decimal(uint8_t value);

#endif /* SRC_UART_H_ */

