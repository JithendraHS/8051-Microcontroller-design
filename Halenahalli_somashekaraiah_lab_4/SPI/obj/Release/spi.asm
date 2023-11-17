;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module spi
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _echo
	.globl _printf_tiny
	.globl _printf
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
	.globl _spi_init
	.globl _spi_wave_generator
	.globl _spi_single_value
	.globl _get_hex_value
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
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	spi.c:7: void spi_init(){
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	spi.c:8: printf("DAC\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	spi.c:9: SPCON |= (SPR1 << 1) | (SPR0 << 0); //setting SPR0 and SPR1 to get baudrate of 57600
	orl	_SPCON,#0x05
;	spi.c:10: SPCON |= (CPHA << 2); // setting clock phase to falling edge
	orl	_SPCON,#0x10
;	spi.c:11: SPCON |= (MSTR << 4); // Setting MCU as master all the time
	mov	_SPCON,_SPCON
;	spi.c:12: SPCON |= (SSDIS << 5); // disabling /SS in master and slave modes
	mov	_SPCON,_SPCON
;	spi.c:13: SPCON |= (SPEN << 6); //Enabling SPI transmisson;
	mov	_SPCON,_SPCON
;	spi.c:15: spi_wave_generator();
;	spi.c:16: }
	ljmp	_spi_wave_generator
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_wave_generator'
;------------------------------------------------------------
;t                         Allocated to registers 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers 
;------------------------------------------------------------
;	spi.c:18: void spi_wave_generator() {
;	-----------------------------------------
;	 function spi_wave_generator
;	-----------------------------------------
_spi_wave_generator:
;	spi.c:21: for(uint16_t i = 0; i <= 255; i++){
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00104$
;	spi.c:22: CS = 0; // Select the SPI device (assert CS low)
;	assignBit
	clr	_P1_4
;	spi.c:24: SPDAT = i;
	mov	_SPDAT,r6
;	spi.c:25: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
00101$:
	mov	a,_SPSTA
	jnb	acc.7,00101$
;	spi.c:26: CS = 1; // Deselect the SPI device (assert CS high)
;	assignBit
	setb	_P1_4
;	spi.c:21: for(uint16_t i = 0; i <= 255; i++){
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
	sjmp	00113$
00104$:
;	spi.c:28: for(uint16_t j = 255; j >= 0 ; j--){
	mov	r6,#0xff
	mov	r7,#0x00
00115$:
;	spi.c:29: CS = 0; // Select the SPI device (assert CS low)
;	assignBit
	clr	_P1_4
;	spi.c:31: SPDAT = j;
	mov	_SPDAT,r6
;	spi.c:32: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
00105$:
	mov	a,_SPSTA
	jnb	acc.7,00105$
;	spi.c:33: CS = 1; // Deselect the SPI device (assert CS high)
;	assignBit
	setb	_P1_4
;	spi.c:28: for(uint16_t j = 255; j >= 0 ; j--){
	dec	r6
	cjne	r6,#0xff,00154$
	dec	r7
00154$:
;	spi.c:35: t--;
;	spi.c:37: }
	sjmp	00115$
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_single_value'
;------------------------------------------------------------
;level                     Allocated to registers r7 
;------------------------------------------------------------
;	spi.c:39: void spi_single_value(uint8_t level){
;	-----------------------------------------
;	 function spi_single_value
;	-----------------------------------------
_spi_single_value:
	mov	r7,dpl
;	spi.c:40: CS = 0; // Select the SPI device (assert CS low)
;	assignBit
	clr	_P1_4
;	spi.c:42: SPDAT = level;
	mov	_SPDAT,r7
;	spi.c:43: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
00101$:
	mov	a,_SPSTA
	jnb	acc.7,00101$
;	spi.c:44: CS = 1; // Deselect the SPI device (assert CS high)
;	assignBit
	setb	_P1_4
;	spi.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_hex_value'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;char_received             Allocated to registers r3 
;------------------------------------------------------------
;	spi.c:51: uint8_t get_hex_value(){
;	-----------------------------------------
;	 function get_hex_value
;	-----------------------------------------
_get_hex_value:
;	spi.c:52: uint8_t value = 0;
	mov	r7,#0x00
;	spi.c:53: for(int i = 0; i < 2; i++){
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
;	spi.c:54: if(i == 0) printf_tiny("0x");
	mov	a,r5
	orl	a,r6
	jnz	00102$
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
00102$:
;	spi.c:55: uint8_t char_received = echo(); // Read a character from UART
	push	ar7
	push	ar6
	push	ar5
	lcall	_echo
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	spi.c:56: if((char_received >= '0') && (char_received <= '9')){
	cjne	r4,#0x30,00185$
00185$:
	jc	00116$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00116$
;	spi.c:57: char_received = char_received - '0'; // Convert ASCII character to its
	mov	ar3,r4
	mov	a,r3
	add	a,#0xd0
	mov	r3,a
	sjmp	00117$
00116$:
;	spi.c:59: }else if((char_received >= 'A') && (char_received <= 'F')){
	cjne	r4,#0x41,00188$
00188$:
	jc	00112$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00112$
;	spi.c:60: char_received = char_received - 'A' + 10; // Convert ASCII character to its
	mov	ar2,r4
	mov	a,#0xc9
	add	a,r2
	mov	r3,a
	sjmp	00117$
00112$:
;	spi.c:62: }else if((char_received >= 'a') && (char_received <= 'f')){
	cjne	r4,#0x61,00191$
00191$:
	jc	00108$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00108$
;	spi.c:63: char_received = char_received - 'a' + 10; // Convert ASCII character to its
	mov	ar2,r4
	mov	a,#0xa9
	add	a,r2
	mov	r3,a
	sjmp	00117$
00108$:
;	spi.c:65: }else if((char_received == '\n') || (char_received == '\r')){
	cjne	r4,#0x0a,00194$
	sjmp	00103$
00194$:
	cjne	r4,#0x0d,00104$
00103$:
;	spi.c:66: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	spi.c:67: return value;
	mov	dpl,r7
	ret
00104$:
;	spi.c:69: printf_tiny("-->Invalid input\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	spi.c:70: i = -1;
	mov	r5,#0xff
	mov	r6,#0xff
;	spi.c:71: value = 0;
	mov	r7,#0x00
;	spi.c:72: continue;
	sjmp	00122$
00117$:
;	spi.c:74: if(i == 0){
	mov	a,r5
	orl	a,r6
	jnz	00120$
;	spi.c:75: value |= char_received;
	mov	a,r3
	orl	ar7,a
	sjmp	00122$
00120$:
;	spi.c:77: value = (value << 4) | char_received;
	mov	ar4,r7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	orl	a,r3
	mov	r7,a
00122$:
;	spi.c:53: for(int i = 0; i < 2; i++){
	inc	r5
	cjne	r5,#0x00,00198$
	inc	r6
00198$:
	ljmp	00125$
00123$:
;	spi.c:80: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
;	spi.c:81: return value;
	mov	dpl,r7
;	spi.c:82: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "DAC"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "0x"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "-->Invalid input"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
