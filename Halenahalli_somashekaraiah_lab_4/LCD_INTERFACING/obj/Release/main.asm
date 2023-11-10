;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lcd_command_PARM_3
	.globl _lcd_command_PARM_2
	.globl _main
	.globl _isr_timer0
	.globl _timer0_interrupt_Init
	.globl _timer0_init
	.globl _isr_timer2
	.globl _timer2_interrupt_Init
	.globl _timer2_init
	.globl _create_custom_character
	.globl _set_cgram_address
	.globl _test_functionality
	.globl _lcdclear
	.globl _lcdinit
	.globl _lcdputstr
	.globl _lcdputch
	.globl _lcdgotoxy
	.globl _lcdgotoaddr
	.globl _lcdbusywait
	.globl _lcd_command
	.globl _delay
	.globl __sdcc_external_startup
	.globl _printf_tiny
	.globl _printf
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
	.globl _db
	.globl _lcdgotoxy_PARM_2
	.globl _tick
	.globl _ptr
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
_ptr::
	.ds 2
_tick::
	.ds 2
_lcdgotoxy_PARM_2:
	.ds 1
_create_custom_character_c_65536_68:
	.ds 8
_main_previous_time_noted_65536_82:
	.ds 2
_main_min_high_65536_82:
	.ds 1
_main_min_low_65536_82:
	.ds 1
_main_sec_high_65536_82:
	.ds 1
_main_sec_low_65536_82:
	.ds 1
_main_mili_sec_65536_82:
	.ds 1
_main_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_lcd_command_PARM_2:
	.ds 1
_lcd_command_PARM_3:
	.ds 1
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
_lcdgotoxy_sloc0_1_0:
	.ds 1
_isr_timer2_sloc0_1_0:
	.ds 1
_isr_timer0_sloc0_1_0:
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_isr_timer0
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_isr_timer2
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
;	main.c:19: __xdata uint8_t * ptr = &db;
	mov	_ptr,#_db
	mov	(_ptr + 1),#(_db >> 8)
;	main.c:20: volatile unsigned int tick = 0;
	clr	a
	mov	_tick,a
	mov	(_tick + 1),a
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
;	main.c:26: _sdcc_external_startup()
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
;	main.c:28: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
	orl	_AUXR,#0x0c
;	main.c:29: return 0;               // Return 0 to indicate successful startup
	mov	dptr,#0x0000
