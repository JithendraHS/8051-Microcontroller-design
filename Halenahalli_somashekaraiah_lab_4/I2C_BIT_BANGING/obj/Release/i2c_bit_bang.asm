;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module i2c_bit_bang
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _Byte_Read_Sequential_PARM_3
	.globl _Byte_Read_Sequential_PARM_2
	.globl _Byte_Read_PARM_2
	.globl _Byte_Write_PARM_3
	.globl _Byte_Write_PARM_2
	.globl _delay
	.globl _sendByte
	.globl _Byte_Write
	.globl _Byte_Read
	.globl _Byte_Read_Sequential
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
_Byte_Read_Sequential_l_131073_24:
	.ds 2
_Byte_Read_Sequential_k_262145_26:
	.ds 2
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
_Byte_Write_data_65536_13:
	.ds 1
_Byte_Read_PARM_2:
	.ds 1
_Byte_Read_block_65536_16:
	.ds 1
_Byte_Read_Sequential_PARM_2:
	.ds 1
_Byte_Read_Sequential_PARM_3:
	.ds 1
_Byte_Read_Sequential_block_65536_21:
	.ds 1
_Byte_Read_Sequential_buffer_65536_22:
	.ds 256
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	i2c_bit_bang.c:17: void delay(unsigned int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	i2c_bit_bang.c:19: while(t--){
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
;	i2c_bit_bang.c:20: NOP;  // Assembly NOP instruction for delaying program execution.
	nop	
	sjmp	00101$
00104$:
;	i2c_bit_bang.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendByte'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	i2c_bit_bang.c:28: void sendByte(uint8_t byte) {
;	-----------------------------------------
;	 function sendByte
;	-----------------------------------------
_sendByte:
	mov	r7,dpl
;	i2c_bit_bang.c:29: for(int i = 0; i < BYTE_LENGTH; i++){
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
;	i2c_bit_bang.c:30: SDA = byte & (0b10000000);
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P1_3,c
;	i2c_bit_bang.c:31: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:32: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:33: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:34: byte = byte << 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	i2c_bit_bang.c:35: delay(0);
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:29: for(int i = 0; i < BYTE_LENGTH; i++){
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	i2c_bit_bang.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Byte_Write'
;------------------------------------------------------------
;byte                      Allocated to registers 
;block                     Allocated with name '_Byte_Write_PARM_2'
;address                   Allocated with name '_Byte_Write_PARM_3'
;data                      Allocated with name '_Byte_Write_data_65536_13'
;------------------------------------------------------------
;	i2c_bit_bang.c:45: void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
;	-----------------------------------------
;	 function Byte_Write
;	-----------------------------------------
_Byte_Write:
	mov	a,dpl
	mov	dptr,#_Byte_Write_data_65536_13
	movx	@dptr,a
;	i2c_bit_bang.c:47: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:48: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:51: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:52: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:53: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:54: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:57: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
	mov	dptr,#_Byte_Write_PARM_2
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	mov	a,#0xa0
	orl	a,r7
	mov	dpl,a
;	i2c_bit_bang.c:60: sendByte(byte);
	lcall	_sendByte
;	i2c_bit_bang.c:61: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:62: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:63: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:69: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:70: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:72: sendByte(address);
	mov	dptr,#_Byte_Write_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_sendByte
;	i2c_bit_bang.c:73: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:74: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:75: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:81: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:82: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:84: sendByte(data);
	mov	dptr,#_Byte_Write_data_65536_13
	movx	a,@dptr
	mov	dpl,a
	lcall	_sendByte
;	i2c_bit_bang.c:87: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:88: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:89: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:98: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:99: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	i2c_bit_bang.c:100: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:101: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	i2c_bit_bang.c:102: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:103: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:104: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Byte_Read'
;------------------------------------------------------------
;byte                      Allocated to registers r4 
;k                         Allocated to registers r5 r6 
;address                   Allocated with name '_Byte_Read_PARM_2'
;block                     Allocated with name '_Byte_Read_block_65536_16'
;------------------------------------------------------------
;	i2c_bit_bang.c:113: __xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
;	-----------------------------------------
;	 function Byte_Read
;	-----------------------------------------
_Byte_Read:
	mov	a,dpl
	mov	dptr,#_Byte_Read_block_65536_16
	movx	@dptr,a
;	i2c_bit_bang.c:115: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:116: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:119: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:120: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:121: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:122: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:125: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
	mov	dptr,#_Byte_Read_block_65536_16
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	mov	a,#0xa0
	orl	a,r7
	mov	dpl,a
;	i2c_bit_bang.c:128: sendByte(byte);
	push	ar7
	lcall	_sendByte
;	i2c_bit_bang.c:129: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:130: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:131: delay(3);
	mov	dptr,#0x0003
	lcall	_delay
;	i2c_bit_bang.c:137: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:138: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:140: sendByte(address);
	mov	dptr,#_Byte_Read_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_sendByte
;	i2c_bit_bang.c:141: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:142: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:143: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:149: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:150: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:151: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:152: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:153: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:154: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:155: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar7
;	i2c_bit_bang.c:156: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:157: byte = START_BYTE | (block << 1) | READ_BYTE;
	mov	a,#0xa1
	orl	a,r7
	mov	dpl,a
;	i2c_bit_bang.c:160: sendByte(byte);
	lcall	_sendByte
;	i2c_bit_bang.c:162: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:163: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:169: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:170: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:171: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:172: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:173: byte = 0;
	mov	r7,#0x00
;	i2c_bit_bang.c:174: for(int k = 0; k < BYTE_LENGTH; k++){
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	i2c_bit_bang.c:175: byte = byte << 1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r4,a
;	i2c_bit_bang.c:176: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:177: delay(2);
	mov	dptr,#0x0002
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
;	i2c_bit_bang.c:178: byte |= SDA;
	mov	c,_P1_3
	clr	a
	rlc	a
	orl	a,r4
	mov	r7,a
;	i2c_bit_bang.c:179: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:180: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:174: for(int k = 0; k < BYTE_LENGTH; k++){
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00101$:
;	i2c_bit_bang.c:183: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:184: delay(2);
	mov	dptr,#0x0002
	push	ar7
	lcall	_delay
;	i2c_bit_bang.c:185: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:186: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:187: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:188: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:189: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:190: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:191: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:192: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:193: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:194: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:195: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar7
;	i2c_bit_bang.c:196: return byte;
	mov	dpl,r7
;	i2c_bit_bang.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Byte_Read_Sequential'
;------------------------------------------------------------
;byte                      Allocated to registers 
;l                         Allocated with name '_Byte_Read_Sequential_l_131073_24'
;k                         Allocated with name '_Byte_Read_Sequential_k_262145_26'
;start_address             Allocated with name '_Byte_Read_Sequential_PARM_2'
;address_range             Allocated with name '_Byte_Read_Sequential_PARM_3'
;block                     Allocated with name '_Byte_Read_Sequential_block_65536_21'
;buffer                    Allocated with name '_Byte_Read_Sequential_buffer_65536_22'
;------------------------------------------------------------
;	i2c_bit_bang.c:207: __xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
;	-----------------------------------------
;	 function Byte_Read_Sequential
;	-----------------------------------------
_Byte_Read_Sequential:
	mov	a,dpl
	mov	dptr,#_Byte_Read_Sequential_block_65536_21
	movx	@dptr,a
;	i2c_bit_bang.c:210: __xdata uint8_t buffer[256] = {0};
	mov	dptr,#_Byte_Read_Sequential_buffer_65536_22
	clr	a
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0020)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0024)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0028)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x002c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0030)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0034)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0038)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x003c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0040)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0044)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0048)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x004c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x004f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0050)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0051)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0052)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0053)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0054)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0055)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0056)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0057)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0058)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0059)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x005a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x005b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x005c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x005d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x005e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x005f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0060)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0061)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0062)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0063)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0064)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0065)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0066)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0067)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0068)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0069)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x006a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x006b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x006c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x006d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x006e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x006f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0070)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0071)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0072)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0073)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0074)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0075)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0076)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0077)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0078)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0079)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x007a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x007b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x007c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x007d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x007e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x007f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0080)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0084)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0088)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x008c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0090)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0094)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0098)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x009c)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a0)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a4)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a8)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ac)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b0)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b4)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b8)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00bc)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c0)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c4)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c8)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00cc)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d0)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d4)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d8)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00dc)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e0)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e4)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e8)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ec)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f0)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f4)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f8)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00fc)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_22 + 0x00ff)
	movx	@dptr,a
