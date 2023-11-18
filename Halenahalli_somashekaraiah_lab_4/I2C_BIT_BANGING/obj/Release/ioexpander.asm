;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module ioexpander
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sendByte
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
	.globl _user_input_write_ioexpander_handle
	.globl _user_input_read_ioexpander_handle
	.globl _user_input_toggle_ioexpander_handle
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
_user_input_write_ioexpander_handle_data_65536_21:
	.ds 1
_user_input_read_ioexpander_handle_buffer_65536_24:
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
;Allocation info for local variables in function 'user_input_write_ioexpander_handle'
;------------------------------------------------------------
;byte                      Allocated to registers 
;data                      Allocated with name '_user_input_write_ioexpander_handle_data_65536_21'
;------------------------------------------------------------
;	ioexpander.c:8: void user_input_write_ioexpander_handle(__xdata uint8_t  data){
;	-----------------------------------------
;	 function user_input_write_ioexpander_handle
;	-----------------------------------------
_user_input_write_ioexpander_handle:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_user_input_write_ioexpander_handle_data_65536_21
	movx	@dptr,a
;	ioexpander.c:11: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:12: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:15: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	ioexpander.c:16: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	ioexpander.c:17: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	ioexpander.c:18: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:23: sendByte(byte);
	mov	dpl,#0x74
	lcall	_sendByte
;	ioexpander.c:24: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:25: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:26: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	ioexpander.c:27: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:28: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	ioexpander.c:31: sendByte(data);
	mov	dptr,#_user_input_write_ioexpander_handle_data_65536_21
	movx	a,@dptr
	mov	dpl,a
	lcall	_sendByte
;	ioexpander.c:34: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:35: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:36: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	ioexpander.c:38: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:39: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ioexpander.c:40: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	ioexpander.c:41: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ioexpander.c:42: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:43: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	ioexpander.c:44: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_read_ioexpander_handle'
;------------------------------------------------------------
;byte                      Allocated to registers 
;k                         Allocated to registers r6 r7 
;buffer                    Allocated with name '_user_input_read_ioexpander_handle_buffer_65536_24'
;------------------------------------------------------------
;	ioexpander.c:46: __xdata uint8_t user_input_read_ioexpander_handle(){
;	-----------------------------------------
;	 function user_input_read_ioexpander_handle
;	-----------------------------------------
_user_input_read_ioexpander_handle:
;	ioexpander.c:48: __xdata uint8_t buffer = 0;
	mov	dptr,#_user_input_read_ioexpander_handle_buffer_65536_24
	clr	a
	movx	@dptr,a
;	ioexpander.c:50: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:51: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:54: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	ioexpander.c:55: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	ioexpander.c:56: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	ioexpander.c:57: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:63: sendByte(byte);
	mov	dpl,#0x75
	lcall	_sendByte
;	ioexpander.c:64: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:65: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:66: delay(3);
	mov	dptr,#0x0003
	lcall	_delay
;	ioexpander.c:67: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:68: delay(0);
	mov	dptr,#0x0000
	lcall	_delay
;	ioexpander.c:70: for(int k = 0; k < BYTE_LENGTH; k++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	ioexpander.c:71: SDA= PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:72: buffer = buffer << 1;
	mov	dptr,#_user_input_read_ioexpander_handle_buffer_65536_24
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	ioexpander.c:73: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:74: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay
;	ioexpander.c:75: buffer |= SDA;
	mov	dptr,#_user_input_read_ioexpander_handle_buffer_65536_24
	movx	a,@dptr
	mov	r5,a
	mov	c,_P1_3
	clr	a
	rlc	a
	mov	dptr,#_user_input_read_ioexpander_handle_buffer_65536_24
	orl	a,r5
	movx	@dptr,a
;	ioexpander.c:76: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:77: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar6
	pop	ar7
;	ioexpander.c:70: for(int k = 0; k < BYTE_LENGTH; k++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	ioexpander.c:80: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	ioexpander.c:81: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ioexpander.c:82: SCL = PULSE_HIGH;
;	assignBit
	setb	_P1_2
;	ioexpander.c:83: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ioexpander.c:84: SDA = PULSE_HIGH;
;	assignBit
	setb	_P1_3
;	ioexpander.c:85: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ioexpander.c:86: SCL = PULSE_LOW;
;	assignBit
	clr	_P1_2
;	ioexpander.c:87: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	ioexpander.c:88: SDA = PULSE_LOW;
;	assignBit
	clr	_P1_3
;	ioexpander.c:89: return buffer;
	mov	dptr,#_user_input_read_ioexpander_handle_buffer_65536_24
	movx	a,@dptr
;	ioexpander.c:90: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'user_input_toggle_ioexpander_handle'
;------------------------------------------------------------
;data                      Allocated with name '_user_input_toggle_ioexpander_handle_data_65536_28'
;------------------------------------------------------------
;	ioexpander.c:91: void user_input_toggle_ioexpander_handle(){
;	-----------------------------------------
;	 function user_input_toggle_ioexpander_handle
;	-----------------------------------------
_user_input_toggle_ioexpander_handle:
;	ioexpander.c:92: __xdata uint8_t data = user_input_read_ioexpander_handle();
	lcall	_user_input_read_ioexpander_handle
	mov	r7,dpl
;	ioexpander.c:93: delay(0);
	mov	dptr,#0x0000
	push	ar7
	lcall	_delay
	pop	ar7
;	ioexpander.c:94: user_input_write_ioexpander_handle(~data);
	mov	a,r7
	cpl	a
	mov	dpl,a
;	ioexpander.c:95: }
	ljmp	_user_input_write_ioexpander_handle
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