;	main.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	main.c:41: void delay(uint32_t t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:43: while(t--){
00101$:
	mov	ar0,r4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	dec	r4
	cjne	r4,#0xff,00115$
	dec	r5
	cjne	r5,#0xff,00115$
	dec	r6
	cjne	r6,#0xff,00115$
	dec	r7
00115$:
	mov	a,r0
	orl	a,r1
	orl	a,r2
	orl	a,r3
	jz	00104$
;	main.c:44: NOP;  // Assembly NOP instruction for delaying program execution.
	nop	
	sjmp	00101$
00104$:
;	main.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_command'
;------------------------------------------------------------
;r_w                       Allocated with name '_lcd_command_PARM_2'
;data                      Allocated with name '_lcd_command_PARM_3'
;rs                        Allocated to registers r7 
;------------------------------------------------------------
;	main.c:48: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data){
;	-----------------------------------------
;	 function lcd_command
;	-----------------------------------------
_lcd_command:
;	main.c:49: RS = rs;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P1_6,c
;	main.c:50: R_W = r_w;
;	assignBit
	mov	a,_lcd_command_PARM_2
	add	a,#0xff
	mov	_P1_7,c
;	main.c:51: *ptr = data;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,_lcd_command_PARM_3
	movx	@dptr,a
;	main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	main.c:54: void lcdbusywait(){
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	main.c:55: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	main.c:56: R_W = PULSE_HIGH;
;	assignBit
	setb	_P1_7
;	main.c:57: while(*ptr & (0b10000000)){
00101$:
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	jb	acc.7,00101$
;	main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	main.c:61: void lcdgotoaddr(uint8_t addr){
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	r7,dpl
;	main.c:62: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	main.c:63: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	main.c:64: *ptr = addr | (0x80);
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	orl	ar7,#0x80
	mov	a,r7
	movx	@dptr,a
;	main.c:65: lcdbusywait();
;	main.c:66: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:68: void lcdgotoxy(uint8_t row, uint8_t column){
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
;	main.c:69: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
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
;	main.c:70: }
	ljmp	_lcdgotoaddr
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated to registers r7 
;------------------------------------------------------------
;	main.c:71: void lcdputch(uint8_t cc){
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	r7,dpl
;	main.c:72: RS = PULSE_HIGH;
;	assignBit
	setb	_P1_6
;	main.c:73: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	main.c:74: *ptr = cc;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,r7
	movx	@dptr,a
;	main.c:75: lcdbusywait();
;	main.c:76: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated to registers 
;lcd_ptr_addr              Allocated to registers r4 
;------------------------------------------------------------
;	main.c:78: void lcdputstr(uint8_t *ss){
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:80: while(*ss != '\0'){
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00137$
	ret
00137$:
;	main.c:81: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	main.c:82: R_W = PULSE_HIGH;
;	assignBit
	setb	_P1_7
;	main.c:83: lcdputch(*ss);
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
;	main.c:84: lcd_ptr_addr = *ptr & (0b01111111);
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x7f
;	main.c:85: switch(lcd_ptr_addr){
	cjne	r4,#0x10,00138$
	sjmp	00101$
00138$:
	cjne	r4,#0x20,00139$
	sjmp	00103$
00139$:
	cjne	r4,#0x50,00140$
	sjmp	00102$
00140$:
;	main.c:86: case 0x10:
	cjne	r4,#0x60,00106$
	sjmp	00104$
00101$:
;	main.c:87: lcdgotoaddr(0x40);
	mov	dpl,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:88: break;
;	main.c:89: case 0x50:
	sjmp	00106$
00102$:
;	main.c:90: lcdgotoaddr(0x10);
	mov	dpl,#0x10
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:91: break;
;	main.c:92: case 0x20:
	sjmp	00106$
00103$:
;	main.c:93: lcdgotoaddr(0x50);
	mov	dpl,#0x50
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:94: break;
;	main.c:95: case 0x60:
	sjmp	00106$
00104$:
;	main.c:96: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:100: }
00106$:
;	main.c:101: ss++;
	inc	r5
	cjne	r5,#0x00,00142$
	inc	r6
00142$:
;	main.c:103: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;	main.c:104: void lcdinit()
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	main.c:106: printf_tiny("lcd init start\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:107: delay(14000); //waiting for 15ms (1.085us * 14000 ~= 15ms)
	mov	dptr,#0x36b0
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:108: lcd_command(0,0,0x30); // system set
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:109: delay(4000); //waiting for 4.1ms (1.085us * 4000 ~= 4.1ms)
	mov	dptr,#0x0fa0
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:110: lcd_command(0,0,0x30); // system set
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:111: delay(100); //waiting for 100us (1.085us * 100 ~= 100us)
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
;	main.c:112: lcd_command(0,0,0x30); // system set
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x30
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:113: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:114: lcd_command(0,0,0x38); // function set
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x38
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:115: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:116: lcd_command(0,0,0x08); // turn off display
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x08
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:117: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:118: lcd_command(0,0,0x0C); // turn on display
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x0c
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:119: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:120: lcd_command(0,0,0x06); // Entry mode set
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x06
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:121: lcdbusywait();
	lcall	_lcdbusywait
;	main.c:122: lcd_command(0,0,0x01); // clear screen and send the cursor home
	mov	_lcd_command_PARM_2,#0x00
	mov	_lcd_command_PARM_3,#0x01
	mov	dpl,#0x00
	lcall	_lcd_command
;	main.c:123: printf_tiny("lcd init end\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;	main.c:126: void lcdclear(){
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	main.c:127: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	main.c:128: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	main.c:129: *ptr = 0b00000001;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,#0x01
	movx	@dptr,a
;	main.c:130: lcdbusywait();
;	main.c:131: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'test_functionality'
;------------------------------------------------------------
;	main.c:133: void test_functionality(){
;	-----------------------------------------
;	 function test_functionality
;	-----------------------------------------
_test_functionality:
;	main.c:134: printf_tiny("test_functionality start\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:136: lcdgotoaddr(0x01);
	mov	dpl,#0x01
	lcall	_lcdgotoaddr
;	main.c:137: lcdputch('E');
	mov	dpl,#0x45
	lcall	_lcdputch
;	main.c:138: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	main.c:140: lcdgotoxy(1, 1);
	mov	_lcdgotoxy_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_lcdgotoxy
;	main.c:141: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:142: delay(100000);
	mov	dptr,#0x86a0
	mov	b,#0x01
	clr	a
	lcall	_delay
;	main.c:144: lcdclear();
	lcall	_lcdclear
;	main.c:145: printf_tiny("test_functionality end\n\r");
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
;Allocation info for local variables in function 'set_cgram_address'
;------------------------------------------------------------
;cgram_address             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:148: void set_cgram_address(uint8_t cgram_address){
;	-----------------------------------------
;	 function set_cgram_address
;	-----------------------------------------
_set_cgram_address:
	mov	r7,dpl
;	main.c:149: RS = PULSE_LOW;
;	assignBit
	clr	_P1_6
;	main.c:150: R_W = PULSE_LOW;
;	assignBit
	clr	_P1_7
;	main.c:151: *ptr = cgram_address;
	mov	dpl,_ptr
	mov	dph,(_ptr + 1)
	mov	a,r7
	movx	@dptr,a
;	main.c:152: lcdbusywait();
;	main.c:153: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'create_custom_character'
;------------------------------------------------------------
;char_num                  Allocated to registers r7 
;c                         Allocated with name '_create_custom_character_c_65536_68'
;i                         Allocated to registers r5 r6 
;cgram_address             Allocated to registers 
;------------------------------------------------------------
;	main.c:154: void create_custom_character(uint8_t char_num){
;	-----------------------------------------
;	 function create_custom_character
;	-----------------------------------------
_create_custom_character:
	mov	r7,dpl
;	main.c:155: uint8_t c[8] =
	mov	_create_custom_character_c_65536_68,#0x04
	mov	(_create_custom_character_c_65536_68 + 0x0001),#0x0e
	mov	(_create_custom_character_c_65536_68 + 0x0002),#0x04
	mov	(_create_custom_character_c_65536_68 + 0x0003),#0x04
	mov	(_create_custom_character_c_65536_68 + 0x0004),#0x04
	mov	(_create_custom_character_c_65536_68 + 0x0005),#0x04
	mov	(_create_custom_character_c_65536_68 + 0x0006),#0x04
	mov	(_create_custom_character_c_65536_68 + 0x0007),#0x0a
;	main.c:165: for(int i = 0; i < BYTE_LENGTH; i++){
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
;	main.c:166: uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
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
;	main.c:167: set_cgram_address(cgram_address);
	push	ar7
	push	ar6
	push	ar5
	lcall	_set_cgram_address
	pop	ar5
;	main.c:168: lcdputch(c[i]);
	mov	a,r5
	add	a,#_create_custom_character_c_65536_68
	mov	r1,a
	mov	dpl,@r1
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:165: for(int i = 0; i < BYTE_LENGTH; i++){
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	main.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2_init'
;------------------------------------------------------------
;	main.c:172: void timer2_init(){
;	-----------------------------------------
;	 function timer2_init
;	-----------------------------------------
_timer2_init:
;	main.c:173: T2MOD = 0b00000001;
	mov	_T2MOD,#0x01
;	main.c:174: RCAP2L = 0x00;
	mov	_RCAP2L,#0x00
;	main.c:175: RCAP2H = 0x00;
	mov	_RCAP2H,#0x00
;	main.c:177: TL2 = RCAP2L;
	mov	_TL2,_RCAP2L
;	main.c:178: TH2 = RCAP2H;
	mov	_TH2,_RCAP2H
;	main.c:179: TR2 = 1;
;	assignBit
	setb	_TR2
;	main.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer2_interrupt_Init'
;------------------------------------------------------------
;	main.c:181: void timer2_interrupt_Init(){
;	-----------------------------------------
;	 function timer2_interrupt_Init
;	-----------------------------------------
_timer2_interrupt_Init:
;	main.c:182: timer2_init();
	lcall	_timer2_init
;	main.c:183: ET2 = 1;
;	assignBit
	setb	_ET2
;	main.c:184: EA = 1;
;	assignBit
	setb	_EA
;	main.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_timer2'
;------------------------------------------------------------
;	main.c:187: void isr_timer2(void) __interrupt (5)
;	-----------------------------------------
;	 function isr_timer2
;	-----------------------------------------
_isr_timer2:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:191: }
	setb	_isr_timer2_sloc0_1_0
	jbc	ea,00103$
	clr	_isr_timer2_sloc0_1_0
00103$:
;	main.c:190: tick++;
	mov	r6,_tick
	mov	r7,(_tick + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tick,a
	clr	a
	addc	a,r7
	mov	(_tick + 1),a
	mov	c,_isr_timer2_sloc0_1_0
	mov	ea,c
;	main.c:192: TF2 = 0;
;	assignBit
	clr	_TF2
;	main.c:193: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;	main.c:195: void timer0_init(){
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	main.c:196: TMOD &= 0xF0;  // Clear the lower 4 bits of TMOD
	anl	_TMOD,#0xf0
;	main.c:197: TMOD |= 0x01;  // Set timer0 in 16-bit mode
	orl	_TMOD,#0x01
;	main.c:200: TL0 = 0xFC;
	mov	_TL0,#0xfc
;	main.c:201: TH0 = 0x4B;
	mov	_TH0,#0x4b
;	main.c:203: TR0 = 1;  // Start the timer
;	assignBit
	setb	_TR0
;	main.c:204: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_interrupt_Init'
;------------------------------------------------------------
;	main.c:205: void timer0_interrupt_Init(){
;	-----------------------------------------
;	 function timer0_interrupt_Init
;	-----------------------------------------
_timer0_interrupt_Init:
;	main.c:206: timer0_init();
	lcall	_timer0_init
;	main.c:207: ET0 = 1;
;	assignBit
	setb	_ET0
;	main.c:208: EA = 1;
;	assignBit
	setb	_EA
;	main.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_timer0'
;------------------------------------------------------------
;	main.c:211: void isr_timer0(void) __interrupt (1)
;	-----------------------------------------
;	 function isr_timer0
;	-----------------------------------------
_isr_timer0:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:215: }
	setb	_isr_timer0_sloc0_1_0
	jbc	ea,00103$
	clr	_isr_timer0_sloc0_1_0
00103$:
;	main.c:214: tick++;
	mov	r6,_tick
	mov	r7,(_tick + 1)
	mov	a,#0x01
	add	a,r6
	mov	_tick,a
	clr	a
	addc	a,r7
	mov	(_tick + 1),a
	mov	c,_isr_timer0_sloc0_1_0
	mov	ea,c
;	main.c:216: TL0 = 0xFC;
	mov	_TL0,#0xfc
;	main.c:217: TH0 = 0x4B;
	mov	_TH0,#0x4b
;	main.c:218: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:219: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;previous_time_noted       Allocated with name '_main_previous_time_noted_65536_82'
;custom_char_code          Allocated to registers 
;min_high                  Allocated with name '_main_min_high_65536_82'
;min_low                   Allocated with name '_main_min_low_65536_82'
;sec_high                  Allocated with name '_main_sec_high_65536_82'
;sec_low                   Allocated with name '_main_sec_low_65536_82'
;mili_sec                  Allocated with name '_main_mili_sec_65536_82'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	main.c:221: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:223: unsigned int  previous_time_noted = tick;
	mov	_main_previous_time_noted_65536_82,_tick
	mov	(_main_previous_time_noted_65536_82 + 1),(_tick + 1)
;	main.c:225: uint8_t min_high = '0';
	mov	_main_min_high_65536_82,#0x30
;	main.c:226: uint8_t min_low = '0';
	mov	_main_min_low_65536_82,#0x30
;	main.c:227: uint8_t sec_high = '0';
	mov	_main_sec_high_65536_82,#0x30
;	main.c:228: uint8_t sec_low = '0';
	mov	_main_sec_low_65536_82,#0x30
;	main.c:229: uint8_t mili_sec = '0';
	mov	_main_mili_sec_65536_82,#0x30
;	main.c:230: lcdinit();
	lcall	_lcdinit
;	main.c:231: test_functionality();
	lcall	_test_functionality
;	main.c:232: create_custom_character(custom_char_code);
	mov	dpl,#0x01
	lcall	_create_custom_character
;	main.c:233: lcdgotoaddr(0x0F);
	mov	dpl,#0x0f
	lcall	_lcdgotoaddr
;	main.c:234: lcdputch(custom_char_code);
	mov	dpl,#0x01
	lcall	_lcdputch
;	main.c:235: timer2_interrupt_Init();
	lcall	_timer2_interrupt_Init
;	main.c:238: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	main.c:239: lcdputch(min_high);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:240: lcdputch(min_low);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:241: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
;	main.c:242: lcdputch(sec_high);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:243: lcdputch(sec_low);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:244: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
;	main.c:245: lcdputch(mili_sec);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:246: while(1){
00115$:
;	main.c:247: if(((tick % 2) == 0) && (tick > previous_time_noted)){
	mov	a,_tick
	jb	acc.0,00115$
	clr	c
	mov	a,_main_previous_time_noted_65536_82
	subb	a,_tick
	mov	a,(_main_previous_time_noted_65536_82 + 1)
	subb	a,(_tick + 1)
	jnc	00115$
;	main.c:248: printf("Tick->>>>>>>>>%d\n\r",tick);
	push	_tick
	push	(_tick + 1)
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:249: previous_time_noted = tick;
	mov	_main_previous_time_noted_65536_82,_tick
	mov	(_main_previous_time_noted_65536_82 + 1),(_tick + 1)
;	main.c:250: mili_sec++;
	inc	_main_mili_sec_65536_82
;	main.c:251: if(mili_sec > '9'){
	mov	a,_main_mili_sec_65536_82
	add	a,#0xff - 0x39
	jnc	00102$
;	main.c:252: mili_sec = '0';
	mov	_main_mili_sec_65536_82,#0x30
;	main.c:253: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	main.c:254: lcdputch(mili_sec);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:255: sec_low++;
	inc	_main_sec_low_65536_82
;	main.c:256: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	main.c:257: lcdputch(sec_low);
	mov	dpl,_main_sec_low_65536_82
	lcall	_lcdputch
00102$:
;	main.c:259: if(sec_low > '9'){
	mov	a,_main_sec_low_65536_82
	add	a,#0xff - 0x39
	jnc	00104$
;	main.c:260: sec_low = '0';
	mov	_main_sec_low_65536_82,#0x30
;	main.c:261: lcdgotoaddr(0x5D);
	mov	dpl,#0x5d
	lcall	_lcdgotoaddr
;	main.c:262: lcdputch(sec_low);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:263: sec_high++;
	inc	_main_sec_high_65536_82
;	main.c:264: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	main.c:265: lcdputch(sec_high);
	mov	dpl,_main_sec_high_65536_82
	lcall	_lcdputch
00104$:
;	main.c:267: if(sec_high > '5'){
	mov	a,_main_sec_high_65536_82
	add	a,#0xff - 0x35
	jnc	00106$
;	main.c:268: sec_high = '0';
	mov	_main_sec_high_65536_82,#0x30
;	main.c:269: lcdgotoaddr(0x5C);
	mov	dpl,#0x5c
	lcall	_lcdgotoaddr
;	main.c:270: lcdputch(sec_high);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:271: min_low++;
	inc	_main_min_low_65536_82
;	main.c:272: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	main.c:273: lcdputch(min_low);
	mov	dpl,_main_min_low_65536_82
	lcall	_lcdputch
00106$:
;	main.c:275: if(min_low > '9'){
	mov	a,_main_min_low_65536_82
	add	a,#0xff - 0x39
	jnc	00108$
;	main.c:276: min_low = '0';
	mov	_main_min_low_65536_82,#0x30
;	main.c:277: lcdgotoaddr(0x5A);
	mov	dpl,#0x5a
	lcall	_lcdgotoaddr
;	main.c:278: lcdputch(min_low);
	mov	dpl,#0x30
	lcall	_lcdputch
;	main.c:279: min_high++;
	inc	_main_min_high_65536_82
;	main.c:280: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	main.c:281: lcdputch(min_high);
	mov	dpl,_main_min_high_65536_82
	lcall	_lcdputch
00108$:
;	main.c:283: if(min_high > '5'){
	mov	a,_main_min_high_65536_82
	add	a,#0xff - 0x35
	jnc	00110$
;	main.c:284: min_high = '0';
	mov	_main_min_high_65536_82,#0x30
;	main.c:285: lcdgotoaddr(0x59);
	mov	dpl,#0x59
	lcall	_lcdgotoaddr
;	main.c:286: lcdputch(min_high);
	mov	dpl,#0x30
	lcall	_lcdputch
00110$:
;	main.c:288: printf("%c%c:%c%c.%c\n\r",min_high,min_low,sec_high,sec_low,mili_sec);
	mov	r0,_main_mili_sec_65536_82
	mov	r7,#0x00
	mov	r1,_main_sec_low_65536_82
	mov	r6,#0x00
	mov	r2,_main_sec_high_65536_82
	mov	r3,#0x00
	mov	_main_sloc0_1_0,_main_min_low_65536_82
;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	(_main_sloc0_1_0 + 1),r7
	mov	r4,_main_min_high_65536_82
	mov	r5,#0x00
	push	ar0
	push	ar7
	push	ar1
	push	ar6
	push	ar2
	push	ar3
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	ar4
	push	ar5
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
;	main.c:289: lcdgotoaddr(0x5F);
	mov	dpl,#0x5f
	lcall	_lcdgotoaddr
;	main.c:290: lcdputch(mili_sec);
	mov	dpl,_main_mili_sec_65536_82
	lcall	_lcdputch
;	main.c:293: }
	ljmp	00115$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "lcd init start"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "lcd init end"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "test_functionality start"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
	.ascii "zJITHU"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "test_functionality end"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Tick->>>>>>>>>%d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "%c%c:%c%c.%c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__db:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
