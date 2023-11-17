                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _isr_timer2
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _menu
                                     15 	.globl _timer2_interrupt_Init
                                     16 	.globl _process_custom_character
                                     17 	.globl _cgram_hex_dump
                                     18 	.globl _ddram_hex_dump
                                     19 	.globl _arrow_set
                                     20 	.globl _menu_lcd
                                     21 	.globl _clock_run
                                     22 	.globl _reset_clock
                                     23 	.globl _test_functionality
                                     24 	.globl _lcdinit
                                     25 	.globl _lcdputch
                                     26 	.globl _lcdgotoxy
                                     27 	.globl _echo
                                     28 	.globl _printf_tiny
                                     29 	.globl _TF1
                                     30 	.globl _TR1
                                     31 	.globl _TF0
                                     32 	.globl _TR0
                                     33 	.globl _IE1
                                     34 	.globl _IT1
                                     35 	.globl _IE0
                                     36 	.globl _IT0
                                     37 	.globl _SM0
                                     38 	.globl _SM1
                                     39 	.globl _SM2
                                     40 	.globl _REN
                                     41 	.globl _TB8
                                     42 	.globl _RB8
                                     43 	.globl _TI
                                     44 	.globl _RI
                                     45 	.globl _CY
                                     46 	.globl _AC
                                     47 	.globl _F0
                                     48 	.globl _RS1
                                     49 	.globl _RS0
                                     50 	.globl _OV
                                     51 	.globl _F1
                                     52 	.globl _P
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD0
                                     60 	.globl _TXD
                                     61 	.globl _RXD0
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _PS
                                     96 	.globl _PT1
                                     97 	.globl _PX1
                                     98 	.globl _PT0
                                     99 	.globl _PX0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _BREG_F7
                                    107 	.globl _BREG_F6
                                    108 	.globl _BREG_F5
                                    109 	.globl _BREG_F4
                                    110 	.globl _BREG_F3
                                    111 	.globl _BREG_F2
                                    112 	.globl _BREG_F1
                                    113 	.globl _BREG_F0
                                    114 	.globl _P5_7
                                    115 	.globl _P5_6
                                    116 	.globl _P5_5
                                    117 	.globl _P5_4
                                    118 	.globl _P5_3
                                    119 	.globl _P5_2
                                    120 	.globl _P5_1
                                    121 	.globl _P5_0
                                    122 	.globl _P4_7
                                    123 	.globl _P4_6
                                    124 	.globl _P4_5
                                    125 	.globl _P4_4
                                    126 	.globl _P4_3
                                    127 	.globl _P4_2
                                    128 	.globl _P4_1
                                    129 	.globl _P4_0
                                    130 	.globl _PX0L
                                    131 	.globl _PT0L
                                    132 	.globl _PX1L
                                    133 	.globl _PT1L
                                    134 	.globl _PSL
                                    135 	.globl _PT2L
                                    136 	.globl _PPCL
                                    137 	.globl _EC
                                    138 	.globl _CCF0
                                    139 	.globl _CCF1
                                    140 	.globl _CCF2
                                    141 	.globl _CCF3
                                    142 	.globl _CCF4
                                    143 	.globl _CR
                                    144 	.globl _CF
                                    145 	.globl _TF2
                                    146 	.globl _EXF2
                                    147 	.globl _RCLK
                                    148 	.globl _TCLK
                                    149 	.globl _EXEN2
                                    150 	.globl _TR2
                                    151 	.globl _C_T2
                                    152 	.globl _CP_RL2
                                    153 	.globl _T2CON_7
                                    154 	.globl _T2CON_6
                                    155 	.globl _T2CON_5
                                    156 	.globl _T2CON_4
                                    157 	.globl _T2CON_3
                                    158 	.globl _T2CON_2
                                    159 	.globl _T2CON_1
                                    160 	.globl _T2CON_0
                                    161 	.globl _PT2
                                    162 	.globl _ET2
                                    163 	.globl _TMOD
                                    164 	.globl _TL1
                                    165 	.globl _TL0
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TCON
                                    169 	.globl _SP
                                    170 	.globl _SCON
                                    171 	.globl _SBUF0
                                    172 	.globl _SBUF
                                    173 	.globl _PSW
                                    174 	.globl _PCON
                                    175 	.globl _P3
                                    176 	.globl _P2
                                    177 	.globl _P1
                                    178 	.globl _P0
                                    179 	.globl _IP
                                    180 	.globl _IE
                                    181 	.globl _DP0L
                                    182 	.globl _DPL
                                    183 	.globl _DP0H
                                    184 	.globl _DPH
                                    185 	.globl _B
                                    186 	.globl _ACC
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                           000083   296 _DPH	=	0x0083
                           000083   297 _DP0H	=	0x0083
                           000082   298 _DPL	=	0x0082
                           000082   299 _DP0L	=	0x0082
                           0000A8   300 _IE	=	0x00a8
                           0000B8   301 _IP	=	0x00b8
                           000080   302 _P0	=	0x0080
                           000090   303 _P1	=	0x0090
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000087   306 _PCON	=	0x0087
                           0000D0   307 _PSW	=	0x00d0
                           000099   308 _SBUF	=	0x0099
                           000099   309 _SBUF0	=	0x0099
                           000098   310 _SCON	=	0x0098
                           000081   311 _SP	=	0x0081
                           000088   312 _TCON	=	0x0088
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           00008A   315 _TL0	=	0x008a
                           00008B   316 _TL1	=	0x008b
                           000089   317 _TMOD	=	0x0089
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                           0000AD   323 _ET2	=	0x00ad
                           0000BD   324 _PT2	=	0x00bd
                           0000C8   325 _T2CON_0	=	0x00c8
                           0000C9   326 _T2CON_1	=	0x00c9
                           0000CA   327 _T2CON_2	=	0x00ca
                           0000CB   328 _T2CON_3	=	0x00cb
                           0000CC   329 _T2CON_4	=	0x00cc
                           0000CD   330 _T2CON_5	=	0x00cd
                           0000CE   331 _T2CON_6	=	0x00ce
                           0000CF   332 _T2CON_7	=	0x00cf
                           0000C8   333 _CP_RL2	=	0x00c8
                           0000C9   334 _C_T2	=	0x00c9
                           0000CA   335 _TR2	=	0x00ca
                           0000CB   336 _EXEN2	=	0x00cb
                           0000CC   337 _TCLK	=	0x00cc
                           0000CD   338 _RCLK	=	0x00cd
                           0000CE   339 _EXF2	=	0x00ce
                           0000CF   340 _TF2	=	0x00cf
                           0000DF   341 _CF	=	0x00df
                           0000DE   342 _CR	=	0x00de
                           0000DC   343 _CCF4	=	0x00dc
                           0000DB   344 _CCF3	=	0x00db
                           0000DA   345 _CCF2	=	0x00da
                           0000D9   346 _CCF1	=	0x00d9
                           0000D8   347 _CCF0	=	0x00d8
                           0000AE   348 _EC	=	0x00ae
                           0000BE   349 _PPCL	=	0x00be
                           0000BD   350 _PT2L	=	0x00bd
                           0000BC   351 _PSL	=	0x00bc
                           0000BB   352 _PT1L	=	0x00bb
                           0000BA   353 _PX1L	=	0x00ba
                           0000B9   354 _PT0L	=	0x00b9
                           0000B8   355 _PX0L	=	0x00b8
                           0000C0   356 _P4_0	=	0x00c0
                           0000C1   357 _P4_1	=	0x00c1
                           0000C2   358 _P4_2	=	0x00c2
                           0000C3   359 _P4_3	=	0x00c3
                           0000C4   360 _P4_4	=	0x00c4
                           0000C5   361 _P4_5	=	0x00c5
                           0000C6   362 _P4_6	=	0x00c6
                           0000C7   363 _P4_7	=	0x00c7
                           0000E8   364 _P5_0	=	0x00e8
                           0000E9   365 _P5_1	=	0x00e9
                           0000EA   366 _P5_2	=	0x00ea
                           0000EB   367 _P5_3	=	0x00eb
                           0000EC   368 _P5_4	=	0x00ec
                           0000ED   369 _P5_5	=	0x00ed
                           0000EE   370 _P5_6	=	0x00ee
                           0000EF   371 _P5_7	=	0x00ef
                           0000F0   372 _BREG_F0	=	0x00f0
                           0000F1   373 _BREG_F1	=	0x00f1
                           0000F2   374 _BREG_F2	=	0x00f2
                           0000F3   375 _BREG_F3	=	0x00f3
                           0000F4   376 _BREG_F4	=	0x00f4
                           0000F5   377 _BREG_F5	=	0x00f5
                           0000F6   378 _BREG_F6	=	0x00f6
                           0000F7   379 _BREG_F7	=	0x00f7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B8   386 _PX0	=	0x00b8
                           0000B9   387 _PT0	=	0x00b9
                           0000BA   388 _PX1	=	0x00ba
                           0000BB   389 _PT1	=	0x00bb
                           0000BC   390 _PS	=	0x00bc
                           000080   391 _P0_0	=	0x0080
                           000081   392 _P0_1	=	0x0081
                           000082   393 _P0_2	=	0x0082
                           000083   394 _P0_3	=	0x0083
                           000084   395 _P0_4	=	0x0084
                           000085   396 _P0_5	=	0x0085
                           000086   397 _P0_6	=	0x0086
                           000087   398 _P0_7	=	0x0087
                           000090   399 _P1_0	=	0x0090
                           000091   400 _P1_1	=	0x0091
                           000092   401 _P1_2	=	0x0092
                           000093   402 _P1_3	=	0x0093
                           000094   403 _P1_4	=	0x0094
                           000095   404 _P1_5	=	0x0095
                           000096   405 _P1_6	=	0x0096
                           000097   406 _P1_7	=	0x0097
                           0000A0   407 _P2_0	=	0x00a0
                           0000A1   408 _P2_1	=	0x00a1
                           0000A2   409 _P2_2	=	0x00a2
                           0000A3   410 _P2_3	=	0x00a3
                           0000A4   411 _P2_4	=	0x00a4
                           0000A5   412 _P2_5	=	0x00a5
                           0000A6   413 _P2_6	=	0x00a6
                           0000A7   414 _P2_7	=	0x00a7
                           0000B0   415 _P3_0	=	0x00b0
                           0000B1   416 _P3_1	=	0x00b1
                           0000B2   417 _P3_2	=	0x00b2
                           0000B3   418 _P3_3	=	0x00b3
                           0000B4   419 _P3_4	=	0x00b4
                           0000B5   420 _P3_5	=	0x00b5
                           0000B6   421 _P3_6	=	0x00b6
                           0000B7   422 _P3_7	=	0x00b7
                           0000B0   423 _RXD	=	0x00b0
                           0000B0   424 _RXD0	=	0x00b0
                           0000B1   425 _TXD	=	0x00b1
                           0000B1   426 _TXD0	=	0x00b1
                           0000B2   427 _INT0	=	0x00b2
                           0000B3   428 _INT1	=	0x00b3
                           0000B4   429 _T0	=	0x00b4
                           0000B5   430 _T1	=	0x00b5
                           0000B6   431 _WR	=	0x00b6
                           0000B7   432 _RD	=	0x00b7
                           0000D0   433 _P	=	0x00d0
                           0000D1   434 _F1	=	0x00d1
                           0000D2   435 _OV	=	0x00d2
                           0000D3   436 _RS0	=	0x00d3
                           0000D4   437 _RS1	=	0x00d4
                           0000D5   438 _F0	=	0x00d5
                           0000D6   439 _AC	=	0x00d6
                           0000D7   440 _CY	=	0x00d7
                           000098   441 _RI	=	0x0098
                           000099   442 _TI	=	0x0099
                           00009A   443 _RB8	=	0x009a
                           00009B   444 _TB8	=	0x009b
                           00009C   445 _REN	=	0x009c
                           00009D   446 _SM2	=	0x009d
                           00009E   447 _SM1	=	0x009e
                           00009F   448 _SM0	=	0x009f
                           000088   449 _IT0	=	0x0088
                           000089   450 _IE0	=	0x0089
                           00008A   451 _IT1	=	0x008a
                           00008B   452 _IE1	=	0x008b
                           00008C   453 _TR0	=	0x008c
                           00008D   454 _TF0	=	0x008d
                           00008E   455 _TR1	=	0x008e
                           00008F   456 _TF1	=	0x008f
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable register banks
                                    459 ;--------------------------------------------------------
                                    460 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable bit register bank
                                    464 ;--------------------------------------------------------
                                    465 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        466 bits:
      000021                        467 	.ds 1
                           008000   468 	b0 = bits[0]
                           008100   469 	b1 = bits[1]
                           008200   470 	b2 = bits[2]
                           008300   471 	b3 = bits[3]
                           008400   472 	b4 = bits[4]
                           008500   473 	b5 = bits[5]
                           008600   474 	b6 = bits[6]
                           008700   475 	b7 = bits[7]
                                    476 ;--------------------------------------------------------
                                    477 ; internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area DSEG    (DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; overlayable items in internal ram
                                    482 ;--------------------------------------------------------
                                    483 ;--------------------------------------------------------
                                    484 ; Stack segment in internal ram
                                    485 ;--------------------------------------------------------
                                    486 	.area	SSEG
      00006A                        487 __start__stack:
      00006A                        488 	.ds	1
                                    489 
                                    490 ;--------------------------------------------------------
                                    491 ; indirectly addressable internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area ISEG    (DATA)
                                    494 ;--------------------------------------------------------
                                    495 ; absolute internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area IABS    (ABS,DATA)
                                    498 	.area IABS    (ABS,DATA)
                                    499 ;--------------------------------------------------------
                                    500 ; bit data
                                    501 ;--------------------------------------------------------
                                    502 	.area BSEG    (BIT)
      000001                        503 _isr_timer2_sloc0_1_0:
      000001                        504 	.ds 1
                                    505 ;--------------------------------------------------------
                                    506 ; paged external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area PSEG    (PAG,XDATA)
                                    509 ;--------------------------------------------------------
                                    510 ; external ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area XSEG    (XDATA)
                                    513 ;--------------------------------------------------------
                                    514 ; absolute external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area XABS    (ABS,XDATA)
                                    517 ;--------------------------------------------------------
                                    518 ; external initialized ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XISEG   (XDATA)
                                    521 	.area HOME    (CODE)
                                    522 	.area GSINIT0 (CODE)
                                    523 	.area GSINIT1 (CODE)
                                    524 	.area GSINIT2 (CODE)
                                    525 	.area GSINIT3 (CODE)
                                    526 	.area GSINIT4 (CODE)
                                    527 	.area GSINIT5 (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.area GSFINAL (CODE)
                                    530 	.area CSEG    (CODE)
                                    531 ;--------------------------------------------------------
                                    532 ; interrupt vector
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
      002000                        535 __interrupt_vect:
      002000 02 20 31         [24]  536 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  537 	reti
      002004                        538 	.ds	7
      00200B 32               [24]  539 	reti
      00200C                        540 	.ds	7
      002013 32               [24]  541 	reti
      002014                        542 	.ds	7
      00201B 32               [24]  543 	reti
      00201C                        544 	.ds	7
      002023 32               [24]  545 	reti
      002024                        546 	.ds	7
      00202B 02 28 98         [24]  547 	ljmp	_isr_timer2
                                    548 ;--------------------------------------------------------
                                    549 ; global & static initialisations
                                    550 ;--------------------------------------------------------
                                    551 	.area HOME    (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 	.area GSFINAL (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.globl __sdcc_gsinit_startup
                                    556 	.globl __sdcc_program_startup
                                    557 	.globl __start__stack
                                    558 	.globl __mcs51_genXINIT
                                    559 	.globl __mcs51_genXRAMCLEAR
                                    560 	.globl __mcs51_genRAMCLEAR
                                    561 	.area GSFINAL (CODE)
      0020A5 02 20 2E         [24]  562 	ljmp	__sdcc_program_startup
                                    563 ;--------------------------------------------------------
                                    564 ; Home
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
                                    567 	.area HOME    (CODE)
      00202E                        568 __sdcc_program_startup:
      00202E 02 28 F1         [24]  569 	ljmp	_main
                                    570 ;	return from main will return to caller
                                    571 ;--------------------------------------------------------
                                    572 ; code
                                    573 ;--------------------------------------------------------
                                    574 	.area CSEG    (CODE)
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    577 ;------------------------------------------------------------
                                    578 ;	main.c:32: _sdcc_external_startup()
                                    579 ;	-----------------------------------------
                                    580 ;	 function _sdcc_external_startup
                                    581 ;	-----------------------------------------
      002891                        582 __sdcc_external_startup:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
                                    591 ;	main.c:34: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      002891 43 8E 0C         [24]  592 	orl	_AUXR,#0x0c
                                    593 ;	main.c:35: return 0;               // Return 0 to indicate successful startup
      002894 90 00 00         [24]  594 	mov	dptr,#0x0000
                                    595 ;	main.c:36: }
      002897 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'isr_timer2'
                                    599 ;------------------------------------------------------------
                                    600 ;	main.c:42: void isr_timer2(void) __interrupt(5)
                                    601 ;	-----------------------------------------
                                    602 ;	 function isr_timer2
                                    603 ;	-----------------------------------------
      002898                        604 _isr_timer2:
      002898 C0 21            [24]  605 	push	bits
      00289A C0 E0            [24]  606 	push	acc
      00289C C0 F0            [24]  607 	push	b
      00289E C0 82            [24]  608 	push	dpl
      0028A0 C0 83            [24]  609 	push	dph
      0028A2 C0 07            [24]  610 	push	(0+7)
      0028A4 C0 06            [24]  611 	push	(0+6)
      0028A6 C0 05            [24]  612 	push	(0+5)
      0028A8 C0 04            [24]  613 	push	(0+4)
      0028AA C0 03            [24]  614 	push	(0+3)
      0028AC C0 02            [24]  615 	push	(0+2)
      0028AE C0 01            [24]  616 	push	(0+1)
      0028B0 C0 00            [24]  617 	push	(0+0)
      0028B2 C0 D0            [24]  618 	push	psw
      0028B4 75 D0 00         [24]  619 	mov	psw,#0x00
                                    620 ;	main.c:47: }
      0028B7 D2 01            [12]  621 	setb	_isr_timer2_sloc0_1_0
      0028B9 10 AF 02         [24]  622 	jbc	ea,00103$
      0028BC C2 01            [12]  623 	clr	_isr_timer2_sloc0_1_0
      0028BE                        624 00103$:
                                    625 ;	main.c:46: tick++;
      0028BE AE 08            [24]  626 	mov	r6,_tick
      0028C0 AF 09            [24]  627 	mov	r7,(_tick + 1)
      0028C2 74 01            [12]  628 	mov	a,#0x01
      0028C4 2E               [12]  629 	add	a,r6
      0028C5 F5 08            [12]  630 	mov	_tick,a
      0028C7 E4               [12]  631 	clr	a
      0028C8 3F               [12]  632 	addc	a,r7
      0028C9 F5 09            [12]  633 	mov	(_tick + 1),a
      0028CB A2 01            [12]  634 	mov	c,_isr_timer2_sloc0_1_0
      0028CD 92 AF            [24]  635 	mov	ea,c
                                    636 ;	main.c:48: clock_run();
      0028CF 12 23 6A         [24]  637 	lcall	_clock_run
                                    638 ;	main.c:49: TF2 = 0;
                                    639 ;	assignBit
      0028D2 C2 CF            [12]  640 	clr	_TF2
                                    641 ;	main.c:50: }
      0028D4 D0 D0            [24]  642 	pop	psw
      0028D6 D0 00            [24]  643 	pop	(0+0)
      0028D8 D0 01            [24]  644 	pop	(0+1)
      0028DA D0 02            [24]  645 	pop	(0+2)
      0028DC D0 03            [24]  646 	pop	(0+3)
      0028DE D0 04            [24]  647 	pop	(0+4)
      0028E0 D0 05            [24]  648 	pop	(0+5)
      0028E2 D0 06            [24]  649 	pop	(0+6)
      0028E4 D0 07            [24]  650 	pop	(0+7)
      0028E6 D0 83            [24]  651 	pop	dph
      0028E8 D0 82            [24]  652 	pop	dpl
      0028EA D0 F0            [24]  653 	pop	b
      0028EC D0 E0            [24]  654 	pop	acc
      0028EE D0 21            [24]  655 	pop	bits
      0028F0 32               [24]  656 	reti
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'main'
                                    659 ;------------------------------------------------------------
                                    660 ;indicator                 Allocated to registers 
                                    661 ;user_input                Allocated to registers r7 
                                    662 ;------------------------------------------------------------
                                    663 ;	main.c:52: void main(void)
                                    664 ;	-----------------------------------------
                                    665 ;	 function main
                                    666 ;	-----------------------------------------
      0028F1                        667 _main:
                                    668 ;	main.c:55: lcdinit();
      0028F1 12 22 23         [24]  669 	lcall	_lcdinit
                                    670 ;	main.c:56: test_functionality();
      0028F4 12 22 BD         [24]  671 	lcall	_test_functionality
                                    672 ;	main.c:57: timer2_interrupt_Init();
      0028F7 12 20 E0         [24]  673 	lcall	_timer2_interrupt_Init
                                    674 ;	main.c:58: menu();
      0028FA 12 2A 3B         [24]  675 	lcall	_menu
                                    676 ;	main.c:59: menu_lcd();
      0028FD 12 24 4A         [24]  677 	lcall	_menu_lcd
                                    678 ;	main.c:61: while (1)
      002900                        679 00118$:
                                    680 ;	main.c:63: int8_t user_input = echo(); // Read user input from UART
      002900 12 2B 19         [24]  681 	lcall	_echo
      002903 AF 82            [24]  682 	mov	r7,dpl
                                    683 ;	main.c:64: if (((user_input >= '0') && (user_input <= '9')) ||
      002905 C3               [12]  684 	clr	c
      002906 EF               [12]  685 	mov	a,r7
      002907 64 80            [12]  686 	xrl	a,#0x80
      002909 94 B0            [12]  687 	subb	a,#0xb0
      00290B 40 0B            [24]  688 	jc	00106$
      00290D 74 B9            [12]  689 	mov	a,#(0x39 ^ 0x80)
      00290F 8F F0            [24]  690 	mov	b,r7
      002911 63 F0 80         [24]  691 	xrl	b,#0x80
      002914 95 F0            [12]  692 	subb	a,b
      002916 50 13            [24]  693 	jnc	00101$
      002918                        694 00106$:
                                    695 ;	main.c:65: ((user_input >= 'A') && (user_input <= 'Z')))
      002918 C3               [12]  696 	clr	c
      002919 EF               [12]  697 	mov	a,r7
      00291A 64 80            [12]  698 	xrl	a,#0x80
      00291C 94 C1            [12]  699 	subb	a,#0xc1
      00291E 40 20            [24]  700 	jc	00102$
      002920 74 DA            [12]  701 	mov	a,#(0x5a ^ 0x80)
      002922 8F F0            [24]  702 	mov	b,r7
      002924 63 F0 80         [24]  703 	xrl	b,#0x80
      002927 95 F0            [12]  704 	subb	a,b
      002929 40 15            [24]  705 	jc	00102$
      00292B                        706 00101$:
                                    707 ;	main.c:68: printf_tiny("Please enter commands in lowercase\n\r");
      00292B C0 07            [24]  708 	push	ar7
      00292D 74 C3            [12]  709 	mov	a,#___str_0
      00292F C0 E0            [24]  710 	push	acc
      002931 74 35            [12]  711 	mov	a,#(___str_0 >> 8)
      002933 C0 E0            [24]  712 	push	acc
      002935 12 2B 32         [24]  713 	lcall	_printf_tiny
      002938 15 81            [12]  714 	dec	sp
      00293A 15 81            [12]  715 	dec	sp
      00293C D0 07            [24]  716 	pop	ar7
      00293E 80 13            [24]  717 	sjmp	00103$
      002940                        718 00102$:
                                    719 ;	main.c:72: printf_tiny("\n\r"); // Print newline for better output formatting
      002940 C0 07            [24]  720 	push	ar7
      002942 74 E8            [12]  721 	mov	a,#___str_1
      002944 C0 E0            [24]  722 	push	acc
      002946 74 35            [12]  723 	mov	a,#(___str_1 >> 8)
      002948 C0 E0            [24]  724 	push	acc
      00294A 12 2B 32         [24]  725 	lcall	_printf_tiny
      00294D 15 81            [12]  726 	dec	sp
      00294F 15 81            [12]  727 	dec	sp
      002951 D0 07            [24]  728 	pop	ar7
      002953                        729 00103$:
                                    730 ;	main.c:75: switch (user_input)
      002953 BF 61 02         [24]  731 	cjne	r7,#0x61,00162$
      002956 80 18            [24]  732 	sjmp	00107$
      002958                        733 00162$:
      002958 BF 62 02         [24]  734 	cjne	r7,#0x62,00163$
      00295B 80 37            [24]  735 	sjmp	00108$
      00295D                        736 00163$:
      00295D BF 63 02         [24]  737 	cjne	r7,#0x63,00164$
      002960 80 55            [24]  738 	sjmp	00109$
      002962                        739 00164$:
      002962 BF 64 03         [24]  740 	cjne	r7,#0x64,00165$
      002965 02 29 FF         [24]  741 	ljmp	00113$
      002968                        742 00165$:
      002968 BF 65 03         [24]  743 	cjne	r7,#0x65,00166$
      00296B 02 2A 35         [24]  744 	ljmp	00114$
      00296E                        745 00166$:
                                    746 ;	main.c:77: case 'a':
      00296E 80 90            [24]  747 	sjmp	00118$
      002970                        748 00107$:
                                    749 ;	main.c:79: printf_tiny("Restarting clock\n\r");
      002970 74 EB            [12]  750 	mov	a,#___str_2
      002972 C0 E0            [24]  751 	push	acc
      002974 74 35            [12]  752 	mov	a,#(___str_2 >> 8)
      002976 C0 E0            [24]  753 	push	acc
      002978 12 2B 32         [24]  754 	lcall	_printf_tiny
      00297B 15 81            [12]  755 	dec	sp
      00297D 15 81            [12]  756 	dec	sp
                                    757 ;	main.c:80: clockrun_flag = 1;
      00297F 75 29 01         [24]  758 	mov	_clockrun_flag,#0x01
      002982 75 2A 00         [24]  759 	mov	(_clockrun_flag + 1),#0x00
                                    760 ;	main.c:81: arrow_set(indicator, ' ', ' ');
      002985 75 32 20         [24]  761 	mov	_arrow_set_PARM_2,#0x20
      002988 75 33 20         [24]  762 	mov	_arrow_set_PARM_3,#0x20
      00298B 75 82 3C         [24]  763 	mov	dpl,#0x3c
      00298E 12 24 95         [24]  764 	lcall	_arrow_set
                                    765 ;	main.c:82: break;
      002991 02 29 00         [24]  766 	ljmp	00118$
                                    767 ;	main.c:84: case 'b':
      002994                        768 00108$:
                                    769 ;	main.c:86: printf_tiny("Stopping clock\n\r");
      002994 74 FE            [12]  770 	mov	a,#___str_3
      002996 C0 E0            [24]  771 	push	acc
      002998 74 35            [12]  772 	mov	a,#(___str_3 >> 8)
      00299A C0 E0            [24]  773 	push	acc
      00299C 12 2B 32         [24]  774 	lcall	_printf_tiny
      00299F 15 81            [12]  775 	dec	sp
      0029A1 15 81            [12]  776 	dec	sp
                                    777 ;	main.c:87: clockrun_flag = 0;
      0029A3 E4               [12]  778 	clr	a
      0029A4 F5 29            [12]  779 	mov	_clockrun_flag,a
      0029A6 F5 2A            [12]  780 	mov	(_clockrun_flag + 1),a
                                    781 ;	main.c:88: arrow_set(' ', indicator, ' ');
      0029A8 75 32 3C         [24]  782 	mov	_arrow_set_PARM_2,#0x3c
      0029AB 75 33 20         [24]  783 	mov	_arrow_set_PARM_3,#0x20
      0029AE 75 82 20         [24]  784 	mov	dpl,#0x20
      0029B1 12 24 95         [24]  785 	lcall	_arrow_set
                                    786 ;	main.c:89: break;
      0029B4 02 29 00         [24]  787 	ljmp	00118$
                                    788 ;	main.c:91: case 'c':
      0029B7                        789 00109$:
                                    790 ;	main.c:93: printf_tiny("Resetting clock\n\r");
      0029B7 74 0F            [12]  791 	mov	a,#___str_4
      0029B9 C0 E0            [24]  792 	push	acc
      0029BB 74 36            [12]  793 	mov	a,#(___str_4 >> 8)
      0029BD C0 E0            [24]  794 	push	acc
      0029BF 12 2B 32         [24]  795 	lcall	_printf_tiny
      0029C2 15 81            [12]  796 	dec	sp
      0029C4 15 81            [12]  797 	dec	sp
                                    798 ;	main.c:94: reset_clock();
      0029C6 12 23 2B         [24]  799 	lcall	_reset_clock
                                    800 ;	main.c:95: arrow_set(' ', ' ', indicator);
      0029C9 75 32 20         [24]  801 	mov	_arrow_set_PARM_2,#0x20
      0029CC 75 33 3C         [24]  802 	mov	_arrow_set_PARM_3,#0x3c
      0029CF 75 82 20         [24]  803 	mov	dpl,#0x20
      0029D2 12 24 95         [24]  804 	lcall	_arrow_set
                                    805 ;	main.c:98: if (clockrun_flag)
      0029D5 E5 29            [12]  806 	mov	a,_clockrun_flag
      0029D7 45 2A            [12]  807 	orl	a,(_clockrun_flag + 1)
      0029D9 60 12            [24]  808 	jz	00111$
                                    809 ;	main.c:100: lcdgotoxy(2, 8);
      0029DB 75 30 08         [24]  810 	mov	_lcdgotoxy_PARM_2,#0x08
      0029DE 75 82 02         [24]  811 	mov	dpl,#0x02
      0029E1 12 21 21         [24]  812 	lcall	_lcdgotoxy
                                    813 ;	main.c:101: lcdputch(indicator);
      0029E4 75 82 3C         [24]  814 	mov	dpl,#0x3c
      0029E7 12 21 6D         [24]  815 	lcall	_lcdputch
      0029EA 02 29 00         [24]  816 	ljmp	00118$
      0029ED                        817 00111$:
                                    818 ;	main.c:105: lcdgotoxy(3, 8);
      0029ED 75 30 08         [24]  819 	mov	_lcdgotoxy_PARM_2,#0x08
      0029F0 75 82 03         [24]  820 	mov	dpl,#0x03
      0029F3 12 21 21         [24]  821 	lcall	_lcdgotoxy
                                    822 ;	main.c:106: lcdputch(indicator);
      0029F6 75 82 3C         [24]  823 	mov	dpl,#0x3c
      0029F9 12 21 6D         [24]  824 	lcall	_lcdputch
                                    825 ;	main.c:108: break;
      0029FC 02 29 00         [24]  826 	ljmp	00118$
                                    827 ;	main.c:109: case 'd':
      0029FF                        828 00113$:
                                    829 ;	main.c:110: printf_tiny("LCD RAM dump:\n\r");
      0029FF 74 21            [12]  830 	mov	a,#___str_5
      002A01 C0 E0            [24]  831 	push	acc
      002A03 74 36            [12]  832 	mov	a,#(___str_5 >> 8)
      002A05 C0 E0            [24]  833 	push	acc
      002A07 12 2B 32         [24]  834 	lcall	_printf_tiny
      002A0A 15 81            [12]  835 	dec	sp
      002A0C 15 81            [12]  836 	dec	sp
                                    837 ;	main.c:111: printf_tiny("DDRAM dump:\n\r");
      002A0E 74 31            [12]  838 	mov	a,#___str_6
      002A10 C0 E0            [24]  839 	push	acc
      002A12 74 36            [12]  840 	mov	a,#(___str_6 >> 8)
      002A14 C0 E0            [24]  841 	push	acc
      002A16 12 2B 32         [24]  842 	lcall	_printf_tiny
      002A19 15 81            [12]  843 	dec	sp
      002A1B 15 81            [12]  844 	dec	sp
                                    845 ;	main.c:112: ddram_hex_dump();
      002A1D 12 24 F1         [24]  846 	lcall	_ddram_hex_dump
                                    847 ;	main.c:113: printf_tiny("CGRAM dump:\n\r");
      002A20 74 3F            [12]  848 	mov	a,#___str_7
      002A22 C0 E0            [24]  849 	push	acc
      002A24 74 36            [12]  850 	mov	a,#(___str_7 >> 8)
      002A26 C0 E0            [24]  851 	push	acc
      002A28 12 2B 32         [24]  852 	lcall	_printf_tiny
      002A2B 15 81            [12]  853 	dec	sp
      002A2D 15 81            [12]  854 	dec	sp
                                    855 ;	main.c:114: cgram_hex_dump();
      002A2F 12 26 04         [24]  856 	lcall	_cgram_hex_dump
                                    857 ;	main.c:115: break;
      002A32 02 29 00         [24]  858 	ljmp	00118$
                                    859 ;	main.c:116: case 'e':
      002A35                        860 00114$:
                                    861 ;	main.c:117: process_custom_character();
      002A35 12 27 86         [24]  862 	lcall	_process_custom_character
                                    863 ;	main.c:118: break;
                                    864 ;	main.c:122: }
                                    865 ;	main.c:124: }
      002A38 02 29 00         [24]  866 	ljmp	00118$
                                    867 	.area CSEG    (CODE)
                                    868 	.area CONST   (CODE)
                                    869 	.area CONST   (CODE)
      0035C3                        870 ___str_0:
      0035C3 50 6C 65 61 73 65 20   871 	.ascii "Please enter commands in lowercase"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 6C 6F 77
             65 72 63 61 73 65
      0035E5 0A                     872 	.db 0x0a
      0035E6 0D                     873 	.db 0x0d
      0035E7 00                     874 	.db 0x00
                                    875 	.area CSEG    (CODE)
                                    876 	.area CONST   (CODE)
      0035E8                        877 ___str_1:
      0035E8 0A                     878 	.db 0x0a
      0035E9 0D                     879 	.db 0x0d
      0035EA 00                     880 	.db 0x00
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
      0035EB                        883 ___str_2:
      0035EB 52 65 73 74 61 72 74   884 	.ascii "Restarting clock"
             69 6E 67 20 63 6C 6F
             63 6B
      0035FB 0A                     885 	.db 0x0a
      0035FC 0D                     886 	.db 0x0d
      0035FD 00                     887 	.db 0x00
                                    888 	.area CSEG    (CODE)
                                    889 	.area CONST   (CODE)
      0035FE                        890 ___str_3:
      0035FE 53 74 6F 70 70 69 6E   891 	.ascii "Stopping clock"
             67 20 63 6C 6F 63 6B
      00360C 0A                     892 	.db 0x0a
      00360D 0D                     893 	.db 0x0d
      00360E 00                     894 	.db 0x00
                                    895 	.area CSEG    (CODE)
                                    896 	.area CONST   (CODE)
      00360F                        897 ___str_4:
      00360F 52 65 73 65 74 74 69   898 	.ascii "Resetting clock"
             6E 67 20 63 6C 6F 63
             6B
      00361E 0A                     899 	.db 0x0a
      00361F 0D                     900 	.db 0x0d
      003620 00                     901 	.db 0x00
                                    902 	.area CSEG    (CODE)
                                    903 	.area CONST   (CODE)
      003621                        904 ___str_5:
      003621 4C 43 44 20 52 41 4D   905 	.ascii "LCD RAM dump:"
             20 64 75 6D 70 3A
      00362E 0A                     906 	.db 0x0a
      00362F 0D                     907 	.db 0x0d
      003630 00                     908 	.db 0x00
                                    909 	.area CSEG    (CODE)
                                    910 	.area CONST   (CODE)
      003631                        911 ___str_6:
      003631 44 44 52 41 4D 20 64   912 	.ascii "DDRAM dump:"
             75 6D 70 3A
      00363C 0A                     913 	.db 0x0a
      00363D 0D                     914 	.db 0x0d
      00363E 00                     915 	.db 0x00
                                    916 	.area CSEG    (CODE)
                                    917 	.area CONST   (CODE)
      00363F                        918 ___str_7:
      00363F 43 47 52 41 4D 20 64   919 	.ascii "CGRAM dump:"
             75 6D 70 3A
      00364A 0A                     920 	.db 0x0a
      00364B 0D                     921 	.db 0x0d
      00364C 00                     922 	.db 0x00
                                    923 	.area CSEG    (CODE)
                                    924 	.area XINIT   (CODE)
                                    925 	.area CABS    (ABS,CODE)
