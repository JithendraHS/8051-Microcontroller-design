;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_size
	.globl _main
	.globl __sdcc_external_startup
	.globl _get_buffer_size
	.globl _echo
	.globl _free
	.globl _malloc
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
_main_sloc0_1_0:
	.ds 4
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 2
_main_sloc3_1_0:
	.ds 2
_main_sloc4_1_0:
	.ds 2
_main_sloc5_1_0:
	.ds 2
_main_sloc6_1_0:
	.ds 3
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
_main_buffer_array_131072_48:
	.ds 60
_main_buffer_count_131072_48:
	.ds 2
_main_inserted_131072_48:
	.ds 2
_main_since_last_131073_49:
	.ds 2
_main_switch_case_131074_52:
	.ds 4
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
;	main.c:48: _sdcc_external_startup()
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
;	main.c:50: AUXR |= (XRS1 | XRS0); // Configure XRAM
	orl	_AUXR,#0x0c
;	main.c:51: return 0;
	mov	dptr,#0x0000
;	main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;sloc5                     Allocated with name '_main_sloc5_1_0'
;sloc6                     Allocated with name '_main_sloc6_1_0'
;buffer_array              Allocated with name '_main_buffer_array_131072_48'
;user_input_1              Allocated with name '_main_user_input_1_131072_48'
;user_input_2              Allocated with name '_main_user_input_2_131072_48'
;buffer_count              Allocated with name '_main_buffer_count_131072_48'
;buffer_0_index            Allocated with name '_main_buffer_0_index_131072_48'
;divisible                 Allocated with name '_main_divisible_131072_48'
;inserted                  Allocated with name '_main_inserted_131072_48'
;since_last                Allocated with name '_main_since_last_131073_49'
;switch_case               Allocated with name '_main_switch_case_131074_52'
;char_received             Allocated with name '_main_char_received_196610_53'
;index                     Allocated with name '_main_index_327682_73'
;index                     Allocated with name '_main_index_327682_82'
;j                         Allocated with name '_main_j_524290_86'
;k                         Allocated with name '_main_k_327682_89'
;l                         Allocated with name '_main_l_196610_92'
;------------------------------------------------------------
;	main.c:57: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:59: while (1) {
00185$:
;	main.c:66: int inserted = 0;
	mov	dptr,#_main_inserted_131072_48
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:67: total_characters_count = 0;
	mov	dptr,#_total_characters_count
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:68: int since_last = total_characters_count;
	mov	dptr,#_main_since_last_131073_49
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:71: printf("Specify the buffer size (range 32 to 4800) divisible by 16: \n\r");
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
;	main.c:72: user_input_1 = get_buffer_size(32, 4800, DIVISIBLE);
	mov	dptr,#_get_buffer_size_PARM_2
	mov	a,#0xc0
	movx	@dptr,a
	mov	a,#0x12
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_buffer_size_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x20&0x00ff)
	clr	a
	mov	b,a
	lcall	_get_buffer_size
	mov	_main_sloc3_1_0,dpl
	mov	(_main_sloc3_1_0 + 1),dph
