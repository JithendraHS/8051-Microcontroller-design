/*******************************************************************************
 * Copyright (C) 2023 by Jithendra H S                                         *
 *                                                                             *
 * Redistribution, modification or use of this software in source or binary    *
 * forms is permitted as long as the files maintain this copyright. Users      *
 * are permitted to modify this and use it to learn about the field of         *
 * embedded software. Jithendra H S and the University of Colorado are not     *
 * liable for any misuse of this material.                                     *
 ******************************************************************************/
#define DEBUG_PORT_ADDRESS 0x7FFEh
#ifdef DEBUG
 #define DEBUGPORT(address, value) (*((volatile unsigned char*)(address)) = (value))
                                // generates a MOVX 0x7FFEh,x where x is an 8-bit
#else
 #define DEBUGPORT(x) // empty statement, nothing passed on from the preprocessor
                      // to the compiler
#endif // DEBUG

