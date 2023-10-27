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
 * @file pca_mode.h
 * @brief Contains functions for configuring PWM, Watchdog Timer, and High-Speed Output modes.
 * @author Jithendra H S
 * @date 10-27-2023
 */
/**
 * @brief Initializes the PWM module with a default configuration.
 */
void PWM_Init();

/**
 * @brief Initializes the Watchdog Timer with default settings.
 */
void WDT_Init();

/**
 * @brief Initializes the High-Speed Output module with default parameters.
 */
void HSO_Init();

/**
 * @brief Starts the PWM output.
 */
void start_pwm();

/**
 * @brief Stops the PWM output.
 */
void stop_pwm();

/**
 * @brief Sets the microcontroller's clock frequency to the minimum supported value.
 */
void set_min_frequency();

/**
 * @brief Sets the microcontroller's clock frequency to the maximum supported value.
 */
void set_max_frequency();

/**
 * @brief Sets the microcontroller to Idle mode.
 */
void set_power_idle_mode();

/**
 * @brief Clears Idle mode, bringing the microcontroller back to active mode.
 */
void clear_power_idle_mode();

/**
 * @brief Sets the microcontroller to Power Down mode.
 */
void set_power_down_mode();

/**
 * @brief Clears Power Down mode, bringing the microcontroller back to active mode.
 */
void clear_power_down_mode();

/**
 * @brief Starts the watchdog timer functionality.
 */
void start_watchdog_timer();

/**
 * @brief Stops the watchdog timer functionality.
 */
void stop_watchdog_timer();

/**
 * @brief Enables the High-Speed Output functionality.
 */
void enable_highspeed_output();

/**
 * @brief Disables the High-Speed Output functionality.
 */
void disable_highspeed_output();
