;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _echo
	.globl _eeprom_reset
	.globl _Byte_Read_Sequential
	.globl _Byte_Read
	.globl _Byte_Write
	.globl _printf_tiny
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
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
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
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _get_hex_value
	.globl _user_input_write_handle
	.globl _user_input_read_handle
	.globl _user_input_hex_dump_handle
	.globl _user_input_reset_handle
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
_get_hex_value_char_received_196608_51:
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'get_hex_value'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;char_received             Allocated with name '_get_hex_value_char_received_196608_51'
;------------------------------------------------------------
;	eeprom.c:12: __xdata uint8_t get_hex_value(){
;	-----------------------------------------
;	 function get_hex_value
;	-----------------------------------------
_get_hex_value:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	eeprom.c:13: int8_t value = 0;
	mov	r7,#0x00
;	eeprom.c:14: printf_tiny("0x");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	eeprom.c:15: for(int i = 0; i < 2; i++){
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
;	eeprom.c:16: __xdata uint8_t char_received = echo(); // Read a character from UART
	push	ar7
	push	ar6
	push	ar5
	lcall	_echo
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_get_hex_value_char_received_196608_51
	mov	a,r4
	movx	@dptr,a
;	eeprom.c:17: if((char_received >= '0') && (char_received <= '9')){
	mov	ar3,r4
	cjne	r3,#0x30,00159$
00159$:
	jc	00113$
	mov	ar3,r4
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00113$
;	eeprom.c:18: char_received = char_received - '0'; // Convert ASCII character to its
	mov	a,r4
	add	a,#0xd0
	mov	dptr,#_get_hex_value_char_received_196608_51
	movx	@dptr,a
	sjmp	00114$
00113$:
;	eeprom.c:20: }else if((char_received >= 'A') && (char_received <= 'F')){
	mov	dptr,#_get_hex_value_char_received_196608_51
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00162$
00162$:
	jc	00109$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00109$
;	eeprom.c:21: char_received = char_received - 'A' + 10; // Convert ASCII character to its
	mov	dptr,#_get_hex_value_char_received_196608_51
	mov	a,#0xc9
	add	a,r4
	movx	@dptr,a
	sjmp	00114$
00109$:
;	eeprom.c:23: }else if((char_received >= 'a') && (char_received <= 'f')){
	mov	dptr,#_get_hex_value_char_received_196608_51
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x61,00165$
00165$:
	jc	00105$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00105$
;	eeprom.c:24: char_received = char_received - 'a' + 10; // Convert ASCII character to its
	mov	dptr,#_get_hex_value_char_received_196608_51
	mov	a,#0xa9
	add	a,r4
	movx	@dptr,a
	sjmp	00114$
00105$:
;	eeprom.c:26: }else if((char_received == '\n') || (char_received == '\r')){
	mov	dptr,#_get_hex_value_char_received_196608_51
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0a,00168$
	sjmp	00101$
00168$:
	cjne	r4,#0x0d,00114$
00101$:
;	eeprom.c:27: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	eeprom.c:28: break;
	sjmp	00116$
00114$:
;	eeprom.c:30: value |= char_received << ((1 - i) * 4);
	mov	ar4,r5
	mov	a,#0x01
	clr	c
	subb	a,r4
	add	a,acc
	add	a,acc
	mov	r4,a
	mov	dptr,#_get_hex_value_char_received_196608_51
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
;	eeprom.c:15: for(int i = 0; i < 2; i++){
	inc	r5
	cjne	r5,#0x00,00174$
	inc	r6
00174$:
	ljmp	00118$
00116$:
;	eeprom.c:32: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	eeprom.c:33: return value;
	mov	dpl,r7
;	eeprom.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_write_handle'
;------------------------------------------------------------
;address                   Allocated with name '_user_input_write_handle_address_65536_56'
;data                      Allocated with name '_user_input_write_handle_data_65536_56'
;block                     Allocated with name '_user_input_write_handle_block_65536_56'
;------------------------------------------------------------
;	eeprom.c:42: void user_input_write_handle(){
;	-----------------------------------------
;	 function user_input_write_handle
;	-----------------------------------------
_user_input_write_handle:
;	eeprom.c:48: while(1){
00104$:
;	eeprom.c:49: printf_tiny("Please enter block # in hex format to store data\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:50: block = get_hex_value();
	lcall	_get_hex_value
;	eeprom.c:53: if(block > 7){
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00102$
;	eeprom.c:54: printf_tiny("Please enter block # in range of 0-7\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:55: continue;
	sjmp	00104$
00102$:
;	eeprom.c:58: printf_tiny("Please enter address in hex format to store the data byte\n\r");
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:59: address = get_hex_value();
	lcall	_get_hex_value
	mov	r6,dpl
;	eeprom.c:60: printf_tiny("Please enter data in hex format to store\n\r");
	push	ar6
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:61: data = get_hex_value();
	lcall	_get_hex_value
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	eeprom.c:66: Byte_Write(data, block, address);
	mov	dptr,#_Byte_Write_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_Byte_Write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r5
	lcall	_Byte_Write
;	eeprom.c:68: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_read_handle'
;------------------------------------------------------------
;address                   Allocated with name '_user_input_read_handle_address_65536_59'
;data                      Allocated with name '_user_input_read_handle_data_65536_59'
;block                     Allocated with name '_user_input_read_handle_block_65536_59'
;------------------------------------------------------------
;	eeprom.c:74: void user_input_read_handle(){
;	-----------------------------------------
;	 function user_input_read_handle
;	-----------------------------------------
_user_input_read_handle:
;	eeprom.c:80: while(1){
00104$:
;	eeprom.c:81: printf_tiny("Please enter block # in hex format to read data\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:82: block = get_hex_value();
	lcall	_get_hex_value
;	eeprom.c:85: if(block > 7){
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00102$
;	eeprom.c:86: printf_tiny("Please enter block # in range of 0-7\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:87: continue;
	sjmp	00104$
00102$:
;	eeprom.c:90: printf_tiny("Please enter address in hex format to get the data byte\n\r");
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:91: address = get_hex_value();
	lcall	_get_hex_value
	mov	r6,dpl
	pop	ar7
;	eeprom.c:96: data = Byte_Read(block, address);
	mov	dptr,#_Byte_Read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	push	ar6
	lcall	_Byte_Read
	mov	r7,dpl
	pop	ar6
;	eeprom.c:99: printf_tiny("Read byte--> 0x%x: 0x%x\n\r", address, data);
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar7
	push	ar5
	push	ar6
	push	ar4
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	eeprom.c:100: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_hex_dump_handle'
;------------------------------------------------------------
;buffer                    Allocated to registers r4 r7 
;address_range             Allocated to registers r5 
;i                         Allocated to registers r2 r3 
;start_address             Allocated with name '_user_input_hex_dump_handle_start_address_65536_62'
;end_address               Allocated with name '_user_input_hex_dump_handle_end_address_65536_62'
;block                     Allocated with name '_user_input_hex_dump_handle_block_65536_62'
;------------------------------------------------------------
;	eeprom.c:107: void user_input_hex_dump_handle(){
;	-----------------------------------------
;	 function user_input_hex_dump_handle
;	-----------------------------------------
_user_input_hex_dump_handle:
;	eeprom.c:114: while(1){
00106$:
;	eeprom.c:115: printf_tiny("Please enter block # in hex format to read data\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:116: block = get_hex_value();
	lcall	_get_hex_value
;	eeprom.c:119: if(block > 7){
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00102$
;	eeprom.c:120: printf_tiny("Please enter block # in range of 0-7\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:121: continue;
	sjmp	00106$
00102$:
;	eeprom.c:124: printf_tiny("Please enter start address in hex format\n\r");
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:125: start_address = get_hex_value();
	lcall	_get_hex_value
	mov	r6,dpl
;	eeprom.c:126: printf_tiny("Please enter end address in hex format\n\r");
	push	ar6
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:127: end_address = get_hex_value();
	lcall	_get_hex_value
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	eeprom.c:130: if(end_address > start_address){
	clr	c
	mov	a,r6
	subb	a,r5
	jc	00107$
;	eeprom.c:134: printf_tiny("Invalid address range, end address should be greater than start address\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	sjmp	00106$
00107$:
;	eeprom.c:137: uint8_t address_range = end_address - start_address;
	mov	a,r5
	clr	c
	subb	a,r6
	mov	r5,a
;	eeprom.c:138: buffer = Byte_Read_Sequential(block, start_address, address_range);
	mov	dptr,#_Byte_Read_Sequential_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_Byte_Read_Sequential_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
	push	ar6
	push	ar5
	lcall	_Byte_Read_Sequential
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
;	eeprom.c:141: for(int i = 0; i < (address_range + 1); i++){
	mov	r2,#0x00
	mov	r3,#0x00
00112$:
	mov	ar0,r5
	mov	r1,#0x00
	inc	r0
	cjne	r0,#0x00,00143$
	inc	r1
00143$:
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00144$
	ljmp	00110$
00144$:
;	eeprom.c:142: if(i % 16 == 0){
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
;	eeprom.c:143: printf_tiny("\n\r0x%x :",start_address);
	jnz	00109$
	mov	ar0,r6
	mov	r1,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	eeprom.c:145: printf_tiny(" 0x%x", buffer[i]);
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	eeprom.c:146: start_address++;
	inc	r6
;	eeprom.c:141: for(int i = 0; i < (address_range + 1); i++){
	inc	r2
	cjne	r2,#0x00,00146$
	inc	r3
00146$:
	ljmp	00112$
00110$:
;	eeprom.c:149: printf_tiny("\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:150: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_reset_handle'
;------------------------------------------------------------
;	eeprom.c:157: void user_input_reset_handle(){
;	-----------------------------------------
;	 function user_input_reset_handle
;	-----------------------------------------
_user_input_reset_handle:
;	eeprom.c:158: printf_tiny("Reset mode\n\r");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:161: eeprom_reset();
	lcall	_eeprom_reset
;	eeprom.c:163: printf_tiny("=========================================================================\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	eeprom.c:164: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
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
	.ascii "Please enter block # in hex format to store data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Please enter block # in range of 0-7"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Please enter address in hex format to store the data byte"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Please enter data in hex format to store"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "============================================================"
	.ascii "============="
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Please enter block # in hex format to read data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Please enter address in hex format to get the data byte"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Read byte--> 0x%x: 0x%x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Please enter start address in hex format"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Please enter end address in hex format"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Invalid address range, end address should be greater than st"
	.ascii "art address"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "0x%x :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii " 0x%x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Reset mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
