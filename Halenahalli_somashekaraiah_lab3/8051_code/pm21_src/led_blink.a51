       .org 200BH
       LJMP ISR_TIMER0
       .org 3000H
MAIN :
       CLR P1.1
       CLR P1.2
       CLR P1.3
       ORL TMOD, #01H
   WHILE:
        MOV R7,#01H
    FAST_RESET:
        JB P1.3, SLOW
        MOV TH0, #000H
        MOV TL0, #000H
    FAST_REMAINING: SETB TR0
    FAST_POLL: JNB TF0, FAST_POLL
        CLR TR0
        CLR TF0
        INC R7
        CJNE R7,#06H, FAST_RESET
        SETB EA
        SETB ET0
        MOV R7, #00H
        MOV TH0, #0E3H
        MOV TL0, #0D7H
        SJMP FAST_REMAINING
    SJMP WHILE    
    SLOW :
         MOV R7, #01H
    SLOW_RESET:
	            JNB P1.3, WHILE
				MOV TH0, #00H
                MOV TL0, #00H
    SLOW_REMAINING: SETB TR0
    SLOW_POLL: JNB TF0, SLOW_POLL
        CLR TR0
        CLR TF0
        INC R7
        CJNE R7,#18H, SLOW_RESET
        SETB EA
        SETB ET0
        MOV R7, #00H
        MOV TH0, #0A8H
        MOV TL0, #0F6H
		CLR P1.3
        SJMP SLOW_REMAINING
    SJMP WHILE

ISR_TIMER0 :
        CPL P1.2
        CPL P1.1
        CLR ET0
        SETB TF0 
	CPL P1.2
        RETI
