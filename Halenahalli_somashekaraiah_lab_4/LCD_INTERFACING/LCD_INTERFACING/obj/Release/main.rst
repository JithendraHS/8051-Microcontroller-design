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
                                     16 	.globl _arrow_set
                                     17 	.globl _menu_lcd
                                     18 	.globl _clock_run
                                     19 	.globl _reset_clock
                                     20 	.globl _test_functionality
                                     21 	.globl _lcdinit
                                     22 	.globl _lcdputch
                                     23 	.globl _lcdgotoxy
                                     24 	.globl _echo
                                     25 	.globl _printf_tiny
                                     26 	.globl _TF1
                                     27 	.globl _TR1
                                     28 	.globl _TF0
                                     29 	.globl _TR0
                                     30 	.globl _IE1
                                     31 	.globl _IT1
                                     32 	.globl _IE0
                                     33 	.globl _IT0
                                     34 	.globl _SM0
                                     35 	.globl _SM1
                                     36 	.globl _SM2
                                     37 	.globl _REN
                                     38 	.globl _TB8
                                     39 	.globl _RB8
                                     40 	.globl _TI
                                     41 	.globl _RI
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _F1
                                     49 	.globl _P
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD0
                                     57 	.globl _TXD
                                     58 	.globl _RXD0
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _PS
                                     93 	.globl _PT1
                                     94 	.globl _PX1
                                     95 	.globl _PT0
                                     96 	.globl _PX0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _BREG_F7
                                    104 	.globl _BREG_F6
                                    105 	.globl _BREG_F5
                                    106 	.globl _BREG_F4
                                    107 	.globl _BREG_F3
                                    108 	.globl _BREG_F2
                                    109 	.globl _BREG_F1
                                    110 	.globl _BREG_F0
                                    111 	.globl _P5_7
                                    112 	.globl _P5_6
                                    113 	.globl _P5_5
                                    114 	.globl _P5_4
                                    115 	.globl _P5_3
                                    116 	.globl _P5_2
                                    117 	.globl _P5_1
                                    118 	.globl _P5_0
                                    119 	.globl _P4_7
                                    120 	.globl _P4_6
                                    121 	.globl _P4_5
                                    122 	.globl _P4_4
                                    123 	.globl _P4_3
                                    124 	.globl _P4_2
                                    125 	.globl _P4_1
                                    126 	.globl _P4_0
                                    127 	.globl _PX0L
                                    128 	.globl _PT0L
                                    129 	.globl _PX1L
                                    130 	.globl _PT1L
                                    131 	.globl _PSL
                                    132 	.globl _PT2L
                                    133 	.globl _PPCL
                                    134 	.globl _EC
                                    135 	.globl _CCF0
                                    136 	.globl _CCF1
                                    137 	.globl _CCF2
                                    138 	.globl _CCF3
                                    139 	.globl _CCF4
                                    140 	.globl _CR
                                    141 	.globl _CF
                                    142 	.globl _TF2
                                    143 	.globl _EXF2
                                    144 	.globl _RCLK
                                    145 	.globl _TCLK
                                    146 	.globl _EXEN2
                                    147 	.globl _TR2
                                    148 	.globl _C_T2
                                    149 	.globl _CP_RL2
                                    150 	.globl _T2CON_7
                                    151 	.globl _T2CON_6
                                    152 	.globl _T2CON_5
                                    153 	.globl _T2CON_4
                                    154 	.globl _T2CON_3
                                    155 	.globl _T2CON_2
                                    156 	.globl _T2CON_1
                                    157 	.globl _T2CON_0
                                    158 	.globl _PT2
                                    159 	.globl _ET2
                                    160 	.globl _TMOD
                                    161 	.globl _TL1
                                    162 	.globl _TL0
                                    163 	.globl _TH1
                                    164 	.globl _TH0
                                    165 	.globl _TCON
                                    166 	.globl _SP
                                    167 	.globl _SCON
                                    168 	.globl _SBUF0
                                    169 	.globl _SBUF
                                    170 	.globl _PSW
                                    171 	.globl _PCON
                                    172 	.globl _P3
                                    173 	.globl _P2
                                    174 	.globl _P1
                                    175 	.globl _P0
                                    176 	.globl _IP
                                    177 	.globl _IE
                                    178 	.globl _DP0L
                                    179 	.globl _DPL
                                    180 	.globl _DP0H
                                    181 	.globl _DPH
                                    182 	.globl _B
                                    183 	.globl _ACC
                                    184 	.globl _EECON
                                    185 	.globl _KBF
                                    186 	.globl _KBE
                                    187 	.globl _KBLS
                                    188 	.globl _BRL
                                    189 	.globl _BDRCON
                                    190 	.globl _T2MOD
                                    191 	.globl _SPDAT
                                    192 	.globl _SPSTA
                                    193 	.globl _SPCON
                                    194 	.globl _SADEN
                                    195 	.globl _SADDR
                                    196 	.globl _WDTPRG
                                    197 	.globl _WDTRST
                                    198 	.globl _P5
                                    199 	.globl _P4
                                    200 	.globl _IPH1
                                    201 	.globl _IPL1
                                    202 	.globl _IPH0
                                    203 	.globl _IPL0
                                    204 	.globl _IEN1
                                    205 	.globl _IEN0
                                    206 	.globl _CMOD
                                    207 	.globl _CL
                                    208 	.globl _CH
                                    209 	.globl _CCON
                                    210 	.globl _CCAPM4
                                    211 	.globl _CCAPM3
                                    212 	.globl _CCAPM2
                                    213 	.globl _CCAPM1
                                    214 	.globl _CCAPM0
                                    215 	.globl _CCAP4L
                                    216 	.globl _CCAP3L
                                    217 	.globl _CCAP2L
                                    218 	.globl _CCAP1L
                                    219 	.globl _CCAP0L
                                    220 	.globl _CCAP4H
                                    221 	.globl _CCAP3H
                                    222 	.globl _CCAP2H
                                    223 	.globl _CCAP1H
                                    224 	.globl _CCAP0H
                                    225 	.globl _CKCON1
                                    226 	.globl _CKCON0
                                    227 	.globl _CKRL
                                    228 	.globl _AUXR1
                                    229 	.globl _AUXR
                                    230 	.globl _TH2
                                    231 	.globl _TL2
                                    232 	.globl _RCAP2H
                                    233 	.globl _RCAP2L
                                    234 	.globl _T2CON
                                    235 ;--------------------------------------------------------
                                    236 ; special function registers
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
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
                           0000E0   291 _ACC	=	0x00e0
                           0000F0   292 _B	=	0x00f0
                           000083   293 _DPH	=	0x0083
                           000083   294 _DP0H	=	0x0083
                           000082   295 _DPL	=	0x0082
                           000082   296 _DP0L	=	0x0082
                           0000A8   297 _IE	=	0x00a8
                           0000B8   298 _IP	=	0x00b8
                           000080   299 _P0	=	0x0080
                           000090   300 _P1	=	0x0090
                           0000A0   301 _P2	=	0x00a0
                           0000B0   302 _P3	=	0x00b0
                           000087   303 _PCON	=	0x0087
                           0000D0   304 _PSW	=	0x00d0
                           000099   305 _SBUF	=	0x0099
                           000099   306 _SBUF0	=	0x0099
                           000098   307 _SCON	=	0x0098
                           000081   308 _SP	=	0x0081
                           000088   309 _TCON	=	0x0088
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           000089   314 _TMOD	=	0x0089
                                    315 ;--------------------------------------------------------
                                    316 ; special function bits
                                    317 ;--------------------------------------------------------
                                    318 	.area RSEG    (ABS,DATA)
      000000                        319 	.org 0x0000
                           0000AD   320 _ET2	=	0x00ad
                           0000BD   321 _PT2	=	0x00bd
                           0000C8   322 _T2CON_0	=	0x00c8
                           0000C9   323 _T2CON_1	=	0x00c9
                           0000CA   324 _T2CON_2	=	0x00ca
                           0000CB   325 _T2CON_3	=	0x00cb
                           0000CC   326 _T2CON_4	=	0x00cc
                           0000CD   327 _T2CON_5	=	0x00cd
                           0000CE   328 _T2CON_6	=	0x00ce
                           0000CF   329 _T2CON_7	=	0x00cf
                           0000C8   330 _CP_RL2	=	0x00c8
                           0000C9   331 _C_T2	=	0x00c9
                           0000CA   332 _TR2	=	0x00ca
                           0000CB   333 _EXEN2	=	0x00cb
                           0000CC   334 _TCLK	=	0x00cc
                           0000CD   335 _RCLK	=	0x00cd
                           0000CE   336 _EXF2	=	0x00ce
                           0000CF   337 _TF2	=	0x00cf
                           0000DF   338 _CF	=	0x00df
                           0000DE   339 _CR	=	0x00de
                           0000DC   340 _CCF4	=	0x00dc
                           0000DB   341 _CCF3	=	0x00db
                           0000DA   342 _CCF2	=	0x00da
                           0000D9   343 _CCF1	=	0x00d9
                           0000D8   344 _CCF0	=	0x00d8
                           0000AE   345 _EC	=	0x00ae
                           0000BE   346 _PPCL	=	0x00be
                           0000BD   347 _PT2L	=	0x00bd
                           0000BC   348 _PSL	=	0x00bc
                           0000BB   349 _PT1L	=	0x00bb
                           0000BA   350 _PX1L	=	0x00ba
                           0000B9   351 _PT0L	=	0x00b9
                           0000B8   352 _PX0L	=	0x00b8
                           0000C0   353 _P4_0	=	0x00c0
                           0000C1   354 _P4_1	=	0x00c1
                           0000C2   355 _P4_2	=	0x00c2
                           0000C3   356 _P4_3	=	0x00c3
                           0000C4   357 _P4_4	=	0x00c4
                           0000C5   358 _P4_5	=	0x00c5
                           0000C6   359 _P4_6	=	0x00c6
                           0000C7   360 _P4_7	=	0x00c7
                           0000E8   361 _P5_0	=	0x00e8
                           0000E9   362 _P5_1	=	0x00e9
                           0000EA   363 _P5_2	=	0x00ea
                           0000EB   364 _P5_3	=	0x00eb
                           0000EC   365 _P5_4	=	0x00ec
                           0000ED   366 _P5_5	=	0x00ed
                           0000EE   367 _P5_6	=	0x00ee
                           0000EF   368 _P5_7	=	0x00ef
                           0000F0   369 _BREG_F0	=	0x00f0
                           0000F1   370 _BREG_F1	=	0x00f1
                           0000F2   371 _BREG_F2	=	0x00f2
                           0000F3   372 _BREG_F3	=	0x00f3
                           0000F4   373 _BREG_F4	=	0x00f4
                           0000F5   374 _BREG_F5	=	0x00f5
                           0000F6   375 _BREG_F6	=	0x00f6
                           0000F7   376 _BREG_F7	=	0x00f7
                           0000A8   377 _EX0	=	0x00a8
                           0000A9   378 _ET0	=	0x00a9
                           0000AA   379 _EX1	=	0x00aa
                           0000AB   380 _ET1	=	0x00ab
                           0000AC   381 _ES	=	0x00ac
                           0000AF   382 _EA	=	0x00af
                           0000B8   383 _PX0	=	0x00b8
                           0000B9   384 _PT0	=	0x00b9
                           0000BA   385 _PX1	=	0x00ba
                           0000BB   386 _PT1	=	0x00bb
                           0000BC   387 _PS	=	0x00bc
                           000080   388 _P0_0	=	0x0080
                           000081   389 _P0_1	=	0x0081
                           000082   390 _P0_2	=	0x0082
                           000083   391 _P0_3	=	0x0083
                           000084   392 _P0_4	=	0x0084
                           000085   393 _P0_5	=	0x0085
                           000086   394 _P0_6	=	0x0086
                           000087   395 _P0_7	=	0x0087
                           000090   396 _P1_0	=	0x0090
                           000091   397 _P1_1	=	0x0091
                           000092   398 _P1_2	=	0x0092
                           000093   399 _P1_3	=	0x0093
                           000094   400 _P1_4	=	0x0094
                           000095   401 _P1_5	=	0x0095
                           000096   402 _P1_6	=	0x0096
                           000097   403 _P1_7	=	0x0097
                           0000A0   404 _P2_0	=	0x00a0
                           0000A1   405 _P2_1	=	0x00a1
                           0000A2   406 _P2_2	=	0x00a2
                           0000A3   407 _P2_3	=	0x00a3
                           0000A4   408 _P2_4	=	0x00a4
                           0000A5   409 _P2_5	=	0x00a5
                           0000A6   410 _P2_6	=	0x00a6
                           0000A7   411 _P2_7	=	0x00a7
                           0000B0   412 _P3_0	=	0x00b0
                           0000B1   413 _P3_1	=	0x00b1
                           0000B2   414 _P3_2	=	0x00b2
                           0000B3   415 _P3_3	=	0x00b3
                           0000B4   416 _P3_4	=	0x00b4
                           0000B5   417 _P3_5	=	0x00b5
                           0000B6   418 _P3_6	=	0x00b6
                           0000B7   419 _P3_7	=	0x00b7
                           0000B0   420 _RXD	=	0x00b0
                           0000B0   421 _RXD0	=	0x00b0
                           0000B1   422 _TXD	=	0x00b1
                           0000B1   423 _TXD0	=	0x00b1
                           0000B2   424 _INT0	=	0x00b2
                           0000B3   425 _INT1	=	0x00b3
                           0000B4   426 _T0	=	0x00b4
                           0000B5   427 _T1	=	0x00b5
                           0000B6   428 _WR	=	0x00b6
                           0000B7   429 _RD	=	0x00b7
                           0000D0   430 _P	=	0x00d0
                           0000D1   431 _F1	=	0x00d1
                           0000D2   432 _OV	=	0x00d2
                           0000D3   433 _RS0	=	0x00d3
                           0000D4   434 _RS1	=	0x00d4
                           0000D5   435 _F0	=	0x00d5
                           0000D6   436 _AC	=	0x00d6
                           0000D7   437 _CY	=	0x00d7
                           000098   438 _RI	=	0x0098
                           000099   439 _TI	=	0x0099
                           00009A   440 _RB8	=	0x009a
                           00009B   441 _TB8	=	0x009b
                           00009C   442 _REN	=	0x009c
                           00009D   443 _SM2	=	0x009d
                           00009E   444 _SM1	=	0x009e
                           00009F   445 _SM0	=	0x009f
                           000088   446 _IT0	=	0x0088
                           000089   447 _IE0	=	0x0089
                           00008A   448 _IT1	=	0x008a
                           00008B   449 _IE1	=	0x008b
                           00008C   450 _TR0	=	0x008c
                           00008D   451 _TF0	=	0x008d
                           00008E   452 _TR1	=	0x008e
                           00008F   453 _TF1	=	0x008f
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable register banks
                                    456 ;--------------------------------------------------------
                                    457 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        458 	.ds 8
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable bit register bank
                                    461 ;--------------------------------------------------------
                                    462 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        463 bits:
      000021                        464 	.ds 1
                           008000   465 	b0 = bits[0]
                           008100   466 	b1 = bits[1]
                           008200   467 	b2 = bits[2]
                           008300   468 	b3 = bits[3]
                           008400   469 	b4 = bits[4]
                           008500   470 	b5 = bits[5]
                           008600   471 	b6 = bits[6]
                           008700   472 	b7 = bits[7]
                                    473 ;--------------------------------------------------------
                                    474 ; internal ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area DSEG    (DATA)
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable items in internal ram
                                    479 ;--------------------------------------------------------
                                    480 ;--------------------------------------------------------
                                    481 ; Stack segment in internal ram
                                    482 ;--------------------------------------------------------
                                    483 	.area	SSEG
      00003B                        484 __start__stack:
      00003B                        485 	.ds	1
                                    486 
                                    487 ;--------------------------------------------------------
                                    488 ; indirectly addressable internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area ISEG    (DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area IABS    (ABS,DATA)
                                    495 	.area IABS    (ABS,DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; bit data
                                    498 ;--------------------------------------------------------
                                    499 	.area BSEG    (BIT)
      000001                        500 _isr_timer2_sloc0_1_0:
      000001                        501 	.ds 1
                                    502 ;--------------------------------------------------------
                                    503 ; paged external ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area PSEG    (PAG,XDATA)
                                    506 ;--------------------------------------------------------
                                    507 ; external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XSEG    (XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; absolute external ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XABS    (ABS,XDATA)
                                    514 ;--------------------------------------------------------
                                    515 ; external initialized ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XISEG   (XDATA)
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT0 (CODE)
                                    520 	.area GSINIT1 (CODE)
                                    521 	.area GSINIT2 (CODE)
                                    522 	.area GSINIT3 (CODE)
                                    523 	.area GSINIT4 (CODE)
                                    524 	.area GSINIT5 (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area CSEG    (CODE)
                                    528 ;--------------------------------------------------------
                                    529 ; interrupt vector
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
      002000                        532 __interrupt_vect:
      002000 02 20 31         [24]  533 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  534 	reti
      002004                        535 	.ds	7
      00200B 32               [24]  536 	reti
      00200C                        537 	.ds	7
      002013 32               [24]  538 	reti
      002014                        539 	.ds	7
      00201B 32               [24]  540 	reti
      00201C                        541 	.ds	7
      002023 32               [24]  542 	reti
      002024                        543 	.ds	7
      00202B 02 25 3F         [24]  544 	ljmp	_isr_timer2
                                    545 ;--------------------------------------------------------
                                    546 ; global & static initialisations
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area GSINIT  (CODE)
                                    550 	.area GSFINAL (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.globl __sdcc_gsinit_startup
                                    553 	.globl __sdcc_program_startup
                                    554 	.globl __start__stack
                                    555 	.globl __mcs51_genXINIT
                                    556 	.globl __mcs51_genXRAMCLEAR
                                    557 	.globl __mcs51_genRAMCLEAR
                                    558 	.area GSFINAL (CODE)
      0020A5 02 20 2E         [24]  559 	ljmp	__sdcc_program_startup
                                    560 ;--------------------------------------------------------
                                    561 ; Home
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area HOME    (CODE)
      00202E                        565 __sdcc_program_startup:
      00202E 02 25 98         [24]  566 	ljmp	_main
                                    567 ;	return from main will return to caller
                                    568 ;--------------------------------------------------------
                                    569 ; code
                                    570 ;--------------------------------------------------------
                                    571 	.area CSEG    (CODE)
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    574 ;------------------------------------------------------------
                                    575 ;	main.c:32: _sdcc_external_startup()
                                    576 ;	-----------------------------------------
                                    577 ;	 function _sdcc_external_startup
                                    578 ;	-----------------------------------------
      002538                        579 __sdcc_external_startup:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                                    588 ;	main.c:34: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      002538 43 8E 0C         [24]  589 	orl	_AUXR,#0x0c
                                    590 ;	main.c:35: return 0;               // Return 0 to indicate successful startup
      00253B 90 00 00         [24]  591 	mov	dptr,#0x0000
                                    592 ;	main.c:36: }
      00253E 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'isr_timer2'
                                    596 ;------------------------------------------------------------
                                    597 ;	main.c:42: void isr_timer2(void) __interrupt(5)
                                    598 ;	-----------------------------------------
                                    599 ;	 function isr_timer2
                                    600 ;	-----------------------------------------
      00253F                        601 _isr_timer2:
      00253F C0 21            [24]  602 	push	bits
      002541 C0 E0            [24]  603 	push	acc
      002543 C0 F0            [24]  604 	push	b
      002545 C0 82            [24]  605 	push	dpl
      002547 C0 83            [24]  606 	push	dph
      002549 C0 07            [24]  607 	push	(0+7)
      00254B C0 06            [24]  608 	push	(0+6)
      00254D C0 05            [24]  609 	push	(0+5)
      00254F C0 04            [24]  610 	push	(0+4)
      002551 C0 03            [24]  611 	push	(0+3)
      002553 C0 02            [24]  612 	push	(0+2)
      002555 C0 01            [24]  613 	push	(0+1)
      002557 C0 00            [24]  614 	push	(0+0)
      002559 C0 D0            [24]  615 	push	psw
      00255B 75 D0 00         [24]  616 	mov	psw,#0x00
                                    617 ;	main.c:47: }
      00255E D2 01            [12]  618 	setb	_isr_timer2_sloc0_1_0
      002560 10 AF 02         [24]  619 	jbc	ea,00103$
      002563 C2 01            [12]  620 	clr	_isr_timer2_sloc0_1_0
      002565                        621 00103$:
                                    622 ;	main.c:46: tick++;
      002565 AE 08            [24]  623 	mov	r6,_tick
      002567 AF 09            [24]  624 	mov	r7,(_tick + 1)
      002569 74 01            [12]  625 	mov	a,#0x01
      00256B 2E               [12]  626 	add	a,r6
      00256C F5 08            [12]  627 	mov	_tick,a
      00256E E4               [12]  628 	clr	a
      00256F 3F               [12]  629 	addc	a,r7
      002570 F5 09            [12]  630 	mov	(_tick + 1),a
      002572 A2 01            [12]  631 	mov	c,_isr_timer2_sloc0_1_0
      002574 92 AF            [24]  632 	mov	ea,c
                                    633 ;	main.c:48: clock_run();
      002576 12 23 DB         [24]  634 	lcall	_clock_run
                                    635 ;	main.c:49: TF2 = 0;
                                    636 ;	assignBit
      002579 C2 CF            [12]  637 	clr	_TF2
                                    638 ;	main.c:50: }
      00257B D0 D0            [24]  639 	pop	psw
      00257D D0 00            [24]  640 	pop	(0+0)
      00257F D0 01            [24]  641 	pop	(0+1)
      002581 D0 02            [24]  642 	pop	(0+2)
      002583 D0 03            [24]  643 	pop	(0+3)
      002585 D0 04            [24]  644 	pop	(0+4)
      002587 D0 05            [24]  645 	pop	(0+5)
      002589 D0 06            [24]  646 	pop	(0+6)
      00258B D0 07            [24]  647 	pop	(0+7)
      00258D D0 83            [24]  648 	pop	dph
      00258F D0 82            [24]  649 	pop	dpl
      002591 D0 F0            [24]  650 	pop	b
      002593 D0 E0            [24]  651 	pop	acc
      002595 D0 21            [24]  652 	pop	bits
      002597 32               [24]  653 	reti
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'main'
                                    656 ;------------------------------------------------------------
                                    657 ;indicator                 Allocated to registers 
                                    658 ;user_input                Allocated to registers r7 
                                    659 ;------------------------------------------------------------
                                    660 ;	main.c:52: void main(void)
                                    661 ;	-----------------------------------------
                                    662 ;	 function main
                                    663 ;	-----------------------------------------
      002598                        664 _main:
                                    665 ;	main.c:55: lcdinit();
      002598 12 22 23         [24]  666 	lcall	_lcdinit
                                    667 ;	main.c:56: test_functionality();
      00259B 12 22 BD         [24]  668 	lcall	_test_functionality
                                    669 ;	main.c:57: timer2_interrupt_Init();
      00259E 12 20 E0         [24]  670 	lcall	_timer2_interrupt_Init
                                    671 ;	main.c:58: menu();
      0025A1 12 26 98         [24]  672 	lcall	_menu
                                    673 ;	main.c:59: menu_lcd();
      0025A4 12 24 BB         [24]  674 	lcall	_menu_lcd
                                    675 ;	main.c:61: while (1)
      0025A7                        676 00116$:
                                    677 ;	main.c:63: int8_t user_input = echo(); // Read user input from UART
      0025A7 12 27 58         [24]  678 	lcall	_echo
      0025AA AF 82            [24]  679 	mov	r7,dpl
                                    680 ;	main.c:64: if (((user_input >= '0') && (user_input <= '9')) ||
      0025AC C3               [12]  681 	clr	c
      0025AD EF               [12]  682 	mov	a,r7
      0025AE 64 80            [12]  683 	xrl	a,#0x80
      0025B0 94 B0            [12]  684 	subb	a,#0xb0
      0025B2 40 0B            [24]  685 	jc	00106$
      0025B4 74 B9            [12]  686 	mov	a,#(0x39 ^ 0x80)
      0025B6 8F F0            [24]  687 	mov	b,r7
      0025B8 63 F0 80         [24]  688 	xrl	b,#0x80
      0025BB 95 F0            [12]  689 	subb	a,b
      0025BD 50 13            [24]  690 	jnc	00101$
      0025BF                        691 00106$:
                                    692 ;	main.c:65: ((user_input >= 'A') && (user_input <= 'Z')))
      0025BF C3               [12]  693 	clr	c
      0025C0 EF               [12]  694 	mov	a,r7
      0025C1 64 80            [12]  695 	xrl	a,#0x80
      0025C3 94 C1            [12]  696 	subb	a,#0xc1
      0025C5 40 20            [24]  697 	jc	00102$
      0025C7 74 DA            [12]  698 	mov	a,#(0x5a ^ 0x80)
      0025C9 8F F0            [24]  699 	mov	b,r7
      0025CB 63 F0 80         [24]  700 	xrl	b,#0x80
      0025CE 95 F0            [12]  701 	subb	a,b
      0025D0 40 15            [24]  702 	jc	00102$
      0025D2                        703 00101$:
                                    704 ;	main.c:68: printf_tiny("Please enter commands in lowercase\n\r");
      0025D2 C0 07            [24]  705 	push	ar7
      0025D4 74 C0            [12]  706 	mov	a,#___str_0
      0025D6 C0 E0            [24]  707 	push	acc
      0025D8 74 29            [12]  708 	mov	a,#(___str_0 >> 8)
      0025DA C0 E0            [24]  709 	push	acc
      0025DC 12 27 7D         [24]  710 	lcall	_printf_tiny
      0025DF 15 81            [12]  711 	dec	sp
      0025E1 15 81            [12]  712 	dec	sp
      0025E3 D0 07            [24]  713 	pop	ar7
      0025E5 80 13            [24]  714 	sjmp	00103$
      0025E7                        715 00102$:
                                    716 ;	main.c:72: printf_tiny("\n\r"); // Print newline for better output formatting
      0025E7 C0 07            [24]  717 	push	ar7
      0025E9 74 E5            [12]  718 	mov	a,#___str_1
      0025EB C0 E0            [24]  719 	push	acc
      0025ED 74 29            [12]  720 	mov	a,#(___str_1 >> 8)
      0025EF C0 E0            [24]  721 	push	acc
      0025F1 12 27 7D         [24]  722 	lcall	_printf_tiny
      0025F4 15 81            [12]  723 	dec	sp
      0025F6 15 81            [12]  724 	dec	sp
      0025F8 D0 07            [24]  725 	pop	ar7
      0025FA                        726 00103$:
                                    727 ;	main.c:75: switch (user_input)
      0025FA BF 61 02         [24]  728 	cjne	r7,#0x61,00152$
      0025FD 80 0A            [24]  729 	sjmp	00107$
      0025FF                        730 00152$:
      0025FF BF 62 02         [24]  731 	cjne	r7,#0x62,00153$
      002602 80 29            [24]  732 	sjmp	00108$
      002604                        733 00153$:
                                    734 ;	main.c:77: case 'a':
      002604 BF 63 A0         [24]  735 	cjne	r7,#0x63,00116$
      002607 80 47            [24]  736 	sjmp	00109$
      002609                        737 00107$:
                                    738 ;	main.c:79: printf_tiny("Restarting clock\n\r");
      002609 74 E8            [12]  739 	mov	a,#___str_2
      00260B C0 E0            [24]  740 	push	acc
      00260D 74 29            [12]  741 	mov	a,#(___str_2 >> 8)
      00260F C0 E0            [24]  742 	push	acc
      002611 12 27 7D         [24]  743 	lcall	_printf_tiny
      002614 15 81            [12]  744 	dec	sp
      002616 15 81            [12]  745 	dec	sp
                                    746 ;	main.c:80: clockrun_flag = 1;
      002618 75 29 01         [24]  747 	mov	_clockrun_flag,#0x01
      00261B 75 2A 00         [24]  748 	mov	(_clockrun_flag + 1),#0x00
                                    749 ;	main.c:81: arrow_set(indicator, ' ', ' ');
      00261E 75 39 20         [24]  750 	mov	_arrow_set_PARM_2,#0x20
      002621 75 3A 20         [24]  751 	mov	_arrow_set_PARM_3,#0x20
      002624 75 82 3C         [24]  752 	mov	dpl,#0x3c
      002627 12 25 06         [24]  753 	lcall	_arrow_set
                                    754 ;	main.c:82: break;
      00262A 02 25 A7         [24]  755 	ljmp	00116$
                                    756 ;	main.c:84: case 'b':
      00262D                        757 00108$:
                                    758 ;	main.c:86: printf_tiny("Stopping clock\n\r");
      00262D 74 FB            [12]  759 	mov	a,#___str_3
      00262F C0 E0            [24]  760 	push	acc
      002631 74 29            [12]  761 	mov	a,#(___str_3 >> 8)
      002633 C0 E0            [24]  762 	push	acc
      002635 12 27 7D         [24]  763 	lcall	_printf_tiny
      002638 15 81            [12]  764 	dec	sp
      00263A 15 81            [12]  765 	dec	sp
                                    766 ;	main.c:87: clockrun_flag = 0;
      00263C E4               [12]  767 	clr	a
      00263D F5 29            [12]  768 	mov	_clockrun_flag,a
      00263F F5 2A            [12]  769 	mov	(_clockrun_flag + 1),a
                                    770 ;	main.c:88: arrow_set(' ', indicator, ' ');
      002641 75 39 3C         [24]  771 	mov	_arrow_set_PARM_2,#0x3c
      002644 75 3A 20         [24]  772 	mov	_arrow_set_PARM_3,#0x20
      002647 75 82 20         [24]  773 	mov	dpl,#0x20
      00264A 12 25 06         [24]  774 	lcall	_arrow_set
                                    775 ;	main.c:89: break;
      00264D 02 25 A7         [24]  776 	ljmp	00116$
                                    777 ;	main.c:91: case 'c':
      002650                        778 00109$:
                                    779 ;	main.c:93: printf_tiny("Resetting clock\n\r");
      002650 74 0C            [12]  780 	mov	a,#___str_4
      002652 C0 E0            [24]  781 	push	acc
      002654 74 2A            [12]  782 	mov	a,#(___str_4 >> 8)
      002656 C0 E0            [24]  783 	push	acc
      002658 12 27 7D         [24]  784 	lcall	_printf_tiny
      00265B 15 81            [12]  785 	dec	sp
      00265D 15 81            [12]  786 	dec	sp
                                    787 ;	main.c:94: reset_clock();
      00265F 12 23 9C         [24]  788 	lcall	_reset_clock
                                    789 ;	main.c:95: arrow_set(' ', ' ', indicator);
      002662 75 39 20         [24]  790 	mov	_arrow_set_PARM_2,#0x20
      002665 75 3A 3C         [24]  791 	mov	_arrow_set_PARM_3,#0x3c
      002668 75 82 20         [24]  792 	mov	dpl,#0x20
      00266B 12 25 06         [24]  793 	lcall	_arrow_set
                                    794 ;	main.c:98: if (clockrun_flag)
      00266E E5 29            [12]  795 	mov	a,_clockrun_flag
      002670 45 2A            [12]  796 	orl	a,(_clockrun_flag + 1)
      002672 60 12            [24]  797 	jz	00111$
                                    798 ;	main.c:100: lcdgotoxy(2, 8);
      002674 75 30 08         [24]  799 	mov	_lcdgotoxy_PARM_2,#0x08
      002677 75 82 02         [24]  800 	mov	dpl,#0x02
      00267A 12 21 21         [24]  801 	lcall	_lcdgotoxy
                                    802 ;	main.c:101: lcdputch(indicator);
      00267D 75 82 3C         [24]  803 	mov	dpl,#0x3c
      002680 12 21 6D         [24]  804 	lcall	_lcdputch
      002683 02 25 A7         [24]  805 	ljmp	00116$
      002686                        806 00111$:
                                    807 ;	main.c:105: lcdgotoxy(3, 8);
      002686 75 30 08         [24]  808 	mov	_lcdgotoxy_PARM_2,#0x08
      002689 75 82 03         [24]  809 	mov	dpl,#0x03
      00268C 12 21 21         [24]  810 	lcall	_lcdgotoxy
                                    811 ;	main.c:106: lcdputch(indicator);
      00268F 75 82 3C         [24]  812 	mov	dpl,#0x3c
      002692 12 21 6D         [24]  813 	lcall	_lcdputch
                                    814 ;	main.c:108: break;
                                    815 ;	main.c:113: }
                                    816 ;	main.c:115: }
      002695 02 25 A7         [24]  817 	ljmp	00116$
                                    818 	.area CSEG    (CODE)
                                    819 	.area CONST   (CODE)
                                    820 	.area CONST   (CODE)
      0029C0                        821 ___str_0:
      0029C0 50 6C 65 61 73 65 20   822 	.ascii "Please enter commands in lowercase"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 6C 6F 77
             65 72 63 61 73 65
      0029E2 0A                     823 	.db 0x0a
      0029E3 0D                     824 	.db 0x0d
      0029E4 00                     825 	.db 0x00
                                    826 	.area CSEG    (CODE)
                                    827 	.area CONST   (CODE)
      0029E5                        828 ___str_1:
      0029E5 0A                     829 	.db 0x0a
      0029E6 0D                     830 	.db 0x0d
      0029E7 00                     831 	.db 0x00
                                    832 	.area CSEG    (CODE)
                                    833 	.area CONST   (CODE)
      0029E8                        834 ___str_2:
      0029E8 52 65 73 74 61 72 74   835 	.ascii "Restarting clock"
             69 6E 67 20 63 6C 6F
             63 6B
      0029F8 0A                     836 	.db 0x0a
      0029F9 0D                     837 	.db 0x0d
      0029FA 00                     838 	.db 0x00
                                    839 	.area CSEG    (CODE)
                                    840 	.area CONST   (CODE)
      0029FB                        841 ___str_3:
      0029FB 53 74 6F 70 70 69 6E   842 	.ascii "Stopping clock"
             67 20 63 6C 6F 63 6B
      002A09 0A                     843 	.db 0x0a
      002A0A 0D                     844 	.db 0x0d
      002A0B 00                     845 	.db 0x00
                                    846 	.area CSEG    (CODE)
                                    847 	.area CONST   (CODE)
      002A0C                        848 ___str_4:
      002A0C 52 65 73 65 74 74 69   849 	.ascii "Resetting clock"
             6E 67 20 63 6C 6F 63
             6B
      002A1B 0A                     850 	.db 0x0a
      002A1C 0D                     851 	.db 0x0d
      002A1D 00                     852 	.db 0x00
                                    853 	.area CSEG    (CODE)
                                    854 	.area XINIT   (CODE)
                                    855 	.area CABS    (ABS,CODE)
