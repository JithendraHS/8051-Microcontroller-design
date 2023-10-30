                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-large
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
                                    207 	.globl _total_characters_count
                                    208 	.globl _putchar
                                    209 	.globl _getchar
                                    210 	.globl _putstr
                                    211 	.globl _echo
                                    212 ;--------------------------------------------------------
                                    213 ; special function registers
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0	=	0x0080
                           000081   218 _SP	=	0x0081
                           000082   219 _DPL	=	0x0082
                           000083   220 _DPH	=	0x0083
                           000087   221 _PCON	=	0x0087
                           000088   222 _TCON	=	0x0088
                           000089   223 _TMOD	=	0x0089
                           00008A   224 _TL0	=	0x008a
                           00008B   225 _TL1	=	0x008b
                           00008C   226 _TH0	=	0x008c
                           00008D   227 _TH1	=	0x008d
                           000090   228 _P1	=	0x0090
                           000098   229 _SCON	=	0x0098
                           000099   230 _SBUF	=	0x0099
                           0000A0   231 _P2	=	0x00a0
                           0000A8   232 _IE	=	0x00a8
                           0000B0   233 _P3	=	0x00b0
                           0000B8   234 _IP	=	0x00b8
                           0000D0   235 _PSW	=	0x00d0
                           0000E0   236 _ACC	=	0x00e0
                           0000F0   237 _B	=	0x00f0
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                                    289 ;--------------------------------------------------------
                                    290 ; special function bits
                                    291 ;--------------------------------------------------------
                                    292 	.area RSEG    (ABS,DATA)
      000000                        293 	.org 0x0000
                           000080   294 _P0_0	=	0x0080
                           000081   295 _P0_1	=	0x0081
                           000082   296 _P0_2	=	0x0082
                           000083   297 _P0_3	=	0x0083
                           000084   298 _P0_4	=	0x0084
                           000085   299 _P0_5	=	0x0085
                           000086   300 _P0_6	=	0x0086
                           000087   301 _P0_7	=	0x0087
                           000088   302 _IT0	=	0x0088
                           000089   303 _IE0	=	0x0089
                           00008A   304 _IT1	=	0x008a
                           00008B   305 _IE1	=	0x008b
                           00008C   306 _TR0	=	0x008c
                           00008D   307 _TF0	=	0x008d
                           00008E   308 _TR1	=	0x008e
                           00008F   309 _TF1	=	0x008f
                           000090   310 _P1_0	=	0x0090
                           000091   311 _P1_1	=	0x0091
                           000092   312 _P1_2	=	0x0092
                           000093   313 _P1_3	=	0x0093
                           000094   314 _P1_4	=	0x0094
                           000095   315 _P1_5	=	0x0095
                           000096   316 _P1_6	=	0x0096
                           000097   317 _P1_7	=	0x0097
                           000098   318 _RI	=	0x0098
                           000099   319 _TI	=	0x0099
                           00009A   320 _RB8	=	0x009a
                           00009B   321 _TB8	=	0x009b
                           00009C   322 _REN	=	0x009c
                           00009D   323 _SM2	=	0x009d
                           00009E   324 _SM1	=	0x009e
                           00009F   325 _SM0	=	0x009f
                           0000A0   326 _P2_0	=	0x00a0
                           0000A1   327 _P2_1	=	0x00a1
                           0000A2   328 _P2_2	=	0x00a2
                           0000A3   329 _P2_3	=	0x00a3
                           0000A4   330 _P2_4	=	0x00a4
                           0000A5   331 _P2_5	=	0x00a5
                           0000A6   332 _P2_6	=	0x00a6
                           0000A7   333 _P2_7	=	0x00a7
                           0000A8   334 _EX0	=	0x00a8
                           0000A9   335 _ET0	=	0x00a9
                           0000AA   336 _EX1	=	0x00aa
                           0000AB   337 _ET1	=	0x00ab
                           0000AC   338 _ES	=	0x00ac
                           0000AF   339 _EA	=	0x00af
                           0000B0   340 _P3_0	=	0x00b0
                           0000B1   341 _P3_1	=	0x00b1
                           0000B2   342 _P3_2	=	0x00b2
                           0000B3   343 _P3_3	=	0x00b3
                           0000B4   344 _P3_4	=	0x00b4
                           0000B5   345 _P3_5	=	0x00b5
                           0000B6   346 _P3_6	=	0x00b6
                           0000B7   347 _P3_7	=	0x00b7
                           0000B0   348 _RXD	=	0x00b0
                           0000B1   349 _TXD	=	0x00b1
                           0000B2   350 _INT0	=	0x00b2
                           0000B3   351 _INT1	=	0x00b3
                           0000B4   352 _T0	=	0x00b4
                           0000B5   353 _T1	=	0x00b5
                           0000B6   354 _WR	=	0x00b6
                           0000B7   355 _RD	=	0x00b7
                           0000B8   356 _PX0	=	0x00b8
                           0000B9   357 _PT0	=	0x00b9
                           0000BA   358 _PX1	=	0x00ba
                           0000BB   359 _PT1	=	0x00bb
                           0000BC   360 _PS	=	0x00bc
                           0000D0   361 _P	=	0x00d0
                           0000D1   362 _F1	=	0x00d1
                           0000D2   363 _OV	=	0x00d2
                           0000D3   364 _RS0	=	0x00d3
                           0000D4   365 _RS1	=	0x00d4
                           0000D5   366 _F0	=	0x00d5
                           0000D6   367 _AC	=	0x00d6
                           0000D7   368 _CY	=	0x00d7
                           0000AD   369 _ET2	=	0x00ad
                           0000BD   370 _PT2	=	0x00bd
                           0000C8   371 _T2CON_0	=	0x00c8
                           0000C9   372 _T2CON_1	=	0x00c9
                           0000CA   373 _T2CON_2	=	0x00ca
                           0000CB   374 _T2CON_3	=	0x00cb
                           0000CC   375 _T2CON_4	=	0x00cc
                           0000CD   376 _T2CON_5	=	0x00cd
                           0000CE   377 _T2CON_6	=	0x00ce
                           0000CF   378 _T2CON_7	=	0x00cf
                           0000C8   379 _CP_RL2	=	0x00c8
                           0000C9   380 _C_T2	=	0x00c9
                           0000CA   381 _TR2	=	0x00ca
                           0000CB   382 _EXEN2	=	0x00cb
                           0000CC   383 _TCLK	=	0x00cc
                           0000CD   384 _RCLK	=	0x00cd
                           0000CE   385 _EXF2	=	0x00ce
                           0000CF   386 _TF2	=	0x00cf
                           0000DF   387 _CF	=	0x00df
                           0000DE   388 _CR	=	0x00de
                           0000DC   389 _CCF4	=	0x00dc
                           0000DB   390 _CCF3	=	0x00db
                           0000DA   391 _CCF2	=	0x00da
                           0000D9   392 _CCF1	=	0x00d9
                           0000D8   393 _CCF0	=	0x00d8
                           0000AE   394 _EC	=	0x00ae
                           0000BE   395 _PPCL	=	0x00be
                           0000BD   396 _PT2L	=	0x00bd
                           0000BC   397 _PSL	=	0x00bc
                           0000BB   398 _PT1L	=	0x00bb
                           0000BA   399 _PX1L	=	0x00ba
                           0000B9   400 _PT0L	=	0x00b9
                           0000B8   401 _PX0L	=	0x00b8
                           0000C0   402 _P4_0	=	0x00c0
                           0000C1   403 _P4_1	=	0x00c1
                           0000C2   404 _P4_2	=	0x00c2
                           0000C3   405 _P4_3	=	0x00c3
                           0000C4   406 _P4_4	=	0x00c4
                           0000C5   407 _P4_5	=	0x00c5
                           0000C6   408 _P4_6	=	0x00c6
                           0000C7   409 _P4_7	=	0x00c7
                           0000E8   410 _P5_0	=	0x00e8
                           0000E9   411 _P5_1	=	0x00e9
                           0000EA   412 _P5_2	=	0x00ea
                           0000EB   413 _P5_3	=	0x00eb
                           0000EC   414 _P5_4	=	0x00ec
                           0000ED   415 _P5_5	=	0x00ed
                           0000EE   416 _P5_6	=	0x00ee
                           0000EF   417 _P5_7	=	0x00ef
                                    418 ;--------------------------------------------------------
                                    419 ; overlayable register banks
                                    420 ;--------------------------------------------------------
                                    421 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        422 	.ds 8
                                    423 ;--------------------------------------------------------
                                    424 ; internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area DSEG    (DATA)
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable items in internal ram
                                    429 ;--------------------------------------------------------
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
      001635                        451 _putchar_c_65536_4:
      001635                        452 	.ds 2
      001637                        453 _putstr_s_65536_8:
      001637                        454 	.ds 3
                                    455 ;--------------------------------------------------------
                                    456 ; absolute external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XABS    (ABS,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external initialized ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XISEG   (XDATA)
      00169A                        463 _total_characters_count::
      00169A                        464 	.ds 2
                                    465 	.area HOME    (CODE)
                                    466 	.area GSINIT0 (CODE)
                                    467 	.area GSINIT1 (CODE)
                                    468 	.area GSINIT2 (CODE)
                                    469 	.area GSINIT3 (CODE)
                                    470 	.area GSINIT4 (CODE)
                                    471 	.area GSINIT5 (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area CSEG    (CODE)
                                    475 ;--------------------------------------------------------
                                    476 ; global & static initialisations
                                    477 ;--------------------------------------------------------
                                    478 	.area HOME    (CODE)
                                    479 	.area GSINIT  (CODE)
                                    480 	.area GSFINAL (CODE)
                                    481 	.area GSINIT  (CODE)
                                    482 ;--------------------------------------------------------
                                    483 ; Home
                                    484 ;--------------------------------------------------------
                                    485 	.area HOME    (CODE)
                                    486 	.area HOME    (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; code
                                    489 ;--------------------------------------------------------
                                    490 	.area CSEG    (CODE)
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'putchar'
                                    493 ;------------------------------------------------------------
                                    494 ;c                         Allocated with name '_putchar_c_65536_4'
                                    495 ;------------------------------------------------------------
                                    496 ;	uart.c:28: int putchar(int c)
                                    497 ;	-----------------------------------------
                                    498 ;	 function putchar
                                    499 ;	-----------------------------------------
      003D0F                        500 _putchar:
                           000007   501 	ar7 = 0x07
                           000006   502 	ar6 = 0x06
                           000005   503 	ar5 = 0x05
                           000004   504 	ar4 = 0x04
                           000003   505 	ar3 = 0x03
                           000002   506 	ar2 = 0x02
                           000001   507 	ar1 = 0x01
                           000000   508 	ar0 = 0x00
      003D0F AF 83            [24]  509 	mov	r7,dph
      003D11 E5 82            [12]  510 	mov	a,dpl
      003D13 90 16 35         [24]  511 	mov	dptr,#_putchar_c_65536_4
      003D16 F0               [24]  512 	movx	@dptr,a
      003D17 EF               [12]  513 	mov	a,r7
      003D18 A3               [24]  514 	inc	dptr
      003D19 F0               [24]  515 	movx	@dptr,a
                                    516 ;	uart.c:30: while(!TI); // Wait until the UART transmit buffer is ready to accept new
      003D1A                        517 00101$:
      003D1A 30 99 FD         [24]  518 	jnb	_TI,00101$
                                    519 ;	uart.c:32: SBUF = c;   // Load the character into the transmit buffer
      003D1D 90 16 35         [24]  520 	mov	dptr,#_putchar_c_65536_4
      003D20 E0               [24]  521 	movx	a,@dptr
      003D21 FE               [12]  522 	mov	r6,a
      003D22 A3               [24]  523 	inc	dptr
      003D23 E0               [24]  524 	movx	a,@dptr
      003D24 FF               [12]  525 	mov	r7,a
      003D25 8E 99            [24]  526 	mov	_SBUF,r6
                                    527 ;	uart.c:33: TI = 0;     // Clear the transmit interrupt flag to indicate data has been
                                    528 ;	assignBit
      003D27 C2 99            [12]  529 	clr	_TI
                                    530 ;	uart.c:35: return c;   // Return the character written
      003D29 8E 82            [24]  531 	mov	dpl,r6
      003D2B 8F 83            [24]  532 	mov	dph,r7
                                    533 ;	uart.c:36: }
      003D2D 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'getchar'
                                    537 ;------------------------------------------------------------
                                    538 ;	uart.c:42: int getchar(void)
                                    539 ;	-----------------------------------------
                                    540 ;	 function getchar
                                    541 ;	-----------------------------------------
      003D2E                        542 _getchar:
                                    543 ;	uart.c:44: while(!RI); // Wait until a character is received and ready to be read
      003D2E                        544 00101$:
                                    545 ;	uart.c:45: RI = 0;     // Clear the receive interrupt flag to indicate data has been
                                    546 ;	assignBit
      003D2E 10 98 02         [24]  547 	jbc	_RI,00114$
      003D31 80 FB            [24]  548 	sjmp	00101$
      003D33                        549 00114$:
                                    550 ;	uart.c:47: return SBUF; // Return the received character
      003D33 AE 99            [24]  551 	mov	r6,_SBUF
      003D35 7F 00            [12]  552 	mov	r7,#0x00
      003D37 8E 82            [24]  553 	mov	dpl,r6
      003D39 8F 83            [24]  554 	mov	dph,r7
                                    555 ;	uart.c:48: }
      003D3B 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'putstr'
                                    559 ;------------------------------------------------------------
                                    560 ;s                         Allocated with name '_putstr_s_65536_8'
                                    561 ;i                         Allocated with name '_putstr_i_65536_9'
                                    562 ;------------------------------------------------------------
                                    563 ;	uart.c:55: int putstr(char *s)
                                    564 ;	-----------------------------------------
                                    565 ;	 function putstr
                                    566 ;	-----------------------------------------
      003D3C                        567 _putstr:
      003D3C AF F0            [24]  568 	mov	r7,b
      003D3E AE 83            [24]  569 	mov	r6,dph
      003D40 E5 82            [12]  570 	mov	a,dpl
      003D42 90 16 37         [24]  571 	mov	dptr,#_putstr_s_65536_8
      003D45 F0               [24]  572 	movx	@dptr,a
      003D46 EE               [12]  573 	mov	a,r6
      003D47 A3               [24]  574 	inc	dptr
      003D48 F0               [24]  575 	movx	@dptr,a
      003D49 EF               [12]  576 	mov	a,r7
      003D4A A3               [24]  577 	inc	dptr
      003D4B F0               [24]  578 	movx	@dptr,a
                                    579 ;	uart.c:58: while (*s)
      003D4C 90 16 37         [24]  580 	mov	dptr,#_putstr_s_65536_8
      003D4F E0               [24]  581 	movx	a,@dptr
      003D50 FD               [12]  582 	mov	r5,a
      003D51 A3               [24]  583 	inc	dptr
      003D52 E0               [24]  584 	movx	a,@dptr
      003D53 FE               [12]  585 	mov	r6,a
      003D54 A3               [24]  586 	inc	dptr
      003D55 E0               [24]  587 	movx	a,@dptr
      003D56 FF               [12]  588 	mov	r7,a
      003D57 7B 00            [12]  589 	mov	r3,#0x00
      003D59 7C 00            [12]  590 	mov	r4,#0x00
      003D5B                        591 00101$:
      003D5B 8D 82            [24]  592 	mov	dpl,r5
      003D5D 8E 83            [24]  593 	mov	dph,r6
      003D5F 8F F0            [24]  594 	mov	b,r7
      003D61 12 4E 2D         [24]  595 	lcall	__gptrget
      003D64 FA               [12]  596 	mov	r2,a
      003D65 60 36            [24]  597 	jz	00108$
                                    598 ;	uart.c:60: putchar(*s++); // Output each character of the string
      003D67 0D               [12]  599 	inc	r5
      003D68 BD 00 01         [24]  600 	cjne	r5,#0x00,00116$
      003D6B 0E               [12]  601 	inc	r6
      003D6C                        602 00116$:
      003D6C 90 16 37         [24]  603 	mov	dptr,#_putstr_s_65536_8
      003D6F ED               [12]  604 	mov	a,r5
      003D70 F0               [24]  605 	movx	@dptr,a
      003D71 EE               [12]  606 	mov	a,r6
      003D72 A3               [24]  607 	inc	dptr
      003D73 F0               [24]  608 	movx	@dptr,a
      003D74 EF               [12]  609 	mov	a,r7
      003D75 A3               [24]  610 	inc	dptr
      003D76 F0               [24]  611 	movx	@dptr,a
      003D77 8A 01            [24]  612 	mov	ar1,r2
      003D79 7A 00            [12]  613 	mov	r2,#0x00
      003D7B 89 82            [24]  614 	mov	dpl,r1
      003D7D 8A 83            [24]  615 	mov	dph,r2
      003D7F C0 07            [24]  616 	push	ar7
      003D81 C0 06            [24]  617 	push	ar6
      003D83 C0 05            [24]  618 	push	ar5
      003D85 C0 04            [24]  619 	push	ar4
      003D87 C0 03            [24]  620 	push	ar3
      003D89 12 3D 0F         [24]  621 	lcall	_putchar
      003D8C D0 03            [24]  622 	pop	ar3
      003D8E D0 04            [24]  623 	pop	ar4
      003D90 D0 05            [24]  624 	pop	ar5
      003D92 D0 06            [24]  625 	pop	ar6
      003D94 D0 07            [24]  626 	pop	ar7
                                    627 ;	uart.c:61: i++;
      003D96 0B               [12]  628 	inc	r3
      003D97 BB 00 C1         [24]  629 	cjne	r3,#0x00,00101$
      003D9A 0C               [12]  630 	inc	r4
      003D9B 80 BE            [24]  631 	sjmp	00101$
      003D9D                        632 00108$:
      003D9D 90 16 37         [24]  633 	mov	dptr,#_putstr_s_65536_8
      003DA0 ED               [12]  634 	mov	a,r5
      003DA1 F0               [24]  635 	movx	@dptr,a
      003DA2 EE               [12]  636 	mov	a,r6
      003DA3 A3               [24]  637 	inc	dptr
      003DA4 F0               [24]  638 	movx	@dptr,a
      003DA5 EF               [12]  639 	mov	a,r7
      003DA6 A3               [24]  640 	inc	dptr
      003DA7 F0               [24]  641 	movx	@dptr,a
                                    642 ;	uart.c:63: return i + 1; // Return the total number of characters sent, including the
      003DA8 0B               [12]  643 	inc	r3
      003DA9 BB 00 01         [24]  644 	cjne	r3,#0x00,00118$
      003DAC 0C               [12]  645 	inc	r4
      003DAD                        646 00118$:
      003DAD 8B 82            [24]  647 	mov	dpl,r3
      003DAF 8C 83            [24]  648 	mov	dph,r4
                                    649 ;	uart.c:65: }
      003DB1 22               [24]  650 	ret
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'echo'
                                    653 ;------------------------------------------------------------
                                    654 ;ch                        Allocated with name '_echo_ch_65536_11'
                                    655 ;------------------------------------------------------------
                                    656 ;	uart.c:71: int8_t echo()
                                    657 ;	-----------------------------------------
                                    658 ;	 function echo
                                    659 ;	-----------------------------------------
      003DB2                        660 _echo:
                                    661 ;	uart.c:73: int8_t ch = getchar(); // Read a character from the UART
      003DB2 12 3D 2E         [24]  662 	lcall	_getchar
      003DB5 AE 82            [24]  663 	mov	r6,dpl
                                    664 ;	uart.c:74: total_characters_count++;
      003DB7 90 16 9A         [24]  665 	mov	dptr,#_total_characters_count
      003DBA E0               [24]  666 	movx	a,@dptr
      003DBB 24 01            [12]  667 	add	a,#0x01
      003DBD F0               [24]  668 	movx	@dptr,a
      003DBE A3               [24]  669 	inc	dptr
      003DBF E0               [24]  670 	movx	a,@dptr
      003DC0 34 00            [12]  671 	addc	a,#0x00
      003DC2 F0               [24]  672 	movx	@dptr,a
                                    673 ;	uart.c:75: putchar(ch);           // Output the character, providing an echo effect
      003DC3 EE               [12]  674 	mov	a,r6
      003DC4 FD               [12]  675 	mov	r5,a
      003DC5 33               [12]  676 	rlc	a
      003DC6 95 E0            [12]  677 	subb	a,acc
      003DC8 FF               [12]  678 	mov	r7,a
      003DC9 8D 82            [24]  679 	mov	dpl,r5
      003DCB 8F 83            [24]  680 	mov	dph,r7
      003DCD C0 06            [24]  681 	push	ar6
      003DCF 12 3D 0F         [24]  682 	lcall	_putchar
      003DD2 D0 06            [24]  683 	pop	ar6
                                    684 ;	uart.c:76: return ch;             // Return the character read
      003DD4 8E 82            [24]  685 	mov	dpl,r6
                                    686 ;	uart.c:77: }
      003DD6 22               [24]  687 	ret
                                    688 	.area CSEG    (CODE)
                                    689 	.area CONST   (CODE)
                                    690 	.area XINIT   (CODE)
      00531D                        691 __xinit__total_characters_count:
      00531D 00 00                  692 	.byte #0x00, #0x00	;  0
                                    693 	.area CABS    (ABS,CODE)
