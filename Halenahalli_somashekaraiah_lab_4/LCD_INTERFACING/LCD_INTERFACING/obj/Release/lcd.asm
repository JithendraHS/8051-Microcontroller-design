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
	.globl _printf_tiny
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
	.globl _create_custom_character
	.globl _reset_clock
	.globl _clock_run
	.globl _menu_lcd
	.globl _arrow_set
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
_create_custom_character_c_65536_44:
	.ds 8
_arrow_set_PARM_2:
	.ds 1
_arrow_set_PARM_3:
	.ds 1
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
;	lcd.c:30: extern __xdata uint8_t * ptr = &db;
	mov	_ptr,#_db
	mov	(_ptr + 1),#(_db >> 8)
;	lcd.c:36: extern volatile unsigned int clockrun_flag = 0;
	clr	a
	mov	_clockrun_flag,a
	mov	(_clockrun_flag + 1),a
;	lcd.c:38: static uint8_t custom_char_code = 1;
	mov	_custom_char_code,#0x01
;	lcd.c:39: static uint32_t  elapsed_tick = 0;
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
;	lcd.c:47: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
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
;	lcd.c:48: RS = rs;              // Set the Register Select pin based on the provided parameter.
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P1_6,c
;	lcd.c:49: R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
;	assignBit
	mov	a,_lcd_command_PARM_2
	add	a,#0xff
	mov	_P1_7,c
;	lcd.c:50: *ptr = data;          // Write the specified data byte to the LCD data buffer.
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,_lcd_command_PARM_3
	movx	@dptr,a
