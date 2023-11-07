;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module i2c_bit_bang
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HSO_Init
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
	.globl _TXD0
	.globl _RXD0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
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
	.globl _SBUF0
	.globl _DP0L
	.globl _DP0H
	.globl _Byte_Read_PARM_2
	.globl _Byte_Write_PARM_3
	.globl _Byte_Write_PARM_2
	.globl _delay
	.globl _Byte_Write
	.globl _Byte_Read
	.globl _eeprom_reset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_DP0H	=	0x0083
_DP0L	=	0x0082
_SBUF0	=	0x0099
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
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_RXD0	=	0x00b0
_TXD0	=	0x00b1
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
_Byte_Write_PARM_2:
	.ds 1
_Byte_Write_PARM_3:
	.ds 1
_Byte_Write_data_65536_8:
	.ds 1
_Byte_Read_PARM_2:
	.ds 1
_Byte_Read_block_65536_17:
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
;Allocation info for local variables in function 'HSO_Init'
;------------------------------------------------------------
;	i2c_bit_bang.c:24: void HSO_Init()
;	-----------------------------------------
;	 function HSO_Init
;	-----------------------------------------
_HSO_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c_bit_bang.c:26: CMOD &= ~SET_CIDL;   // clear CIDL bit to allow PCA to run in idle mode
	anl	_CMOD,#0x7f
;	i2c_bit_bang.c:27: CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
	orl	_CMOD,#0x02
;	i2c_bit_bang.c:28: CCAP0L = 0xFF; // Set low byte of CCAP1
	mov	_CCAP0L,#0xff
;	i2c_bit_bang.c:29: CCAP0H = 0xFF; // Set high byte of CCAP1
	mov	_CCAP0H,#0xff
;	i2c_bit_bang.c:32: CCAPM0 |= SET_TOG;
	orl	_CCAPM0,#0x04
;	i2c_bit_bang.c:33: CCAPM0 |= SET_MATCH;
	orl	_CCAPM0,#0x08
;	i2c_bit_bang.c:34: CCAPM0 |= SET_ECOM; // Enable HS for module 1 (bit ECOM1)
	orl	_CCAPM0,#0x40
;	i2c_bit_bang.c:36: CR =1;  // Enable PCA counter
;	assignBit
	setb	_CR
