;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lcd_command_PARM_3
	.globl _lcd_command_PARM_2
	.globl _get_hex_value
	.globl _echo
	.globl _printf_tiny
	.globl _printf
	.globl _delay
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
	.globl _db
	.globl _arrow_set_PARM_3
	.globl _arrow_set_PARM_2
	.globl _lcdcreatechar_PARM_2
	.globl _lcdgotoxy_PARM_2
	.globl _clockrun_flag
	.globl _ptr
	.globl _lcd_command
	.globl _lcdbusywait
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
	.globl _lcdinit
	.globl _lcdclear
	.globl _test_functionality
	.globl _set_cgram_address
	.globl _lcdcreatechar
	.globl _reset_clock
	.globl _clock_run
	.globl _menu_lcd
	.globl _arrow_set
	.globl _set_ddram_address
	.globl _read_xxram_address
	.globl _ddram_hex_dump
	.globl _cgram_hex_dump
	.globl _process_custom_character
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
_ptr::
	.ds 2
_min_high:
	.ds 1
_min_low:
	.ds 1
_sec_high:
	.ds 1
_sec_low:
	.ds 1
_mili_sec:
	.ds 1
_clockrun_flag::
	.ds 2
_custom_char_code:
	.ds 1
_elapsed_tick:
	.ds 4
_lcdgotoxy_PARM_2:
	.ds 1
_lcdcreatechar_PARM_2:
	.ds 1
_arrow_set_PARM_2:
	.ds 1
_arrow_set_PARM_3:
	.ds 1
_process_custom_character_char_array_65537_92:
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_lcd_command_PARM_2:
	.ds 1
_lcd_command_PARM_3:
	.ds 1
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
_lcdgotoxy_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_db::
	.ds 1
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
;	lcd.c:31: extern __xdata uint8_t * ptr = &db;
	mov	_ptr,#_db
	mov	(_ptr + 1),#(_db >> 8)
;	lcd.c:37: extern volatile unsigned int clockrun_flag = 0;
	clr	a
	mov	_clockrun_flag,a
	mov	(_clockrun_flag + 1),a
;	lcd.c:39: static uint8_t custom_char_code = 1;
	mov	_custom_char_code,#0x01
;	lcd.c:40: static uint32_t  elapsed_tick = 0;
	mov	_elapsed_tick,a
	mov	(_elapsed_tick + 1),a
	mov	(_elapsed_tick + 2),a
	mov	(_elapsed_tick + 3),a
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
;Allocation info for local variables in function 'lcd_command'
;------------------------------------------------------------
;r_w                       Allocated with name '_lcd_command_PARM_2'
;data                      Allocated with name '_lcd_command_PARM_3'
;rs                        Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:48: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
;	-----------------------------------------
;	 function lcd_command
;	-----------------------------------------
_lcd_command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lcd.c:49: RS = rs;              // Set the Register Select pin based on the provided parameter.
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P1_6,c
;	lcd.c:50: R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
;	assignBit
	mov	a,_lcd_command_PARM_2
	add	a,#0xff
	mov	_P1_7,c
;	lcd.c:51: *ptr = data;          // Write the specified data byte to the LCD data buffer.
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,_lcd_command_PARM_3
	movx	@dptr,a