;	lcd.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	lcd.c:56: void lcdbusywait() {
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	lcd.c:57: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
;	assignBit
	clr	_P1_6
;	lcd.c:58: R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
;	assignBit
	setb	_P1_7
;	lcd.c:59: while (*ptr & (0b10000000)) {
00101$:
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	jb	acc.7,00101$
;	lcd.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:68: void lcdgotoaddr(uint8_t addr) {
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	r7,dpl
;	lcd.c:69: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
;	assignBit
	clr	_P1_6
;	lcd.c:70: R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
;	assignBit
	clr	_P1_7
;	lcd.c:71: *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	orl	ar7,#0x80
	mov	a,r7
	movx	@dptr,a
;	lcd.c:72: lcdbusywait();               // Wait until the LCD becomes idle.
;	lcd.c:73: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:80: void lcdgotoxy(uint8_t row, uint8_t column) {
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
;	lcd.c:82: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
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
;	lcd.c:83: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:89: void lcdputch(uint8_t cc) {
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	r7,dpl
;	lcd.c:91: RS = PULSE_HIGH;
;	assignBit
	setb	_P1_6
;	lcd.c:92: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	lcd.c:93: *ptr = cc;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,r7
	movx	@dptr,a
;	lcd.c:94: lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
;	lcd.c:95: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated to registers 
;lcd_ptr_addr              Allocated to registers r4 
;------------------------------------------------------------
;	lcd.c:102: void lcdputstr(uint8_t *ss) {
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:106: while (*ss != '\0') {
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00137$
	ret
00137$:
;	lcd.c:108: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	lcd.c:109: R_W = PULSE_HIGH;
;	assignBit
	setb	_P1_7
;	lcd.c:110: lcdputch(*ss);
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
;	lcd.c:113: lcd_ptr_addr = *ptr & (0b01111111);
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x7f
;	lcd.c:114: switch (lcd_ptr_addr) {
	cjne	r4,#0x10,00138$
	sjmp	00101$
00138$:
	cjne	r4,#0x20,00139$
	sjmp	00103$
00139$:
	cjne	r4,#0x50,00140$
	sjmp	00102$
00140$:
;	lcd.c:115: case 0x10:
	cjne	r4,#0x60,00106$
	sjmp	00104$
00101$:
;	lcd.c:116: lcdgotoaddr(0x40);
	mov	dpl,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:117: break;
;	lcd.c:118: case 0x50:
	sjmp	00106$
00102$:
;	lcd.c:119: lcdgotoaddr(0x10);
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:120: break;
;	lcd.c:121: case 0x20:
	sjmp	00106$
00103$:
;	lcd.c:122: lcdgotoaddr(0x50);
	mov	dpl,#0x50
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:123: break;
;	lcd.c:124: case 0x60:
	sjmp	00106$
00104$:
;	lcd.c:125: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:129: }
00106$:
;	lcd.c:131: ss++;  // Move to the next character in the string.
	inc	r5
	cjne	r5,#0x00,00142$
	inc	r6
00142$:
;	lcd.c:133: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	lcd.c:138: void lcdinit() {
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	lcd.c:140: delay(14000);
	mov	dptr,#0x36b0
	clr	a
	mov	b,a
	lcall	_delay
;	lcd.c:143: lcd_command(0, 0, 0x30);
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:144: delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
	mov	dptr,#0x0fa0
	clr	a
	mov	b,a
	lcall	_delay
;	lcd.c:145: lcd_command(0, 0, 0x30);
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:146: delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	lcd.c:147: lcd_command(0, 0, 0x30);
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:149: lcdbusywait();  // Wait for the LCD to finish processing the commands.
	lcall	_lcdbusywait
;	lcd.c:151: lcd_command(0, 0, 0x38);  // Function set command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x38
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:152: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:154: lcd_command(0, 0, 0x08);  // Turn off display command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x08
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:155: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:157: lcd_command(0, 0, 0x0C);  // Turn on display command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x0c
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:158: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:160: lcd_command(0, 0, 0x06);  // Entry mode set command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x06
	mov	dpl,#0x00
	lcall	_lcd_command
;	lcd.c:161: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:163: lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x01
	mov	dpl,#0x00
;	lcd.c:164: }
	ljmp	_lcd_command
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	lcd.c:169: void lcdclear() {
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	lcd.c:170: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	lcd.c:171: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	lcd.c:172: *ptr = 0b00000001;  // Send the command to clear the screen.
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,#0x01
	movx	@dptr,a
;	lcd.c:173: lcdbusywait();      // Wait for the LCD to finish processing the command.
;	lcd.c:174: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'test_functionality'
;------------------------------------------------------------
;	lcd.c:179: void test_functionality() {
;	-----------------------------------------
;	 function test_functionality
;	-----------------------------------------
_test_functionality:
;	lcd.c:180: printf_tiny("test_functionality start\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:183: lcdgotoaddr(0x01);
	mov	dpl,#0x01
	lcall	_lcdgotoaddr
;	lcd.c:184: lcdputch('E');
	mov	dpl,#0x45
	lcall	_lcdputch
;	lcd.c:185: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	lcd.c:188: lcdgotoxy(1, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	lcd.c:189: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:190: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	lcd.c:193: create_custom_character(custom_char_code);
	mov	dpl,_custom_char_code
	lcall	_create_custom_character
;	lcd.c:194: lcdgotoaddr(0x0F);
	mov	dpl,#0x0f
	lcall	_lcdgotoaddr
;	lcd.c:195: lcdputch(custom_char_code);
	mov	dpl,_custom_char_code
	lcall	_lcdputch
;	lcd.c:196: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	lcd.c:199: lcdclear();
	lcall	_lcdclear
;	lcd.c:201: printf_tiny("test_functionality end\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcd.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_cgram_address'
;------------------------------------------------------------
;cgram_address             Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:209: void set_cgram_address(uint8_t cgram_address) {
;	-----------------------------------------
;	 function set_cgram_address
;	-----------------------------------------
_set_cgram_address:
	mov	r7,dpl
;	lcd.c:210: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	lcd.c:211: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	lcd.c:212: *ptr = cgram_address;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,r7
	movx	@dptr,a
;	lcd.c:213: lcdbusywait();
;	lcd.c:214: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'create_custom_character'
;------------------------------------------------------------
;char_num                  Allocated to registers r7 
;c                         Allocated with name '_create_custom_character_c_65536_44'
;i                         Allocated to registers r5 r6 
;cgram_address             Allocated to registers 
;------------------------------------------------------------
;	lcd.c:220: void create_custom_character(uint8_t char_num) {
;	-----------------------------------------
;	 function create_custom_character
;	-----------------------------------------
_create_custom_character:
	mov	r7,dpl
;	lcd.c:222: uint8_t c[8] =
	mov	_create_custom_character_c_65536_44,#0x04
	mov	(_create_custom_character_c_65536_44 + 0x0001),#0x0e
	mov	(_create_custom_character_c_65536_44 + 0x0002),#0x04
	mov	(_create_custom_character_c_65536_44 + 0x0003),#0x04
	mov	(_create_custom_character_c_65536_44 + 0x0004),#0x04
	mov	(_create_custom_character_c_65536_44 + 0x0005),#0x04
	mov	(_create_custom_character_c_65536_44 + 0x0006),#0x04
	mov	(_create_custom_character_c_65536_44 + 0x0007),#0x0a
;	lcd.c:234: for(int i = 0; i < BYTE_LENGTH; i++) {
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	lcd.c:236: uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
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
;	lcd.c:239: set_cgram_address(cgram_address);
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_cgram_address
	pop	ar5
;	lcd.c:242: lcdputch(c[i]);
	mov	a,r5
	add	a,#_create_custom_character_c_65536_44
	mov	r1,a
	mov	dpl,@r1
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:234: for(int i = 0; i < BYTE_LENGTH; i++) {
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	lcd.c:244: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_clock'
;------------------------------------------------------------
;	lcd.c:250: void reset_clock() {
;	-----------------------------------------
;	 function reset_clock
;	-----------------------------------------
_reset_clock:
;	lcd.c:252: min_high = '0';
	mov	_min_high,#0x30
;	lcd.c:253: min_low = '0';
	mov	_min_low,#0x30
;	lcd.c:254: sec_high = '0';
	mov	_sec_high,#0x30
;	lcd.c:255: sec_low = '0';
	mov	_sec_low,#0x30
;	lcd.c:256: mili_sec = '0';
	mov	_mili_sec,#0x30
;	lcd.c:259: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	lcd.c:260: lcdputch(min_high);
	mov	dpl,_min_high
	lcall	_lcdputch
;	lcd.c:261: lcdputch(min_low);
	mov	dpl,_min_low
	lcall	_lcdputch
;	lcd.c:262: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
;	lcd.c:263: lcdputch(sec_high);
	mov	dpl,_sec_high
	lcall	_lcdputch
;	lcd.c:264: lcdputch(sec_low);
	mov	dpl,_sec_low
	lcall	_lcdputch
;	lcd.c:265: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
;	lcd.c:266: lcdputch(mili_sec);
	mov	dpl,_mili_sec
;	lcd.c:267: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'clock_run'
;------------------------------------------------------------
;	lcd.c:272: void clock_run() {
;	-----------------------------------------
;	 function clock_run
;	-----------------------------------------
_clock_run:
;	lcd.c:274: if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
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
;	lcd.c:275: elapsed_tick = tick;  // Update the elapsed tick
	mov	_elapsed_tick,_tick
	mov	(_elapsed_tick + 1),(_tick + 1)
	mov	(_elapsed_tick + 2),#0x00
	mov	(_elapsed_tick + 3),#0x00
;	lcd.c:277: mili_sec++;  // Increment milliseconds
	inc	_mili_sec
;	lcd.c:278: if (mili_sec > '9') {
	mov	a,_mili_sec
	add	a,#0xff - 0x39
	jnc	00102$
;	lcd.c:279: mili_sec = '0';
	mov	_mili_sec,#0x30
;	lcd.c:280: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	lcd.c:281: lcdputch(mili_sec);
	mov	dpl,_mili_sec
	lcall	_lcdputch
;	lcd.c:282: sec_low++;
	inc	_sec_low
;	lcd.c:283: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	lcd.c:284: lcdputch(sec_low);
	mov	dpl,_sec_low
	lcall	_lcdputch
00102$:
;	lcd.c:286: if (sec_low > '9') {
	mov	a,_sec_low
	add	a,#0xff - 0x39
	jnc	00104$
;	lcd.c:287: sec_low = '0';
	mov	_sec_low,#0x30
;	lcd.c:288: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	lcd.c:289: lcdputch(sec_low);
	mov	dpl,_sec_low
	lcall	_lcdputch
;	lcd.c:290: sec_high++;
	inc	_sec_high
;	lcd.c:291: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	lcd.c:292: lcdputch(sec_high);
	mov	dpl,_sec_high
	lcall	_lcdputch
00104$:
;	lcd.c:294: if (sec_high > '5') {
	mov	a,_sec_high
	add	a,#0xff - 0x35
	jnc	00106$
;	lcd.c:295: sec_high = '0';
	mov	_sec_high,#0x30
;	lcd.c:296: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	lcd.c:297: lcdputch(sec_high);
	mov	dpl,_sec_high
	lcall	_lcdputch
;	lcd.c:298: min_low++;
	inc	_min_low
;	lcd.c:299: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	lcd.c:300: lcdputch(min_low);
	mov	dpl,_min_low
	lcall	_lcdputch
00106$:
;	lcd.c:302: if (min_low > '9') {
	mov	a,_min_low
	add	a,#0xff - 0x39
	jnc	00108$
;	lcd.c:303: min_low = '0';
	mov	_min_low,#0x30
;	lcd.c:304: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	lcd.c:305: lcdputch(min_low);
	mov	dpl,_min_low
	lcall	_lcdputch
;	lcd.c:306: min_high++;
	inc	_min_high
;	lcd.c:307: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	lcd.c:308: lcdputch(min_high);
	mov	dpl,_min_high
	lcall	_lcdputch
00108$:
;	lcd.c:310: if (min_high > '5') {
	mov	a,_min_high
	add	a,#0xff - 0x35
	jnc	00110$
;	lcd.c:311: min_high = '0';
	mov	_min_high,#0x30
;	lcd.c:312: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	lcd.c:313: lcdputch(min_high);
	mov	dpl,_min_high
	lcall	_lcdputch
00110$:
;	lcd.c:315: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	lcd.c:316: lcdputch(mili_sec);
	mov	dpl,_mili_sec
;	lcd.c:318: }
	ljmp	_lcdputch
;------------------------------------------------------------
;Allocation info for local variables in function 'menu_lcd'
;------------------------------------------------------------
;	lcd.c:323: void menu_lcd() {
;	-----------------------------------------
;	 function menu_lcd
;	-----------------------------------------
_menu_lcd:
;	lcd.c:324: reset_clock();  // Reset clock values for display consistency
	lcall	_reset_clock
;	lcd.c:325: lcdgotoxy(1, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	lcd.c:326: lcdputstr("Clock status:");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:327: lcdgotoxy(2, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x02
	lcall	_lcdgotoxy
;	lcd.c:328: lcdputstr("Running");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:329: lcdgotoxy(3, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x03
	lcall	_lcdgotoxy
;	lcd.c:330: lcdputstr("Stopped");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_lcdputstr
;	lcd.c:331: lcdgotoxy(4, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x04
	lcall	_lcdgotoxy
;	lcd.c:332: lcdputstr("Reset");
	mov	dptr,#___str_6
	mov	b,#0x80
;	lcd.c:333: }
	ljmp	_lcdputstr
;------------------------------------------------------------
;Allocation info for local variables in function 'arrow_set'
;------------------------------------------------------------
;b                         Allocated with name '_arrow_set_PARM_2'
;c                         Allocated with name '_arrow_set_PARM_3'
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:341: void arrow_set(char a, char b, char c) {
;	-----------------------------------------
;	 function arrow_set
;	-----------------------------------------
_arrow_set:
	mov	r7,dpl
;	lcd.c:342: lcdgotoxy(2, 8);
	mov	_lcdgotoxy_PARM_2,#0x08
	mov	dpl,#0x02
	push	ar7
	lcall	_lcdgotoxy
	pop	ar7
;	lcd.c:343: lcdputch(a);  // Display arrow indicator for "Running"
	mov	dpl,r7
	lcall	_lcdputch
;	lcd.c:344: lcdgotoxy(3, 8);
	mov	_lcdgotoxy_PARM_2,#0x08
	mov	dpl,#0x03
	lcall	_lcdgotoxy
;	lcd.c:345: lcdputch(b);  // Display arrow indicator for "Stopped"
	mov	dpl,_arrow_set_PARM_2
	lcall	_lcdputch
;	lcd.c:346: lcdgotoxy(4, 6);
	mov	_lcdgotoxy_PARM_2,#0x06
	mov	dpl,#0x04
	lcall	_lcdgotoxy
;	lcd.c:347: lcdputch(c);  // Display arrow indicator for "Reset"
	mov	dpl,_arrow_set_PARM_3
;	lcd.c:348: }
	ljmp	_lcdputch
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
	.area XINIT   (CODE)
__xinit__db:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