;	i2c_bit_bang.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	i2c_bit_bang.c:39: void delay(unsigned int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	i2c_bit_bang.c:41: while(t--){
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00115$
	dec	r7
00115$:
	mov	a,r4
	orl	a,r5
	jz	00104$
;	i2c_bit_bang.c:42: NOP;
	nop	
	sjmp	00101$
00104$:
;	i2c_bit_bang.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Byte_Write'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;j                         Allocated to registers r6 r7 
;k                         Allocated to registers r6 r7 
;block                     Allocated with name '_Byte_Write_PARM_2'
;address                   Allocated with name '_Byte_Write_PARM_3'
;data                      Allocated with name '_Byte_Write_data_65536_8'
;------------------------------------------------------------
;	i2c_bit_bang.c:46: void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
;	-----------------------------------------
;	 function Byte_Write
;	-----------------------------------------
_Byte_Write:
	mov	a,dpl
	mov	dptr,#_Byte_Write_data_65536_8
	movx	@dptr,a
;	i2c_bit_bang.c:47: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:48: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:49: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:50: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:51: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:52: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:53: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
	mov	dptr,#_Byte_Write_PARM_2
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	orl	ar7,#0xa0
;	i2c_bit_bang.c:54: for(int i = 0; i < BYTE_LENGTH; i++){
	mov	r5,#0x00
	mov	r6,#0x00
00105$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	i2c_bit_bang.c:55: SDA = byte & (0b10000000);
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:56: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:57: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:58: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:59: byte = byte << 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	i2c_bit_bang.c:60: delay(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:54: for(int i = 0; i < BYTE_LENGTH; i++){
	inc	r5
	cjne	r5,#0x00,00105$
	inc	r6
	sjmp	00105$
00101$:
;	i2c_bit_bang.c:62: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:63: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:64: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:65: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:66: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:67: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:68: for(int j = 0; j < BYTE_LENGTH; j++){
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	i2c_bit_bang.c:69: SDA = address & (0b10000000);
	mov	dptr,#_Byte_Write_PARM_3
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:70: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:71: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
;	i2c_bit_bang.c:72: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:73: address = address << 1;
	mov	a,r5
	add	a,r5
	mov	dptr,#_Byte_Write_PARM_3
	movx	@dptr,a
;	i2c_bit_bang.c:74: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:68: for(int j = 0; j < BYTE_LENGTH; j++){
	inc	r6
	cjne	r6,#0x00,00108$
	inc	r7
	sjmp	00108$
00102$:
;	i2c_bit_bang.c:76: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:77: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:78: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:79: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:80: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:81: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:82: for(int k = 0; k < BYTE_LENGTH; k++){
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	i2c_bit_bang.c:83: SDA = data & (0b10000000);
	mov	dptr,#_Byte_Write_data_65536_8
	movx	a,@dptr
	mov	r5,a
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:84: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:85: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
;	i2c_bit_bang.c:86: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:87: data = data << 1;
	mov	a,r5
	add	a,r5
	mov	dptr,#_Byte_Write_data_65536_8
	movx	@dptr,a
;	i2c_bit_bang.c:88: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:82: for(int k = 0; k < BYTE_LENGTH; k++){
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00103$:
;	i2c_bit_bang.c:90: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:91: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:92: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:93: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:94: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:95: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:96: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:97: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:98: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Byte_Read'
;------------------------------------------------------------
;byte                      Allocated to registers r4 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r5 r6 
;i                         Allocated to registers r5 r6 
;k                         Allocated to registers r5 r6 
;address                   Allocated with name '_Byte_Read_PARM_2'
;block                     Allocated with name '_Byte_Read_block_65536_17'
;------------------------------------------------------------
;	i2c_bit_bang.c:99: __xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
;	-----------------------------------------
;	 function Byte_Read
;	-----------------------------------------
_Byte_Read:
	mov	a,dpl
	mov	dptr,#_Byte_Read_block_65536_17
	movx	@dptr,a
;	i2c_bit_bang.c:100: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:101: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:102: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:103: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:104: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:105: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:106: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
	mov	dptr,#_Byte_Read_block_65536_17
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	mov	a,#0xa0
	orl	a,r7
	mov	r6,a
;	i2c_bit_bang.c:107: for(int i = 0; i < BYTE_LENGTH; i++){
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	i2c_bit_bang.c:108: SDA = byte & (0b10000000);
	mov	a,r6
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:109: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:110: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
;	i2c_bit_bang.c:111: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:112: byte = byte << 1;
	mov	ar3,r6
	mov	a,r3
	add	a,r3
	mov	r6,a
;	i2c_bit_bang.c:113: delay(0);
	mov	dptr,#0x0000
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:107: for(int i = 0; i < BYTE_LENGTH; i++){
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00101$:
;	i2c_bit_bang.c:115: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:117: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:118: delay(3);
	mov	dptr,#0x0003
	push	ar7
	lcall	_delay
;	i2c_bit_bang.c:119: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:120: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
	pop	ar7
;	i2c_bit_bang.c:121: for(int j = 0; j < BYTE_LENGTH; j++){
	mov	r5,#0x00
	mov	r6,#0x00
00109$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	i2c_bit_bang.c:122: SDA = address & (0b10000000);
	mov	dptr,#_Byte_Read_PARM_2
	movx	a,@dptr
	mov	r4,a
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:123: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:124: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
	pop	ar4
;	i2c_bit_bang.c:125: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:126: address = address << 1;
	mov	a,r4
	add	a,r4
	mov	dptr,#_Byte_Read_PARM_2
	movx	@dptr,a
;	i2c_bit_bang.c:127: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:121: for(int j = 0; j < BYTE_LENGTH; j++){
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	i2c_bit_bang.c:129: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:131: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:132: delay(2);
	mov	dptr,#0x0002
	push	ar7
	lcall	_delay
;	i2c_bit_bang.c:133: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:134: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:135: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:136: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:137: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:138: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:139: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar7
;	i2c_bit_bang.c:140: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:141: byte = START_BYTE | (block << 1) | READ_BYTE;
	orl	ar7,#0xa1
;	i2c_bit_bang.c:142: for(int i = 0; i < BYTE_LENGTH; i++){
	mov	r5,#0x00
	mov	r6,#0x00
00112$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	i2c_bit_bang.c:143: SDA = byte & (0b10000000);
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:144: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:145: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:146: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:147: byte = byte << 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	i2c_bit_bang.c:148: delay(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:142: for(int i = 0; i < BYTE_LENGTH; i++){
	inc	r5
	cjne	r5,#0x00,00112$
	inc	r6
	sjmp	00112$
00103$:
;	i2c_bit_bang.c:150: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:151: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:153: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:154: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:155: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:156: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:157: byte = 0;
	mov	r7,#0x00
;	i2c_bit_bang.c:158: for(int k = 0; k < BYTE_LENGTH; k++){
	mov	r5,#0x00
	mov	r6,#0x00
00115$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	i2c_bit_bang.c:159: byte = byte << 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r4,a
;	i2c_bit_bang.c:160: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:161: delay(2);
	mov	dptr,#0x0002
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
;	i2c_bit_bang.c:162: byte |= SDA;
	mov	c,_P1_3
	clr	a
	rlc	a
	orl	a,r4
	mov	r7,a
;	i2c_bit_bang.c:163: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:164: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:158: for(int k = 0; k < BYTE_LENGTH; k++){
	inc	r5
	cjne	r5,#0x00,00115$
	inc	r6
	sjmp	00115$
00104$:
;	i2c_bit_bang.c:166: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:167: delay(2);
	mov	dptr,#0x0002
	push	ar7
	lcall	_delay
;	i2c_bit_bang.c:168: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:169: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:170: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:171: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:172: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:173: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:174: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:175: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:176: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:177: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:178: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar7
;	i2c_bit_bang.c:179: return byte;
	mov	dpl,r7
;	i2c_bit_bang.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_reset'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	i2c_bit_bang.c:182: void eeprom_reset(){
;	-----------------------------------------
;	 function eeprom_reset
;	-----------------------------------------
_eeprom_reset:
;	i2c_bit_bang.c:183: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:184: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:185: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:186: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:187: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:188: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:189: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:190: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	i2c_bit_bang.c:191: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:192: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:193: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	lcall	_delay
;	i2c_bit_bang.c:194: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:195: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:190: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	i2c_bit_bang.c:197: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:198: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:199: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:200: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:201: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:202: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:203: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	i2c_bit_bang.c:204: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:205: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:206: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:207: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:208: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:209: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