;	lcd.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	lcd.c:57: void lcdbusywait() {
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	lcd.c:58: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
;	assignBit
	clr	_P1_6
;	lcd.c:59: R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
;	assignBit
	setb	_P1_7
;	lcd.c:60: while (*ptr & (0b10000000)) {
00101$:
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	jb	acc.7,00101$
;	lcd.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:69: void lcdgotoaddr(uint8_t addr) {
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	r7,dpl
;	lcd.c:70: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
;	assignBit
	clr	_P1_6
;	lcd.c:71: R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
;	assignBit
	clr	_P1_7
;	lcd.c:72: *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	orl	ar7,#0x80
	mov	a,r7
	movx	@dptr,a
;	lcd.c:73: lcdbusywait();               // Wait until the LCD becomes idle.
;	lcd.c:74: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:81: void lcdgotoxy(uint8_t row, uint8_t column) {
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
;	lcd.c:83: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
	mov	r6,dpl
	mov	r7,#0x00
	mov	a,r6
	jnb	acc.0,00103$
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	orl	a,r5
	cjne	a,#0x01,00110$
00110$:
	mov  _lcdgotoxy_sloc0_1_0,c
	clr	a
	rlc	a
	swap	a
	anl	a,#0xf0
	mov	r4,_lcdgotoxy_PARM_2
	add	a,r4
	mov	r5,a
	sjmp	00104$
00103$:
	mov	r4,_lcdgotoxy_PARM_2
	mov	a,#0x40
	add	a,r4
	mov	r4,a
	anl	ar6,#0x03
	mov	r7,#0x00
	mov	a,r6
	orl	a,r7
	cjne	a,#0x01,00111$
00111$:
	mov  _lcdgotoxy_sloc0_1_0,c
	clr	a
	rlc	a
	swap	a
	anl	a,#0xf0
	mov	r7,a
	add	a,r4
	mov	r5,a
00104$:
	mov	a,r5
	dec	a
	mov	dpl,a
;	lcd.c:84: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:90: void lcdputch(uint8_t cc) {
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	r7,dpl
;	lcd.c:92: RS = PULSE_HIGH;
;	assignBit
	setb	_P1_6
;	lcd.c:93: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	lcd.c:94: *ptr = cc;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,r7
	movx	@dptr,a
;	lcd.c:95: lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
;	lcd.c:96: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated to registers 
;lcd_ptr_addr              Allocated to registers r4 
;------------------------------------------------------------
;	lcd.c:103: void lcdputstr(uint8_t *ss) {
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:107: while (*ss != '\0') {
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00137$
	ret
00137$:
;	lcd.c:109: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	lcd.c:110: R_W = PULSE_HIGH;
;	assignBit
	setb	_P1_7
;	lcd.c:111: lcdputch(*ss);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:114: lcd_ptr_addr = *ptr & (0b01111111);
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x7f
;	lcd.c:115: switch (lcd_ptr_addr) {
	cjne	r4,#0x10,00138$
	sjmp	00101$
00138$:
	cjne	r4,#0x20,00139$
	sjmp	00103$
00139$:
	cjne	r4,#0x50,00140$
	sjmp	00102$
00140$:
;	lcd.c:116: case 0x10:
	cjne	r4,#0x60,00106$
	sjmp	00104$
00101$:
;	lcd.c:117: lcdgotoaddr(0x40);
	mov	dpl,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:118: break;
;	lcd.c:119: case 0x50:
	sjmp	00106$
00102$:
;	lcd.c:120: lcdgotoaddr(0x10);
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:121: break;
;	lcd.c:122: case 0x20:
	sjmp	00106$
00103$:
;	lcd.c:123: lcdgotoaddr(0x50);
	mov	dpl,#0x50
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:124: break;
;	lcd.c:125: case 0x60:
	sjmp	00106$
00104$:
;	lcd.c:126: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:130: }
00106$:
;	lcd.c:132: ss++;  // Move to the next character in the string.
	inc	r5
	cjne	r5,#0x00,00142$
	inc	r6
00142$:
;	lcd.c:134: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	lcd.c:139: void lcdinit() {
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	lcd.c:141: delay(14000);
	mov	dptr,#0x36b0
	clr	a
	mov	b,a
	lcall	_delay
;	lcd.c:144: lcd_command(0, 0, 0x30);
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:145: delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
	mov	dptr,#0x0fa0
	clr	a
	mov	b,a
	lcall	_delay
;	lcd.c:146: lcd_command(0, 0, 0x30);
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:147: delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	lcd.c:148: lcd_command(0, 0, 0x30);
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:150: lcdbusywait();  // Wait for the LCD to finish processing the commands.
	lcall	_lcdbusywait
;	lcd.c:152: lcd_command(0, 0, 0x38);  // Function set command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x38
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:153: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:155: lcd_command(0, 0, 0x08);  // Turn off display command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x08
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:156: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:158: lcd_command(0, 0, 0x0C);  // Turn on display command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x0c
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:159: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:161: lcd_command(0, 0, 0x06);  // Entry mode set command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x06
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:162: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:164: lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x01
	mov	dpl,#0x00
;	lcd.c:165: }
	ljmp	_lcd_command
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	lcd.c:170: void lcdclear() {
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	lcd.c:171: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	lcd.c:172: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	lcd.c:173: *ptr = 0b00000001;  // Send the command to clear the screen.
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,#0x01
	movx	@dptr,a
;	lcd.c:174: lcdbusywait();      // Wait for the LCD to finish processing the command.
;	lcd.c:175: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'test_functionality'
;------------------------------------------------------------
;	lcd.c:180: void test_functionality() {
;	-----------------------------------------
;	 function test_functionality
;	-----------------------------------------
_test_functionality:
;	lcd.c:181: printf_tiny("test_functionality start\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:184: lcdgotoaddr(0x01);
	mov	dpl,#0x01
	lcall	_lcdgotoaddr
;	lcd.c:185: lcdputch('E');
	mov	dpl,#0x45
	lcall	_lcdputch
;	lcd.c:186: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	lcd.c:189: lcdgotoxy(1, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	lcd.c:190: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:191: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	lcd.c:194: lcdclear();
	lcall	_lcdclear
;	lcd.c:196: printf_tiny("test_functionality end\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_cgram_address'
;------------------------------------------------------------
;cgram_address             Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:203: void set_cgram_address(uint8_t cgram_address) {
;	-----------------------------------------
;	 function set_cgram_address
;	-----------------------------------------
_set_cgram_address:
	mov	r7,dpl
;	lcd.c:204: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	lcd.c:205: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	lcd.c:206: *ptr = cgram_address;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,r7
	movx	@dptr,a
;	lcd.c:207: lcdbusywait();
;	lcd.c:208: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdcreatechar'
;------------------------------------------------------------
;c                         Allocated with name '_lcdcreatechar_PARM_2'
;char_num                  Allocated to registers 
;------------------------------------------------------------
;	lcd.c:214: void lcdcreatechar(uint8_t char_num, uint8_t c) {
;	-----------------------------------------
;	 function lcdcreatechar
;	-----------------------------------------
_lcdcreatechar:
;	lcd.c:216: set_cgram_address(char_num);
	lcall	_set_cgram_address
;	lcd.c:219: lcdputch(c);
	mov	dpl,_lcdcreatechar_PARM_2
;	lcd.c:220: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_clock'
;------------------------------------------------------------
;	lcd.c:226: void reset_clock() {
;	-----------------------------------------
;	 function reset_clock
;	-----------------------------------------
_reset_clock:
;	lcd.c:228: min_high = '0';
	mov	_min_high,#0x30
;	lcd.c:229: min_low = '0';
	mov	_min_low,#0x30
;	lcd.c:230: sec_high = '0';
	mov	_sec_high,#0x30
;	lcd.c:231: sec_low = '0';
	mov	_sec_low,#0x30
;	lcd.c:232: mili_sec = '0';
	mov	_mili_sec,#0x30
;	lcd.c:235: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	lcd.c:236: lcdputch(min_high);
	mov	dpl,_min_high
	lcall	_lcdputch
;	lcd.c:237: lcdputch(min_low);
	mov	dpl,_min_low
	lcall	_lcdputch
;	lcd.c:238: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
;	lcd.c:239: lcdputch(sec_high);
	mov	dpl,_sec_high
	lcall	_lcdputch
;	lcd.c:240: lcdputch(sec_low);
	mov	dpl,_sec_low
	lcall	_lcdputch
;	lcd.c:241: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
;	lcd.c:242: lcdputch(mili_sec);
	mov	dpl,_mili_sec
;	lcd.c:243: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_run'
;------------------------------------------------------------
;	lcd.c:248: void clock_run() {
;	-----------------------------------------
;	 function clock_run
;	-----------------------------------------
_clock_run:
;	lcd.c:250: if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
	mov	a,_clockrun_flag
	orl	a,(_clockrun_flag + 1)
	jnz	00149$
	ret
00149$:
	mov	a,_tick
	jnb	acc.0,00150$
	ret
00150$:
	mov	r4,_tick
	mov	r5,(_tick + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_elapsed_tick
	subb	a,r4
	mov	a,(_elapsed_tick + 1)
	subb	a,r5
	mov	a,(_elapsed_tick + 2)
	subb	a,r6
	mov	a,(_elapsed_tick + 3)
	subb	a,r7
	jc	00151$
	ret
00151$:
;	lcd.c:251: elapsed_tick = tick;  // Update the elapsed tick
	mov	_elapsed_tick,_tick
	mov	(_elapsed_tick + 1),(_tick + 1)
	mov	(_elapsed_tick + 2),#0x00
	mov	(_elapsed_tick + 3),#0x00
;	lcd.c:253: mili_sec++;  // Increment milliseconds
	inc	_mili_sec
;	lcd.c:254: if (mili_sec > '9') {
	mov	a,_mili_sec
	add	a,#0xff - 0x39
	jnc	00102$
;	lcd.c:255: mili_sec = '0';
	mov	_mili_sec,#0x30
;	lcd.c:256: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	lcd.c:257: lcdputch(mili_sec);
	mov	dpl,_mili_sec
	lcall	_lcdputch
;	lcd.c:258: sec_low++;
	inc	_sec_low
;	lcd.c:259: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	lcd.c:260: lcdputch(sec_low);
	mov	dpl,_sec_low
	lcall	_lcdputch
00102$:
;	lcd.c:262: if (sec_low > '9') {
	mov	a,_sec_low
	add	a,#0xff - 0x39
	jnc	00104$
;	lcd.c:263: sec_low = '0';
	mov	_sec_low,#0x30
;	lcd.c:264: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	lcd.c:265: lcdputch(sec_low);
	mov	dpl,_sec_low
	lcall	_lcdputch
;	lcd.c:266: sec_high++;
	inc	_sec_high
;	lcd.c:267: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	lcd.c:268: lcdputch(sec_high);
	mov	dpl,_sec_high
	lcall	_lcdputch
00104$:
;	lcd.c:270: if (sec_high > '5') {
	mov	a,_sec_high
	add	a,#0xff - 0x35
	jnc	00106$
;	lcd.c:271: sec_high = '0';
	mov	_sec_high,#0x30
;	lcd.c:272: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	lcd.c:273: lcdputch(sec_high);
	mov	dpl,_sec_high
	lcall	_lcdputch
;	lcd.c:274: min_low++;
	inc	_min_low
;	lcd.c:275: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	lcd.c:276: lcdputch(min_low);
	mov	dpl,_min_low
	lcall	_lcdputch
00106$:
;	lcd.c:278: if (min_low > '9') {
	mov	a,_min_low
	add	a,#0xff - 0x39
	jnc	00108$
;	lcd.c:279: min_low = '0';
	mov	_min_low,#0x30
;	lcd.c:280: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	lcd.c:281: lcdputch(min_low);
	mov	dpl,_min_low
	lcall	_lcdputch
;	lcd.c:282: min_high++;
	inc	_min_high
;	lcd.c:283: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	lcd.c:284: lcdputch(min_high);
	mov	dpl,_min_high
	lcall	_lcdputch
00108$:
;	lcd.c:286: if (min_high > '5') {
	mov	a,_min_high
	add	a,#0xff - 0x35
	jnc	00110$
;	lcd.c:287: min_high = '0';
	mov	_min_high,#0x30
;	lcd.c:288: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	lcd.c:289: lcdputch(min_high);
	mov	dpl,_min_high
	lcall	_lcdputch
00110$:
;	lcd.c:291: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	lcd.c:292: lcdputch(mili_sec);
	mov	dpl,_mili_sec
;	lcd.c:294: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'menu_lcd'
;------------------------------------------------------------
;	lcd.c:299: void menu_lcd() {
;	-----------------------------------------
;	 function menu_lcd
;	-----------------------------------------
_menu_lcd:
;	lcd.c:300: reset_clock();  // Reset clock values for display consistency
	lcall	_reset_clock
;	lcd.c:301: lcdgotoxy(1, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	lcd.c:302: lcdputstr("Clock status:");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:303: lcdgotoxy(2, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x02
	lcall	_lcdgotoxy
;	lcd.c:304: lcdputstr("Running");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:305: lcdgotoxy(3, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x03
	lcall	_lcdgotoxy
;	lcd.c:306: lcdputstr("Stopped");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:307: lcdgotoxy(4, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x04
	lcall	_lcdgotoxy
;	lcd.c:308: lcdputstr("Reset");
	mov	dptr,#___str_6
	mov	b,#0x80
;	lcd.c:309: }
	ljmp	_lcdputstr
;------------------------------------------------------------
;Allocation info for local variables in function 'arrow_set'
;------------------------------------------------------------
;b                         Allocated with name '_arrow_set_PARM_2'
;c                         Allocated with name '_arrow_set_PARM_3'
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:317: void arrow_set(char a, char b, char c) {
;	-----------------------------------------
;	 function arrow_set
;	-----------------------------------------
_arrow_set:
	mov	r7,dpl
;	lcd.c:318: lcdgotoxy(2, 8);
	mov	_lcdgotoxy_PARM_2,#0x08
	mov	dpl,#0x02
	push	ar7
	lcall	_lcdgotoxy
	pop	ar7
;	lcd.c:319: lcdputch(a);  // Display arrow indicator for "Running"
	mov	dpl,r7
	lcall	_lcdputch
;	lcd.c:320: lcdgotoxy(3, 8);
	mov	_lcdgotoxy_PARM_2,#0x08
	mov	dpl,#0x03
	lcall	_lcdgotoxy
;	lcd.c:321: lcdputch(b);  // Display arrow indicator for "Stopped"
	mov	dpl,_arrow_set_PARM_2
	lcall	_lcdputch
;	lcd.c:322: lcdgotoxy(4, 6);
	mov	_lcdgotoxy_PARM_2,#0x06
	mov	dpl,#0x04
	lcall	_lcdgotoxy
;	lcd.c:323: lcdputch(c);  // Display arrow indicator for "Reset"
	mov	dpl,_arrow_set_PARM_3
;	lcd.c:324: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ddram_address'
;------------------------------------------------------------
;ddram_address             Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:334: void set_ddram_address(uint8_t ddram_address) {
;	-----------------------------------------
;	 function set_ddram_address
;	-----------------------------------------
_set_ddram_address:
	mov	r7,dpl
;	lcd.c:335: RS = PULSE_LOW;            // Set RS (Register Select) to LOW for command mode
;	assignBit
	clr	_P1_6
;	lcd.c:336: R_W = PULSE_LOW;           // Set R_W (Read/Write) to LOW for write operation
;	assignBit
	clr	_P1_7
;	lcd.c:337: *ptr = ddram_address | 0b10000000; // Set the DDRAM address with the required command
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	orl	ar7,#0x80
	mov	a,r7
	movx	@dptr,a
;	lcd.c:338: lcdbusywait();             // Wait for the LCD to process the command
;	lcd.c:339: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'read_xxram_address'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:347: uint8_t read_xxram_address() {
;	-----------------------------------------
;	 function read_xxram_address
;	-----------------------------------------
_read_xxram_address:
;	lcd.c:349: RS = PULSE_HIGH;         // Set RS (Register Select) to HIGH for data mode
;	assignBit
	setb	_P1_6
;	lcd.c:350: R_W = PULSE_HIGH;        // Set R_W (Read/Write) to HIGH for read operation
;	assignBit
	setb	_P1_7
;	lcd.c:351: data = *ptr;             // Read the data from the specified XRAM address
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	mov	r7,a
;	lcd.c:352: lcdbusywait();           // Wait for the LCD to process the read operation
	push	ar7
	lcall	_lcdbusywait
	pop	ar7
;	lcd.c:353: return data;             // Return the read data
	mov	dpl,r7
;	lcd.c:354: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ddram_hex_dump'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	lcd.c:361: void ddram_hex_dump() {
;	-----------------------------------------
;	 function ddram_hex_dump
;	-----------------------------------------
_ddram_hex_dump:
;	lcd.c:362: for(uint8_t i = 0; i < 4; i++) {
	mov	r7,#0x00
00113$:
	cjne	r7,#0x04,00139$
00139$:
	jc	00140$
	ret
00140$:
;	lcd.c:363: switch (i) {
	mov	a,r7
	add	a,#0xff - 0x03
	jnc	00141$
	ljmp	00120$
00141$:
	mov	a,r7
	add	a,r7
;	lcd.c:364: case 0:
	mov	dptr,#00142$
	jmp	@a+dptr
00142$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	lcd.c:365: set_ddram_address(0x00);
	mov	dpl,#0x00
	push	ar7
	lcall	_set_ddram_address
;	lcd.c:366: printf("0x%02x: ", 0x00);
	clr	a
	push	acc
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	lcd.c:367: break;
;	lcd.c:368: case 1:
	sjmp	00120$
00102$:
;	lcd.c:369: set_ddram_address(0x40);
	mov	dpl,#0x40
	push	ar7
	lcall	_set_ddram_address
;	lcd.c:370: printf("0x%02x: ", 0x40);
	mov	a,#0x40
	push	acc
	clr	a
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	lcd.c:371: break;
;	lcd.c:372: case 2:
	sjmp	00120$
00103$:
;	lcd.c:373: set_ddram_address(0x10);
	mov	dpl,#0x10
	push	ar7
	lcall	_set_ddram_address
;	lcd.c:374: printf("0x%02x: ", 0x10);
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	lcd.c:375: break;
;	lcd.c:376: case 3:
	sjmp	00120$
00104$:
;	lcd.c:377: set_ddram_address(0x50);
	mov	dpl,#0x50
	push	ar7
	lcall	_set_ddram_address
;	lcd.c:378: printf("0x%02x: ", 0x50);
	mov	a,#0x50
	push	acc
	clr	a
	push	acc
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	lcd.c:384: for(int j = 0; j < 16; j++) {
00120$:
	mov	r5,#0x00
	mov	r6,#0x00
00110$:
	clr	c
	mov	a,r5
	subb	a,#0x10
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
;	lcd.c:385: printf(" %02x", read_xxram_address());
	push	ar7
	push	ar6
	push	ar5
	lcall	_read_xxram_address
	mov	r4,dpl
	mov	r3,#0x00
	push	ar4
	push	ar3
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:384: for(int j = 0; j < 16; j++) {
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
	sjmp	00110$
00107$:
;	lcd.c:388: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	lcd.c:362: for(uint8_t i = 0; i < 4; i++) {
	inc	r7
;	lcd.c:390: }
	ljmp	00113$
;------------------------------------------------------------
;Allocation info for local variables in function 'cgram_hex_dump'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r5 r6 
;cgram_address             Allocated to registers 
;------------------------------------------------------------
;	lcd.c:397: void cgram_hex_dump() {
;	-----------------------------------------
;	 function cgram_hex_dump
;	-----------------------------------------
_cgram_hex_dump:
;	lcd.c:399: for(uint8_t i = 0; i < 8; i++) {
	mov	r7,#0x00
00107$:
	cjne	r7,#0x08,00129$
00129$:
	jc	00130$
	ret
00130$:
;	lcd.c:400: printf("0x%02x: ", i << 3);
	mov	ar5,r7
	clr	a
	rr	a
	anl	a,#0xf8
	xch	a,r5
	swap	a
	rr	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf8
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	lcd.c:401: for(int j = 0; j < 8; j++) {
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	lcd.c:403: uint8_t cgram_address = 0b01000000 | (i << 3) | j;
	mov	ar4,r7
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	orl	ar4,#0x40
	mov	ar3,r5
	mov	a,r3
	orl	a,r4
	mov	dpl,a
;	lcd.c:404: set_cgram_address(cgram_address); // Set the CGRAM address to the start
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_cgram_address
;	lcd.c:405: printf(" %02x", read_xxram_address());
	lcall	_read_xxram_address
	mov	r4,dpl
	mov	r3,#0x00
	push	ar4
	push	ar3
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:401: for(int j = 0; j < 8; j++) {
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00101$:
;	lcd.c:407: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	lcd.c:399: for(uint8_t i = 0; i < 8; i++) {
	inc	r7
;	lcd.c:409: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'get_hex_value'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;char_received             Allocated to registers r3 
;------------------------------------------------------------
;	lcd.c:415: uint8_t get_hex_value(){
;	-----------------------------------------
;	 function get_hex_value
;	-----------------------------------------
_get_hex_value:
;	lcd.c:416: uint8_t value = 0;
	mov	r7,#0x00
;	lcd.c:417: for(int i = 0; i < 2; i++){
	mov	r5,#0x00
	mov	r6,#0x00
00125$:
	clr	c
	mov	a,r5
	subb	a,#0x02
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00183$
	ljmp	00123$
00183$:
;	lcd.c:418: if(i == 0) printf_tiny("0x");
	mov	a,r5
	orl	a,r6
	jnz	00102$
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	lcd.c:419: uint8_t char_received = echo(); // Read a character from UART
	push	ar7
	push	ar6
	push	ar5
	lcall	_echo
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:420: if((char_received >= '0') && (char_received <= '9')){
	cjne	r4,#0x30,00185$
00185$:
	jc	00116$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00116$
;	lcd.c:421: char_received = char_received - '0'; // Convert ASCII character to its
	mov	ar3,r4
	mov	a,r3
	add	a,#0xd0
	mov	r3,a
	sjmp	00117$
00116$:
;	lcd.c:423: }else if((char_received >= 'A') && (char_received <= 'F')){
	cjne	r4,#0x41,00188$
00188$:
	jc	00112$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00112$
;	lcd.c:424: char_received = char_received - 'A' + 10; // Convert ASCII character to its
	mov	ar2,r4
	mov	a,#0xc9
	add	a,r2
	mov	r3,a
	sjmp	00117$
00112$:
;	lcd.c:426: }else if((char_received >= 'a') && (char_received <= 'f')){
	cjne	r4,#0x61,00191$
00191$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00108$
;	lcd.c:427: char_received = char_received - 'a' + 10; // Convert ASCII character to its
	mov	ar2,r4
	mov	a,#0xa9
	add	a,r2
	mov	r3,a
	sjmp	00117$
00108$:
;	lcd.c:429: }else if((char_received == '\n') || (char_received == '\r')){
	cjne	r4,#0x0a,00194$
	sjmp	00103$
00194$:
	cjne	r4,#0x0d,00104$
00103$:
;	lcd.c:430: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	lcd.c:431: return value;
	mov	dpl,r7
	ret
00104$:
;	lcd.c:433: printf_tiny("-->Invalid input\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:434: i = -1;
	mov	r5,#0xff
	mov	r6,#0xff
;	lcd.c:435: value = 0;
	mov	r7,#0x00
;	lcd.c:436: continue;
	sjmp	00122$
00117$:
;	lcd.c:438: if(i == 0){
	mov	a,r5
	orl	a,r6
	jnz	00120$
;	lcd.c:439: value |= char_received;
	mov	a,r3
	orl	ar7,a
	sjmp	00122$
00120$:
;	lcd.c:441: value = (value << 4) | char_received;
	mov	ar4,r7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	orl	a,r3
	mov	r7,a
00122$:
;	lcd.c:417: for(int i = 0; i < 2; i++){
	inc	r5
	cjne	r5,#0x00,00198$
	inc	r6
00198$:
	ljmp	00125$
00123$:
;	lcd.c:444: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	lcd.c:445: return value;
	mov	dpl,r7
;	lcd.c:446: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_custom_character'
;------------------------------------------------------------
;ccode                     Allocated to registers r6 
;address                   Allocated to registers r7 
;char_array                Allocated with name '_process_custom_character_char_array_65537_92'
;i                         Allocated to registers r5 
;cgram_address             Allocated to registers r4 
;------------------------------------------------------------
;	lcd.c:455: void process_custom_character() {
;	-----------------------------------------
;	 function process_custom_character
;	-----------------------------------------
_process_custom_character:
;	lcd.c:460: while (1) {
00105$:
;	lcd.c:461: printf_tiny("Enter LCD display address for the character\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:462: address = get_hex_value();
	lcall	_get_hex_value
	mov	r7,dpl
;	lcd.c:463: if (address < 0x60) {
	cjne	r7,#0x60,00144$
00144$:
	jc	00111$
;	lcd.c:466: printf_tiny("Invalid input\n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:471: while (1) {
	sjmp	00105$
00111$:
;	lcd.c:472: printf_tiny("Enter the character code in range 0x00 <--> 0x07\n\r");
	push	ar7
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:473: ccode = get_hex_value();
	lcall	_get_hex_value
	mov	r6,dpl
	pop	ar7
;	lcd.c:474: if (ccode < 0x08) {
	cjne	r6,#0x08,00146$
00146$:
	jc	00112$
;	lcd.c:477: printf_tiny("Invalid input\n\r");
	push	ar7
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
	sjmp	00111$
00112$:
;	lcd.c:481: uint8_t char_array[8] = {0};
	mov	_process_custom_character_char_array_65537_92,#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0001),#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0002),#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0003),#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0004),#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0005),#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0006),#0x00
	mov	(_process_custom_character_char_array_65537_92 + 0x0007),#0x00
;	lcd.c:484: printf_tiny("Enter pixel pattern hex format for each row of custom character\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	lcd.c:487: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
	mov	r5,#0x00
00115$:
	cjne	r5,#0x08,00148$
00148$:
	jc	00149$
	ret
00149$:
;	lcd.c:488: printf_tiny("0x%x->", i);
	mov	ar3,r5
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar6
;	lcd.c:491: uint8_t cgram_address = 0b01000000 | (ccode << 3) | i;
	mov	ar4,r6
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	mov	a,#0x40
	orl	a,r4
	orl	a,r5
	mov	r4,a
;	lcd.c:494: char_array[i] = get_hex_value() & 0b00011111;
	mov	a,r5
	add	a,#_process_custom_character_char_array_65537_92
	mov	r1,a
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	lcall	_get_hex_value
	mov	a,dpl
	pop	ar1
	pop	ar4
	anl	a,#0x1f
	mov	r3,a
	mov	@r1,a
;	lcd.c:497: lcdcreatechar(cgram_address, char_array[i]);
	mov	_lcdcreatechar_PARM_2,r3
	mov	dpl,r4
	lcall	_lcdcreatechar
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:500: lcdgotoaddr(address);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
;	lcd.c:501: lcdputch(ccode);
	mov	dpl,r6
	push	ar6
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:487: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
	inc	r5
;	lcd.c:503: }
	ljmp	00115$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "test_functionality start"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
	.ascii "zJITHU"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "test_functionality end"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Clock status:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Running"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Stopped"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "0x%02x: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii " %02x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "-->Invalid input"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Enter LCD display address for the character"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Invalid input"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Enter the character code in range 0x00 <--> 0x07"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Enter pixel pattern hex format for each row of custom charac"
	.ascii "ter"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "0x%x->"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__db:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
