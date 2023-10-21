; Name: Jithendra H S
; Description: Program to find Z = (X)/(Y*4)
; Date: 09-15-2023

ORG 0000H  ; Initiating IRAM to 0000h address

MOV A,#40H ; Initializing X value to Accumulator
MOV B,#03H ; Initializing Y value to B(math register)
MOV R2,#04H ; Constant 4

MOV 20H,#0H ; Initializing expected memory addresses 20H-25H and 30H to Zero
MOV 21H,#0H
MOV 22H,#0H
MOV 23H,#0H
MOV 24H,#0H
MOV 25H,#0H
MOV 30H,#0H

MOV R0,#20H ; Creating indirect addressing
MOV R1,#22H
MOV @R0,A   ; Putting Accumulator(X) value to address 20H

MOV A,B     ; Moving Divisor to A to do operations
JZ DIVISOR_ZERO ; Check for divisor not zero
MOV @R1,B   ; Putting B register(Y) value to address 22H
MULTIPLY :
          RLC A  ; Rotate left with carry
          JC EXCEEDED ;Checking if value going behind 8-bit
          DEC R2  ; decrement constant multiply value by 2
          DJNZ R2,MULTIPLY ; Loop if constant multiply value not reduced to zero

MOV B,A  ; Store the denominator value(Y*4) back to B register
MOV 023H,B ; Store B(y*4) in 023H address
MOV A,@R0  ; take back X value into accumulator
INC R0
MOV @R0,A  ; placing X value to address 21H address
MOV R0,#24H ; creating indirect addressing
DIVIDE :
         MOV 25H,A ; Storing remainder
         SUBB A,B  ; Subtracting Dividend by divisor
         JC ENDLOOP ; Jump if carry bit is set in the PSW(this happens when Dividend value less than Divisor)
         INC @R0 ; Location for Z variable(quotient)
         SJMP DIVIDE ; Loop for next iteration of subtraction

ENDLOOP : SJMP ENDLOOP
DIVISOR_ZERO : MOV 30H,#01 ;loading error code
               SJMP ENDLOOP
EXCEEDED : MOV 30H,#02H ;loading error code
           SJMP ENDLOOP
END