;	main.c:75: buffer_array[buffer_count].buffer_pointer = (uint8_t *)malloc(user_input_1 * sizeof(uint8_t));
	mov	r4,_main_sloc3_1_0
	mov	r5,(_main_sloc3_1_0 + 1)
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	dptr,#_main_buffer_array_131072_48
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:76: if (buffer_array[buffer_count].buffer_pointer == NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	main.c:77: printf("Failed to allocate memory\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:78: continue;
	ljmp	00185$
00102$:
;	main.c:80: buffer_array[buffer_count].buffer_size = user_input_1;
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0002)
	mov	a,_main_sloc3_1_0
	movx	@dptr,a
	mov	a,(_main_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:81: buffer_array[buffer_count].buffer_occupied = 0;
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:85: buffer_array[buffer_count].buffer_pointer = (uint8_t *)malloc(user_input_1 * sizeof(uint8_t));
	mov	dpl,r4
	mov	dph,r5
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:86: if (buffer_array[buffer_count].buffer_pointer == NULL) {
	mov	a,r4
	orl	a,r5
	jnz	00104$
;	main.c:87: printf("Failed to allocate memory\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:88: free(buffer_array[0].buffer_pointer);
	mov	dptr,#_main_buffer_array_131072_48
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	_free
;	main.c:89: buffer_array[0].buffer_pointer = NULL;
	mov	dptr,#_main_buffer_array_131072_48
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:90: continue;
	ljmp	00185$
00104$:
;	main.c:92: buffer_array[buffer_count].buffer_size = user_input_1;
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0008)
	mov	a,_main_sloc3_1_0
	movx	@dptr,a
	mov	a,(_main_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:93: buffer_array[buffer_count].buffer_occupied = 0;
	mov	dptr,#(_main_buffer_array_131072_48 + 0x000a)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:94: buffer_count++;
	mov	dptr,#_main_buffer_count_131072_48
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:97: printf("* Enter any UPPERCASE letter to append characters into buffer 0\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:98: printf("* Press '+' to allocate a new buffer \n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:99: printf("* Press '-' to remove allocated buffers \n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:100: printf("* Press '?' to get the heap report \n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:101: printf("* Press '=' to get buffer 0 content \n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:102: printf("* Press '@' to restart the program \n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:104: int32_t switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:107: while (1) {
00181$:
;	main.c:108: __xdata uint8_t char_received = echo(); // Receive a character from UART
	lcall	_echo
	mov	r5,dpl
;	main.c:111: if (((char_received >= 'A') && (char_received <= 'Z')) && !switch_case) {
	mov	ar4,r5
	cjne	r4,#0x41,00380$
00380$:
	jc	00136$
	mov	ar4,r5
	mov	a,r4
	add	a,#0xff - 0x5a
	jc	00136$
	mov	dptr,#_main_switch_case_131074_52
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00136$
;	main.c:112: switch_case = 1;
	mov	dptr,#_main_switch_case_131074_52
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00137$
00136$:
;	main.c:113: } else if (char_received == '+') {
	cjne	r5,#0x2b,00133$
;	main.c:114: if (!switch_case) {
	mov	dptr,#_main_switch_case_131074_52
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00106$
;	main.c:115: printf(" mode, specify buffer size (range 20 to 400): \n\r");
	push	ar5
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	main.c:116: switch_case = 2;
	mov	dptr,#_main_switch_case_131074_52
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00137$
00106$:
;	main.c:118: printf("First exit the current mode \n\r");
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	ljmp	00137$
00133$:
;	main.c:120: } else if (char_received == '-') {
	cjne	r5,#0x2d,00130$
;	main.c:121: if (!switch_case) {
	mov	dptr,#_main_switch_case_131074_52
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00109$
;	main.c:122: printf(" mode, specify buffer number to destroy: \n\r");
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	main.c:123: switch_case = 3;
	mov	dptr,#_main_switch_case_131074_52
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00137$
00109$:
;	main.c:125: printf("First exit the current mode \n\r");
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	ljmp	00137$
00130$:
;	main.c:127: } else if (char_received == '?') {
	cjne	r5,#0x3f,00127$
;	main.c:128: if (!switch_case) {
	mov	dptr,#_main_switch_case_131074_52
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00112$
;	main.c:129: printf(" mode\n\r");
	push	ar5
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	main.c:130: switch_case = 4;
	mov	dptr,#_main_switch_case_131074_52
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00137$
00112$:
;	main.c:132: printf("First exit the current mode \n\r");
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	ljmp	00137$
00127$:
;	main.c:134: } else if ((char_received == '\n') || (char_received == '\r')) {
	cjne	r5,#0x0a,00393$
	sjmp	00122$
00393$:
	cjne	r5,#0x0d,00123$
00122$:
;	main.c:135: printf("\n\r");
	push	ar5
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	main.c:136: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00137$
00123$:
;	main.c:137: } else if (char_received == '=') {
	cjne	r5,#0x3d,00120$
;	main.c:138: if (!switch_case) {
	mov	dptr,#_main_switch_case_131074_52
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00115$
;	main.c:139: printf(" mode\n\r");
	push	ar5
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	main.c:140: switch_case = 5;
	mov	dptr,#_main_switch_case_131074_52
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00137$
00115$:
;	main.c:142: printf("First exit the current mode \n\r");
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	sjmp	00137$
00120$:
;	main.c:144: } else if (char_received == '@') {
	cjne	r5,#0x40,00137$
;	main.c:145: printf(" mode - restarting program \n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:146: break;
	ljmp	00245$
00137$:
;	main.c:150: switch (switch_case) {
	mov	dptr,#_main_switch_case_131074_52
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r1,#0x01,00401$
	cjne	r2,#0x00,00401$
	cjne	r3,#0x00,00401$
	cjne	r4,#0x00,00401$
	sjmp	00140$
00401$:
	cjne	r1,#0x02,00402$
	cjne	r2,#0x00,00402$
	cjne	r3,#0x00,00402$
	cjne	r4,#0x00,00402$
	ljmp	00148$
00402$:
	cjne	r1,#0x03,00403$
	cjne	r2,#0x00,00403$
	cjne	r3,#0x00,00403$
	cjne	r4,#0x00,00403$
	ljmp	00157$
00403$:
	cjne	r1,#0x04,00404$
	cjne	r2,#0x00,00404$
	cjne	r3,#0x00,00404$
	cjne	r4,#0x00,00404$
	ljmp	00165$
00404$:
	cjne	r1,#0x05,00405$
	cjne	r2,#0x00,00405$
	cjne	r3,#0x00,00405$
	cjne	r4,#0x00,00405$
	ljmp	00243$
00405$:
	ljmp	00181$
;	main.c:151: case 1:
00140$:
;	main.c:152: if ((char_received == '\n') || (char_received == '\r')) {
	cjne	r5,#0x0a,00406$
	sjmp	00144$
00406$:
	cjne	r5,#0x0d,00145$
00144$:
;	main.c:153: printf("Characters added to buffer 0 - exiting mode \n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:154: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00181$
00145$:
;	main.c:155: } else if (buffer_array[0].buffer_occupied < user_input_1) {
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,_main_sloc3_1_0
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_main_sloc3_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00142$
;	main.c:156: buffer_array[0].buffer_pointer[buffer_array[0].buffer_occupied] = char_received;
	mov	dptr,#_main_buffer_array_131072_48
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	dpl,a
	mov	a,r2
	addc	a,r4
	mov	dph,a
	mov	a,r5
	movx	@dptr,a
;	main.c:157: buffer_array[0].buffer_occupied++;
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00410$
	inc	r4
00410$:
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00181$
00142$:
;	main.c:159: printf("\n\rNot enough memory to load, echoing to serial output %c\n\r", char_received);
	mov	r4,#0x00
	push	ar5
	push	ar4
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:160: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:162: break;
	ljmp	00181$
;	main.c:163: case 2:
00148$:
;	main.c:165: user_input_2 = get_buffer_size(20, 400, DIVISIBLE);
	mov	dptr,#_get_buffer_size_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_buffer_size_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x14&0x00ff)
	clr	a
	mov	b,a
	lcall	_get_buffer_size
	mov	_main_sloc2_1_0,dpl
	mov	(_main_sloc2_1_0 + 1),dph
;	main.c:166: for (int32_t index = 1; index < 10; index++) {
	mov	r0,#0x01
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00188$:
	clr	c
	mov	a,r0
	subb	a,#0x0a
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00411$
	ljmp	00154$
00411$:
;	main.c:167: if (buffer_array[index].buffer_pointer == NULL) {
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x06&0x00ff)
	clr	a
	mov	b,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mullong
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,_main_sloc0_1_0
	add	a,#_main_buffer_array_131072_48
	mov	_main_sloc1_1_0,a
	mov	a,(_main_sloc0_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	(_main_sloc1_1_0 + 1),a
	mov	dpl,_main_sloc1_1_0
	mov	dph,(_main_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	00189$
;	main.c:168: buffer_array[index].buffer_pointer = (int8_t *)malloc(user_input_2 * sizeof(int8_t));
	mov	r4,_main_sloc2_1_0
	mov	r5,(_main_sloc2_1_0 + 1)
	mov	dpl,r4
	mov	dph,r5
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dpl,_main_sloc1_1_0
	mov	dph,(_main_sloc1_1_0 + 1)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:169: if (buffer_array[index].buffer_pointer == NULL) {
	mov	a,r4
	orl	a,r5
	jnz	00150$
;	main.c:170: printf("Failed to allocate memory  - exiting mode \n\r");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00154$
00150$:
;	main.c:172: buffer_array[index].buffer_size = user_input_2;
	mov	a,_main_sloc0_1_0
	add	a,#_main_buffer_array_131072_48
	mov	r4,a
	mov	a,(_main_sloc0_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	mov	a,_main_sloc2_1_0
	movx	@dptr,a
	mov	a,(_main_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:173: buffer_array[index].buffer_occupied = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:174: inserted = index;
	mov	dptr,#_main_inserted_131072_48
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:176: break;
	sjmp	00154$
00189$:
;	main.c:166: for (int32_t index = 1; index < 10; index++) {
	inc	r0
	cjne	r0,#0x00,00414$
	inc	r1
	cjne	r1,#0x00,00414$
	inc	r2
	cjne	r2,#0x00,00414$
	inc	r3
00414$:
	ljmp	00188$
00154$:
;	main.c:179: if (inserted) {
	mov	dptr,#_main_inserted_131072_48
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00156$
;	main.c:180: printf("Allocated memory as buffer #%d  - exiting mode \n\r", inserted);
	mov	dptr,#_main_inserted_131072_48
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:181: buffer_count++;
	mov	dptr,#_main_buffer_count_131072_48
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:182: inserted = 0;
	mov	dptr,#_main_inserted_131072_48
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00156$:
;	main.c:184: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:185: break;
	ljmp	00181$
;	main.c:186: case 3:
00157$:
;	main.c:187: user_input_2 = get_buffer_size(ZERO, ARRAY_SIZE, ONE);
	mov	dptr,#_get_buffer_size_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_get_buffer_size_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_get_buffer_size
	mov	r4,dpl
	mov	r5,dph
;	main.c:188: if (user_input_2 == 0) {
	mov	a,r4
	orl	a,r5
	jnz	00163$
;	main.c:189: printf("Cannot remove buffer 0 - exiting mode \n\r");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00164$
00163$:
;	main.c:190: } else if ((user_input_2 < buffer_count) && (buffer_array[user_input_2].buffer_pointer != NULL)) {
	mov	dptr,#_main_buffer_count_131072_48
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r4
	mov	ar1,r5
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00417$
	ljmp	00159$
00417$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,_main_sloc0_1_0
	add	a,#_main_buffer_array_131072_48
	mov	_main_sloc2_1_0,a
	mov	a,(_main_sloc0_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	(_main_sloc2_1_0 + 1),a
	mov	dpl,_main_sloc2_1_0
	mov	dph,(_main_sloc2_1_0 + 1)
	movx	a,@dptr
	mov	_main_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc1_1_0 + 1),a
	mov	a,_main_sloc1_1_0
	orl	a,(_main_sloc1_1_0 + 1)
	jz	00159$
;	main.c:191: free(buffer_array[user_input_2].buffer_pointer);
	mov	r6,_main_sloc1_1_0
	mov	r1,(_main_sloc1_1_0 + 1)
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:192: buffer_array[user_input_2].buffer_pointer = NULL;
	mov	dpl,_main_sloc2_1_0
	mov	dph,(_main_sloc2_1_0 + 1)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:193: buffer_array[user_input_2].buffer_size = 0;
	mov	a,_main_sloc0_1_0
	add	a,#_main_buffer_array_131072_48
	mov	r6,a
	mov	a,(_main_sloc0_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:194: buffer_array[user_input_2].buffer_occupied = 0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:195: printf("Freed buffer #%d - exiting mode \n\r", user_input_2);
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
;	main.c:196: buffer_count--;
	dec	r2
	cjne	r2,#0xff,00419$
	dec	r3
00419$:
	mov	dptr,#_main_buffer_count_131072_48
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	00164$
00159$:
;	main.c:198: printf("No such buffer exists - exiting mode \n\r");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00164$:
;	main.c:200: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:201: break;
	ljmp	00181$
;	main.c:202: case 4:
00165$:
;	main.c:204: printf("Total characters count: %d \n\r", total_characters_count);
	mov	dptr,#_total_characters_count
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:205: printf("Since last '?': %d \n\r", (total_characters_count - since_last));
	mov	dptr,#_main_since_last_131073_49
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_total_characters_count
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	push	ar4
	push	ar5
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:206: since_last = total_characters_count;
	mov	dptr,#_total_characters_count
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_main_since_last_131073_49
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:207: for (int8_t index = 0; index <= buffer_count; index++) {
	mov	dptr,#_main_buffer_count_131072_48
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	_main_sloc1_1_0,#0x00
00194$:
	mov	a,_main_sloc1_1_0
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	clr	c
	mov	a,r4
	subb	a,r1
	mov	a,r5
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00420$
	ljmp	00173$
00420$:
;	main.c:208: if (buffer_array[index].buffer_pointer == NULL) {
	clr	F0
	mov	b,#0x06
	mov	a,_main_sloc1_1_0
	jnb	acc.7,00421$
	cpl	F0
	cpl	a
	inc	a
00421$:
	mul	ab
	jnb	F0,00422$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00422$:
	mov	_main_sloc2_1_0,a
	mov	(_main_sloc2_1_0 + 1),b
	add	a,#_main_buffer_array_131072_48
	mov	dpl,a
	mov	a,(_main_sloc2_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r0
	jnz	00423$
	ljmp	00172$
00423$:
;	main.c:216: (buffer_array[index].buffer_size - buffer_array[index].buffer_occupied));
	push	ar4
	push	ar5
	mov	a,_main_sloc2_1_0
	add	a,#_main_buffer_array_131072_48
	mov	r6,a
	mov	a,(_main_sloc2_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_main_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc0_1_0 + 1),a
	mov	a,r0
	clr	c
	subb	a,_main_sloc0_1_0
	mov	_main_sloc4_1_0,a
	mov	a,r5
	subb	a,(_main_sloc0_1_0 + 1)
	mov	(_main_sloc4_1_0 + 1),a
;	main.c:214: (buffer_array[index].buffer_pointer + buffer_array[index].buffer_size),
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	_main_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc5_1_0 + 1),a
	mov	a,r0
	add	a,_main_sloc5_1_0
	mov	r3,a
	mov	a,r5
	addc	a,(_main_sloc5_1_0 + 1)
	mov	r4,a
	mov	_main_sloc6_1_0,r3
	mov	(_main_sloc6_1_0 + 1),r4
	mov	(_main_sloc6_1_0 + 2),#0x00
;	main.c:213: buffer_array[index].buffer_pointer,
	mov	r6,_main_sloc5_1_0
	mov	r7,(_main_sloc5_1_0 + 1)
	mov	r4,#0x00
;	main.c:212: "Storage character counts: %u, Free space available: %u\n\r", index,
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	_main_sloc4_1_0
	push	(_main_sloc4_1_0 + 1)
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	ar0
	push	ar5
	push	_main_sloc6_1_0
	push	(_main_sloc6_1_0 + 1)
	push	(_main_sloc6_1_0 + 2)
	push	ar6
	push	ar7
	push	ar4
	push	ar1
	push	ar2
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
	pop	ar1
	pop	ar2
;	main.c:217: printf("Buffer %d content: \n\r", index);
	push	ar1
	push	ar2
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:218: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
	mov	a,_main_sloc2_1_0
	add	a,#_main_buffer_array_131072_48
	mov	_main_sloc6_1_0,a
	mov	a,(_main_sloc2_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	(_main_sloc6_1_0 + 1),a
	mov	a,_main_sloc2_1_0
	add	a,#_main_buffer_array_131072_48
	mov	r6,a
	mov	a,(_main_sloc2_1_0 + 1)
	addc	a,#(_main_buffer_array_131072_48 >> 8)
	mov	r7,a
	mov	a,#0x04
	add	a,r6
	mov	_main_sloc5_1_0,a
	clr	a
	addc	a,r7
	mov	(_main_sloc5_1_0 + 1),a
	clr	a
	mov	_main_sloc4_1_0,a
	mov	(_main_sloc4_1_0 + 1),a
;	main.c:248: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
	pop	ar5
	pop	ar4
;	main.c:218: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
00191$:
	mov	dpl,_main_sloc5_1_0
	mov	dph,(_main_sloc5_1_0 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r2,_main_sloc4_1_0
	mov	r3,(_main_sloc4_1_0 + 1)
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00424$
	ljmp	00168$
00424$:
;	main.c:219: if (!(j % 32)) {
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_main_sloc4_1_0
	mov	dph,(_main_sloc4_1_0 + 1)
	push	ar5
	push	ar4
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	orl	a,b
	jnz	00167$
;	main.c:220: printf("\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
00167$:
;	main.c:222: printf("%c", buffer_array[index].buffer_pointer[j]);
	mov	dpl,_main_sloc6_1_0
	mov	dph,(_main_sloc6_1_0 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_main_sloc4_1_0
	add	a,r6
	mov	dpl,a
	mov	a,(_main_sloc4_1_0 + 1)
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar5
	push	ar4
	push	ar7
	push	ar6
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	main.c:223: buffer_array[index].buffer_pointer[j] = 0;
	mov	dpl,_main_sloc6_1_0
	mov	dph,(_main_sloc6_1_0 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_main_sloc4_1_0
	add	a,r6
	mov	dpl,a
	mov	a,(_main_sloc4_1_0 + 1)
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	main.c:218: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
	inc	_main_sloc4_1_0
;	genFromRTrack removed	clr	a
	cjne	a,_main_sloc4_1_0,00426$
	inc	(_main_sloc4_1_0 + 1)
00426$:
	ljmp	00191$
00168$:
;	main.c:225: printf("\n\r");
	push	ar5
	push	ar4
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
;	main.c:226: buffer_array[index].buffer_occupied = 0;
	mov	dpl,_main_sloc5_1_0
	mov	dph,(_main_sloc5_1_0 + 1)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00172$:
;	main.c:207: for (int8_t index = 0; index <= buffer_count; index++) {
	inc	_main_sloc1_1_0
	ljmp	00194$
00173$:
;	main.c:229: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:230: break;
	ljmp	00181$
;	main.c:233: for (int k = 0; k < buffer_array[0].buffer_size; k++) {
00243$:
	mov	r6,#0x00
	mov	r7,#0x00
00196$:
	mov	dptr,#(_main_buffer_array_131072_48 + 0x0002)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00427$
	ljmp	00177$
00427$:
;	main.c:234: if (!(k % 16)) {
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00176$
;	main.c:235: printf("\n\r%p :", &buffer_array[0].buffer_pointer[k]);
	mov	dptr,#_main_buffer_array_131072_48
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar3
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar6
	pop	ar7
00176$:
;	main.c:237: printf(" %x", buffer_array[0].buffer_pointer[k]);
	mov	dptr,#_main_buffer_array_131072_48
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	add	a,r4
	mov	dpl,a
	mov	a,r7
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:233: for (int k = 0; k < buffer_array[0].buffer_size; k++) {
	inc	r6
	cjne	r6,#0x00,00429$
	inc	r7
00429$:
	ljmp	00196$
00177$:
;	main.c:239: printf("\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:240: switch_case = 0;
	mov	dptr,#_main_switch_case_131074_52
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:241: break;
	ljmp	00181$
;	main.c:248: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
00245$:
	mov	r7,#0x00
00199$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8a
	jc	00430$
	ljmp	00185$
00430$:
;	main.c:249: free(buffer_array[l].buffer_pointer);
	clr	F0
	mov	b,#0x06
	mov	a,r7
	jnb	acc.7,00431$
	cpl	F0
	cpl	a
	inc	a
00431$:
	mul	ab
	jnb	F0,00432$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00432$:
	add	a,#_main_buffer_array_131072_48
	mov	r5,a
	mov	a,#(_main_buffer_array_131072_48 >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_free
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:250: buffer_array[l].buffer_pointer = NULL;
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:248: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
	inc	r7
;	main.c:253: }
	sjmp	00199$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___sdcc_heap_size:
	.byte #0x88, #0x13	; 5000
	.area CONST   (CODE)
___str_0:
	.ascii "Specify the buffer size (range 32 to 4800) divisible by 16: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Failed to allocate memory"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "* Enter any UPPERCASE letter to append characters into buffe"
	.ascii "r 0"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "* Press '+' to allocate a new buffer "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "* Press '-' to remove allocated buffers "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "* Press '?' to get the heap report "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "* Press '=' to get buffer 0 content "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "* Press '@' to restart the program "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii " mode, specify buffer size (range 20 to 400): "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "First exit the current mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii " mode, specify buffer number to destroy: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii " mode"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii " mode - restarting program "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Characters added to buffer 0 - exiting mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "Not enough memory to load, echoing to serial output %c"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Failed to allocate memory  - exiting mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Allocated memory as buffer #%d  - exiting mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Cannot remove buffer 0 - exiting mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Freed buffer #%d - exiting mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "No such buffer exists - exiting mode "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Total characters count: %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Since last '?': %d "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Buffer %d --> Start address: %p, End address: %p, Allocated "
	.ascii "size: %u, Storage character counts: %u, Free space available"
	.ascii ": %u"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Buffer %d content: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "%p :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii " %x"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
