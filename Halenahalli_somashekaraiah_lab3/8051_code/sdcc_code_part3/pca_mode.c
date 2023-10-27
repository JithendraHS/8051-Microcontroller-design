/*******************************************************************************
 * Copyright (C) 2023 by Jithendra H S                                         *
 *                                                                             *
 * Redistribution, modification or use of this software in source or binary    *
 * forms is permitted as long as the files maintain this copyright. Users      *
 * are permitted to modify this and use it to learn about the field of         *
 * embedded software. Jithendra H S and the University of Colorado are not     *
 * liable for any misuse of this material.                                     *
 ******************************************************************************/
 /**
 * @file pca_mode.c
 * @brief Contains functions for configuring PWM, Watchdog Timer, and High-Speed Output modes.
 * @author Jithendra H S
 * @date 10-27-2023
 */
#include "pca_mode.h"
#include <at89c51ed2.h>
#include <mcs51/8051.h>
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include <uart.h>
#include <stdio.h>

#define INITIAL_DUTYCYCLE (0xAA)
#define SET_CIDL (1 << 7)
#define SET_CLOCK (1 << 1)
#define SET_ECOM (1 << 6)
#define SET_PWM0 (1 << 1)
#define SET_CR (1 << 6)
#define SET_WDTIMER (0xFF)
#define SET_TOG (1 << 2)
#define SET_WDTE (1 << 6)
#define SET_MATCH (1 << 3)

#define SET_ECF (1 << 0)

#define SET_IDL (1 << 0)
#define SET_PD (1 << 1)

/**
 * @brief Initializes PWM module with a 33% duty cycle.
 */
void PWM_Init()
{
    CMOD &= ~SET_CIDL;   // clear CIDL bit to allow PCA to run in idle mode
    CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2

    CCAP0L = INITIAL_DUTYCYCLE; // Set low byte of CCAP0 (for a 33% duty cycle at 8-bit resolution)
    CCAP0H = INITIAL_DUTYCYCLE; // Set high byte of CCAP0 (for a 33% duty cycle at 8-bit resolution)

    CCAPM0 |= SET_ECOM; // Enable PWM mode for module 0 (bits ECOM0 and PWM0)
    CCAPM0 |= SET_PWM0;
    CCON |= SET_CR;  // Enable PCA counter
}

/**
 * @brief Initializes Watchdog Timer with a specified timeout.
 */
void WDT_Init()
{
    CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
    CCAP4L = SET_WDTIMER;
    CCAP4H = SET_WDTIMER;
    CCAPM4 |= SET_MATCH;
    CR =1; // Enable PCA counter
}

/**
 * @brief Initializes High-Speed Output module.
 */
void HSO_Init()
{
    CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
    CCAP1L = 0xFF; // Set low byte of CCAP1
    CCAP1H = 0xFF; // Set high byte of CCAP1

    // Enable HSO mode for module 1 (bit MAT1)
    CCAPM1 |= SET_TOG;
    CCAPM1 |= SET_MATCH;

    CR =1;  // Enable PCA counter
}

/**
 * @brief Starts the PWM output.
 */
void start_pwm()
{
    printf_tiny("Enabling PWM output\n\r");
    CCAPM0 |= SET_ECOM; // Enable PWM mode for module 0 (bit ECOM0)
}

/**
 * @brief Stops the PWM output.
 */
void stop_pwm()
{
    printf_tiny("Disabling PWM output\n\r");
    CCAPM0 &= ~SET_ECOM; // Disable PWM mode for module 0 (bitsECOM0)
}

/**
 * @brief Sets the minimum clock frequency supported by CKRL register.
 */
void set_min_frequency()
{
    printf_tiny("Setting minimum clock frequency\n\r");
    CKRL = 0x00;
}

/**
 * @brief Sets the maximum clock frequency supported by CKRL register.
 */
void set_max_frequency()
{
    printf_tiny("Setting maximum clock frequency\n\r");
    CKRL = 0xFF;
}
/**
 * @brief Sets the microcontroller to Idle mode.
 */
void set_power_idle_mode()
{
    printf_tiny("Setting power mode to idle\n\r");
    PCON |= SET_IDL;
}

/**
 * @brief Clears Idle mode, bringing the microcontroller back to active mode.
 */
void clear_power_idle_mode()
{
    printf_tiny("Clearing power mode idle\n\r");
    PCON &= ~SET_IDL;
}
/**
 * @brief Sets the microcontroller to Power Down mode.
 */
void set_power_down_mode()
{
    printf_tiny("Setting power mode to down\n\r");
    PCON |= SET_PD;
}
/**
 * @brief Clears Power Down mode, bringing the microcontroller back to active mode.
 */
void clear_power_down_mode()
{
    printf_tiny("Clearing power mode down\n\r");
    PCON &= ~SET_PD;
}

/**
 * @brief Enables the watchdog timer functionality.
 */
void start_watchdog_timer()
{
    printf_tiny("Enabled watchdog timer\n\r");
    CMOD |= SET_WDTE; // Enabling Watch dog timer function
    CCAPM4 |= SET_ECOM; // Enable WDT mode for module 4 (bit ECOM4)
}

/**
 * @brief Disables the watchdog timer functionality.
 */
void stop_watchdog_timer()
{
    printf_tiny("Disabled watchdog timer\n\r");
    CMOD &= ~SET_WDTE; // Disabling Watch dog timer function
    CCAPM4 &= ~SET_ECOM; // Disable WDT mode for module 4 (bit ECOM4)
}
/**
 * @brief Enables High-Speed Output functionality.
 */
void enable_highspeed_output()
{
    printf_tiny("Enabling High Speed output\n\r");
    CCAPM1 |= SET_ECOM;  // Enable HS for module 1 (bit ECOM1)
}
/**
 * @brief Disables High-Speed Output functionality.
 */
void disable_highspeed_output()
{
    printf_tiny("Disabling High Speed output\n\r");
    CCAPM1 &= ~SET_ECOM;  // Disable HS for module 1 (bit ECOM1)
}

