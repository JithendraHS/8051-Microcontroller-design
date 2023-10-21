/*****************************************************************************
* Copyright (C) 2017 by Jithendra
*
* Redistribution, modification or use of this software in source or binary
* forms is permitted as long as the files maintain this copyright. Users are
* permitted to modify this and use it to learn about the field of embedded
* software. Jithendra and the University of Colorado are not liable for
* any misuse of this material.
*
*****************************************************************************/
/**
* @file EPROM.asm
* @brief Checking writing to external memory  and buffer works 
*
*
* @Jithendra H S
* @date Oct 06 2023
*
*/
       ORG 0000H 
       LJMP MAIN                    // Initilizing NVRAM at memory 0000H and Jump to MAIN Module stored memory address

       ORG 000BH                    // Interrupt address of Timer/counter 0 
       LJMP ISR_TIMER0              // Jump to interrupt service routine defined code segment

MAIN :
       MOV DPTR, #1111H
       ORL TMOD, #01H               // Enabling 'Timer 0' to mode 1
	   CLR P1.1
	   MOV R0, #00H
	   MOV R1, #80H
   WHILE:
        MOV R7,#01H                 // Initilaizing R7 to 1 for loop purpose
    FAST_RESET:
        MOV TH0, #000H              // Initiating Higher byte of 'Timer 0' to 0
        MOV TL0, #000H              // Initiating Lower byte 'Timer 0' to 0
    FAST_REMAINING: SETB TR0        // Starting 'Timer 0' by setting 'Timer 0' run control bit
    FAST_POLL: JNB TF0, FAST_POLL   // Polling till 'Timer 0' overflow by checking overflow bit of 'Timer 0' at TCON
        CLR TR0                     // Resetting 'Timer 0' run control bit
        CLR TF0                     // Resetting 'Timer 0' overflow control bit
        INC R7                      // Incrementing R7 using for loop condition
		MOV A, R0
        MOVX @DPTR, A
		INC R0
		CJNE R0, #80H, NO_RESET
		MOV R0,#00H
	NO_RESET: CJNE R7,#06H, FAST_RESET    // Compare if the reuired number of times the loop is executed
        SETB EA                     // Enabling Interrupt Enable register
        SETB ET0                    // Enabling Interrupt for 'Timer 0'
        MOV R7, #00H                // Resetting R7 used for loop purpose
        MOV TH0, #0E3H              // Setting Higher byte of 'Timer 0' to remaining number of counts which is less than 65536(2^16)
        MOV TL0, #0D7H              // Setting Lower byte of 'Timer 0' to remaining number of counts which is less than 65536(2^16)
		SJMP FAST_REMAINING         // Jumping back to do polling for remaining counts
    SJMP WHILE                      // Jumping back to WHILE loop for repeat

ISR_TIMER0 :
        MOV A, R1
        MOVX @DPTR, A
		INC R1
		CJNE R1, #0FFH, NO_RESET_INT
		MOV R1,#80H
	NO_RESET_INT:
		CPL P1.1
		CLR ET0                     // Disabling Interrupt for 'Timer 0'
        SETB TF0                    // Resetting 'Timer 0' overflow bit
        RETI
		
END