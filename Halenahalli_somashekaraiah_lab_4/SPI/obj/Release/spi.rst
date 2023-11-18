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
      000038                        433 _spi_single_value_cmd_data_65536_27:
      000038                        434 	.ds 2
                                    435 ;--------------------------------------------------------
                                    436 ; indirectly addressable internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area ISEG    (DATA)
                                    439 ;--------------------------------------------------------
                                    440 ; absolute internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area IABS    (ABS,DATA)
                                    443 	.area IABS    (ABS,DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; bit data
                                    446 ;--------------------------------------------------------
                                    447 	.area BSEG    (BIT)
                                    448 ;--------------------------------------------------------
                                    449 ; paged external ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area PSEG    (PAG,XDATA)
                                    452 ;--------------------------------------------------------
                                    453 ; external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area XSEG    (XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XABS    (ABS,XDATA)
                                    460 ;--------------------------------------------------------
                                    461 ; external initialized ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XISEG   (XDATA)
                                    464 	.area HOME    (CODE)
                                    465 	.area GSINIT0 (CODE)
                                    466 	.area GSINIT1 (CODE)
                                    467 	.area GSINIT2 (CODE)
                                    468 	.area GSINIT3 (CODE)
                                    469 	.area GSINIT4 (CODE)
                                    470 	.area GSINIT5 (CODE)
                                    471 	.area GSINIT  (CODE)
                                    472 	.area GSFINAL (CODE)
                                    473 	.area CSEG    (CODE)
                                    474 ;--------------------------------------------------------
                                    475 ; global & static initialisations
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area GSINIT  (CODE)
                                    479 	.area GSFINAL (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 ;--------------------------------------------------------
                                    482 ; Home
                                    483 ;--------------------------------------------------------
                                    484 	.area HOME    (CODE)
                                    485 	.area HOME    (CODE)
                                    486 ;--------------------------------------------------------
                                    487 ; code
                                    488 ;--------------------------------------------------------
                                    489 	.area CSEG    (CODE)
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'spi_init'
                                    492 ;------------------------------------------------------------
                                    493 ;	spi.c:13: void spi_init() {
                                    494 ;	-----------------------------------------
                                    495 ;	 function spi_init
                                    496 ;	-----------------------------------------
      005135                        497 _spi_init:
                           000007   498 	ar7 = 0x07
                           000006   499 	ar6 = 0x06
                           000005   500 	ar5 = 0x05
                           000004   501 	ar4 = 0x04
                           000003   502 	ar3 = 0x03
                           000002   503 	ar2 = 0x02
                           000001   504 	ar1 = 0x01
                           000000   505 	ar0 = 0x00
                                    506 ;	spi.c:14: printf("DAC\n\r");
      005135 74 E7            [12]  507 	mov	a,#___str_0
      005137 C0 E0            [24]  508 	push	acc
      005139 74 5C            [12]  509 	mov	a,#(___str_0 >> 8)
      00513B C0 E0            [24]  510 	push	acc
      00513D 74 80            [12]  511 	mov	a,#0x80
      00513F C0 E0            [24]  512 	push	acc
      005141 12 54 A4         [24]  513 	lcall	_printf
      005144 15 81            [12]  514 	dec	sp
      005146 15 81            [12]  515 	dec	sp
      005148 15 81            [12]  516 	dec	sp
                                    517 ;	spi.c:15: SPCON |= SPR1 | SPR0; // Set baud rate for 57600
      00514A 43 C3 03         [24]  518 	orl	_SPCON,#0x03
                                    519 ;	spi.c:16: SPCON |= CPHA;               // Set clock phase to falling edge
      00514D 43 C3 04         [24]  520 	orl	_SPCON,#0x04
                                    521 ;	spi.c:17: SPCON |= MSTR;               // Set MCU as SPI master
      005150 43 C3 10         [24]  522 	orl	_SPCON,#0x10
                                    523 ;	spi.c:18: SPCON |= SSDIS;              // Disable /SS in master and slave modes
      005153 43 C3 20         [24]  524 	orl	_SPCON,#0x20
                                    525 ;	spi.c:19: SPCON |= SPEN;               // Enable SPI transmission
      005156 43 C3 40         [24]  526 	orl	_SPCON,#0x40
                                    527 ;	spi.c:20: }
      005159 22               [24]  528 	ret
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'spi_wave_generator'
                                    531 ;------------------------------------------------------------
                                    532 ;t                         Allocated to registers r4 r5 r6 r7 
                                    533 ;i                         Allocated to registers r2 r3 
                                    534 ;j                         Allocated to registers r2 r3 
                                    535 ;------------------------------------------------------------
                                    536 ;	spi.c:31: void spi_wave_generator() {
                                    537 ;	-----------------------------------------
                                    538 ;	 function spi_wave_generator
                                    539 ;	-----------------------------------------
      00515A                        540 _spi_wave_generator:
                                    541 ;	spi.c:33: while (t) {
      00515A 7C E8            [12]  542 	mov	r4,#0xe8
      00515C 7D 03            [12]  543 	mov	r5,#0x03
      00515E 7E 00            [12]  544 	mov	r6,#0x00
      005160 7F 00            [12]  545 	mov	r7,#0x00
      005162                        546 00103$:
      005162 EC               [12]  547 	mov	a,r4
      005163 4D               [12]  548 	orl	a,r5
      005164 4E               [12]  549 	orl	a,r6
      005165 4F               [12]  550 	orl	a,r7
      005166 60 73            [24]  551 	jz	00112$
                                    552 ;	spi.c:35: for (uint16_t i = 0; i <= 255; i++) {
      005168 7A 00            [12]  553 	mov	r2,#0x00
      00516A 7B 00            [12]  554 	mov	r3,#0x00
      00516C                        555 00107$:
      00516C 8A 00            [24]  556 	mov	ar0,r2
      00516E 8B 01            [24]  557 	mov	ar1,r3
      005170 C3               [12]  558 	clr	c
      005171 74 FF            [12]  559 	mov	a,#0xff
      005173 98               [12]  560 	subb	a,r0
      005174 E4               [12]  561 	clr	a
      005175 99               [12]  562 	subb	a,r1
      005176 40 24            [24]  563 	jc	00101$
                                    564 ;	spi.c:36: spi_single_value(i);
      005178 8A 82            [24]  565 	mov	dpl,r2
      00517A C0 07            [24]  566 	push	ar7
      00517C C0 06            [24]  567 	push	ar6
      00517E C0 05            [24]  568 	push	ar5
      005180 C0 04            [24]  569 	push	ar4
      005182 C0 03            [24]  570 	push	ar3
      005184 C0 02            [24]  571 	push	ar2
      005186 12 51 DC         [24]  572 	lcall	_spi_single_value
      005189 D0 02            [24]  573 	pop	ar2
      00518B D0 03            [24]  574 	pop	ar3
      00518D D0 04            [24]  575 	pop	ar4
      00518F D0 05            [24]  576 	pop	ar5
      005191 D0 06            [24]  577 	pop	ar6
      005193 D0 07            [24]  578 	pop	ar7
                                    579 ;	spi.c:35: for (uint16_t i = 0; i <= 255; i++) {
      005195 0A               [12]  580 	inc	r2
      005196 BA 00 D3         [24]  581 	cjne	r2,#0x00,00107$
      005199 0B               [12]  582 	inc	r3
      00519A 80 D0            [24]  583 	sjmp	00107$
      00519C                        584 00101$:
                                    585 ;	spi.c:40: for (int16_t j = 255; j >= 0 ; j--) {
      00519C 7A FF            [12]  586 	mov	r2,#0xff
      00519E 7B 00            [12]  587 	mov	r3,#0x00
      0051A0                        588 00110$:
      0051A0 8A 00            [24]  589 	mov	ar0,r2
      0051A2 8B 01            [24]  590 	mov	ar1,r3
      0051A4 E9               [12]  591 	mov	a,r1
      0051A5 20 E7 24         [24]  592 	jb	acc.7,00102$
                                    593 ;	spi.c:41: spi_single_value(j);
      0051A8 8A 82            [24]  594 	mov	dpl,r2
      0051AA C0 07            [24]  595 	push	ar7
      0051AC C0 06            [24]  596 	push	ar6
      0051AE C0 05            [24]  597 	push	ar5
      0051B0 C0 04            [24]  598 	push	ar4
      0051B2 C0 03            [24]  599 	push	ar3
      0051B4 C0 02            [24]  600 	push	ar2
      0051B6 12 51 DC         [24]  601 	lcall	_spi_single_value
      0051B9 D0 02            [24]  602 	pop	ar2
      0051BB D0 03            [24]  603 	pop	ar3
      0051BD D0 04            [24]  604 	pop	ar4
      0051BF D0 05            [24]  605 	pop	ar5
      0051C1 D0 06            [24]  606 	pop	ar6
      0051C3 D0 07            [24]  607 	pop	ar7
                                    608 ;	spi.c:40: for (int16_t j = 255; j >= 0 ; j--) {
      0051C5 1A               [12]  609 	dec	r2
      0051C6 BA FF 01         [24]  610 	cjne	r2,#0xff,00145$
      0051C9 1B               [12]  611 	dec	r3
      0051CA                        612 00145$:
      0051CA 80 D4            [24]  613 	sjmp	00110$
      0051CC                        614 00102$:
                                    615 ;	spi.c:43: t--; // Decrement the repetition counter
      0051CC 1C               [12]  616 	dec	r4
      0051CD BC FF 09         [24]  617 	cjne	r4,#0xff,00146$
      0051D0 1D               [12]  618 	dec	r5
      0051D1 BD FF 05         [24]  619 	cjne	r5,#0xff,00146$
      0051D4 1E               [12]  620 	dec	r6
      0051D5 BE FF 01         [24]  621 	cjne	r6,#0xff,00146$
      0051D8 1F               [12]  622 	dec	r7
      0051D9                        623 00146$:
      0051D9 80 87            [24]  624 	sjmp	00103$
      0051DB                        625 00112$:
                                    626 ;	spi.c:45: }
      0051DB 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'spi_single_value'
                                    630 ;------------------------------------------------------------
                                    631 ;level                     Allocated to registers r7 
                                    632 ;cmd_data                  Allocated with name '_spi_single_value_cmd_data_65536_27'
                                    633 ;c                         Allocated to registers 
                                    634 ;------------------------------------------------------------
                                    635 ;	spi.c:56: void spi_single_value(uint8_t level) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function spi_single_value
                                    638 ;	-----------------------------------------
      0051DC                        639 _spi_single_value:
      0051DC AF 82            [24]  640 	mov	r7,dpl
                                    641 ;	spi.c:57: uint16_t cmd_data =  level;
      0051DE 7E 00            [12]  642 	mov	r6,#0x00
      0051E0 8F 38            [24]  643 	mov	_spi_single_value_cmd_data_65536_27,r7
                                    644 ;	spi.c:58: cmd_data = (cmd_data << 4) | 0x1000;
      0051E2 EE               [12]  645 	mov	a,r6
      0051E3 F5 39            [12]  646 	mov	(_spi_single_value_cmd_data_65536_27 + 1),a
      0051E5 C4               [12]  647 	swap	a
      0051E6 54 F0            [12]  648 	anl	a,#0xf0
      0051E8 CF               [12]  649 	xch	a,r7
      0051E9 C4               [12]  650 	swap	a
      0051EA CF               [12]  651 	xch	a,r7
      0051EB 6F               [12]  652 	xrl	a,r7
      0051EC CF               [12]  653 	xch	a,r7
      0051ED 54 F0            [12]  654 	anl	a,#0xf0
      0051EF CF               [12]  655 	xch	a,r7
      0051F0 6F               [12]  656 	xrl	a,r7
      0051F1 FE               [12]  657 	mov	r6,a
      0051F2 43 06 10         [24]  658 	orl	ar6,#0x10
      0051F5 8F 38            [24]  659 	mov	_spi_single_value_cmd_data_65536_27,r7
      0051F7 8E 39            [24]  660 	mov	(_spi_single_value_cmd_data_65536_27 + 1),r6
                                    661 ;	spi.c:59: uint8_t * c = &cmd_data;
                                    662 ;	spi.c:60: CS = 0;          // Select the SPI device (assert CS low)
                                    663 ;	assignBit
      0051F9 C2 94            [12]  664 	clr	_P1_4
                                    665 ;	spi.c:61: SPDAT = c[1];    // Send Instruction to SPI
      0051FB 90 00 39         [24]  666 	mov	dptr,#(_spi_single_value_cmd_data_65536_27 + 0x0001)
      0051FE 75 F0 40         [24]  667 	mov	b,#0x40
      005201 12 5B E8         [24]  668 	lcall	__gptrget
      005204 F5 C5            [12]  669 	mov	_SPDAT,a
                                    670 ;	spi.c:62: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
      005206                        671 00101$:
      005206 E5 C4            [12]  672 	mov	a,_SPSTA
      005208 30 E7 FB         [24]  673 	jnb	acc.7,00101$
                                    674 ;	spi.c:63: SPDAT = c[0];    // Send data to SPI
      00520B 85 38 C5         [24]  675 	mov	_SPDAT,_spi_single_value_cmd_data_65536_27
                                    676 ;	spi.c:64: while (!(SPSTA & SPIF)) ; // Wait for SPI transmission to complete
      00520E                        677 00104$:
      00520E E5 C4            [12]  678 	mov	a,_SPSTA
      005210 30 E7 FB         [24]  679 	jnb	acc.7,00104$
                                    680 ;	spi.c:65: CS = 1;          // Deselect the SPI device (assert CS high)
                                    681 ;	assignBit
      005213 D2 94            [12]  682 	setb	_P1_4
                                    683 ;	spi.c:66: }
      005215 22               [24]  684 	ret
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'get_hex_value'
                                    687 ;------------------------------------------------------------
                                    688 ;value                     Allocated to registers r7 
                                    689 ;i                         Allocated to registers r5 r6 
                                    690 ;char_received             Allocated to registers r3 
                                    691 ;------------------------------------------------------------
                                    692 ;	spi.c:73: uint8_t get_hex_value(){
                                    693 ;	-----------------------------------------
                                    694 ;	 function get_hex_value
                                    695 ;	-----------------------------------------
      005216                        696 _get_hex_value:
                                    697 ;	spi.c:74: uint8_t value = 0;
      005216 7F 00            [12]  698 	mov	r7,#0x00
                                    699 ;	spi.c:75: for(int i = 0; i < 2; i++){
      005218 7D 00            [12]  700 	mov	r5,#0x00
      00521A 7E 00            [12]  701 	mov	r6,#0x00
      00521C                        702 00125$:
      00521C C3               [12]  703 	clr	c
      00521D ED               [12]  704 	mov	a,r5
      00521E 94 02            [12]  705 	subb	a,#0x02
      005220 EE               [12]  706 	mov	a,r6
      005221 64 80            [12]  707 	xrl	a,#0x80
      005223 94 80            [12]  708 	subb	a,#0x80
      005225 40 03            [24]  709 	jc	00183$
      005227 02 52 DF         [24]  710 	ljmp	00123$
      00522A                        711 00183$:
                                    712 ;	spi.c:76: if(i == 0) printf_tiny("0x");
      00522A ED               [12]  713 	mov	a,r5
      00522B 4E               [12]  714 	orl	a,r6
      00522C 70 1B            [24]  715 	jnz	00102$
      00522E C0 07            [24]  716 	push	ar7
      005230 C0 06            [24]  717 	push	ar6
      005232 C0 05            [24]  718 	push	ar5
      005234 74 ED            [12]  719 	mov	a,#___str_1
      005236 C0 E0            [24]  720 	push	acc
      005238 74 5C            [12]  721 	mov	a,#(___str_1 >> 8)
      00523A C0 E0            [24]  722 	push	acc
      00523C 12 53 73         [24]  723 	lcall	_printf_tiny
      00523F 15 81            [12]  724 	dec	sp
      005241 15 81            [12]  725 	dec	sp
      005243 D0 05            [24]  726 	pop	ar5
      005245 D0 06            [24]  727 	pop	ar6
      005247 D0 07            [24]  728 	pop	ar7
      005249                        729 00102$:
                                    730 ;	spi.c:77: uint8_t char_received = echo(); // Read a character from UART
      005249 C0 07            [24]  731 	push	ar7
      00524B C0 06            [24]  732 	push	ar6
      00524D C0 05            [24]  733 	push	ar5
      00524F 12 53 5A         [24]  734 	lcall	_echo
      005252 AC 82            [24]  735 	mov	r4,dpl
      005254 D0 05            [24]  736 	pop	ar5
      005256 D0 06            [24]  737 	pop	ar6
      005258 D0 07            [24]  738 	pop	ar7
                                    739 ;	spi.c:78: if((char_received >= '0') && (char_received <= '9')){
      00525A BC 30 00         [24]  740 	cjne	r4,#0x30,00185$
      00525D                        741 00185$:
      00525D 40 0D            [24]  742 	jc	00116$
      00525F EC               [12]  743 	mov	a,r4
      005260 24 C6            [12]  744 	add	a,#0xff - 0x39
      005262 40 08            [24]  745 	jc	00116$
                                    746 ;	spi.c:79: char_received = char_received - '0'; // Convert ASCII character to its
      005264 8C 03            [24]  747 	mov	ar3,r4
      005266 EB               [12]  748 	mov	a,r3
      005267 24 D0            [12]  749 	add	a,#0xd0
      005269 FB               [12]  750 	mov	r3,a
      00526A 80 59            [24]  751 	sjmp	00117$
      00526C                        752 00116$:
                                    753 ;	spi.c:81: }else if((char_received >= 'A') && (char_received <= 'F')){
      00526C BC 41 00         [24]  754 	cjne	r4,#0x41,00188$
      00526F                        755 00188$:
      00526F 40 0D            [24]  756 	jc	00112$
      005271 EC               [12]  757 	mov	a,r4
      005272 24 B9            [12]  758 	add	a,#0xff - 0x46
      005274 40 08            [24]  759 	jc	00112$
                                    760 ;	spi.c:82: char_received = char_received - 'A' + 10; // Convert ASCII character to its
      005276 8C 02            [24]  761 	mov	ar2,r4
      005278 74 C9            [12]  762 	mov	a,#0xc9
      00527A 2A               [12]  763 	add	a,r2
      00527B FB               [12]  764 	mov	r3,a
      00527C 80 47            [24]  765 	sjmp	00117$
      00527E                        766 00112$:
                                    767 ;	spi.c:84: }else if((char_received >= 'a') && (char_received <= 'f')){
      00527E BC 61 00         [24]  768 	cjne	r4,#0x61,00191$
      005281                        769 00191$:
      005281 40 0D            [24]  770 	jc	00108$
      005283 EC               [12]  771 	mov	a,r4
      005284 24 99            [12]  772 	add	a,#0xff - 0x66
      005286 40 08            [24]  773 	jc	00108$
                                    774 ;	spi.c:85: char_received = char_received - 'a' + 10; // Convert ASCII character to its
      005288 8C 02            [24]  775 	mov	ar2,r4
      00528A 74 A9            [12]  776 	mov	a,#0xa9
      00528C 2A               [12]  777 	add	a,r2
      00528D FB               [12]  778 	mov	r3,a
      00528E 80 35            [24]  779 	sjmp	00117$
      005290                        780 00108$:
                                    781 ;	spi.c:87: }else if((char_received == '\n') || (char_received == '\r')){
      005290 BC 0A 02         [24]  782 	cjne	r4,#0x0a,00194$
      005293 80 03            [24]  783 	sjmp	00103$
      005295                        784 00194$:
      005295 BC 0D 16         [24]  785 	cjne	r4,#0x0d,00104$
      005298                        786 00103$:
                                    787 ;	spi.c:88: printf_tiny("\n\r");
      005298 C0 07            [24]  788 	push	ar7
      00529A 74 F0            [12]  789 	mov	a,#___str_2
      00529C C0 E0            [24]  790 	push	acc
      00529E 74 5C            [12]  791 	mov	a,#(___str_2 >> 8)
      0052A0 C0 E0            [24]  792 	push	acc
      0052A2 12 53 73         [24]  793 	lcall	_printf_tiny
      0052A5 15 81            [12]  794 	dec	sp
      0052A7 15 81            [12]  795 	dec	sp
      0052A9 D0 07            [24]  796 	pop	ar7
                                    797 ;	spi.c:89: return value;
      0052AB 8F 82            [24]  798 	mov	dpl,r7
      0052AD 22               [24]  799 	ret
      0052AE                        800 00104$:
                                    801 ;	spi.c:91: printf_tiny("-->Invalid input\n\r");
      0052AE 74 F3            [12]  802 	mov	a,#___str_3
      0052B0 C0 E0            [24]  803 	push	acc
      0052B2 74 5C            [12]  804 	mov	a,#(___str_3 >> 8)
      0052B4 C0 E0            [24]  805 	push	acc
      0052B6 12 53 73         [24]  806 	lcall	_printf_tiny
      0052B9 15 81            [12]  807 	dec	sp
      0052BB 15 81            [12]  808 	dec	sp
                                    809 ;	spi.c:92: i = -1;
      0052BD 7D FF            [12]  810 	mov	r5,#0xff
      0052BF 7E FF            [12]  811 	mov	r6,#0xff
                                    812 ;	spi.c:93: value = 0;
      0052C1 7F 00            [12]  813 	mov	r7,#0x00
                                    814 ;	spi.c:94: continue;
      0052C3 80 12            [24]  815 	sjmp	00122$
      0052C5                        816 00117$:
                                    817 ;	spi.c:96: if(i == 0){
      0052C5 ED               [12]  818 	mov	a,r5
      0052C6 4E               [12]  819 	orl	a,r6
      0052C7 70 05            [24]  820 	jnz	00120$
                                    821 ;	spi.c:97: value |= char_received;
      0052C9 EB               [12]  822 	mov	a,r3
      0052CA 42 07            [12]  823 	orl	ar7,a
      0052CC 80 09            [24]  824 	sjmp	00122$
      0052CE                        825 00120$:
                                    826 ;	spi.c:99: value = (value << 4) | char_received;
      0052CE 8F 04            [24]  827 	mov	ar4,r7
      0052D0 EC               [12]  828 	mov	a,r4
      0052D1 C4               [12]  829 	swap	a
      0052D2 54 F0            [12]  830 	anl	a,#0xf0
      0052D4 FC               [12]  831 	mov	r4,a
      0052D5 4B               [12]  832 	orl	a,r3
      0052D6 FF               [12]  833 	mov	r7,a
      0052D7                        834 00122$:
                                    835 ;	spi.c:75: for(int i = 0; i < 2; i++){
      0052D7 0D               [12]  836 	inc	r5
      0052D8 BD 00 01         [24]  837 	cjne	r5,#0x00,00198$
      0052DB 0E               [12]  838 	inc	r6
      0052DC                        839 00198$:
      0052DC 02 52 1C         [24]  840 	ljmp	00125$
      0052DF                        841 00123$:
                                    842 ;	spi.c:102: printf_tiny("\n\r");
      0052DF C0 07            [24]  843 	push	ar7
      0052E1 74 F0            [12]  844 	mov	a,#___str_2
      0052E3 C0 E0            [24]  845 	push	acc
      0052E5 74 5C            [12]  846 	mov	a,#(___str_2 >> 8)
      0052E7 C0 E0            [24]  847 	push	acc
      0052E9 12 53 73         [24]  848 	lcall	_printf_tiny
      0052EC 15 81            [12]  849 	dec	sp
      0052EE 15 81            [12]  850 	dec	sp
      0052F0 D0 07            [24]  851 	pop	ar7
                                    852 ;	spi.c:103: return value;
      0052F2 8F 82            [24]  853 	mov	dpl,r7
                                    854 ;	spi.c:104: }
      0052F4 22               [24]  855 	ret
                                    856 	.area CSEG    (CODE)
                                    857 	.area CONST   (CODE)
                                    858 	.area CONST   (CODE)
      005CE7                        859 ___str_0:
      005CE7 44 41 43               860 	.ascii "DAC"
      005CEA 0A                     861 	.db 0x0a
      005CEB 0D                     862 	.db 0x0d
      005CEC 00                     863 	.db 0x00
                                    864 	.area CSEG    (CODE)
                                    865 	.area CONST   (CODE)
      005CED                        866 ___str_1:
      005CED 30 78                  867 	.ascii "0x"
      005CEF 00                     868 	.db 0x00
                                    869 	.area CSEG    (CODE)
                                    870 	.area CONST   (CODE)
      005CF0                        871 ___str_2:
      005CF0 0A                     872 	.db 0x0a
      005CF1 0D                     873 	.db 0x0d
      005CF2 00                     874 	.db 0x00
                                    875 	.area CSEG    (CODE)
                                    876 	.area CONST   (CODE)
      005CF3                        877 ___str_3:
      005CF3 2D 2D 3E 49 6E 76 61   878 	.ascii "-->Invalid input"
             6C 69 64 20 69 6E 70
             75 74
      005D03 0A                     879 	.db 0x0a
      005D04 0D                     880 	.db 0x0d
      005D05 00                     881 	.db 0x00
                                    882 	.area CSEG    (CODE)
                                    883 	.area XINIT   (CODE)
                                    884 	.area CABS    (ABS,CODE)
