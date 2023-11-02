.syntax unified
.cpu cortex-m4

.section .text
.global calculate

calculate:
    // R0 = param1 , R1 = param2 and R2 = param3
    MUL R3, R1, R2      //R3 = R1*R2
    UDIV R4, R3, R0     //R4 = R3/R0
    MUL R5, R4, R0      //R5 = R4*R0
    SUB R3, R5          //R3 = R3-R5
    MOV R0, R3          //Return R0
    bx lr
