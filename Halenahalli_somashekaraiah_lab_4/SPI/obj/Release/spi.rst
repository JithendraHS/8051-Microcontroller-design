                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module spi
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _echo
                                     12 	.globl _printf_tiny
                                     13 	.globl _printf
                                     14 	.globl _P5_7
                                     15 	.globl _P5_6
                                     16 	.globl _P5_5
                                     17 	.globl _P5_4
                                     18 	.globl _P5_3
                                     19 	.globl _P5_2
                                     20 	.globl _P5_1
                                     21 	.globl _P5_0
                                     22 	.globl _P4_7
                                     23 	.globl _P4_6
                                     24 	.globl _P4_5
                                     25 	.globl _P4_4
                                     26 	.globl _P4_3
                                     27 	.globl _P4_2
                                     28 	.globl _P4_1
                                     29 	.globl _P4_0
                                     30 	.globl _PX0L
                                     31 	.globl _PT0L
                                     32 	.globl _PX1L
                                     33 	.globl _PT1L
                                     34 	.globl _PSL
                                     35 	.globl _PT2L
                                     36 	.globl _PPCL
                                     37 	.globl _EC
                                     38 	.globl _CCF0
                                     39 	.globl _CCF1
                                     40 	.globl _CCF2
                                     41 	.globl _CCF3
                                     42 	.globl _CCF4
                                     43 	.globl _CR
                                     44 	.globl _CF
                                     45 	.globl _TF2
                                     46 	.globl _EXF2
                                     47 	.globl _RCLK
                                     48 	.globl _TCLK
                                     49 	.globl _EXEN2
                                     50 	.globl _TR2
                                     51 	.globl _C_T2
                                     52 	.globl _CP_RL2
                                     53 	.globl _T2CON_7
                                     54 	.globl _T2CON_6
                                     55 	.globl _T2CON_5
                                     56 	.globl _T2CON_4
                                     57 	.globl _T2CON_3
                                     58 	.globl _T2CON_2
                                     59 	.globl _T2CON_1
                                     60 	.globl _T2CON_0
                                     61 	.globl _PT2
                                     62 	.globl _ET2
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _PS
                                     72 	.globl _PT1
                                     73 	.globl _PX1
                                     74 	.globl _PT0
                                     75 	.globl _PX0
                                     76 	.globl _RD
                                     77 	.globl _WR
                                     78 	.globl _T1
                                     79 	.globl _T0
                                     80 	.globl _INT1
                                     81 	.globl _INT0
                                     82 	.globl _TXD
                                     83 	.globl _RXD
                                     84 	.globl _P3_7
                                     85 	.globl _P3_6
                                     86 	.globl _P3_5
                                     87 	.globl _P3_4
                                     88 	.globl _P3_3
                                     89 	.globl _P3_2
                                     90 	.globl _P3_1
                                     91 	.globl _P3_0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _SM0
                                    107 	.globl _SM1
                                    108 	.globl _SM2
                                    109 	.globl _REN
                                    110 	.globl _TB8
                                    111 	.globl _RB8
                                    112 	.globl _TI
                                    113 	.globl _RI
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _TF1
                                    123 	.globl _TR1
                                    124 	.globl _TF0
                                    125 	.globl _TR0
                                    126 	.globl _IE1
                                    127 	.globl _IT1
                                    128 	.globl _IE0
                                    129 	.globl _IT0
                                    130 	.globl _P0_7
                                    131 	.globl _P0_6
                                    132 	.globl _P0_5
                                    133 	.globl _P0_4
                                    134 	.globl _P0_3
                                    135 	.globl _P0_2
                                    136 	.globl _P0_1
                                    137 	.globl _P0_0
                                    138 	.globl _EECON
                                    139 	.globl _KBF
                                    140 	.globl _KBE
                                    141 	.globl _KBLS
                                    142 	.globl _BRL
                                    143 	.globl _BDRCON
                                    144 	.globl _T2MOD
                                    145 	.globl _SPDAT
                                    146 	.globl _SPSTA
                                    147 	.globl _SPCON
                                    148 	.globl _SADEN
                                    149 	.globl _SADDR
                                    150 	.globl _WDTPRG
                                    151 	.globl _WDTRST
                                    152 	.globl _P5
                                    153 	.globl _P4
                                    154 	.globl _IPH1
                                    155 	.globl _IPL1
                                    156 	.globl _IPH0
                                    157 	.globl _IPL0
                                    158 	.globl _IEN1
                                    159 	.globl _IEN0
                                    160 	.globl _CMOD
                                    161 	.globl _CL
                                    162 	.globl _CH
                                    163 	.globl _CCON
                                    164 	.globl _CCAPM4
                                    165 	.globl _CCAPM3
                                    166 	.globl _CCAPM2
                                    167 	.globl _CCAPM1
                                    168 	.globl _CCAPM0
                                    169 	.globl _CCAP4L
                                    170 	.globl _CCAP3L
                                    171 	.globl _CCAP2L
                                    172 	.globl _CCAP1L
                                    173 	.globl _CCAP0L
                                    174 	.globl _CCAP4H
                                    175 	.globl _CCAP3H
                                    176 	.globl _CCAP2H
                                    177 	.globl _CCAP1H
                                    178 	.globl _CCAP0H
                                    179 	.globl _CKCON1
                                    180 	.globl _CKCON0
                                    181 	.globl _CKRL
                                    182 	.globl _AUXR1
                                    183 	.globl _AUXR
                                    184 	.globl _TH2
                                    185 	.globl _TL2
                                    186 	.globl _RCAP2H
                                    187 	.globl _RCAP2L
                                    188 	.globl _T2CON
                                    189 	.globl _B
                                    190 	.globl _ACC
                                    191 	.globl _PSW
                                    192 	.globl _IP
                                    193 	.globl _P3
                                    194 	.globl _IE
                                    195 	.globl _P2
                                    196 	.globl _SBUF
                                    197 	.globl _SCON
                                    198 	.globl _P1
                                    199 	.globl _TH1
                                    200 	.globl _TH0
                                    201 	.globl _TL1
                                    202 	.globl _TL0
                                    203 	.globl _TMOD
                                    204 	.globl _TCON
                                    205 	.globl _PCON
                                    206 	.globl _DPH
                                    207 	.globl _DPL
                                    208 	.globl _SP
                                    209 	.globl _P0
                                    210 	.globl _spi_init
                                    211 	.globl _spi_wave_generator
                                    212 	.globl _spi_single_value
                                    213 	.globl _get_hex_value
                                    214 ;--------------------------------------------------------
                                    215 ; special function registers
                                    216 ;--------------------------------------------------------
                                    217 	.area RSEG    (ABS,DATA)
      000000                        218 	.org 0x0000
                           000080   219 _P0	=	0x0080
                           000081   220 _SP	=	0x0081
                           000082   221 _DPL	=	0x0082
                           000083   222 _DPH	=	0x0083
                           000087   223 _PCON	=	0x0087
                           000088   224 _TCON	=	0x0088
                           000089   225 _TMOD	=	0x0089
                           00008A   226 _TL0	=	0x008a
                           00008B   227 _TL1	=	0x008b
                           00008C   228 _TH0	=	0x008c
                           00008D   229 _TH1	=	0x008d
                           000090   230 _P1	=	0x0090
                           000098   231 _SCON	=	0x0098
                           000099   232 _SBUF	=	0x0099
                           0000A0   233 _P2	=	0x00a0
                           0000A8   234 _IE	=	0x00a8
                           0000B0   235 _P3	=	0x00b0
                           0000B8   236 _IP	=	0x00b8
                           0000D0   237 _PSW	=	0x00d0
                           0000E0   238 _ACC	=	0x00e0
                           0000F0   239 _B	=	0x00f0
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                                    291 ;--------------------------------------------------------
                                    292 ; special function bits
                                    293 ;--------------------------------------------------------
                                    294 	.area RSEG    (ABS,DATA)
      000000                        295 	.org 0x0000
                           000080   296 _P0_0	=	0x0080
                           000081   297 _P0_1	=	0x0081
                           000082   298 _P0_2	=	0x0082
                           000083   299 _P0_3	=	0x0083
                           000084   300 _P0_4	=	0x0084
                           000085   301 _P0_5	=	0x0085
                           000086   302 _P0_6	=	0x0086
                           000087   303 _P0_7	=	0x0087
                           000088   304 _IT0	=	0x0088
                           000089   305 _IE0	=	0x0089
                           00008A   306 _IT1	=	0x008a
                           00008B   307 _IE1	=	0x008b
                           00008C   308 _TR0	=	0x008c
                           00008D   309 _TF0	=	0x008d
                           00008E   310 _TR1	=	0x008e
                           00008F   311 _TF1	=	0x008f
                           000090   312 _P1_0	=	0x0090
                           000091   313 _P1_1	=	0x0091
                           000092   314 _P1_2	=	0x0092
                           000093   315 _P1_3	=	0x0093
                           000094   316 _P1_4	=	0x0094
                           000095   317 _P1_5	=	0x0095
                           000096   318 _P1_6	=	0x0096
                           000097   319 _P1_7	=	0x0097
                           000098   320 _RI	=	0x0098
                           000099   321 _TI	=	0x0099
                           00009A   322 _RB8	=	0x009a
                           00009B   323 _TB8	=	0x009b
                           00009C   324 _REN	=	0x009c
                           00009D   325 _SM2	=	0x009d
                           00009E   326 _SM1	=	0x009e
                           00009F   327 _SM0	=	0x009f
                           0000A0   328 _P2_0	=	0x00a0
                           0000A1   329 _P2_1	=	0x00a1
                           0000A2   330 _P2_2	=	0x00a2
                           0000A3   331 _P2_3	=	0x00a3
                           0000A4   332 _P2_4	=	0x00a4
                           0000A5   333 _P2_5	=	0x00a5
                           0000A6   334 _P2_6	=	0x00a6
                           0000A7   335 _P2_7	=	0x00a7
                           0000A8   336 _EX0	=	0x00a8
                           0000A9   337 _ET0	=	0x00a9
                           0000AA   338 _EX1	=	0x00aa
                           0000AB   339 _ET1	=	0x00ab
                           0000AC   340 _ES	=	0x00ac
                           0000AF   341 _EA	=	0x00af
                           0000B0   342 _P3_0	=	0x00b0
                           0000B1   343 _P3_1	=	0x00b1
                           0000B2   344 _P3_2	=	0x00b2
                           0000B3   345 _P3_3	=	0x00b3
                           0000B4   346 _P3_4	=	0x00b4
                           0000B5   347 _P3_5	=	0x00b5
                           0000B6   348 _P3_6	=	0x00b6
                           0000B7   349 _P3_7	=	0x00b7
                           0000B0   350 _RXD	=	0x00b0
                           0000B1   351 _TXD	=	0x00b1
                           0000B2   352 _INT0	=	0x00b2
                           0000B3   353 _INT1	=	0x00b3
                           0000B4   354 _T0	=	0x00b4
                           0000B5   355 _T1	=	0x00b5
                           0000B6   356 _WR	=	0x00b6
                           0000B7   357 _RD	=	0x00b7
                           0000B8   358 _PX0	=	0x00b8
                           0000B9   359 _PT0	=	0x00b9
                           0000BA   360 _PX1	=	0x00ba
                           0000BB   361 _PT1	=	0x00bb
                           0000BC   362 _PS	=	0x00bc
                           0000D0   363 _P	=	0x00d0
                           0000D1   364 _F1	=	0x00d1
                           0000D2   365 _OV	=	0x00d2
                           0000D3   366 _RS0	=	0x00d3
                           0000D4   367 _RS1	=	0x00d4
                           0000D5   368 _F0	=	0x00d5
                           0000D6   369 _AC	=	0x00d6
                           0000D7   370 _CY	=	0x00d7
                           0000AD   371 _ET2	=	0x00ad
                           0000BD   372 _PT2	=	0x00bd
                           0000C8   373 _T2CON_0	=	0x00c8
                           0000C9   374 _T2CON_1	=	0x00c9
                           0000CA   375 _T2CON_2	=	0x00ca
                           0000CB   376 _T2CON_3	=	0x00cb
                           0000CC   377 _T2CON_4	=	0x00cc
                           0000CD   378 _T2CON_5	=	0x00cd
                           0000CE   379 _T2CON_6	=	0x00ce
                           0000CF   380 _T2CON_7	=	0x00cf
                           0000C8   381 _CP_RL2	=	0x00c8
                           0000C9   382 _C_T2	=	0x00c9
                           0000CA   383 _TR2	=	0x00ca
                           0000CB   384 _EXEN2	=	0x00cb
                           0000CC   385 _TCLK	=	0x00cc
                           0000CD   386 _RCLK	=	0x00cd
                           0000CE   387 _EXF2	=	0x00ce
                           0000CF   388 _TF2	=	0x00cf
                           0000DF   389 _CF	=	0x00df
                           0000DE   390 _CR	=	0x00de
                           0000DC   391 _CCF4	=	0x00dc
                           0000DB   392 _CCF3	=	0x00db
                           0000DA   393 _CCF2	=	0x00da
                           0000D9   394 _CCF1	=	0x00d9
                           0000D8   395 _CCF0	=	0x00d8
                           0000AE   396 _EC	=	0x00ae
                           0000BE   397 _PPCL	=	0x00be
                           0000BD   398 _PT2L	=	0x00bd
                           0000BC   399 _PSL	=	0x00bc
                           0000BB   400 _PT1L	=	0x00bb
                           0000BA   401 _PX1L	=	0x00ba
                           0000B9   402 _PT0L	=	0x00b9
                           0000B8   403 _PX0L	=	0x00b8
                           0000C0   404 _P4_0	=	0x00c0
                           0000C1   405 _P4_1	=	0x00c1
                           0000C2   406 _P4_2	=	0x00c2
                           0000C3   407 _P4_3	=	0x00c3
                           0000C4   408 _P4_4	=	0x00c4
                           0000C5   409 _P4_5	=	0x00c5
                           0000C6   410 _P4_6	=	0x00c6
                           0000C7   411 _P4_7	=	0x00c7
                           0000E8   412 _P5_0	=	0x00e8
                           0000E9   413 _P5_1	=	0x00e9
                           0000EA   414 _P5_2	=	0x00ea
                           0000EB   415 _P5_3	=	0x00eb
                           0000EC   416 _P5_4	=	0x00ec
                           0000ED   417 _P5_5	=	0x00ed
                           0000EE   418 _P5_6	=	0x00ee
                           0000EF   419 _P5_7	=	0x00ef
                                    420 ;--------------------------------------------------------
                                    421 ; overlayable register banks
                                    422 ;--------------------------------------------------------
                                    423 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        424 	.ds 8
                                    425 ;--------------------------------------------------------
                                    426 ; internal ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area DSEG    (DATA)
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable items in internal ram
                                    431 ;--------------------------------------------------------
                                    432 	.area	OSEG    (OVR,DATA)
                                    433 	.area	OSEG    (OVR,DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; indirectly addressable internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area ISEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; absolute internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area IABS    (ABS,DATA)
                                    442 	.area IABS    (ABS,DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; bit data
                                    445 ;--------------------------------------------------------
                                    446 	.area BSEG    (BIT)
                                    447 ;--------------------------------------------------------
                                    448 ; paged external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area PSEG    (PAG,XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XSEG    (XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XABS    (ABS,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external initialized ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XISEG   (XDATA)
                                    463 	.area HOME    (CODE)
                                    464 	.area GSINIT0 (CODE)
                                    465 	.area GSINIT1 (CODE)
                                    466 	.area GSINIT2 (CODE)
                                    467 	.area GSINIT3 (CODE)
                                    468 	.area GSINIT4 (CODE)
                                    469 	.area GSINIT5 (CODE)
                                    470 	.area GSINIT  (CODE)
                                    471 	.area GSFINAL (CODE)
                                    472 	.area CSEG    (CODE)
                                    473 ;--------------------------------------------------------
                                    474 ; global & static initialisations
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
                                    477 	.area GSINIT  (CODE)
                                    478 	.area GSFINAL (CODE)
                                    479 	.area GSINIT  (CODE)
                                    480 ;--------------------------------------------------------
                                    481 ; Home
                                    482 ;--------------------------------------------------------
                                    483 	.area HOME    (CODE)
                                    484 	.area HOME    (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; code
                                    487 ;--------------------------------------------------------
                                    488 	.area CSEG    (CODE)
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'spi_init'
                                    491 ;------------------------------------------------------------
                                    492 ;	spi.c:7: void spi_init(){
                                    493 ;	-----------------------------------------
                                    494 ;	 function spi_init
                                    495 ;	-----------------------------------------
      005132                        496 _spi_init:
                           000007   497 	ar7 = 0x07
                           000006   498 	ar6 = 0x06
                           000005   499 	ar5 = 0x05
                           000004   500 	ar4 = 0x04
                           000003   501 	ar3 = 0x03
                           000002   502 	ar2 = 0x02
                           000001   503 	ar1 = 0x01
                           000000   504 	ar0 = 0x00
                                    505 ;	spi.c:8: printf("DAC\n\r");
      005132 74 70            [12]  506 	mov	a,#___str_0
      005134 C0 E0            [24]  507 	push	acc
      005136 74 5C            [12]  508 	mov	a,#(___str_0 >> 8)
      005138 C0 E0            [24]  509 	push	acc
      00513A 74 80            [12]  510 	mov	a,#0x80
      00513C C0 E0            [24]  511 	push	acc
      00513E 12 54 2D         [24]  512 	lcall	_printf
      005141 15 81            [12]  513 	dec	sp
      005143 15 81            [12]  514 	dec	sp
      005145 15 81            [12]  515 	dec	sp
                                    516 ;	spi.c:9: SPCON |= (SPR1 << 1) | (SPR0 << 0); //setting SPR0 and SPR1 to get baudrate of 57600
      005147 43 C3 05         [24]  517 	orl	_SPCON,#0x05
                                    518 ;	spi.c:10: SPCON |= (CPHA << 2); // setting clock phase to falling edge
      00514A 43 C3 10         [24]  519 	orl	_SPCON,#0x10
                                    520 ;	spi.c:11: SPCON |= (MSTR << 4); // Setting MCU as master all the time
      00514D 85 C3 C3         [24]  521 	mov	_SPCON,_SPCON
                                    522 ;	spi.c:12: SPCON |= (SSDIS << 5); // disabling /SS in master and slave modes
      005150 85 C3 C3         [24]  523 	mov	_SPCON,_SPCON
                                    524 ;	spi.c:13: SPCON |= (SPEN << 6); //Enabling SPI transmisson;
      005153 85 C3 C3         [24]  525 	mov	_SPCON,_SPCON
                                    526 ;	spi.c:15: spi_wave_generator();
                                    527 ;	spi.c:16: }
      005156 02 51 59         [24]  528 	ljmp	_spi_wave_generator
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'spi_wave_generator'
                                    531 ;------------------------------------------------------------
                                    532 ;t                         Allocated to registers 
                                    533 ;i                         Allocated to registers r6 r7 
                                    534 ;j                         Allocated to registers 
                                    535 ;------------------------------------------------------------
                                    536 ;	spi.c:18: void spi_wave_generator() {
                                    537 ;	-----------------------------------------
                                    538 ;	 function spi_wave_generator
                                    539 ;	-----------------------------------------
      005159                        540 _spi_wave_generator:
                                    541 ;	spi.c:21: for(uint16_t i = 0; i <= 255; i++){
      005159 7E 00            [12]  542 	mov	r6,#0x00
      00515B 7F 00            [12]  543 	mov	r7,#0x00
      00515D                        544 00113$:
      00515D 8E 04            [24]  545 	mov	ar4,r6
      00515F 8F 05            [24]  546 	mov	ar5,r7
      005161 C3               [12]  547 	clr	c
      005162 74 FF            [12]  548 	mov	a,#0xff
      005164 9C               [12]  549 	subb	a,r4
      005165 E4               [12]  550 	clr	a
      005166 9D               [12]  551 	subb	a,r5
      005167 40 12            [24]  552 	jc	00104$
                                    553 ;	spi.c:22: CS = 0; // Select the SPI device (assert CS low)
                                    554 ;	assignBit
      005169 C2 94            [12]  555 	clr	_P1_4
                                    556 ;	spi.c:24: SPDAT = i;
      00516B 8E C5            [24]  557 	mov	_SPDAT,r6
                                    558 ;	spi.c:25: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
      00516D                        559 00101$:
      00516D E5 C4            [12]  560 	mov	a,_SPSTA
      00516F 30 E7 FB         [24]  561 	jnb	acc.7,00101$
                                    562 ;	spi.c:26: CS = 1; // Deselect the SPI device (assert CS high)
                                    563 ;	assignBit
      005172 D2 94            [12]  564 	setb	_P1_4
                                    565 ;	spi.c:21: for(uint16_t i = 0; i <= 255; i++){
      005174 0E               [12]  566 	inc	r6
      005175 BE 00 E5         [24]  567 	cjne	r6,#0x00,00113$
      005178 0F               [12]  568 	inc	r7
      005179 80 E2            [24]  569 	sjmp	00113$
      00517B                        570 00104$:
                                    571 ;	spi.c:28: for(uint16_t j = 255; j >= 0 ; j--){
      00517B 7E FF            [12]  572 	mov	r6,#0xff
      00517D 7F 00            [12]  573 	mov	r7,#0x00
      00517F                        574 00115$:
                                    575 ;	spi.c:29: CS = 0; // Select the SPI device (assert CS low)
                                    576 ;	assignBit
      00517F C2 94            [12]  577 	clr	_P1_4
                                    578 ;	spi.c:31: SPDAT = j;
      005181 8E C5            [24]  579 	mov	_SPDAT,r6
                                    580 ;	spi.c:32: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
      005183                        581 00105$:
      005183 E5 C4            [12]  582 	mov	a,_SPSTA
      005185 30 E7 FB         [24]  583 	jnb	acc.7,00105$
                                    584 ;	spi.c:33: CS = 1; // Deselect the SPI device (assert CS high)
                                    585 ;	assignBit
      005188 D2 94            [12]  586 	setb	_P1_4
                                    587 ;	spi.c:28: for(uint16_t j = 255; j >= 0 ; j--){
      00518A 1E               [12]  588 	dec	r6
      00518B BE FF 01         [24]  589 	cjne	r6,#0xff,00154$
      00518E 1F               [12]  590 	dec	r7
      00518F                        591 00154$:
                                    592 ;	spi.c:35: t--;
                                    593 ;	spi.c:37: }
      00518F 80 EE            [24]  594 	sjmp	00115$
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'spi_single_value'
                                    597 ;------------------------------------------------------------
                                    598 ;level                     Allocated to registers r7 
                                    599 ;------------------------------------------------------------
                                    600 ;	spi.c:39: void spi_single_value(uint8_t level){
                                    601 ;	-----------------------------------------
                                    602 ;	 function spi_single_value
                                    603 ;	-----------------------------------------
      005191                        604 _spi_single_value:
      005191 AF 82            [24]  605 	mov	r7,dpl
                                    606 ;	spi.c:40: CS = 0; // Select the SPI device (assert CS low)
                                    607 ;	assignBit
      005193 C2 94            [12]  608 	clr	_P1_4
                                    609 ;	spi.c:42: SPDAT = level;
      005195 8F C5            [24]  610 	mov	_SPDAT,r7
                                    611 ;	spi.c:43: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
      005197                        612 00101$:
      005197 E5 C4            [12]  613 	mov	a,_SPSTA
      005199 30 E7 FB         [24]  614 	jnb	acc.7,00101$
                                    615 ;	spi.c:44: CS = 1; // Deselect the SPI device (assert CS high)
                                    616 ;	assignBit
      00519C D2 94            [12]  617 	setb	_P1_4
                                    618 ;	spi.c:45: }
      00519E 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'get_hex_value'
                                    622 ;------------------------------------------------------------
                                    623 ;value                     Allocated to registers r7 
                                    624 ;i                         Allocated to registers r5 r6 
                                    625 ;char_received             Allocated to registers r3 
                                    626 ;------------------------------------------------------------
                                    627 ;	spi.c:51: uint8_t get_hex_value(){
                                    628 ;	-----------------------------------------
                                    629 ;	 function get_hex_value
                                    630 ;	-----------------------------------------
      00519F                        631 _get_hex_value:
                                    632 ;	spi.c:52: uint8_t value = 0;
      00519F 7F 00            [12]  633 	mov	r7,#0x00
                                    634 ;	spi.c:53: for(int i = 0; i < 2; i++){
      0051A1 7D 00            [12]  635 	mov	r5,#0x00
      0051A3 7E 00            [12]  636 	mov	r6,#0x00
      0051A5                        637 00125$:
      0051A5 C3               [12]  638 	clr	c
      0051A6 ED               [12]  639 	mov	a,r5
      0051A7 94 02            [12]  640 	subb	a,#0x02
      0051A9 EE               [12]  641 	mov	a,r6
      0051AA 64 80            [12]  642 	xrl	a,#0x80
      0051AC 94 80            [12]  643 	subb	a,#0x80
      0051AE 40 03            [24]  644 	jc	00183$
      0051B0 02 52 68         [24]  645 	ljmp	00123$
      0051B3                        646 00183$:
                                    647 ;	spi.c:54: if(i == 0) printf_tiny("0x");
      0051B3 ED               [12]  648 	mov	a,r5
      0051B4 4E               [12]  649 	orl	a,r6
      0051B5 70 1B            [24]  650 	jnz	00102$
      0051B7 C0 07            [24]  651 	push	ar7
      0051B9 C0 06            [24]  652 	push	ar6
      0051BB C0 05            [24]  653 	push	ar5
      0051BD 74 76            [12]  654 	mov	a,#___str_1
      0051BF C0 E0            [24]  655 	push	acc
      0051C1 74 5C            [12]  656 	mov	a,#(___str_1 >> 8)
      0051C3 C0 E0            [24]  657 	push	acc
      0051C5 12 52 FC         [24]  658 	lcall	_printf_tiny
      0051C8 15 81            [12]  659 	dec	sp
      0051CA 15 81            [12]  660 	dec	sp
      0051CC D0 05            [24]  661 	pop	ar5
      0051CE D0 06            [24]  662 	pop	ar6
      0051D0 D0 07            [24]  663 	pop	ar7
      0051D2                        664 00102$:
                                    665 ;	spi.c:55: uint8_t char_received = echo(); // Read a character from UART
      0051D2 C0 07            [24]  666 	push	ar7
      0051D4 C0 06            [24]  667 	push	ar6
      0051D6 C0 05            [24]  668 	push	ar5
      0051D8 12 52 E3         [24]  669 	lcall	_echo
      0051DB AC 82            [24]  670 	mov	r4,dpl
      0051DD D0 05            [24]  671 	pop	ar5
      0051DF D0 06            [24]  672 	pop	ar6
      0051E1 D0 07            [24]  673 	pop	ar7
                                    674 ;	spi.c:56: if((char_received >= '0') && (char_received <= '9')){
      0051E3 BC 30 00         [24]  675 	cjne	r4,#0x30,00185$
      0051E6                        676 00185$:
      0051E6 40 0D            [24]  677 	jc	00116$
      0051E8 EC               [12]  678 	mov	a,r4
      0051E9 24 C6            [12]  679 	add	a,#0xff - 0x39
      0051EB 40 08            [24]  680 	jc	00116$
                                    681 ;	spi.c:57: char_received = char_received - '0'; // Convert ASCII character to its
      0051ED 8C 03            [24]  682 	mov	ar3,r4
      0051EF EB               [12]  683 	mov	a,r3
      0051F0 24 D0            [12]  684 	add	a,#0xd0
      0051F2 FB               [12]  685 	mov	r3,a
      0051F3 80 59            [24]  686 	sjmp	00117$
      0051F5                        687 00116$:
                                    688 ;	spi.c:59: }else if((char_received >= 'A') && (char_received <= 'F')){
      0051F5 BC 41 00         [24]  689 	cjne	r4,#0x41,00188$
      0051F8                        690 00188$:
      0051F8 40 0D            [24]  691 	jc	00112$
      0051FA EC               [12]  692 	mov	a,r4
      0051FB 24 B9            [12]  693 	add	a,#0xff - 0x46
      0051FD 40 08            [24]  694 	jc	00112$
                                    695 ;	spi.c:60: char_received = char_received - 'A' + 10; // Convert ASCII character to its
      0051FF 8C 02            [24]  696 	mov	ar2,r4
      005201 74 C9            [12]  697 	mov	a,#0xc9
      005203 2A               [12]  698 	add	a,r2
      005204 FB               [12]  699 	mov	r3,a
      005205 80 47            [24]  700 	sjmp	00117$
      005207                        701 00112$:
                                    702 ;	spi.c:62: }else if((char_received >= 'a') && (char_received <= 'f')){
      005207 BC 61 00         [24]  703 	cjne	r4,#0x61,00191$
      00520A                        704 00191$:
      00520A 40 0D            [24]  705 	jc	00108$
      00520C EC               [12]  706 	mov	a,r4
      00520D 24 99            [12]  707 	add	a,#0xff - 0x66
      00520F 40 08            [24]  708 	jc	00108$
                                    709 ;	spi.c:63: char_received = char_received - 'a' + 10; // Convert ASCII character to its
      005211 8C 02            [24]  710 	mov	ar2,r4
      005213 74 A9            [12]  711 	mov	a,#0xa9
      005215 2A               [12]  712 	add	a,r2
      005216 FB               [12]  713 	mov	r3,a
      005217 80 35            [24]  714 	sjmp	00117$
      005219                        715 00108$:
                                    716 ;	spi.c:65: }else if((char_received == '\n') || (char_received == '\r')){
      005219 BC 0A 02         [24]  717 	cjne	r4,#0x0a,00194$
      00521C 80 03            [24]  718 	sjmp	00103$
      00521E                        719 00194$:
      00521E BC 0D 16         [24]  720 	cjne	r4,#0x0d,00104$
      005221                        721 00103$:
                                    722 ;	spi.c:66: printf_tiny("\n\r");
      005221 C0 07            [24]  723 	push	ar7
      005223 74 79            [12]  724 	mov	a,#___str_2
      005225 C0 E0            [24]  725 	push	acc
      005227 74 5C            [12]  726 	mov	a,#(___str_2 >> 8)
      005229 C0 E0            [24]  727 	push	acc
      00522B 12 52 FC         [24]  728 	lcall	_printf_tiny
      00522E 15 81            [12]  729 	dec	sp
      005230 15 81            [12]  730 	dec	sp
      005232 D0 07            [24]  731 	pop	ar7
                                    732 ;	spi.c:67: return value;
      005234 8F 82            [24]  733 	mov	dpl,r7
      005236 22               [24]  734 	ret
      005237                        735 00104$:
                                    736 ;	spi.c:69: printf_tiny("-->Invalid input\n\r");
      005237 74 7C            [12]  737 	mov	a,#___str_3
      005239 C0 E0            [24]  738 	push	acc
      00523B 74 5C            [12]  739 	mov	a,#(___str_3 >> 8)
      00523D C0 E0            [24]  740 	push	acc
      00523F 12 52 FC         [24]  741 	lcall	_printf_tiny
      005242 15 81            [12]  742 	dec	sp
      005244 15 81            [12]  743 	dec	sp
                                    744 ;	spi.c:70: i = -1;
      005246 7D FF            [12]  745 	mov	r5,#0xff
      005248 7E FF            [12]  746 	mov	r6,#0xff
                                    747 ;	spi.c:71: value = 0;
      00524A 7F 00            [12]  748 	mov	r7,#0x00
                                    749 ;	spi.c:72: continue;
      00524C 80 12            [24]  750 	sjmp	00122$
      00524E                        751 00117$:
                                    752 ;	spi.c:74: if(i == 0){
      00524E ED               [12]  753 	mov	a,r5
      00524F 4E               [12]  754 	orl	a,r6
      005250 70 05            [24]  755 	jnz	00120$
                                    756 ;	spi.c:75: value |= char_received;
      005252 EB               [12]  757 	mov	a,r3
      005253 42 07            [12]  758 	orl	ar7,a
      005255 80 09            [24]  759 	sjmp	00122$
      005257                        760 00120$:
                                    761 ;	spi.c:77: value = (value << 4) | char_received;
      005257 8F 04            [24]  762 	mov	ar4,r7
      005259 EC               [12]  763 	mov	a,r4
      00525A C4               [12]  764 	swap	a
      00525B 54 F0            [12]  765 	anl	a,#0xf0
      00525D FC               [12]  766 	mov	r4,a
      00525E 4B               [12]  767 	orl	a,r3
      00525F FF               [12]  768 	mov	r7,a
      005260                        769 00122$:
                                    770 ;	spi.c:53: for(int i = 0; i < 2; i++){
      005260 0D               [12]  771 	inc	r5
      005261 BD 00 01         [24]  772 	cjne	r5,#0x00,00198$
      005264 0E               [12]  773 	inc	r6
      005265                        774 00198$:
      005265 02 51 A5         [24]  775 	ljmp	00125$
      005268                        776 00123$:
                                    777 ;	spi.c:80: printf_tiny("\n\r");
      005268 C0 07            [24]  778 	push	ar7
      00526A 74 79            [12]  779 	mov	a,#___str_2
      00526C C0 E0            [24]  780 	push	acc
      00526E 74 5C            [12]  781 	mov	a,#(___str_2 >> 8)
      005270 C0 E0            [24]  782 	push	acc
      005272 12 52 FC         [24]  783 	lcall	_printf_tiny
      005275 15 81            [12]  784 	dec	sp
      005277 15 81            [12]  785 	dec	sp
      005279 D0 07            [24]  786 	pop	ar7
                                    787 ;	spi.c:81: return value;
      00527B 8F 82            [24]  788 	mov	dpl,r7
                                    789 ;	spi.c:82: }
      00527D 22               [24]  790 	ret
                                    791 	.area CSEG    (CODE)
                                    792 	.area CONST   (CODE)
                                    793 	.area CONST   (CODE)
      005C70                        794 ___str_0:
      005C70 44 41 43               795 	.ascii "DAC"
      005C73 0A                     796 	.db 0x0a
      005C74 0D                     797 	.db 0x0d
      005C75 00                     798 	.db 0x00
                                    799 	.area CSEG    (CODE)
                                    800 	.area CONST   (CODE)
      005C76                        801 ___str_1:
      005C76 30 78                  802 	.ascii "0x"
      005C78 00                     803 	.db 0x00
                                    804 	.area CSEG    (CODE)
                                    805 	.area CONST   (CODE)
      005C79                        806 ___str_2:
      005C79 0A                     807 	.db 0x0a
      005C7A 0D                     808 	.db 0x0d
      005C7B 00                     809 	.db 0x00
                                    810 	.area CSEG    (CODE)
                                    811 	.area CONST   (CODE)
      005C7C                        812 ___str_3:
      005C7C 2D 2D 3E 49 6E 76 61   813 	.ascii "-->Invalid input"
             6C 69 64 20 69 6E 70
             75 74
      005C8C 0A                     814 	.db 0x0a
      005C8D 0D                     815 	.db 0x0d
      005C8E 00                     816 	.db 0x00
                                    817 	.area CSEG    (CODE)
                                    818 	.area XINIT   (CODE)
                                    819 	.area CABS    (ABS,CODE)
