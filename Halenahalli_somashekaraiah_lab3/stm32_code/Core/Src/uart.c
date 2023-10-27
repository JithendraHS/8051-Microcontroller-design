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
 * @file uart.c
 * @brief Implementation of UART communication functions.
 * @author Jithendra H S
 * @date Oct 24, 2023
 */
#include "uart.h"
#include "stm32f4xx.h"
#include "pwm.h"

volatile uint8_t rx_head = 0, rx_tail = 0, tx_head = 0, tx_tail = 0;
volatile uint8_t tx_buffer[BUFFER_SIZE] = {0};
volatile uint8_t rx_buffer[BUFFER_SIZE] = {0};

/**
 * @brief Initializes UART communication on USART2 peripheral.
 */
void UART_Init() {
    // Clock gating GPIOA port
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    // Clock gating USART2 peripheral
    RCC->APB1ENR |= RCC_APB1ENR_USART2EN;

    // Configure PA2 and PA3 as alternate mode for UART communication
    GPIOA->MODER |= GPIO_MODER_MODER2_1 | GPIO_MODER_MODER3_1;
    GPIOA->AFR[0] |= (7 << GPIO_AFRL_AFSEL2_Pos) | (7 << GPIO_AFRL_AFSEL3_Pos);

    // Enable RX, TX, and RXNE interrupt for USART2
    USART2->CR1 |= USART_CR1_RE | USART_CR1_TE | USART_CR1_RXNEIE;

    // Set Baud rate to 9600 @ 16MHz (48MHz/9600  = 1667)
    USART2->BRR = 1667;

    // Enable UART
    USART2->CR1 |= USART_CR1_UE;

    // Enable USART2 interrupt in NVIC
    NVIC_EnableIRQ(USART2_IRQn);
}

/**
 * @brief Transmits a byte over UART.
 *
 * This function transmits a byte over UART by waiting until the UART transmit buffer
 * is empty (TXE bit set) and then writes the byte to the UART data register (DR).
 * It blocks until the byte is transmitted and then returns the transmitted byte.
 *
 * @param data The byte to be transmitted.
 * @return int8_t The transmitted byte.
 */
int8_t USART_Tx(int8_t data) {
    // Wait until the UART transmit buffer is empty (TXE bit set)
    while (!(USART2->SR & USART_SR_TXE)) {
        // Wait for the buffer to be empty
    }

    // Transmit the byte by writing it to the UART data register (DR)
    USART2->DR = data;

    return data; // Return the transmitted byte
}


/**
 * @brief Receives a byte over UART.
 *
 * This function waits until a byte is received over UART and then returns the received byte.
 * It checks the UART receive register status bit (RXNE) to ensure there is data available to read.
 * The function will block until a byte is received.
 *
 * @return int8_t The received byte.
 */
int8_t USART_Rx() {
    int8_t rx_data;

    // Wait until data is available in the UART receive buffer (RXNE bit set)
    while (!(USART2->SR & USART_SR_RXNE)) {
        // Wait for data to be received
    }

    // Read the received byte from the UART data register
    rx_data = USART2->DR;

    return rx_data; // Return the received byte
}


/**
 * @brief UART interrupt handler.
 */
void USART2_IRQHandler(void) {
    // Check if the interrupt is triggered by RXNE
    if(USART2->SR & USART_SR_RXNE) {
        rx_buffer[rx_head] = USART2->DR;
        rx_head = (rx_head + 1) % BUFFER_SIZE;
    } else if(USART2->SR & USART_SR_TXE) {
        // Check if the interrupt is triggered by TXE
        if(tx_head != tx_tail) {
            USART2->DR = tx_buffer[tx_tail];
            tx_tail = (tx_tail + 1) % BUFFER_SIZE;
        } else {
            // Disable TXE interrupt if buffer is empty
            USART2->CR1 &= ~USART_CR1_TXEIE;
        }
    }
}

/**
 * @brief Transmits a character over UART.
 *
 * @param c The character to be transmitted.
 */
void Tx_char(char c) {
    // Put the character into the transmit buffer
    tx_buffer[tx_head] = c;
    tx_head = (tx_head + 1) % BUFFER_SIZE;

    // Enable TXE interrupt to start transmission
    USART2->CR1 |= USART_CR1_TXEIE;
}

/**
 * @brief Prints an 8-bit value over UART and handles specific commands ('P', 'I', 'D').
 *
 * This function prints the provided 8-bit value over UART and performs actions based on specific commands:
 * - If the received character is 'P', it prints the current duty cycle value.
 * - If the received character is 'I', it increments the duty cycle by 5%.
 * - If the received character is 'D', it decrements the duty cycle by 5%.
 *
 * The function checks if there is data in the receive buffer and echoes the received characters back.
 * It formats the output for 'P' command to display the duty cycle value.
 *
 * @param value The 8-bit value to be printed.
 */
void print_uart(uint8_t value) {
    char c = 0;

    // Check if there is data in the receive buffer
    if (rx_head != rx_tail) {
        // Echo received characters back
        c = rx_buffer[rx_tail];
        Tx_char(c);
        rx_tail = (rx_tail + 1) % BUFFER_SIZE;
        USART_Tx('\n');
        USART_Tx('\r');
    }

    // Handle specific commands
    if (c == 'P') {
        print_string("Current duty_cycle: ");
        print_decimal(value);
    } else if (c == 'I') {
        // Increment duty cycle by 5%
        modify_duty_cycle(5, &increment_flag, 'I');
    } else if (c == 'D') {
        // Decrement duty cycle by 5%
        modify_duty_cycle(5, &increment_flag, 'D');
    }
}
/**
 * @brief Convert decimal to ascii.
 *
 * @param Number to convert to ascii.
 */
void print_decimal(uint8_t value)
{
	// Format and print the duty cycle value
	if (value / 100) {
	    USART_Tx(((value / 100) + '0'));
	}
	USART_Tx((((value / 10) % 10) + '0'));
	USART_Tx(((value % 10) + '0'));
	USART_Tx('\n');
	USART_Tx('\r');
}

/**
 * @brief Prints a null-terminated string over UART.
 *
 * This function takes a null-terminated string as input and transmits each character
 * over UART using the USART_Tx function until the null terminator is encountered.
 * It iterates through the input string and sends each character one by one over UART.
 *
 * @param string The null-terminated string to be printed.
 */
void print_string(char *string) {
    // Iterate through the input string until the null terminator is encountered
    while ((*string != '\0')) {
        // Transmit the current character over UART
        USART_Tx(*string);

        // Move to the next character in the input string
        string++;
    }
}