;	i2c_bit_bang.c:213: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:214: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:215: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:216: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:217: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:218: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:221: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
	mov	dptr,#_Byte_Read_Sequential_block_65536_21
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	mov	a,#0xa0
	orl	a,r7
	mov	dpl,a
;	i2c_bit_bang.c:224: sendByte(byte);
	push	ar7
	lcall	_sendByte
;	i2c_bit_bang.c:225: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:226: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:227: delay(3);
	mov	dptr,#0x0003
	lcall	_delay
;	i2c_bit_bang.c:233: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:234: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:236: sendByte(start_address);
	mov	dptr,#_Byte_Read_Sequential_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_sendByte
;	i2c_bit_bang.c:238: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:239: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:240: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:246: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:247: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:248: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:249: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:250: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:251: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:252: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar7
;	i2c_bit_bang.c:253: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:254: byte = START_BYTE | (block << 1) | READ_BYTE;
	mov	a,#0xa1
	orl	a,r7
	mov	dpl,a
;	i2c_bit_bang.c:257: sendByte(byte);
	lcall	_sendByte
;	i2c_bit_bang.c:258: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:259: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:265: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:266: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:267: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:268: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:270: for(int l = 0; l < (address_range + 1); l++){
	mov	dptr,#_Byte_Read_Sequential_PARM_3
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	_Byte_Read_Sequential_l_131073_24,a
	mov	(_Byte_Read_Sequential_l_131073_24 + 1),a
00109$:
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,#0x01
	add	a,r3
	mov	r1,a
	clr	a
	addc	a,r4
	mov	r2,a
	clr	c
	mov	a,_Byte_Read_Sequential_l_131073_24
	subb	a,r1
	mov	a,(_Byte_Read_Sequential_l_131073_24 + 1)
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00140$
	ljmp	00104$
00140$:
;	i2c_bit_bang.c:271: for(int k = 0; k < BYTE_LENGTH; k++){
	clr	a
	mov	_Byte_Read_Sequential_k_262145_26,a
	mov	(_Byte_Read_Sequential_k_262145_26 + 1),a
00106$:
	clr	c
	mov	a,_Byte_Read_Sequential_k_262145_26
	subb	a,#0x08
	mov	a,(_Byte_Read_Sequential_k_262145_26 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	i2c_bit_bang.c:272: SDA= PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:273: buffer[l] = buffer[l] << 1;
	mov	a,_Byte_Read_Sequential_l_131073_24
	add	a,#_Byte_Read_Sequential_buffer_65536_22
	mov	r0,a
	mov	a,(_Byte_Read_Sequential_l_131073_24 + 1)
	addc	a,#(_Byte_Read_Sequential_buffer_65536_22 >> 8)
	mov	r2,a
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	add	a,acc
	mov	dpl,r0
	mov	dph,r2
	movx	@dptr,a
;	i2c_bit_bang.c:274: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:275: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_delay
	pop	ar0
	pop	ar2
;	i2c_bit_bang.c:276: buffer[l] |= SDA;
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	mov	r1,a
	mov	c,_P1_3
	clr	a
	rlc	a
	orl	ar1,a
	mov	dpl,r0
	mov	dph,r2
	mov	a,r1
	movx	@dptr,a
;	i2c_bit_bang.c:277: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:278: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar7
;	i2c_bit_bang.c:271: for(int k = 0; k < BYTE_LENGTH; k++){
	inc	_Byte_Read_Sequential_k_262145_26
	clr	a
	cjne	a,_Byte_Read_Sequential_k_262145_26,00106$
	inc	(_Byte_Read_Sequential_k_262145_26 + 1)
	sjmp	00106$
00101$:
;	i2c_bit_bang.c:281: if(l < address_range){
	clr	c
	mov	a,_Byte_Read_Sequential_l_131073_24
	subb	a,r3
	mov	a,(_Byte_Read_Sequential_l_131073_24 + 1)
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	i2c_bit_bang.c:282: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:283: delay(0);
	mov	dptr,#0x0000
	push	ar7
	lcall	_delay
;	i2c_bit_bang.c:284: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:285: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:286: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:287: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar7
00110$:
;	i2c_bit_bang.c:270: for(int l = 0; l < (address_range + 1); l++){
	inc	_Byte_Read_Sequential_l_131073_24
	clr	a
	cjne	a,_Byte_Read_Sequential_l_131073_24,00144$
	inc	(_Byte_Read_Sequential_l_131073_24 + 1)
00144$:
	ljmp	00109$
00104$:
;	i2c_bit_bang.c:291: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:292: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:293: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:294: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:295: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:296: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:297: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:298: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:299: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:300: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:301: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:302: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:303: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:306: return buffer;
	mov	dptr,#_Byte_Read_Sequential_buffer_65536_22
;	i2c_bit_bang.c:307: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eeprom_reset'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	i2c_bit_bang.c:312: void eeprom_reset(){
;	-----------------------------------------
;	 function eeprom_reset
;	-----------------------------------------
_eeprom_reset:
;	i2c_bit_bang.c:314: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:315: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:316: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	i2c_bit_bang.c:317: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:318: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:319: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:320: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:323: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
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
;	i2c_bit_bang.c:324: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:325: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:326: delay(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	lcall	_delay
;	i2c_bit_bang.c:327: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:328: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2c_bit_bang.c:323: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	i2c_bit_bang.c:333: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:334: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:335: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:336: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:337: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:338: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	i2c_bit_bang.c:339: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	i2c_bit_bang.c:340: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	i2c_bit_bang.c:341: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:342: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	i2c_bit_bang.c:343: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	i2c_bit_bang.c:344: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	i2c_bit_bang.c:345: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
