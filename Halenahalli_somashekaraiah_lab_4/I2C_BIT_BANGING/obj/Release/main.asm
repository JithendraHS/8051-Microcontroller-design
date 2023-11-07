;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_size
	.globl _main
	.globl _user_input_reset_handle
	.globl _user_input_hex_dump_handle
	.globl _user_input_read_handle
	.globl _user_input_write_handle
	.globl _get_hex_value
	.globl __sdcc_external_startup
	.globl _echo
	.globl _menu
	.globl _eeprom_reset
	.globl _Byte_Read
	.globl _Byte_Write
	.globl _delay
	.globl _printf_tiny
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl ___sdcc_heap
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
___sdcc_heap::
	.ds 5000
_get_hex_value_char_received_196608_50:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:36: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:38: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
	orl	_AUXR,#0x0c
;	main.c:40: return 0;               // Return 0 to indicate successful startup
	mov	dptr,#0x0000
;	main.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_hex_value'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;char_received             Allocated with name '_get_hex_value_char_received_196608_50'
;------------------------------------------------------------
;	main.c:43: __xdata uint8_t get_hex_value(){
;	-----------------------------------------
;	 function get_hex_value
;	-----------------------------------------
_get_hex_value:
;	main.c:44: int8_t value = 0;
	mov	r7,#0x00
;	main.c:45: printf_tiny("0x");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	main.c:46: for(int i = 0; i < 2; i++){
	mov	r5,#0x00
	mov	r6,#0x00
00118$:
	clr	c
	mov	a,r5
	subb	a,#0x02
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00158$
	ljmp	00116$
00158$:
;	main.c:47: __xdata uint8_t char_received = echo(); // Read a character from UART
	push	ar7
	push	ar6
	push	ar5
	lcall	_echo
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_get_hex_value_char_received_196608_50
	mov	a,r4
	movx	@dptr,a
;	main.c:48: if((char_received >= '0') && (char_received <= '9')){
	mov	ar3,r4
	cjne	r3,#0x30,00159$
00159$:
	jc	00113$
	mov	ar3,r4
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00113$
;	main.c:49: char_received = char_received - '0'; // Convert ASCII character to its
	mov	a,r4
	add	a,#0xd0
	mov	dptr,#_get_hex_value_char_received_196608_50
	movx	@dptr,a
	sjmp	00114$
00113$:
;	main.c:51: }else if((char_received >= 'A') && (char_received <= 'F')){
	mov	dptr,#_get_hex_value_char_received_196608_50
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00162$
00162$:
	jc	00109$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00109$
;	main.c:52: char_received = char_received - 'A' + 10; // Convert ASCII character to its
	mov	dptr,#_get_hex_value_char_received_196608_50
	mov	a,#0xc9
	add	a,r4
	movx	@dptr,a
	sjmp	00114$
00109$:
;	main.c:54: }else if((char_received >= 'a') && (char_received <= 'f')){
	mov	dptr,#_get_hex_value_char_received_196608_50
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00165$
00165$:
	jc	00105$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00105$
;	main.c:55: char_received = char_received - 'a' + 10; // Convert ASCII character to its
	mov	dptr,#_get_hex_value_char_received_196608_50
	mov	a,#0xa9
	add	a,r4
	movx	@dptr,a
	sjmp	00114$
00105$:
;	main.c:57: }else if((char_received == '\n') || (char_received == '\r')){
	mov	dptr,#_get_hex_value_char_received_196608_50
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0a,00168$
	sjmp	00101$
00168$:
	cjne	r4,#0x0d,00114$
00101$:
;	main.c:58: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	main.c:59: break;
	sjmp	00116$
00114$:
;	main.c:61: value |= char_received << ((1 - i) * 4);
	mov	ar4,r5
	mov	a,#0x01
	clr	c
	subb	a,r4
	add	a,acc
	add	a,acc
	mov	r4,a
	mov	dptr,#_get_hex_value_char_received_196608_50
	movx	a,@dptr
	mov	r3,a
	mov	b,r4
	inc	b
	mov	a,r3
	sjmp	00173$
00171$:
	add	a,acc
00173$:
	djnz	b,00171$
	mov	r4,a
	orl	ar7,a
;	main.c:46: for(int i = 0; i < 2; i++){
	inc	r5
	cjne	r5,#0x00,00174$
	inc	r6
00174$:
	ljmp	00118$
00116$:
;	main.c:63: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	main.c:64: return value;
	mov	dpl,r7
;	main.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_write_handle'
;------------------------------------------------------------
;address                   Allocated with name '_user_input_write_handle_address_65536_55'
;data                      Allocated with name '_user_input_write_handle_data_65536_55'
;block                     Allocated with name '_user_input_write_handle_block_65536_55'
;------------------------------------------------------------
;	main.c:66: void user_input_write_handle(){
;	-----------------------------------------
;	 function user_input_write_handle
;	-----------------------------------------
_user_input_write_handle:
;	main.c:71: printf_tiny("Please enter address in hex format to store the data byte\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:72: address = get_hex_value();
	lcall	_get_hex_value
	mov	r7,dpl
;	main.c:77: printf_tiny("Please enter data in hex format to store\n\r");
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:78: data = get_hex_value();
	lcall	_get_hex_value
	mov	r6,dpl
	pop	ar7
;	main.c:85: Byte_Write(data, block, address);
	mov	dptr,#_Byte_Write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_Byte_Write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r6
	lcall	_Byte_Write
;	main.c:86: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:87: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_read_handle'
;------------------------------------------------------------
;address                   Allocated with name '_user_input_read_handle_address_65536_57'
;data                      Allocated with name '_user_input_read_handle_data_65536_57'
;block                     Allocated with name '_user_input_read_handle_block_65536_57'
;------------------------------------------------------------
;	main.c:89: void user_input_read_handle(){
;	-----------------------------------------
;	 function user_input_read_handle
;	-----------------------------------------
_user_input_read_handle:
;	main.c:94: printf_tiny("Please enter address in hex format to get the data byte\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:95: address = get_hex_value();
	lcall	_get_hex_value
	mov	r7,dpl
;	main.c:102: data = Byte_Read(block, address);
	mov	dptr,#_Byte_Read_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x07
	push	ar7
	lcall	_Byte_Read
	mov	r6,dpl
	pop	ar7
;	main.c:103: printf_tiny("Read byte--> 0x%x: 0x%x\n\r", address, data);
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar5
	push	ar7
	push	ar4
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:104: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_hex_dump_handle'
;------------------------------------------------------------
;address_range             Allocated to registers r6 
;i                         Allocated to registers r4 r5 
;data                      Allocated to registers r3 
;start_address             Allocated with name '_user_input_hex_dump_handle_start_address_65536_59'
;end_address               Allocated with name '_user_input_hex_dump_handle_end_address_65536_59'
;block                     Allocated with name '_user_input_hex_dump_handle_block_65536_59'
;------------------------------------------------------------
;	main.c:107: void user_input_hex_dump_handle(){
;	-----------------------------------------
;	 function user_input_hex_dump_handle
;	-----------------------------------------
_user_input_hex_dump_handle:
;	main.c:111: while(1){
00104$:
;	main.c:112: printf_tiny("Please enter start address in hex format\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:113: start_address = get_hex_value();
	lcall	_get_hex_value
	mov	r7,dpl
;	main.c:118: printf_tiny("Please enter end address in hex format\n\r");
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:119: end_address = get_hex_value();
	lcall	_get_hex_value
	mov	r6,dpl
	pop	ar7
;	main.c:124: if(end_address > start_address){
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00105$
;	main.c:127: printf_tiny("Invalid address range, end address should be greater than start address\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	sjmp	00104$
00105$:
;	main.c:129: uint8_t address_range = end_address - start_address + 1;
	mov	a,r6
	clr	c
	subb	a,r7
	mov	r6,a
	inc	r6
;	main.c:130: for(int i = 0; i < address_range; i++){
	mov	r4,#0x00
	mov	r5,#0x00
00110$:
	mov	ar2,r6
	mov	r3,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00136$
	ljmp	00108$
00136$:
;	main.c:131: if(i % 16 == 0){
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
;	main.c:132: printf_tiny("\n\r0x%x :",start_address);
	jnz	00107$
	mov	ar2,r7
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	main.c:134: uint8_t data = Byte_Read(block, start_address);
	mov	dptr,#_Byte_Read_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x07
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Byte_Read
	mov	r3,dpl
;	main.c:135: printf_tiny(" 0x%x", data);
	mov	r2,#0x00
	push	ar3
	push	ar2
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:136: start_address++;
	inc	r7
;	main.c:130: for(int i = 0; i < address_range; i++){
	inc	r4
	cjne	r4,#0x00,00138$
	inc	r5
00138$:
	ljmp	00110$
00108$:
;	main.c:138: printf_tiny("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:139: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:140: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_reset_handle'
;------------------------------------------------------------
;	main.c:142: void user_input_reset_handle(){
;	-----------------------------------------
;	 function user_input_reset_handle
;	-----------------------------------------
_user_input_reset_handle:
;	main.c:143: printf_tiny("Reset mode\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:144: eeprom_reset();
	lcall	_eeprom_reset
;	main.c:145: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;user_input                Allocated to registers r7 
;------------------------------------------------------------
;	main.c:147: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:151: menu();
	lcall	_menu
;	main.c:152: while(1)
00114$:
;	main.c:154: int8_t user_input = echo(); // Read user input from UART
	lcall	_echo
	mov	r7,dpl
;	main.c:155: if(((user_input >= '0') && (user_input <= '9'))
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00106$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
00106$:
;	main.c:156: || ((user_input >= 'A') && (user_input <= 'Z'))) {
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xc1
	jc	00102$
	mov	a,#(0x5a ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
00101$:
;	main.c:158: printf_tiny("Please enter commands in small cases\n\r");
	push	ar7
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
	sjmp	00103$
00102$:
;	main.c:160: printf_tiny("\n\r");  // Print newline for better output formatting
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
00103$:
;	main.c:162: switch(user_input) {
	cjne	r7,#0x65,00150$
	sjmp	00110$
00150$:
	cjne	r7,#0x68,00151$
	sjmp	00109$
00151$:
	cjne	r7,#0x72,00152$
	sjmp	00108$
00152$:
	cjne	r7,#0x77,00112$
;	main.c:164: user_input_write_handle();
	lcall	_user_input_write_handle
;	main.c:165: break;
;	main.c:166: case 'r':
	sjmp	00112$
00108$:
;	main.c:167: user_input_read_handle();
	lcall	_user_input_read_handle
;	main.c:168: break;
;	main.c:169: case 'h':
	sjmp	00112$
00109$:
;	main.c:170: user_input_hex_dump_handle();
	lcall	_user_input_hex_dump_handle
;	main.c:171: break;
;	main.c:172: case 'e':
	sjmp	00112$
00110$:
;	main.c:173: user_input_reset_handle();
	lcall	_user_input_reset_handle
;	main.c:177: }
00112$:
;	main.c:178: delay(3);
	mov	dptr,#0x0003
	lcall	_delay
;	main.c:180: }
	ljmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___sdcc_heap_size:
	.byte #0x88, #0x13	; 5000
	.area CONST   (CODE)
___str_0:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Please enter address in hex format to store the data byte"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Please enter data in hex format to store"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "============================================================"
	.ascii "============="
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Please enter address in hex format to get the data byte"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Read byte--> 0x%x: 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Please enter start address in hex format"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Please enter end address in hex format"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Invalid address range, end address should be greater than st"
	.ascii "art address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "0x%x :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii " 0x%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Reset mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Please enter commands in small cases"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
