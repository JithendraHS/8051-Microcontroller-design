                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Thu Oct 12 23:57:05 2023
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _delay
                             14 	.globl _CY
                             15 	.globl _AC
                             16 	.globl _F0
                             17 	.globl _RS1
                             18 	.globl _RS0
                             19 	.globl _OV
                             20 	.globl _F1
                             21 	.globl _P
                             22 	.globl _PS
                             23 	.globl _PT1
                             24 	.globl _PX1
                             25 	.globl _PT0
                             26 	.globl _PX0
                             27 	.globl _RD
                             28 	.globl _WR
                             29 	.globl _T1
                             30 	.globl _T0
                             31 	.globl _INT1
                             32 	.globl _INT0
                             33 	.globl _TXD
                             34 	.globl _RXD
                             35 	.globl _P3_7
                             36 	.globl _P3_6
                             37 	.globl _P3_5
                             38 	.globl _P3_4
                             39 	.globl _P3_3
                             40 	.globl _P3_2
                             41 	.globl _P3_1
                             42 	.globl _P3_0
                             43 	.globl _EA
                             44 	.globl _ES
                             45 	.globl _ET1
                             46 	.globl _EX1
                             47 	.globl _ET0
                             48 	.globl _EX0
                             49 	.globl _P2_7
                             50 	.globl _P2_6
                             51 	.globl _P2_5
                             52 	.globl _P2_4
                             53 	.globl _P2_3
                             54 	.globl _P2_2
                             55 	.globl _P2_1
                             56 	.globl _P2_0
                             57 	.globl _SM0
                             58 	.globl _SM1
                             59 	.globl _SM2
                             60 	.globl _REN
                             61 	.globl _TB8
                             62 	.globl _RB8
                             63 	.globl _TI
                             64 	.globl _RI
                             65 	.globl _P1_7
                             66 	.globl _P1_6
                             67 	.globl _P1_5
                             68 	.globl _P1_4
                             69 	.globl _P1_3
                             70 	.globl _P1_2
                             71 	.globl _P1_1
                             72 	.globl _P1_0
                             73 	.globl _TF1
                             74 	.globl _TR1
                             75 	.globl _TF0
                             76 	.globl _TR0
                             77 	.globl _IE1
                             78 	.globl _IT1
                             79 	.globl _IE0
                             80 	.globl _IT0
                             81 	.globl _P0_7
                             82 	.globl _P0_6
                             83 	.globl _P0_5
                             84 	.globl _P0_4
                             85 	.globl _P0_3
                             86 	.globl _P0_2
                             87 	.globl _P0_1
                             88 	.globl _P0_0
                             89 	.globl _B
                             90 	.globl _ACC
                             91 	.globl _PSW
                             92 	.globl _IP
                             93 	.globl _P3
                             94 	.globl _IE
                             95 	.globl _P2
                             96 	.globl _SBUF
                             97 	.globl _SCON
                             98 	.globl _P1
                             99 	.globl _TH1
                            100 	.globl _TH0
                            101 	.globl _TL1
                            102 	.globl _TL0
                            103 	.globl _TMOD
                            104 	.globl _TCON
                            105 	.globl _PCON
                            106 	.globl _DPH
                            107 	.globl _DPL
                            108 	.globl _SP
                            109 	.globl _P0
                            110 ;--------------------------------------------------------
                            111 ; special function registers
                            112 ;--------------------------------------------------------
                            113 	.area RSEG    (DATA)
                    0080    114 _P0	=	0x0080
                    0081    115 _SP	=	0x0081
                    0082    116 _DPL	=	0x0082
                    0083    117 _DPH	=	0x0083
                    0087    118 _PCON	=	0x0087
                    0088    119 _TCON	=	0x0088
                    0089    120 _TMOD	=	0x0089
                    008A    121 _TL0	=	0x008a
                    008B    122 _TL1	=	0x008b
                    008C    123 _TH0	=	0x008c
                    008D    124 _TH1	=	0x008d
                    0090    125 _P1	=	0x0090
                    0098    126 _SCON	=	0x0098
                    0099    127 _SBUF	=	0x0099
                    00A0    128 _P2	=	0x00a0
                    00A8    129 _IE	=	0x00a8
                    00B0    130 _P3	=	0x00b0
                    00B8    131 _IP	=	0x00b8
                    00D0    132 _PSW	=	0x00d0
                    00E0    133 _ACC	=	0x00e0
                    00F0    134 _B	=	0x00f0
                            135 ;--------------------------------------------------------
                            136 ; special function bits
                            137 ;--------------------------------------------------------
                            138 	.area RSEG    (DATA)
                    0080    139 _P0_0	=	0x0080
                    0081    140 _P0_1	=	0x0081
                    0082    141 _P0_2	=	0x0082
                    0083    142 _P0_3	=	0x0083
                    0084    143 _P0_4	=	0x0084
                    0085    144 _P0_5	=	0x0085
                    0086    145 _P0_6	=	0x0086
                    0087    146 _P0_7	=	0x0087
                    0088    147 _IT0	=	0x0088
                    0089    148 _IE0	=	0x0089
                    008A    149 _IT1	=	0x008a
                    008B    150 _IE1	=	0x008b
                    008C    151 _TR0	=	0x008c
                    008D    152 _TF0	=	0x008d
                    008E    153 _TR1	=	0x008e
                    008F    154 _TF1	=	0x008f
                    0090    155 _P1_0	=	0x0090
                    0091    156 _P1_1	=	0x0091
                    0092    157 _P1_2	=	0x0092
                    0093    158 _P1_3	=	0x0093
                    0094    159 _P1_4	=	0x0094
                    0095    160 _P1_5	=	0x0095
                    0096    161 _P1_6	=	0x0096
                    0097    162 _P1_7	=	0x0097
                    0098    163 _RI	=	0x0098
                    0099    164 _TI	=	0x0099
                    009A    165 _RB8	=	0x009a
                    009B    166 _TB8	=	0x009b
                    009C    167 _REN	=	0x009c
                    009D    168 _SM2	=	0x009d
                    009E    169 _SM1	=	0x009e
                    009F    170 _SM0	=	0x009f
                    00A0    171 _P2_0	=	0x00a0
                    00A1    172 _P2_1	=	0x00a1
                    00A2    173 _P2_2	=	0x00a2
                    00A3    174 _P2_3	=	0x00a3
                    00A4    175 _P2_4	=	0x00a4
                    00A5    176 _P2_5	=	0x00a5
                    00A6    177 _P2_6	=	0x00a6
                    00A7    178 _P2_7	=	0x00a7
                    00A8    179 _EX0	=	0x00a8
                    00A9    180 _ET0	=	0x00a9
                    00AA    181 _EX1	=	0x00aa
                    00AB    182 _ET1	=	0x00ab
                    00AC    183 _ES	=	0x00ac
                    00AF    184 _EA	=	0x00af
                    00B0    185 _P3_0	=	0x00b0
                    00B1    186 _P3_1	=	0x00b1
                    00B2    187 _P3_2	=	0x00b2
                    00B3    188 _P3_3	=	0x00b3
                    00B4    189 _P3_4	=	0x00b4
                    00B5    190 _P3_5	=	0x00b5
                    00B6    191 _P3_6	=	0x00b6
                    00B7    192 _P3_7	=	0x00b7
                    00B0    193 _RXD	=	0x00b0
                    00B1    194 _TXD	=	0x00b1
                    00B2    195 _INT0	=	0x00b2
                    00B3    196 _INT1	=	0x00b3
                    00B4    197 _T0	=	0x00b4
                    00B5    198 _T1	=	0x00b5
                    00B6    199 _WR	=	0x00b6
                    00B7    200 _RD	=	0x00b7
                    00B8    201 _PX0	=	0x00b8
                    00B9    202 _PT0	=	0x00b9
                    00BA    203 _PX1	=	0x00ba
                    00BB    204 _PT1	=	0x00bb
                    00BC    205 _PS	=	0x00bc
                    00D0    206 _P	=	0x00d0
                    00D1    207 _F1	=	0x00d1
                    00D2    208 _OV	=	0x00d2
                    00D3    209 _RS0	=	0x00d3
                    00D4    210 _RS1	=	0x00d4
                    00D5    211 _F0	=	0x00d5
                    00D6    212 _AC	=	0x00d6
                    00D7    213 _CY	=	0x00d7
                            214 ;--------------------------------------------------------
                            215 ; overlayable register banks
                            216 ;--------------------------------------------------------
                            217 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     218 	.ds 8
                            219 ;--------------------------------------------------------
                            220 ; internal ram data
                            221 ;--------------------------------------------------------
                            222 	.area DSEG    (DATA)
                            223 ;--------------------------------------------------------
                            224 ; overlayable items in internal ram 
                            225 ;--------------------------------------------------------
                            226 	.area OSEG    (OVR,DATA)
                            227 ;--------------------------------------------------------
                            228 ; Stack segment in internal ram 
                            229 ;--------------------------------------------------------
                            230 	.area	SSEG	(DATA)
   0008                     231 __start__stack:
   0008                     232 	.ds	1
                            233 
                            234 ;--------------------------------------------------------
                            235 ; indirectly addressable internal ram data
                            236 ;--------------------------------------------------------
                            237 	.area ISEG    (DATA)
                            238 ;--------------------------------------------------------
                            239 ; bit data
                            240 ;--------------------------------------------------------
                            241 	.area BSEG    (BIT)
                            242 ;--------------------------------------------------------
                            243 ; paged external ram data
                            244 ;--------------------------------------------------------
                            245 	.area PSEG    (PAG,XDATA)
                            246 ;--------------------------------------------------------
                            247 ; external ram data
                            248 ;--------------------------------------------------------
                            249 	.area XSEG    (XDATA)
   0000                     250 _delay_t_1_1:
   0000                     251 	.ds 2
                            252 ;--------------------------------------------------------
                            253 ; external initialized ram data
                            254 ;--------------------------------------------------------
                            255 	.area XISEG   (XDATA)
                            256 	.area HOME    (CODE)
                            257 	.area GSINIT0 (CODE)
                            258 	.area GSINIT1 (CODE)
                            259 	.area GSINIT2 (CODE)
                            260 	.area GSINIT3 (CODE)
                            261 	.area GSINIT4 (CODE)
                            262 	.area GSINIT5 (CODE)
                            263 	.area GSINIT  (CODE)
                            264 	.area GSFINAL (CODE)
                            265 	.area CSEG    (CODE)
                            266 ;--------------------------------------------------------
                            267 ; interrupt vector 
                            268 ;--------------------------------------------------------
                            269 	.area HOME    (CODE)
   0000                     270 __interrupt_vect:
   0000 02 00 03            271 	ljmp	__sdcc_gsinit_startup
                            272 ;--------------------------------------------------------
                            273 ; global & static initialisations
                            274 ;--------------------------------------------------------
                            275 	.area HOME    (CODE)
                            276 	.area GSINIT  (CODE)
                            277 	.area GSFINAL (CODE)
                            278 	.area GSINIT  (CODE)
                            279 	.globl __sdcc_gsinit_startup
                            280 	.globl __sdcc_program_startup
                            281 	.globl __start__stack
                            282 	.globl __mcs51_genXINIT
                            283 	.globl __mcs51_genXRAMCLEAR
                            284 	.globl __mcs51_genRAMCLEAR
                            285 	.area GSFINAL (CODE)
   005C 02 00 5F            286 	ljmp	__sdcc_program_startup
                            287 ;--------------------------------------------------------
                            288 ; Home
                            289 ;--------------------------------------------------------
                            290 	.area HOME    (CODE)
                            291 	.area CSEG    (CODE)
   005F                     292 __sdcc_program_startup:
   005F 12 00 95            293 	lcall	_main
                            294 ;	return from main will lock up
   0062 80 FE               295 	sjmp .
                            296 ;--------------------------------------------------------
                            297 ; code
                            298 ;--------------------------------------------------------
                            299 	.area CSEG    (CODE)
                            300 ;------------------------------------------------------------
                            301 ;Allocation info for local variables in function 'delay'
                            302 ;------------------------------------------------------------
                            303 ;t                         Allocated with name '_delay_t_1_1'
                            304 ;------------------------------------------------------------
                            305 ;	main.c:6: void delay(unsigned int t)
                            306 ;	-----------------------------------------
                            307 ;	 function delay
                            308 ;	-----------------------------------------
   0064                     309 _delay:
                    0002    310 	ar2 = 0x02
                    0003    311 	ar3 = 0x03
                    0004    312 	ar4 = 0x04
                    0005    313 	ar5 = 0x05
                    0006    314 	ar6 = 0x06
                    0007    315 	ar7 = 0x07
                    0000    316 	ar0 = 0x00
                    0001    317 	ar1 = 0x01
                            318 ;	genReceive
   0064 AA 83               319 	mov	r2,dph
   0066 E5 82               320 	mov	a,dpl
   0068 90 00 00            321 	mov	dptr,#_delay_t_1_1
   006B F0                  322 	movx	@dptr,a
   006C A3                  323 	inc	dptr
   006D EA                  324 	mov	a,r2
   006E F0                  325 	movx	@dptr,a
                            326 ;	main.c:8: while(t--); /* Decrement till it reaches 0 */
                            327 ;	genAssign
   006F 90 00 00            328 	mov	dptr,#_delay_t_1_1
   0072 E0                  329 	movx	a,@dptr
   0073 FA                  330 	mov	r2,a
   0074 A3                  331 	inc	dptr
   0075 E0                  332 	movx	a,@dptr
   0076 FB                  333 	mov	r3,a
   0077                     334 00101$:
                            335 ;	genAssign
   0077 8A 04               336 	mov	ar4,r2
   0079 8B 05               337 	mov	ar5,r3
                            338 ;	genMinus
                            339 ;	genMinusDec
   007B 1A                  340 	dec	r2
   007C BA FF 01            341 	cjne	r2,#0xff,00108$
   007F 1B                  342 	dec	r3
   0080                     343 00108$:
                            344 ;	genAssign
   0080 90 00 00            345 	mov	dptr,#_delay_t_1_1
   0083 EA                  346 	mov	a,r2
   0084 F0                  347 	movx	@dptr,a
   0085 A3                  348 	inc	dptr
   0086 EB                  349 	mov	a,r3
   0087 F0                  350 	movx	@dptr,a
                            351 ;	genIfx
   0088 EC                  352 	mov	a,r4
   0089 4D                  353 	orl	a,r5
                            354 ;	genIfxJump
                            355 ;	Peephole 108.b	removed ljmp by inverse jump logic
   008A 70 EB               356 	jnz	00101$
                            357 ;	Peephole 300	removed redundant label 00109$
                            358 ;	genAssign
   008C 90 00 00            359 	mov	dptr,#_delay_t_1_1
   008F EA                  360 	mov	a,r2
   0090 F0                  361 	movx	@dptr,a
   0091 A3                  362 	inc	dptr
   0092 EB                  363 	mov	a,r3
   0093 F0                  364 	movx	@dptr,a
                            365 ;	Peephole 300	removed redundant label 00104$
   0094 22                  366 	ret
                            367 ;------------------------------------------------------------
                            368 ;Allocation info for local variables in function 'main'
                            369 ;------------------------------------------------------------
                            370 ;------------------------------------------------------------
                            371 ;	main.c:11: void main()
                            372 ;	-----------------------------------------
                            373 ;	 function main
                            374 ;	-----------------------------------------
   0095                     375 _main:
                            376 ;	main.c:13: while(1)
   0095                     377 00102$:
                            378 ;	main.c:16: P1_1 = !P1_1;
                            379 ;	genNot
   0095 B2 91               380 	cpl	_P1_1
                            381 ;	main.c:18: delay(30000);
                            382 ;	genCall
                            383 ;	Peephole 182.b	used 16 bit load of dptr
   0097 90 75 30            384 	mov	dptr,#0x7530
   009A 12 00 64            385 	lcall	_delay
                            386 ;	Peephole 112.b	changed ljmp to sjmp
   009D 80 F6               387 	sjmp	00102$
                            388 ;	Peephole 259.a	removed redundant label 00104$ and ret
                            389 ;
                            390 	.area CSEG    (CODE)
                            391 	.area CONST   (CODE)
                            392 	.area XINIT   (CODE)
