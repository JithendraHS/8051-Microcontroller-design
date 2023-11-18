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
                                     16 	.globl _show_custom_character
                                     17 	.globl _process_custom_character
                                     18 	.globl _cgram_hex_dump
                                     19 	.globl _ddram_hex_dump
                                     20 	.globl _arrow_set
                                     21 	.globl _menu_lcd
                                     22 	.globl _clock_run
                                     23 	.globl _reset_clock
                                     24 	.globl _test_functionality
                                     25 	.globl _lcdinit
                                     26 	.globl _lcdputch
                                     27 	.globl _lcdgotoxy
                                     28 	.globl _echo
                                     29 	.globl _printf_tiny
                                     30 	.globl _printf
                                     31 	.globl _TF1
                                     32 	.globl _TR1
                                     33 	.globl _TF0
                                     34 	.globl _TR0
                                     35 	.globl _IE1
                                     36 	.globl _IT1
                                     37 	.globl _IE0
                                     38 	.globl _IT0
                                     39 	.globl _SM0
                                     40 	.globl _SM1
                                     41 	.globl _SM2
                                     42 	.globl _REN
                                     43 	.globl _TB8
                                     44 	.globl _RB8
                                     45 	.globl _TI
                                     46 	.globl _RI
                                     47 	.globl _CY
                                     48 	.globl _AC
                                     49 	.globl _F0
                                     50 	.globl _RS1
                                     51 	.globl _RS0
                                     52 	.globl _OV
                                     53 	.globl _F1
                                     54 	.globl _P
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD0
                                     62 	.globl _TXD
                                     63 	.globl _RXD0
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _PS
                                     98 	.globl _PT1
                                     99 	.globl _PX1
                                    100 	.globl _PT0
                                    101 	.globl _PX0
                                    102 	.globl _EA
                                    103 	.globl _ES
                                    104 	.globl _ET1
                                    105 	.globl _EX1
                                    106 	.globl _ET0
                                    107 	.globl _EX0
                                    108 	.globl _BREG_F7
                                    109 	.globl _BREG_F6
                                    110 	.globl _BREG_F5
                                    111 	.globl _BREG_F4
                                    112 	.globl _BREG_F3
                                    113 	.globl _BREG_F2
                                    114 	.globl _BREG_F1
                                    115 	.globl _BREG_F0
                                    116 	.globl _P5_7
                                    117 	.globl _P5_6
                                    118 	.globl _P5_5
                                    119 	.globl _P5_4
                                    120 	.globl _P5_3
                                    121 	.globl _P5_2
                                    122 	.globl _P5_1
                                    123 	.globl _P5_0
                                    124 	.globl _P4_7
                                    125 	.globl _P4_6
                                    126 	.globl _P4_5
                                    127 	.globl _P4_4
                                    128 	.globl _P4_3
                                    129 	.globl _P4_2
                                    130 	.globl _P4_1
                                    131 	.globl _P4_0
                                    132 	.globl _PX0L
                                    133 	.globl _PT0L
                                    134 	.globl _PX1L
                                    135 	.globl _PT1L
                                    136 	.globl _PSL
                                    137 	.globl _PT2L
                                    138 	.globl _PPCL
                                    139 	.globl _EC
                                    140 	.globl _CCF0
                                    141 	.globl _CCF1
                                    142 	.globl _CCF2
                                    143 	.globl _CCF3
                                    144 	.globl _CCF4
                                    145 	.globl _CR
                                    146 	.globl _CF
                                    147 	.globl _TF2
                                    148 	.globl _EXF2
                                    149 	.globl _RCLK
                                    150 	.globl _TCLK
                                    151 	.globl _EXEN2
                                    152 	.globl _TR2
                                    153 	.globl _C_T2
                                    154 	.globl _CP_RL2
                                    155 	.globl _T2CON_7
                                    156 	.globl _T2CON_6
                                    157 	.globl _T2CON_5
                                    158 	.globl _T2CON_4
                                    159 	.globl _T2CON_3
                                    160 	.globl _T2CON_2
                                    161 	.globl _T2CON_1
                                    162 	.globl _T2CON_0
                                    163 	.globl _PT2
                                    164 	.globl _ET2
                                    165 	.globl _TMOD
                                    166 	.globl _TL1
                                    167 	.globl _TL0
                                    168 	.globl _TH1
                                    169 	.globl _TH0
                                    170 	.globl _TCON
                                    171 	.globl _SP
                                    172 	.globl _SCON
                                    173 	.globl _SBUF0
                                    174 	.globl _SBUF
                                    175 	.globl _PSW
                                    176 	.globl _PCON
                                    177 	.globl _P3
                                    178 	.globl _P2
                                    179 	.globl _P1
                                    180 	.globl _P0
                                    181 	.globl _IP
                                    182 	.globl _IE
                                    183 	.globl _DP0L
                                    184 	.globl _DPL
                                    185 	.globl _DP0H
                                    186 	.globl _DPH
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _EECON
                                    190 	.globl _KBF
                                    191 	.globl _KBE
                                    192 	.globl _KBLS
                                    193 	.globl _BRL
                                    194 	.globl _BDRCON
                                    195 	.globl _T2MOD
                                    196 	.globl _SPDAT
                                    197 	.globl _SPSTA
                                    198 	.globl _SPCON
                                    199 	.globl _SADEN
                                    200 	.globl _SADDR
                                    201 	.globl _WDTPRG
                                    202 	.globl _WDTRST
                                    203 	.globl _P5
                                    204 	.globl _P4
                                    205 	.globl _IPH1
                                    206 	.globl _IPL1
                                    207 	.globl _IPH0
                                    208 	.globl _IPL0
                                    209 	.globl _IEN1
                                    210 	.globl _IEN0
                                    211 	.globl _CMOD
                                    212 	.globl _CL
                                    213 	.globl _CH
                                    214 	.globl _CCON
                                    215 	.globl _CCAPM4
                                    216 	.globl _CCAPM3
                                    217 	.globl _CCAPM2
                                    218 	.globl _CCAPM1
                                    219 	.globl _CCAPM0
                                    220 	.globl _CCAP4L
                                    221 	.globl _CCAP3L
                                    222 	.globl _CCAP2L
                                    223 	.globl _CCAP1L
                                    224 	.globl _CCAP0L
                                    225 	.globl _CCAP4H
                                    226 	.globl _CCAP3H
                                    227 	.globl _CCAP2H
                                    228 	.globl _CCAP1H
                                    229 	.globl _CCAP0H
                                    230 	.globl _CKCON1
                                    231 	.globl _CKCON0
                                    232 	.globl _CKRL
                                    233 	.globl _AUXR1
                                    234 	.globl _AUXR
                                    235 	.globl _TH2
                                    236 	.globl _TL2
                                    237 	.globl _RCAP2H
                                    238 	.globl _RCAP2L
                                    239 	.globl _T2CON
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                           0000E0   296 _ACC	=	0x00e0
                           0000F0   297 _B	=	0x00f0
                           000083   298 _DPH	=	0x0083
                           000083   299 _DP0H	=	0x0083
                           000082   300 _DPL	=	0x0082
                           000082   301 _DP0L	=	0x0082
                           0000A8   302 _IE	=	0x00a8
                           0000B8   303 _IP	=	0x00b8
                           000080   304 _P0	=	0x0080
                           000090   305 _P1	=	0x0090
                           0000A0   306 _P2	=	0x00a0
                           0000B0   307 _P3	=	0x00b0
                           000087   308 _PCON	=	0x0087
                           0000D0   309 _PSW	=	0x00d0
                           000099   310 _SBUF	=	0x0099
                           000099   311 _SBUF0	=	0x0099
                           000098   312 _SCON	=	0x0098
                           000081   313 _SP	=	0x0081
                           000088   314 _TCON	=	0x0088
                           00008C   315 _TH0	=	0x008c
                           00008D   316 _TH1	=	0x008d
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           000089   319 _TMOD	=	0x0089
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           0000AD   325 _ET2	=	0x00ad
                           0000BD   326 _PT2	=	0x00bd
                           0000C8   327 _T2CON_0	=	0x00c8
                           0000C9   328 _T2CON_1	=	0x00c9
                           0000CA   329 _T2CON_2	=	0x00ca
                           0000CB   330 _T2CON_3	=	0x00cb
                           0000CC   331 _T2CON_4	=	0x00cc
                           0000CD   332 _T2CON_5	=	0x00cd
                           0000CE   333 _T2CON_6	=	0x00ce
                           0000CF   334 _T2CON_7	=	0x00cf
                           0000C8   335 _CP_RL2	=	0x00c8
                           0000C9   336 _C_T2	=	0x00c9
                           0000CA   337 _TR2	=	0x00ca
                           0000CB   338 _EXEN2	=	0x00cb
                           0000CC   339 _TCLK	=	0x00cc
                           0000CD   340 _RCLK	=	0x00cd
                           0000CE   341 _EXF2	=	0x00ce
                           0000CF   342 _TF2	=	0x00cf
                           0000DF   343 _CF	=	0x00df
                           0000DE   344 _CR	=	0x00de
                           0000DC   345 _CCF4	=	0x00dc
                           0000DB   346 _CCF3	=	0x00db
                           0000DA   347 _CCF2	=	0x00da
                           0000D9   348 _CCF1	=	0x00d9
                           0000D8   349 _CCF0	=	0x00d8
                           0000AE   350 _EC	=	0x00ae
                           0000BE   351 _PPCL	=	0x00be
                           0000BD   352 _PT2L	=	0x00bd
                           0000BC   353 _PSL	=	0x00bc
                           0000BB   354 _PT1L	=	0x00bb
                           0000BA   355 _PX1L	=	0x00ba
                           0000B9   356 _PT0L	=	0x00b9
                           0000B8   357 _PX0L	=	0x00b8
                           0000C0   358 _P4_0	=	0x00c0
                           0000C1   359 _P4_1	=	0x00c1
                           0000C2   360 _P4_2	=	0x00c2
                           0000C3   361 _P4_3	=	0x00c3
                           0000C4   362 _P4_4	=	0x00c4
                           0000C5   363 _P4_5	=	0x00c5
                           0000C6   364 _P4_6	=	0x00c6
                           0000C7   365 _P4_7	=	0x00c7
                           0000E8   366 _P5_0	=	0x00e8
                           0000E9   367 _P5_1	=	0x00e9
                           0000EA   368 _P5_2	=	0x00ea
                           0000EB   369 _P5_3	=	0x00eb
                           0000EC   370 _P5_4	=	0x00ec
                           0000ED   371 _P5_5	=	0x00ed
                           0000EE   372 _P5_6	=	0x00ee
                           0000EF   373 _P5_7	=	0x00ef
                           0000F0   374 _BREG_F0	=	0x00f0
                           0000F1   375 _BREG_F1	=	0x00f1
                           0000F2   376 _BREG_F2	=	0x00f2
                           0000F3   377 _BREG_F3	=	0x00f3
                           0000F4   378 _BREG_F4	=	0x00f4
                           0000F5   379 _BREG_F5	=	0x00f5
                           0000F6   380 _BREG_F6	=	0x00f6
                           0000F7   381 _BREG_F7	=	0x00f7
                           0000A8   382 _EX0	=	0x00a8
                           0000A9   383 _ET0	=	0x00a9
                           0000AA   384 _EX1	=	0x00aa
                           0000AB   385 _ET1	=	0x00ab
                           0000AC   386 _ES	=	0x00ac
                           0000AF   387 _EA	=	0x00af
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           000080   393 _P0_0	=	0x0080
                           000081   394 _P0_1	=	0x0081
                           000082   395 _P0_2	=	0x0082
                           000083   396 _P0_3	=	0x0083
                           000084   397 _P0_4	=	0x0084
                           000085   398 _P0_5	=	0x0085
                           000086   399 _P0_6	=	0x0086
                           000087   400 _P0_7	=	0x0087
                           000090   401 _P1_0	=	0x0090
                           000091   402 _P1_1	=	0x0091
                           000092   403 _P1_2	=	0x0092
                           000093   404 _P1_3	=	0x0093
                           000094   405 _P1_4	=	0x0094
                           000095   406 _P1_5	=	0x0095
                           000096   407 _P1_6	=	0x0096
                           000097   408 _P1_7	=	0x0097
                           0000A0   409 _P2_0	=	0x00a0
                           0000A1   410 _P2_1	=	0x00a1
                           0000A2   411 _P2_2	=	0x00a2
                           0000A3   412 _P2_3	=	0x00a3
                           0000A4   413 _P2_4	=	0x00a4
                           0000A5   414 _P2_5	=	0x00a5
                           0000A6   415 _P2_6	=	0x00a6
                           0000A7   416 _P2_7	=	0x00a7
                           0000B0   417 _P3_0	=	0x00b0
                           0000B1   418 _P3_1	=	0x00b1
                           0000B2   419 _P3_2	=	0x00b2
                           0000B3   420 _P3_3	=	0x00b3
                           0000B4   421 _P3_4	=	0x00b4
                           0000B5   422 _P3_5	=	0x00b5
                           0000B6   423 _P3_6	=	0x00b6
                           0000B7   424 _P3_7	=	0x00b7
                           0000B0   425 _RXD	=	0x00b0
                           0000B0   426 _RXD0	=	0x00b0
                           0000B1   427 _TXD	=	0x00b1
                           0000B1   428 _TXD0	=	0x00b1
                           0000B2   429 _INT0	=	0x00b2
                           0000B3   430 _INT1	=	0x00b3
                           0000B4   431 _T0	=	0x00b4
                           0000B5   432 _T1	=	0x00b5
                           0000B6   433 _WR	=	0x00b6
                           0000B7   434 _RD	=	0x00b7
                           0000D0   435 _P	=	0x00d0
                           0000D1   436 _F1	=	0x00d1
                           0000D2   437 _OV	=	0x00d2
                           0000D3   438 _RS0	=	0x00d3
                           0000D4   439 _RS1	=	0x00d4
                           0000D5   440 _F0	=	0x00d5
                           0000D6   441 _AC	=	0x00d6
                           0000D7   442 _CY	=	0x00d7
                           000098   443 _RI	=	0x0098
                           000099   444 _TI	=	0x0099
                           00009A   445 _RB8	=	0x009a
                           00009B   446 _TB8	=	0x009b
                           00009C   447 _REN	=	0x009c
                           00009D   448 _SM2	=	0x009d
                           00009E   449 _SM1	=	0x009e
                           00009F   450 _SM0	=	0x009f
                           000088   451 _IT0	=	0x0088
                           000089   452 _IE0	=	0x0089
                           00008A   453 _IT1	=	0x008a
                           00008B   454 _IE1	=	0x008b
                           00008C   455 _TR0	=	0x008c
                           00008D   456 _TF0	=	0x008d
                           00008E   457 _TR1	=	0x008e
                           00008F   458 _TF1	=	0x008f
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable register banks
                                    461 ;--------------------------------------------------------
                                    462 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        463 	.ds 8
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable bit register bank
                                    466 ;--------------------------------------------------------
                                    467 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        468 bits:
      000021                        469 	.ds 1
                           008000   470 	b0 = bits[0]
                           008100   471 	b1 = bits[1]
                           008200   472 	b2 = bits[2]
                           008300   473 	b3 = bits[3]
                           008400   474 	b4 = bits[4]
                           008500   475 	b5 = bits[5]
                           008600   476 	b6 = bits[6]
                           008700   477 	b7 = bits[7]
                                    478 ;--------------------------------------------------------
                                    479 ; internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area DSEG    (DATA)
                                    482 ;--------------------------------------------------------
                                    483 ; overlayable items in internal ram
                                    484 ;--------------------------------------------------------
                                    485 ;--------------------------------------------------------
                                    486 ; Stack segment in internal ram
                                    487 ;--------------------------------------------------------
                                    488 	.area	SSEG
      00007A                        489 __start__stack:
      00007A                        490 	.ds	1
                                    491 
                                    492 ;--------------------------------------------------------
                                    493 ; indirectly addressable internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area ISEG    (DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; absolute internal ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area IABS    (ABS,DATA)
                                    500 	.area IABS    (ABS,DATA)
                                    501 ;--------------------------------------------------------
                                    502 ; bit data
                                    503 ;--------------------------------------------------------
                                    504 	.area BSEG    (BIT)
      000001                        505 _isr_timer2_sloc0_1_0:
      000001                        506 	.ds 1
                                    507 ;--------------------------------------------------------
                                    508 ; paged external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area PSEG    (PAG,XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XSEG    (XDATA)
                                    515 ;--------------------------------------------------------
                                    516 ; absolute external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XABS    (ABS,XDATA)
                                    519 ;--------------------------------------------------------
                                    520 ; external initialized ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XISEG   (XDATA)
                                    523 	.area HOME    (CODE)
                                    524 	.area GSINIT0 (CODE)
                                    525 	.area GSINIT1 (CODE)
                                    526 	.area GSINIT2 (CODE)
                                    527 	.area GSINIT3 (CODE)
                                    528 	.area GSINIT4 (CODE)
                                    529 	.area GSINIT5 (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 	.area GSFINAL (CODE)
                                    532 	.area CSEG    (CODE)
                                    533 ;--------------------------------------------------------
                                    534 ; interrupt vector
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
      002000                        537 __interrupt_vect:
      002000 02 20 31         [24]  538 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  539 	reti
      002004                        540 	.ds	7
      00200B 32               [24]  541 	reti
      00200C                        542 	.ds	7
      002013 32               [24]  543 	reti
      002014                        544 	.ds	7
      00201B 32               [24]  545 	reti
      00201C                        546 	.ds	7
      002023 32               [24]  547 	reti
      002024                        548 	.ds	7
      00202B 02 29 E9         [24]  549 	ljmp	_isr_timer2
                                    550 ;--------------------------------------------------------
                                    551 ; global & static initialisations
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.globl __sdcc_gsinit_startup
                                    558 	.globl __sdcc_program_startup
                                    559 	.globl __start__stack
                                    560 	.globl __mcs51_genXINIT
                                    561 	.globl __mcs51_genXRAMCLEAR
                                    562 	.globl __mcs51_genRAMCLEAR
                                    563 	.area GSFINAL (CODE)
      0020A5 02 20 2E         [24]  564 	ljmp	__sdcc_program_startup
                                    565 ;--------------------------------------------------------
                                    566 ; Home
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
                                    569 	.area HOME    (CODE)
      00202E                        570 __sdcc_program_startup:
      00202E 02 2A 42         [24]  571 	ljmp	_main
                                    572 ;	return from main will return to caller
                                    573 ;--------------------------------------------------------
                                    574 ; code
                                    575 ;--------------------------------------------------------
                                    576 	.area CSEG    (CODE)
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    579 ;------------------------------------------------------------
                                    580 ;	main.c:32: _sdcc_external_startup()
                                    581 ;	-----------------------------------------
                                    582 ;	 function _sdcc_external_startup
                                    583 ;	-----------------------------------------
      0029E2                        584 __sdcc_external_startup:
                           000007   585 	ar7 = 0x07
                           000006   586 	ar6 = 0x06
                           000005   587 	ar5 = 0x05
                           000004   588 	ar4 = 0x04
                           000003   589 	ar3 = 0x03
                           000002   590 	ar2 = 0x02
                           000001   591 	ar1 = 0x01
                           000000   592 	ar0 = 0x00
                                    593 ;	main.c:34: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      0029E2 43 8E 0C         [24]  594 	orl	_AUXR,#0x0c
                                    595 ;	main.c:35: return 0;               // Return 0 to indicate successful startup
      0029E5 90 00 00         [24]  596 	mov	dptr,#0x0000
                                    597 ;	main.c:36: }
      0029E8 22               [24]  598 	ret
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'isr_timer2'
                                    601 ;------------------------------------------------------------
                                    602 ;	main.c:42: void isr_timer2(void) __interrupt(5)
                                    603 ;	-----------------------------------------
                                    604 ;	 function isr_timer2
                                    605 ;	-----------------------------------------
      0029E9                        606 _isr_timer2:
      0029E9 C0 21            [24]  607 	push	bits
      0029EB C0 E0            [24]  608 	push	acc
      0029ED C0 F0            [24]  609 	push	b
      0029EF C0 82            [24]  610 	push	dpl
      0029F1 C0 83            [24]  611 	push	dph
      0029F3 C0 07            [24]  612 	push	(0+7)
      0029F5 C0 06            [24]  613 	push	(0+6)
      0029F7 C0 05            [24]  614 	push	(0+5)
      0029F9 C0 04            [24]  615 	push	(0+4)
      0029FB C0 03            [24]  616 	push	(0+3)
      0029FD C0 02            [24]  617 	push	(0+2)
      0029FF C0 01            [24]  618 	push	(0+1)
      002A01 C0 00            [24]  619 	push	(0+0)
      002A03 C0 D0            [24]  620 	push	psw
      002A05 75 D0 00         [24]  621 	mov	psw,#0x00
                                    622 ;	main.c:47: }
      002A08 D2 01            [12]  623 	setb	_isr_timer2_sloc0_1_0
      002A0A 10 AF 02         [24]  624 	jbc	ea,00103$
      002A0D C2 01            [12]  625 	clr	_isr_timer2_sloc0_1_0
      002A0F                        626 00103$:
                                    627 ;	main.c:46: tick++;
      002A0F AE 08            [24]  628 	mov	r6,_tick
      002A11 AF 09            [24]  629 	mov	r7,(_tick + 1)
      002A13 74 01            [12]  630 	mov	a,#0x01
      002A15 2E               [12]  631 	add	a,r6
      002A16 F5 08            [12]  632 	mov	_tick,a
      002A18 E4               [12]  633 	clr	a
      002A19 3F               [12]  634 	addc	a,r7
      002A1A F5 09            [12]  635 	mov	(_tick + 1),a
      002A1C A2 01            [12]  636 	mov	c,_isr_timer2_sloc0_1_0
      002A1E 92 AF            [24]  637 	mov	ea,c
                                    638 ;	main.c:48: clock_run();
      002A20 12 23 6A         [24]  639 	lcall	_clock_run
                                    640 ;	main.c:49: TF2 = 0;
                                    641 ;	assignBit
      002A23 C2 CF            [12]  642 	clr	_TF2
                                    643 ;	main.c:50: }
      002A25 D0 D0            [24]  644 	pop	psw
      002A27 D0 00            [24]  645 	pop	(0+0)
      002A29 D0 01            [24]  646 	pop	(0+1)
      002A2B D0 02            [24]  647 	pop	(0+2)
      002A2D D0 03            [24]  648 	pop	(0+3)
      002A2F D0 04            [24]  649 	pop	(0+4)
      002A31 D0 05            [24]  650 	pop	(0+5)
      002A33 D0 06            [24]  651 	pop	(0+6)
      002A35 D0 07            [24]  652 	pop	(0+7)
      002A37 D0 83            [24]  653 	pop	dph
      002A39 D0 82            [24]  654 	pop	dpl
      002A3B D0 F0            [24]  655 	pop	b
      002A3D D0 E0            [24]  656 	pop	acc
      002A3F D0 21            [24]  657 	pop	bits
      002A41 32               [24]  658 	reti
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'main'
                                    661 ;------------------------------------------------------------
                                    662 ;indicator                 Allocated to registers 
                                    663 ;user_input                Allocated to registers r7 
                                    664 ;------------------------------------------------------------
                                    665 ;	main.c:52: void main(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function main
                                    668 ;	-----------------------------------------
      002A42                        669 _main:
                                    670 ;	main.c:55: lcdinit();
      002A42 12 22 23         [24]  671 	lcall	_lcdinit
                                    672 ;	main.c:56: test_functionality();
      002A45 12 22 BD         [24]  673 	lcall	_test_functionality
                                    674 ;	main.c:57: timer2_interrupt_Init();
      002A48 12 20 E0         [24]  675 	lcall	_timer2_interrupt_Init
                                    676 ;	main.c:58: menu();
      002A4B 12 2B AE         [24]  677 	lcall	_menu
                                    678 ;	main.c:59: menu_lcd();
      002A4E 12 24 4A         [24]  679 	lcall	_menu_lcd
                                    680 ;	main.c:61: while (1)
      002A51                        681 00119$:
                                    682 ;	main.c:63: int8_t user_input = echo(); // Read user input from UART
      002A51 12 2C 9B         [24]  683 	lcall	_echo
      002A54 AF 82            [24]  684 	mov	r7,dpl
                                    685 ;	main.c:64: if (((user_input >= '0') && (user_input <= '9')) ||
      002A56 C3               [12]  686 	clr	c
      002A57 EF               [12]  687 	mov	a,r7
      002A58 64 80            [12]  688 	xrl	a,#0x80
      002A5A 94 B0            [12]  689 	subb	a,#0xb0
      002A5C 40 0B            [24]  690 	jc	00106$
      002A5E 74 B9            [12]  691 	mov	a,#(0x39 ^ 0x80)
      002A60 8F F0            [24]  692 	mov	b,r7
      002A62 63 F0 80         [24]  693 	xrl	b,#0x80
      002A65 95 F0            [12]  694 	subb	a,b
      002A67 50 13            [24]  695 	jnc	00101$
      002A69                        696 00106$:
                                    697 ;	main.c:65: ((user_input >= 'A') && (user_input <= 'Z')))
      002A69 C3               [12]  698 	clr	c
      002A6A EF               [12]  699 	mov	a,r7
      002A6B 64 80            [12]  700 	xrl	a,#0x80
      002A6D 94 C1            [12]  701 	subb	a,#0xc1
      002A6F 40 20            [24]  702 	jc	00102$
      002A71 74 DA            [12]  703 	mov	a,#(0x5a ^ 0x80)
      002A73 8F F0            [24]  704 	mov	b,r7
      002A75 63 F0 80         [24]  705 	xrl	b,#0x80
      002A78 95 F0            [12]  706 	subb	a,b
      002A7A 40 15            [24]  707 	jc	00102$
      002A7C                        708 00101$:
                                    709 ;	main.c:68: printf_tiny("Please enter commands in lowercase\n\r");
      002A7C C0 07            [24]  710 	push	ar7
      002A7E 74 45            [12]  711 	mov	a,#___str_0
      002A80 C0 E0            [24]  712 	push	acc
      002A82 74 37            [12]  713 	mov	a,#(___str_0 >> 8)
      002A84 C0 E0            [24]  714 	push	acc
      002A86 12 2C B4         [24]  715 	lcall	_printf_tiny
      002A89 15 81            [12]  716 	dec	sp
      002A8B 15 81            [12]  717 	dec	sp
      002A8D D0 07            [24]  718 	pop	ar7
      002A8F 80 13            [24]  719 	sjmp	00103$
      002A91                        720 00102$:
                                    721 ;	main.c:72: printf_tiny("\n\r"); // Print newline for better output formatting
      002A91 C0 07            [24]  722 	push	ar7
      002A93 74 6A            [12]  723 	mov	a,#___str_1
      002A95 C0 E0            [24]  724 	push	acc
      002A97 74 37            [12]  725 	mov	a,#(___str_1 >> 8)
      002A99 C0 E0            [24]  726 	push	acc
      002A9B 12 2C B4         [24]  727 	lcall	_printf_tiny
      002A9E 15 81            [12]  728 	dec	sp
      002AA0 15 81            [12]  729 	dec	sp
      002AA2 D0 07            [24]  730 	pop	ar7
      002AA4                        731 00103$:
                                    732 ;	main.c:75: switch (user_input)
      002AA4 BF 61 02         [24]  733 	cjne	r7,#0x61,00167$
      002AA7 80 1F            [24]  734 	sjmp	00107$
      002AA9                        735 00167$:
      002AA9 BF 62 02         [24]  736 	cjne	r7,#0x62,00168$
      002AAC 80 3E            [24]  737 	sjmp	00108$
      002AAE                        738 00168$:
      002AAE BF 63 02         [24]  739 	cjne	r7,#0x63,00169$
      002AB1 80 5C            [24]  740 	sjmp	00109$
      002AB3                        741 00169$:
      002AB3 BF 64 03         [24]  742 	cjne	r7,#0x64,00170$
      002AB6 02 2B 57         [24]  743 	ljmp	00113$
      002AB9                        744 00170$:
      002AB9 BF 65 03         [24]  745 	cjne	r7,#0x65,00171$
      002ABC 02 2B 8D         [24]  746 	ljmp	00114$
      002ABF                        747 00171$:
      002ABF BF 66 03         [24]  748 	cjne	r7,#0x66,00172$
      002AC2 02 2B 93         [24]  749 	ljmp	00115$
      002AC5                        750 00172$:
      002AC5 02 2A 51         [24]  751 	ljmp	00119$
                                    752 ;	main.c:77: case 'a':
      002AC8                        753 00107$:
                                    754 ;	main.c:79: printf_tiny("Restarting clock\n\r");
      002AC8 74 6D            [12]  755 	mov	a,#___str_2
      002ACA C0 E0            [24]  756 	push	acc
      002ACC 74 37            [12]  757 	mov	a,#(___str_2 >> 8)
      002ACE C0 E0            [24]  758 	push	acc
      002AD0 12 2C B4         [24]  759 	lcall	_printf_tiny
      002AD3 15 81            [12]  760 	dec	sp
      002AD5 15 81            [12]  761 	dec	sp
                                    762 ;	main.c:80: clockrun_flag = 1;
      002AD7 75 29 01         [24]  763 	mov	_clockrun_flag,#0x01
      002ADA 75 2A 00         [24]  764 	mov	(_clockrun_flag + 1),#0x00
                                    765 ;	main.c:81: arrow_set(indicator, ' ', ' ');
      002ADD 75 32 20         [24]  766 	mov	_arrow_set_PARM_2,#0x20
      002AE0 75 33 20         [24]  767 	mov	_arrow_set_PARM_3,#0x20
      002AE3 75 82 3C         [24]  768 	mov	dpl,#0x3c
      002AE6 12 24 95         [24]  769 	lcall	_arrow_set
                                    770 ;	main.c:82: break;
      002AE9 02 2A 51         [24]  771 	ljmp	00119$
                                    772 ;	main.c:84: case 'b':
      002AEC                        773 00108$:
                                    774 ;	main.c:86: printf_tiny("Stopping clock\n\r");
      002AEC 74 80            [12]  775 	mov	a,#___str_3
      002AEE C0 E0            [24]  776 	push	acc
      002AF0 74 37            [12]  777 	mov	a,#(___str_3 >> 8)
      002AF2 C0 E0            [24]  778 	push	acc
      002AF4 12 2C B4         [24]  779 	lcall	_printf_tiny
      002AF7 15 81            [12]  780 	dec	sp
      002AF9 15 81            [12]  781 	dec	sp
                                    782 ;	main.c:87: clockrun_flag = 0;
      002AFB E4               [12]  783 	clr	a
      002AFC F5 29            [12]  784 	mov	_clockrun_flag,a
      002AFE F5 2A            [12]  785 	mov	(_clockrun_flag + 1),a
                                    786 ;	main.c:88: arrow_set(' ', indicator, ' ');
      002B00 75 32 3C         [24]  787 	mov	_arrow_set_PARM_2,#0x3c
      002B03 75 33 20         [24]  788 	mov	_arrow_set_PARM_3,#0x20
      002B06 75 82 20         [24]  789 	mov	dpl,#0x20
      002B09 12 24 95         [24]  790 	lcall	_arrow_set
                                    791 ;	main.c:89: break;
      002B0C 02 2A 51         [24]  792 	ljmp	00119$
                                    793 ;	main.c:91: case 'c':
      002B0F                        794 00109$:
                                    795 ;	main.c:93: printf_tiny("Resetting clock\n\r");
      002B0F 74 91            [12]  796 	mov	a,#___str_4
      002B11 C0 E0            [24]  797 	push	acc
      002B13 74 37            [12]  798 	mov	a,#(___str_4 >> 8)
      002B15 C0 E0            [24]  799 	push	acc
      002B17 12 2C B4         [24]  800 	lcall	_printf_tiny
      002B1A 15 81            [12]  801 	dec	sp
      002B1C 15 81            [12]  802 	dec	sp
                                    803 ;	main.c:94: reset_clock();
      002B1E 12 23 2B         [24]  804 	lcall	_reset_clock
                                    805 ;	main.c:95: arrow_set(' ', ' ', indicator);
      002B21 75 32 20         [24]  806 	mov	_arrow_set_PARM_2,#0x20
      002B24 75 33 3C         [24]  807 	mov	_arrow_set_PARM_3,#0x3c
      002B27 75 82 20         [24]  808 	mov	dpl,#0x20
      002B2A 12 24 95         [24]  809 	lcall	_arrow_set
                                    810 ;	main.c:98: if (clockrun_flag)
      002B2D E5 29            [12]  811 	mov	a,_clockrun_flag
      002B2F 45 2A            [12]  812 	orl	a,(_clockrun_flag + 1)
      002B31 60 12            [24]  813 	jz	00111$
                                    814 ;	main.c:100: lcdgotoxy(2, 8);
      002B33 75 30 08         [24]  815 	mov	_lcdgotoxy_PARM_2,#0x08
      002B36 75 82 02         [24]  816 	mov	dpl,#0x02
      002B39 12 21 21         [24]  817 	lcall	_lcdgotoxy
                                    818 ;	main.c:101: lcdputch(indicator);
      002B3C 75 82 3C         [24]  819 	mov	dpl,#0x3c
      002B3F 12 21 6D         [24]  820 	lcall	_lcdputch
      002B42 02 2A 51         [24]  821 	ljmp	00119$
      002B45                        822 00111$:
                                    823 ;	main.c:105: lcdgotoxy(3, 8);
      002B45 75 30 08         [24]  824 	mov	_lcdgotoxy_PARM_2,#0x08
      002B48 75 82 03         [24]  825 	mov	dpl,#0x03
      002B4B 12 21 21         [24]  826 	lcall	_lcdgotoxy
                                    827 ;	main.c:106: lcdputch(indicator);
      002B4E 75 82 3C         [24]  828 	mov	dpl,#0x3c
      002B51 12 21 6D         [24]  829 	lcall	_lcdputch
                                    830 ;	main.c:108: break;
      002B54 02 2A 51         [24]  831 	ljmp	00119$
                                    832 ;	main.c:109: case 'd':
      002B57                        833 00113$:
                                    834 ;	main.c:110: printf_tiny("LCD RAM dump:\n\r");
      002B57 74 A3            [12]  835 	mov	a,#___str_5
      002B59 C0 E0            [24]  836 	push	acc
      002B5B 74 37            [12]  837 	mov	a,#(___str_5 >> 8)
      002B5D C0 E0            [24]  838 	push	acc
      002B5F 12 2C B4         [24]  839 	lcall	_printf_tiny
      002B62 15 81            [12]  840 	dec	sp
      002B64 15 81            [12]  841 	dec	sp
                                    842 ;	main.c:111: printf_tiny("DDRAM dump:\n\r");
      002B66 74 B3            [12]  843 	mov	a,#___str_6
      002B68 C0 E0            [24]  844 	push	acc
      002B6A 74 37            [12]  845 	mov	a,#(___str_6 >> 8)
      002B6C C0 E0            [24]  846 	push	acc
      002B6E 12 2C B4         [24]  847 	lcall	_printf_tiny
      002B71 15 81            [12]  848 	dec	sp
      002B73 15 81            [12]  849 	dec	sp
                                    850 ;	main.c:112: ddram_hex_dump();
      002B75 12 24 F1         [24]  851 	lcall	_ddram_hex_dump
                                    852 ;	main.c:113: printf_tiny("CGRAM dump:\n\r");
      002B78 74 C1            [12]  853 	mov	a,#___str_7
      002B7A C0 E0            [24]  854 	push	acc
      002B7C 74 37            [12]  855 	mov	a,#(___str_7 >> 8)
      002B7E C0 E0            [24]  856 	push	acc
      002B80 12 2C B4         [24]  857 	lcall	_printf_tiny
      002B83 15 81            [12]  858 	dec	sp
      002B85 15 81            [12]  859 	dec	sp
                                    860 ;	main.c:114: cgram_hex_dump();
      002B87 12 26 04         [24]  861 	lcall	_cgram_hex_dump
                                    862 ;	main.c:115: break;
      002B8A 02 2A 51         [24]  863 	ljmp	00119$
                                    864 ;	main.c:116: case 'e':
      002B8D                        865 00114$:
                                    866 ;	main.c:117: process_custom_character();
      002B8D 12 27 86         [24]  867 	lcall	_process_custom_character
                                    868 ;	main.c:118: break;
      002B90 02 2A 51         [24]  869 	ljmp	00119$
                                    870 ;	main.c:119: case 'f':
      002B93                        871 00115$:
                                    872 ;	main.c:120: printf(" printing custom character\n\r");
      002B93 74 CF            [12]  873 	mov	a,#___str_8
      002B95 C0 E0            [24]  874 	push	acc
      002B97 74 37            [12]  875 	mov	a,#(___str_8 >> 8)
      002B99 C0 E0            [24]  876 	push	acc
      002B9B 74 80            [12]  877 	mov	a,#0x80
      002B9D C0 E0            [24]  878 	push	acc
      002B9F 12 2E 32         [24]  879 	lcall	_printf
      002BA2 15 81            [12]  880 	dec	sp
      002BA4 15 81            [12]  881 	dec	sp
      002BA6 15 81            [12]  882 	dec	sp
                                    883 ;	main.c:121: show_custom_character();
      002BA8 12 28 91         [24]  884 	lcall	_show_custom_character
                                    885 ;	main.c:122: break;
                                    886 ;	main.c:126: }
                                    887 ;	main.c:128: }
      002BAB 02 2A 51         [24]  888 	ljmp	00119$
                                    889 	.area CSEG    (CODE)
                                    890 	.area CONST   (CODE)
                                    891 	.area CONST   (CODE)
      003745                        892 ___str_0:
      003745 50 6C 65 61 73 65 20   893 	.ascii "Please enter commands in lowercase"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 6C 6F 77
             65 72 63 61 73 65
      003767 0A                     894 	.db 0x0a
      003768 0D                     895 	.db 0x0d
      003769 00                     896 	.db 0x00
                                    897 	.area CSEG    (CODE)
                                    898 	.area CONST   (CODE)
      00376A                        899 ___str_1:
      00376A 0A                     900 	.db 0x0a
      00376B 0D                     901 	.db 0x0d
      00376C 00                     902 	.db 0x00
                                    903 	.area CSEG    (CODE)
                                    904 	.area CONST   (CODE)
      00376D                        905 ___str_2:
      00376D 52 65 73 74 61 72 74   906 	.ascii "Restarting clock"
             69 6E 67 20 63 6C 6F
             63 6B
      00377D 0A                     907 	.db 0x0a
      00377E 0D                     908 	.db 0x0d
      00377F 00                     909 	.db 0x00
                                    910 	.area CSEG    (CODE)
                                    911 	.area CONST   (CODE)
      003780                        912 ___str_3:
      003780 53 74 6F 70 70 69 6E   913 	.ascii "Stopping clock"
             67 20 63 6C 6F 63 6B
      00378E 0A                     914 	.db 0x0a
      00378F 0D                     915 	.db 0x0d
      003790 00                     916 	.db 0x00
                                    917 	.area CSEG    (CODE)
                                    918 	.area CONST   (CODE)
      003791                        919 ___str_4:
      003791 52 65 73 65 74 74 69   920 	.ascii "Resetting clock"
             6E 67 20 63 6C 6F 63
             6B
      0037A0 0A                     921 	.db 0x0a
      0037A1 0D                     922 	.db 0x0d
      0037A2 00                     923 	.db 0x00
                                    924 	.area CSEG    (CODE)
                                    925 	.area CONST   (CODE)
      0037A3                        926 ___str_5:
      0037A3 4C 43 44 20 52 41 4D   927 	.ascii "LCD RAM dump:"
             20 64 75 6D 70 3A
      0037B0 0A                     928 	.db 0x0a
      0037B1 0D                     929 	.db 0x0d
      0037B2 00                     930 	.db 0x00
                                    931 	.area CSEG    (CODE)
                                    932 	.area CONST   (CODE)
      0037B3                        933 ___str_6:
      0037B3 44 44 52 41 4D 20 64   934 	.ascii "DDRAM dump:"
             75 6D 70 3A
      0037BE 0A                     935 	.db 0x0a
      0037BF 0D                     936 	.db 0x0d
      0037C0 00                     937 	.db 0x00
                                    938 	.area CSEG    (CODE)
                                    939 	.area CONST   (CODE)
      0037C1                        940 ___str_7:
      0037C1 43 47 52 41 4D 20 64   941 	.ascii "CGRAM dump:"
             75 6D 70 3A
      0037CC 0A                     942 	.db 0x0a
      0037CD 0D                     943 	.db 0x0d
      0037CE 00                     944 	.db 0x00
                                    945 	.area CSEG    (CODE)
                                    946 	.area CONST   (CODE)
      0037CF                        947 ___str_8:
      0037CF 20 70 72 69 6E 74 69   948 	.ascii " printing custom character"
             6E 67 20 63 75 73 74
             6F 6D 20 63 68 61 72
             61 63 74 65 72
      0037E9 0A                     949 	.db 0x0a
      0037EA 0D                     950 	.db 0x0d
      0037EB 00                     951 	.db 0x00
                                    952 	.area CSEG    (CODE)
                                    953 	.area XINIT   (CODE)
                                    954 	.area CABS    (ABS,CODE)
