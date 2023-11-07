                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _putchar
                                    208 	.globl _getchar
                                    209 	.globl _putstr
                                    210 	.globl _echo
                                    211 ;--------------------------------------------------------
                                    212 ; special function registers
                                    213 ;--------------------------------------------------------
                                    214 	.area RSEG    (ABS,DATA)
      000000                        215 	.org 0x0000
                           000080   216 _P0	=	0x0080
                           000081   217 _SP	=	0x0081
                           000082   218 _DPL	=	0x0082
                           000083   219 _DPH	=	0x0083
                           000087   220 _PCON	=	0x0087
                           000088   221 _TCON	=	0x0088
                           000089   222 _TMOD	=	0x0089
                           00008A   223 _TL0	=	0x008a
                           00008B   224 _TL1	=	0x008b
                           00008C   225 _TH0	=	0x008c
                           00008D   226 _TH1	=	0x008d
                           000090   227 _P1	=	0x0090
                           000098   228 _SCON	=	0x0098
                           000099   229 _SBUF	=	0x0099
                           0000A0   230 _P2	=	0x00a0
                           0000A8   231 _IE	=	0x00a8
                           0000B0   232 _P3	=	0x00b0
                           0000B8   233 _IP	=	0x00b8
                           0000D0   234 _PSW	=	0x00d0
                           0000E0   235 _ACC	=	0x00e0
                           0000F0   236 _B	=	0x00f0
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                                    288 ;--------------------------------------------------------
                                    289 ; special function bits
                                    290 ;--------------------------------------------------------
                                    291 	.area RSEG    (ABS,DATA)
      000000                        292 	.org 0x0000
                           000080   293 _P0_0	=	0x0080
                           000081   294 _P0_1	=	0x0081
                           000082   295 _P0_2	=	0x0082
                           000083   296 _P0_3	=	0x0083
                           000084   297 _P0_4	=	0x0084
                           000085   298 _P0_5	=	0x0085
                           000086   299 _P0_6	=	0x0086
                           000087   300 _P0_7	=	0x0087
                           000088   301 _IT0	=	0x0088
                           000089   302 _IE0	=	0x0089
                           00008A   303 _IT1	=	0x008a
                           00008B   304 _IE1	=	0x008b
                           00008C   305 _TR0	=	0x008c
                           00008D   306 _TF0	=	0x008d
                           00008E   307 _TR1	=	0x008e
                           00008F   308 _TF1	=	0x008f
                           000090   309 _P1_0	=	0x0090
                           000091   310 _P1_1	=	0x0091
                           000092   311 _P1_2	=	0x0092
                           000093   312 _P1_3	=	0x0093
                           000094   313 _P1_4	=	0x0094
                           000095   314 _P1_5	=	0x0095
                           000096   315 _P1_6	=	0x0096
                           000097   316 _P1_7	=	0x0097
                           000098   317 _RI	=	0x0098
                           000099   318 _TI	=	0x0099
                           00009A   319 _RB8	=	0x009a
                           00009B   320 _TB8	=	0x009b
                           00009C   321 _REN	=	0x009c
                           00009D   322 _SM2	=	0x009d
                           00009E   323 _SM1	=	0x009e
                           00009F   324 _SM0	=	0x009f
                           0000A0   325 _P2_0	=	0x00a0
                           0000A1   326 _P2_1	=	0x00a1
                           0000A2   327 _P2_2	=	0x00a2
                           0000A3   328 _P2_3	=	0x00a3
                           0000A4   329 _P2_4	=	0x00a4
                           0000A5   330 _P2_5	=	0x00a5
                           0000A6   331 _P2_6	=	0x00a6
                           0000A7   332 _P2_7	=	0x00a7
                           0000A8   333 _EX0	=	0x00a8
                           0000A9   334 _ET0	=	0x00a9
                           0000AA   335 _EX1	=	0x00aa
                           0000AB   336 _ET1	=	0x00ab
                           0000AC   337 _ES	=	0x00ac
                           0000AF   338 _EA	=	0x00af
                           0000B0   339 _P3_0	=	0x00b0
                           0000B1   340 _P3_1	=	0x00b1
                           0000B2   341 _P3_2	=	0x00b2
                           0000B3   342 _P3_3	=	0x00b3
                           0000B4   343 _P3_4	=	0x00b4
                           0000B5   344 _P3_5	=	0x00b5
                           0000B6   345 _P3_6	=	0x00b6
                           0000B7   346 _P3_7	=	0x00b7
                           0000B0   347 _RXD	=	0x00b0
                           0000B1   348 _TXD	=	0x00b1
                           0000B2   349 _INT0	=	0x00b2
                           0000B3   350 _INT1	=	0x00b3
                           0000B4   351 _T0	=	0x00b4
                           0000B5   352 _T1	=	0x00b5
                           0000B6   353 _WR	=	0x00b6
                           0000B7   354 _RD	=	0x00b7
                           0000B8   355 _PX0	=	0x00b8
                           0000B9   356 _PT0	=	0x00b9
                           0000BA   357 _PX1	=	0x00ba
                           0000BB   358 _PT1	=	0x00bb
                           0000BC   359 _PS	=	0x00bc
                           0000D0   360 _P	=	0x00d0
                           0000D1   361 _F1	=	0x00d1
                           0000D2   362 _OV	=	0x00d2
                           0000D3   363 _RS0	=	0x00d3
                           0000D4   364 _RS1	=	0x00d4
                           0000D5   365 _F0	=	0x00d5
                           0000D6   366 _AC	=	0x00d6
                           0000D7   367 _CY	=	0x00d7
                           0000AD   368 _ET2	=	0x00ad
                           0000BD   369 _PT2	=	0x00bd
                           0000C8   370 _T2CON_0	=	0x00c8
                           0000C9   371 _T2CON_1	=	0x00c9
                           0000CA   372 _T2CON_2	=	0x00ca
                           0000CB   373 _T2CON_3	=	0x00cb
                           0000CC   374 _T2CON_4	=	0x00cc
                           0000CD   375 _T2CON_5	=	0x00cd
                           0000CE   376 _T2CON_6	=	0x00ce
                           0000CF   377 _T2CON_7	=	0x00cf
                           0000C8   378 _CP_RL2	=	0x00c8
                           0000C9   379 _C_T2	=	0x00c9
                           0000CA   380 _TR2	=	0x00ca
                           0000CB   381 _EXEN2	=	0x00cb
                           0000CC   382 _TCLK	=	0x00cc
                           0000CD   383 _RCLK	=	0x00cd
                           0000CE   384 _EXF2	=	0x00ce
                           0000CF   385 _TF2	=	0x00cf
                           0000DF   386 _CF	=	0x00df
                           0000DE   387 _CR	=	0x00de
                           0000DC   388 _CCF4	=	0x00dc
                           0000DB   389 _CCF3	=	0x00db
                           0000DA   390 _CCF2	=	0x00da
                           0000D9   391 _CCF1	=	0x00d9
                           0000D8   392 _CCF0	=	0x00d8
                           0000AE   393 _EC	=	0x00ae
                           0000BE   394 _PPCL	=	0x00be
                           0000BD   395 _PT2L	=	0x00bd
                           0000BC   396 _PSL	=	0x00bc
                           0000BB   397 _PT1L	=	0x00bb
                           0000BA   398 _PX1L	=	0x00ba
                           0000B9   399 _PT0L	=	0x00b9
                           0000B8   400 _PX0L	=	0x00b8
                           0000C0   401 _P4_0	=	0x00c0
                           0000C1   402 _P4_1	=	0x00c1
                           0000C2   403 _P4_2	=	0x00c2
                           0000C3   404 _P4_3	=	0x00c3
                           0000C4   405 _P4_4	=	0x00c4
                           0000C5   406 _P4_5	=	0x00c5
                           0000C6   407 _P4_6	=	0x00c6
                           0000C7   408 _P4_7	=	0x00c7
                           0000E8   409 _P5_0	=	0x00e8
                           0000E9   410 _P5_1	=	0x00e9
                           0000EA   411 _P5_2	=	0x00ea
                           0000EB   412 _P5_3	=	0x00eb
                           0000EC   413 _P5_4	=	0x00ec
                           0000ED   414 _P5_5	=	0x00ed
                           0000EE   415 _P5_6	=	0x00ee
                           0000EF   416 _P5_7	=	0x00ef
                                    417 ;--------------------------------------------------------
                                    418 ; overlayable register banks
                                    419 ;--------------------------------------------------------
                                    420 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        421 	.ds 8
                                    422 ;--------------------------------------------------------
                                    423 ; internal ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area DSEG    (DATA)
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable items in internal ram
                                    428 ;--------------------------------------------------------
                                    429 	.area	OSEG    (OVR,DATA)
                                    430 ;--------------------------------------------------------
                                    431 ; indirectly addressable internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area ISEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; absolute internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area IABS    (ABS,DATA)
                                    438 	.area IABS    (ABS,DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; bit data
                                    441 ;--------------------------------------------------------
                                    442 	.area BSEG    (BIT)
                                    443 ;--------------------------------------------------------
                                    444 ; paged external ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area PSEG    (PAG,XDATA)
                                    447 ;--------------------------------------------------------
                                    448 ; external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area XSEG    (XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; absolute external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XABS    (ABS,XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; external initialized ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XISEG   (XDATA)
                                    459 	.area HOME    (CODE)
                                    460 	.area GSINIT0 (CODE)
                                    461 	.area GSINIT1 (CODE)
                                    462 	.area GSINIT2 (CODE)
                                    463 	.area GSINIT3 (CODE)
                                    464 	.area GSINIT4 (CODE)
                                    465 	.area GSINIT5 (CODE)
                                    466 	.area GSINIT  (CODE)
                                    467 	.area GSFINAL (CODE)
                                    468 	.area CSEG    (CODE)
                                    469 ;--------------------------------------------------------
                                    470 ; global & static initialisations
                                    471 ;--------------------------------------------------------
                                    472 	.area HOME    (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 	.area GSFINAL (CODE)
                                    475 	.area GSINIT  (CODE)
                                    476 ;--------------------------------------------------------
                                    477 ; Home
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
                                    480 	.area HOME    (CODE)
                                    481 ;--------------------------------------------------------
                                    482 ; code
                                    483 ;--------------------------------------------------------
                                    484 	.area CSEG    (CODE)
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'putchar'
                                    487 ;------------------------------------------------------------
                                    488 ;c                         Allocated to registers r6 r7 
                                    489 ;------------------------------------------------------------
                                    490 ;	uart.c:25: int putchar(int c)
                                    491 ;	-----------------------------------------
                                    492 ;	 function putchar
                                    493 ;	-----------------------------------------
      003CC0                        494 _putchar:
                           000007   495 	ar7 = 0x07
                           000006   496 	ar6 = 0x06
                           000005   497 	ar5 = 0x05
                           000004   498 	ar4 = 0x04
                           000003   499 	ar3 = 0x03
                           000002   500 	ar2 = 0x02
                           000001   501 	ar1 = 0x01
                           000000   502 	ar0 = 0x00
      003CC0 AE 82            [24]  503 	mov	r6,dpl
      003CC2 AF 83            [24]  504 	mov	r7,dph
                                    505 ;	uart.c:27: while(!TI); // Wait until the UART transmit buffer is ready to accept new
      003CC4                        506 00101$:
      003CC4 30 99 FD         [24]  507 	jnb	_TI,00101$
                                    508 ;	uart.c:29: SBUF = c;   // Load the character into the transmit buffer
      003CC7 8E 99            [24]  509 	mov	_SBUF,r6
                                    510 ;	uart.c:30: TI = 0;     // Clear the transmit interrupt flag to indicate data has been
                                    511 ;	assignBit
      003CC9 C2 99            [12]  512 	clr	_TI
                                    513 ;	uart.c:32: return c;   // Return the character written
      003CCB 8E 82            [24]  514 	mov	dpl,r6
      003CCD 8F 83            [24]  515 	mov	dph,r7
                                    516 ;	uart.c:33: }
      003CCF 22               [24]  517 	ret
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'getchar'
                                    520 ;------------------------------------------------------------
                                    521 ;	uart.c:39: int getchar(void)
                                    522 ;	-----------------------------------------
                                    523 ;	 function getchar
                                    524 ;	-----------------------------------------
      003CD0                        525 _getchar:
                                    526 ;	uart.c:41: while(!RI); // Wait until a character is received and ready to be read
      003CD0                        527 00101$:
                                    528 ;	uart.c:42: RI = 0;     // Clear the receive interrupt flag to indicate data has been
                                    529 ;	assignBit
      003CD0 10 98 02         [24]  530 	jbc	_RI,00114$
      003CD3 80 FB            [24]  531 	sjmp	00101$
      003CD5                        532 00114$:
                                    533 ;	uart.c:44: return SBUF; // Return the received character
      003CD5 AE 99            [24]  534 	mov	r6,_SBUF
      003CD7 7F 00            [12]  535 	mov	r7,#0x00
      003CD9 8E 82            [24]  536 	mov	dpl,r6
      003CDB 8F 83            [24]  537 	mov	dph,r7
                                    538 ;	uart.c:45: }
      003CDD 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'putstr'
                                    542 ;------------------------------------------------------------
                                    543 ;s                         Allocated to registers 
                                    544 ;i                         Allocated to registers r3 r4 
                                    545 ;------------------------------------------------------------
                                    546 ;	uart.c:52: int putstr(char *s)
                                    547 ;	-----------------------------------------
                                    548 ;	 function putstr
                                    549 ;	-----------------------------------------
      003CDE                        550 _putstr:
      003CDE AD 82            [24]  551 	mov	r5,dpl
      003CE0 AE 83            [24]  552 	mov	r6,dph
      003CE2 AF F0            [24]  553 	mov	r7,b
                                    554 ;	uart.c:55: while (*s)
      003CE4 7B 00            [12]  555 	mov	r3,#0x00
      003CE6 7C 00            [12]  556 	mov	r4,#0x00
      003CE8                        557 00101$:
      003CE8 8D 82            [24]  558 	mov	dpl,r5
      003CEA 8E 83            [24]  559 	mov	dph,r6
      003CEC 8F F0            [24]  560 	mov	b,r7
      003CEE 12 3E 94         [24]  561 	lcall	__gptrget
      003CF1 FA               [12]  562 	mov	r2,a
      003CF2 60 2B            [24]  563 	jz	00103$
                                    564 ;	uart.c:57: putchar(*s++); // Output each character of the string
      003CF4 0D               [12]  565 	inc	r5
      003CF5 BD 00 01         [24]  566 	cjne	r5,#0x00,00116$
      003CF8 0E               [12]  567 	inc	r6
      003CF9                        568 00116$:
      003CF9 8A 01            [24]  569 	mov	ar1,r2
      003CFB 7A 00            [12]  570 	mov	r2,#0x00
      003CFD 89 82            [24]  571 	mov	dpl,r1
      003CFF 8A 83            [24]  572 	mov	dph,r2
      003D01 C0 07            [24]  573 	push	ar7
      003D03 C0 06            [24]  574 	push	ar6
      003D05 C0 05            [24]  575 	push	ar5
      003D07 C0 04            [24]  576 	push	ar4
      003D09 C0 03            [24]  577 	push	ar3
      003D0B 12 3C C0         [24]  578 	lcall	_putchar
      003D0E D0 03            [24]  579 	pop	ar3
      003D10 D0 04            [24]  580 	pop	ar4
      003D12 D0 05            [24]  581 	pop	ar5
      003D14 D0 06            [24]  582 	pop	ar6
      003D16 D0 07            [24]  583 	pop	ar7
                                    584 ;	uart.c:58: i++;
      003D18 0B               [12]  585 	inc	r3
      003D19 BB 00 CC         [24]  586 	cjne	r3,#0x00,00101$
      003D1C 0C               [12]  587 	inc	r4
      003D1D 80 C9            [24]  588 	sjmp	00101$
      003D1F                        589 00103$:
                                    590 ;	uart.c:60: return i + 1; // Return the total number of characters sent, including the
      003D1F 8B 82            [24]  591 	mov	dpl,r3
      003D21 8C 83            [24]  592 	mov	dph,r4
      003D23 A3               [24]  593 	inc	dptr
                                    594 ;	uart.c:62: }
      003D24 22               [24]  595 	ret
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'echo'
                                    598 ;------------------------------------------------------------
                                    599 ;ch                        Allocated to registers r6 
                                    600 ;------------------------------------------------------------
                                    601 ;	uart.c:68: int8_t echo()
                                    602 ;	-----------------------------------------
                                    603 ;	 function echo
                                    604 ;	-----------------------------------------
      003D25                        605 _echo:
                                    606 ;	uart.c:70: int8_t ch = getchar(); // Read a character from the UART
      003D25 12 3C D0         [24]  607 	lcall	_getchar
      003D28 AE 82            [24]  608 	mov	r6,dpl
                                    609 ;	uart.c:71: putchar(ch);           // Output the character, providing an echo effect
      003D2A EE               [12]  610 	mov	a,r6
      003D2B FD               [12]  611 	mov	r5,a
      003D2C 33               [12]  612 	rlc	a
      003D2D 95 E0            [12]  613 	subb	a,acc
      003D2F FF               [12]  614 	mov	r7,a
      003D30 8D 82            [24]  615 	mov	dpl,r5
      003D32 8F 83            [24]  616 	mov	dph,r7
      003D34 C0 06            [24]  617 	push	ar6
      003D36 12 3C C0         [24]  618 	lcall	_putchar
      003D39 D0 06            [24]  619 	pop	ar6
                                    620 ;	uart.c:72: return ch;             // Return the character read
      003D3B 8E 82            [24]  621 	mov	dpl,r6
                                    622 ;	uart.c:73: }
      003D3D 22               [24]  623 	ret
                                    624 	.area CSEG    (CODE)
                                    625 	.area CONST   (CODE)
                                    626 	.area XINIT   (CODE)
                                    627 	.area CABS    (ABS,CODE)
