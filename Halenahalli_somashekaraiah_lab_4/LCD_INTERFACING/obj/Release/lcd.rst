                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lcd_command_PARM_3
                                     12 	.globl _lcd_command_PARM_2
                                     13 	.globl _get_hex_value
                                     14 	.globl _echo
                                     15 	.globl _printf_tiny
                                     16 	.globl _delay
                                     17 	.globl _P5_7
                                     18 	.globl _P5_6
                                     19 	.globl _P5_5
                                     20 	.globl _P5_4
                                     21 	.globl _P5_3
                                     22 	.globl _P5_2
                                     23 	.globl _P5_1
                                     24 	.globl _P5_0
                                     25 	.globl _P4_7
                                     26 	.globl _P4_6
                                     27 	.globl _P4_5
                                     28 	.globl _P4_4
                                     29 	.globl _P4_3
                                     30 	.globl _P4_2
                                     31 	.globl _P4_1
                                     32 	.globl _P4_0
                                     33 	.globl _PX0L
                                     34 	.globl _PT0L
                                     35 	.globl _PX1L
                                     36 	.globl _PT1L
                                     37 	.globl _PSL
                                     38 	.globl _PT2L
                                     39 	.globl _PPCL
                                     40 	.globl _EC
                                     41 	.globl _CCF0
                                     42 	.globl _CCF1
                                     43 	.globl _CCF2
                                     44 	.globl _CCF3
                                     45 	.globl _CCF4
                                     46 	.globl _CR
                                     47 	.globl _CF
                                     48 	.globl _TF2
                                     49 	.globl _EXF2
                                     50 	.globl _RCLK
                                     51 	.globl _TCLK
                                     52 	.globl _EXEN2
                                     53 	.globl _TR2
                                     54 	.globl _C_T2
                                     55 	.globl _CP_RL2
                                     56 	.globl _T2CON_7
                                     57 	.globl _T2CON_6
                                     58 	.globl _T2CON_5
                                     59 	.globl _T2CON_4
                                     60 	.globl _T2CON_3
                                     61 	.globl _T2CON_2
                                     62 	.globl _T2CON_1
                                     63 	.globl _T2CON_0
                                     64 	.globl _PT2
                                     65 	.globl _ET2
                                     66 	.globl _CY
                                     67 	.globl _AC
                                     68 	.globl _F0
                                     69 	.globl _RS1
                                     70 	.globl _RS0
                                     71 	.globl _OV
                                     72 	.globl _F1
                                     73 	.globl _P
                                     74 	.globl _PS
                                     75 	.globl _PT1
                                     76 	.globl _PX1
                                     77 	.globl _PT0
                                     78 	.globl _PX0
                                     79 	.globl _RD
                                     80 	.globl _WR
                                     81 	.globl _T1
                                     82 	.globl _T0
                                     83 	.globl _INT1
                                     84 	.globl _INT0
                                     85 	.globl _TXD
                                     86 	.globl _RXD
                                     87 	.globl _P3_7
                                     88 	.globl _P3_6
                                     89 	.globl _P3_5
                                     90 	.globl _P3_4
                                     91 	.globl _P3_3
                                     92 	.globl _P3_2
                                     93 	.globl _P3_1
                                     94 	.globl _P3_0
                                     95 	.globl _EA
                                     96 	.globl _ES
                                     97 	.globl _ET1
                                     98 	.globl _EX1
                                     99 	.globl _ET0
                                    100 	.globl _EX0
                                    101 	.globl _P2_7
                                    102 	.globl _P2_6
                                    103 	.globl _P2_5
                                    104 	.globl _P2_4
                                    105 	.globl _P2_3
                                    106 	.globl _P2_2
                                    107 	.globl _P2_1
                                    108 	.globl _P2_0
                                    109 	.globl _SM0
                                    110 	.globl _SM1
                                    111 	.globl _SM2
                                    112 	.globl _REN
                                    113 	.globl _TB8
                                    114 	.globl _RB8
                                    115 	.globl _TI
                                    116 	.globl _RI
                                    117 	.globl _P1_7
                                    118 	.globl _P1_6
                                    119 	.globl _P1_5
                                    120 	.globl _P1_4
                                    121 	.globl _P1_3
                                    122 	.globl _P1_2
                                    123 	.globl _P1_1
                                    124 	.globl _P1_0
                                    125 	.globl _TF1
                                    126 	.globl _TR1
                                    127 	.globl _TF0
                                    128 	.globl _TR0
                                    129 	.globl _IE1
                                    130 	.globl _IT1
                                    131 	.globl _IE0
                                    132 	.globl _IT0
                                    133 	.globl _P0_7
                                    134 	.globl _P0_6
                                    135 	.globl _P0_5
                                    136 	.globl _P0_4
                                    137 	.globl _P0_3
                                    138 	.globl _P0_2
                                    139 	.globl _P0_1
                                    140 	.globl _P0_0
                                    141 	.globl _EECON
                                    142 	.globl _KBF
                                    143 	.globl _KBE
                                    144 	.globl _KBLS
                                    145 	.globl _BRL
                                    146 	.globl _BDRCON
                                    147 	.globl _T2MOD
                                    148 	.globl _SPDAT
                                    149 	.globl _SPSTA
                                    150 	.globl _SPCON
                                    151 	.globl _SADEN
                                    152 	.globl _SADDR
                                    153 	.globl _WDTPRG
                                    154 	.globl _WDTRST
                                    155 	.globl _P5
                                    156 	.globl _P4
                                    157 	.globl _IPH1
                                    158 	.globl _IPL1
                                    159 	.globl _IPH0
                                    160 	.globl _IPL0
                                    161 	.globl _IEN1
                                    162 	.globl _IEN0
                                    163 	.globl _CMOD
                                    164 	.globl _CL
                                    165 	.globl _CH
                                    166 	.globl _CCON
                                    167 	.globl _CCAPM4
                                    168 	.globl _CCAPM3
                                    169 	.globl _CCAPM2
                                    170 	.globl _CCAPM1
                                    171 	.globl _CCAPM0
                                    172 	.globl _CCAP4L
                                    173 	.globl _CCAP3L
                                    174 	.globl _CCAP2L
                                    175 	.globl _CCAP1L
                                    176 	.globl _CCAP0L
                                    177 	.globl _CCAP4H
                                    178 	.globl _CCAP3H
                                    179 	.globl _CCAP2H
                                    180 	.globl _CCAP1H
                                    181 	.globl _CCAP0H
                                    182 	.globl _CKCON1
                                    183 	.globl _CKCON0
                                    184 	.globl _CKRL
                                    185 	.globl _AUXR1
                                    186 	.globl _AUXR
                                    187 	.globl _TH2
                                    188 	.globl _TL2
                                    189 	.globl _RCAP2H
                                    190 	.globl _RCAP2L
                                    191 	.globl _T2CON
                                    192 	.globl _B
                                    193 	.globl _ACC
                                    194 	.globl _PSW
                                    195 	.globl _IP
                                    196 	.globl _P3
                                    197 	.globl _IE
                                    198 	.globl _P2
                                    199 	.globl _SBUF
                                    200 	.globl _SCON
                                    201 	.globl _P1
                                    202 	.globl _TH1
                                    203 	.globl _TH0
                                    204 	.globl _TL1
                                    205 	.globl _TL0
                                    206 	.globl _TMOD
                                    207 	.globl _TCON
                                    208 	.globl _PCON
                                    209 	.globl _DPH
                                    210 	.globl _DPL
                                    211 	.globl _SP
                                    212 	.globl _P0
                                    213 	.globl _db
                                    214 	.globl _arrow_set_PARM_3
                                    215 	.globl _arrow_set_PARM_2
                                    216 	.globl _lcdcreatechar_PARM_2
                                    217 	.globl _lcdgotoxy_PARM_2
                                    218 	.globl _clockrun_flag
                                    219 	.globl _ptr
                                    220 	.globl _lcd_command
                                    221 	.globl _lcdbusywait
                                    222 	.globl _lcdgotoaddr
                                    223 	.globl _lcdgotoxy
                                    224 	.globl _lcdputch
                                    225 	.globl _lcdputstr
                                    226 	.globl _lcdinit
                                    227 	.globl _lcdclear
                                    228 	.globl _test_functionality
                                    229 	.globl _set_cgram_address
                                    230 	.globl _lcdcreatechar
                                    231 	.globl _reset_clock
                                    232 	.globl _clock_run
                                    233 	.globl _menu_lcd
                                    234 	.globl _arrow_set
                                    235 	.globl _set_ddram_address
                                    236 	.globl _read_xxram_address
                                    237 	.globl _ddram_hex_dump
                                    238 	.globl _cgram_hex_dump
                                    239 	.globl _process_custom_character
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           000080   245 _P0	=	0x0080
                           000081   246 _SP	=	0x0081
                           000082   247 _DPL	=	0x0082
                           000083   248 _DPH	=	0x0083
                           000087   249 _PCON	=	0x0087
                           000088   250 _TCON	=	0x0088
                           000089   251 _TMOD	=	0x0089
                           00008A   252 _TL0	=	0x008a
                           00008B   253 _TL1	=	0x008b
                           00008C   254 _TH0	=	0x008c
                           00008D   255 _TH1	=	0x008d
                           000090   256 _P1	=	0x0090
                           000098   257 _SCON	=	0x0098
                           000099   258 _SBUF	=	0x0099
                           0000A0   259 _P2	=	0x00a0
                           0000A8   260 _IE	=	0x00a8
                           0000B0   261 _P3	=	0x00b0
                           0000B8   262 _IP	=	0x00b8
                           0000D0   263 _PSW	=	0x00d0
                           0000E0   264 _ACC	=	0x00e0
                           0000F0   265 _B	=	0x00f0
                           0000C8   266 _T2CON	=	0x00c8
                           0000CA   267 _RCAP2L	=	0x00ca
                           0000CB   268 _RCAP2H	=	0x00cb
                           0000CC   269 _TL2	=	0x00cc
                           0000CD   270 _TH2	=	0x00cd
                           00008E   271 _AUXR	=	0x008e
                           0000A2   272 _AUXR1	=	0x00a2
                           000097   273 _CKRL	=	0x0097
                           00008F   274 _CKCON0	=	0x008f
                           0000AF   275 _CKCON1	=	0x00af
                           0000FA   276 _CCAP0H	=	0x00fa
                           0000FB   277 _CCAP1H	=	0x00fb
                           0000FC   278 _CCAP2H	=	0x00fc
                           0000FD   279 _CCAP3H	=	0x00fd
                           0000FE   280 _CCAP4H	=	0x00fe
                           0000EA   281 _CCAP0L	=	0x00ea
                           0000EB   282 _CCAP1L	=	0x00eb
                           0000EC   283 _CCAP2L	=	0x00ec
                           0000ED   284 _CCAP3L	=	0x00ed
                           0000EE   285 _CCAP4L	=	0x00ee
                           0000DA   286 _CCAPM0	=	0x00da
                           0000DB   287 _CCAPM1	=	0x00db
                           0000DC   288 _CCAPM2	=	0x00dc
                           0000DD   289 _CCAPM3	=	0x00dd
                           0000DE   290 _CCAPM4	=	0x00de
                           0000D8   291 _CCON	=	0x00d8
                           0000F9   292 _CH	=	0x00f9
                           0000E9   293 _CL	=	0x00e9
                           0000D9   294 _CMOD	=	0x00d9
                           0000A8   295 _IEN0	=	0x00a8
                           0000B1   296 _IEN1	=	0x00b1
                           0000B8   297 _IPL0	=	0x00b8
                           0000B7   298 _IPH0	=	0x00b7
                           0000B2   299 _IPL1	=	0x00b2
                           0000B3   300 _IPH1	=	0x00b3
                           0000C0   301 _P4	=	0x00c0
                           0000E8   302 _P5	=	0x00e8
                           0000A6   303 _WDTRST	=	0x00a6
                           0000A7   304 _WDTPRG	=	0x00a7
                           0000A9   305 _SADDR	=	0x00a9
                           0000B9   306 _SADEN	=	0x00b9
                           0000C3   307 _SPCON	=	0x00c3
                           0000C4   308 _SPSTA	=	0x00c4
                           0000C5   309 _SPDAT	=	0x00c5
                           0000C9   310 _T2MOD	=	0x00c9
                           00009B   311 _BDRCON	=	0x009b
                           00009A   312 _BRL	=	0x009a
                           00009C   313 _KBLS	=	0x009c
                           00009D   314 _KBE	=	0x009d
                           00009E   315 _KBF	=	0x009e
                           0000D2   316 _EECON	=	0x00d2
                                    317 ;--------------------------------------------------------
                                    318 ; special function bits
                                    319 ;--------------------------------------------------------
                                    320 	.area RSEG    (ABS,DATA)
      000000                        321 	.org 0x0000
                           000080   322 _P0_0	=	0x0080
                           000081   323 _P0_1	=	0x0081
                           000082   324 _P0_2	=	0x0082
                           000083   325 _P0_3	=	0x0083
                           000084   326 _P0_4	=	0x0084
                           000085   327 _P0_5	=	0x0085
                           000086   328 _P0_6	=	0x0086
                           000087   329 _P0_7	=	0x0087
                           000088   330 _IT0	=	0x0088
                           000089   331 _IE0	=	0x0089
                           00008A   332 _IT1	=	0x008a
                           00008B   333 _IE1	=	0x008b
                           00008C   334 _TR0	=	0x008c
                           00008D   335 _TF0	=	0x008d
                           00008E   336 _TR1	=	0x008e
                           00008F   337 _TF1	=	0x008f
                           000090   338 _P1_0	=	0x0090
                           000091   339 _P1_1	=	0x0091
                           000092   340 _P1_2	=	0x0092
                           000093   341 _P1_3	=	0x0093
                           000094   342 _P1_4	=	0x0094
                           000095   343 _P1_5	=	0x0095
                           000096   344 _P1_6	=	0x0096
                           000097   345 _P1_7	=	0x0097
                           000098   346 _RI	=	0x0098
                           000099   347 _TI	=	0x0099
                           00009A   348 _RB8	=	0x009a
                           00009B   349 _TB8	=	0x009b
                           00009C   350 _REN	=	0x009c
                           00009D   351 _SM2	=	0x009d
                           00009E   352 _SM1	=	0x009e
                           00009F   353 _SM0	=	0x009f
                           0000A0   354 _P2_0	=	0x00a0
                           0000A1   355 _P2_1	=	0x00a1
                           0000A2   356 _P2_2	=	0x00a2
                           0000A3   357 _P2_3	=	0x00a3
                           0000A4   358 _P2_4	=	0x00a4
                           0000A5   359 _P2_5	=	0x00a5
                           0000A6   360 _P2_6	=	0x00a6
                           0000A7   361 _P2_7	=	0x00a7
                           0000A8   362 _EX0	=	0x00a8
                           0000A9   363 _ET0	=	0x00a9
                           0000AA   364 _EX1	=	0x00aa
                           0000AB   365 _ET1	=	0x00ab
                           0000AC   366 _ES	=	0x00ac
                           0000AF   367 _EA	=	0x00af
                           0000B0   368 _P3_0	=	0x00b0
                           0000B1   369 _P3_1	=	0x00b1
                           0000B2   370 _P3_2	=	0x00b2
                           0000B3   371 _P3_3	=	0x00b3
                           0000B4   372 _P3_4	=	0x00b4
                           0000B5   373 _P3_5	=	0x00b5
                           0000B6   374 _P3_6	=	0x00b6
                           0000B7   375 _P3_7	=	0x00b7
                           0000B0   376 _RXD	=	0x00b0
                           0000B1   377 _TXD	=	0x00b1
                           0000B2   378 _INT0	=	0x00b2
                           0000B3   379 _INT1	=	0x00b3
                           0000B4   380 _T0	=	0x00b4
                           0000B5   381 _T1	=	0x00b5
                           0000B6   382 _WR	=	0x00b6
                           0000B7   383 _RD	=	0x00b7
                           0000B8   384 _PX0	=	0x00b8
                           0000B9   385 _PT0	=	0x00b9
                           0000BA   386 _PX1	=	0x00ba
                           0000BB   387 _PT1	=	0x00bb
                           0000BC   388 _PS	=	0x00bc
                           0000D0   389 _P	=	0x00d0
                           0000D1   390 _F1	=	0x00d1
                           0000D2   391 _OV	=	0x00d2
                           0000D3   392 _RS0	=	0x00d3
                           0000D4   393 _RS1	=	0x00d4
                           0000D5   394 _F0	=	0x00d5
                           0000D6   395 _AC	=	0x00d6
                           0000D7   396 _CY	=	0x00d7
                           0000AD   397 _ET2	=	0x00ad
                           0000BD   398 _PT2	=	0x00bd
                           0000C8   399 _T2CON_0	=	0x00c8
                           0000C9   400 _T2CON_1	=	0x00c9
                           0000CA   401 _T2CON_2	=	0x00ca
                           0000CB   402 _T2CON_3	=	0x00cb
                           0000CC   403 _T2CON_4	=	0x00cc
                           0000CD   404 _T2CON_5	=	0x00cd
                           0000CE   405 _T2CON_6	=	0x00ce
                           0000CF   406 _T2CON_7	=	0x00cf
                           0000C8   407 _CP_RL2	=	0x00c8
                           0000C9   408 _C_T2	=	0x00c9
                           0000CA   409 _TR2	=	0x00ca
                           0000CB   410 _EXEN2	=	0x00cb
                           0000CC   411 _TCLK	=	0x00cc
                           0000CD   412 _RCLK	=	0x00cd
                           0000CE   413 _EXF2	=	0x00ce
                           0000CF   414 _TF2	=	0x00cf
                           0000DF   415 _CF	=	0x00df
                           0000DE   416 _CR	=	0x00de
                           0000DC   417 _CCF4	=	0x00dc
                           0000DB   418 _CCF3	=	0x00db
                           0000DA   419 _CCF2	=	0x00da
                           0000D9   420 _CCF1	=	0x00d9
                           0000D8   421 _CCF0	=	0x00d8
                           0000AE   422 _EC	=	0x00ae
                           0000BE   423 _PPCL	=	0x00be
                           0000BD   424 _PT2L	=	0x00bd
                           0000BC   425 _PSL	=	0x00bc
                           0000BB   426 _PT1L	=	0x00bb
                           0000BA   427 _PX1L	=	0x00ba
                           0000B9   428 _PT0L	=	0x00b9
                           0000B8   429 _PX0L	=	0x00b8
                           0000C0   430 _P4_0	=	0x00c0
                           0000C1   431 _P4_1	=	0x00c1
                           0000C2   432 _P4_2	=	0x00c2
                           0000C3   433 _P4_3	=	0x00c3
                           0000C4   434 _P4_4	=	0x00c4
                           0000C5   435 _P4_5	=	0x00c5
                           0000C6   436 _P4_6	=	0x00c6
                           0000C7   437 _P4_7	=	0x00c7
                           0000E8   438 _P5_0	=	0x00e8
                           0000E9   439 _P5_1	=	0x00e9
                           0000EA   440 _P5_2	=	0x00ea
                           0000EB   441 _P5_3	=	0x00eb
                           0000EC   442 _P5_4	=	0x00ec
                           0000ED   443 _P5_5	=	0x00ed
                           0000EE   444 _P5_6	=	0x00ee
                           0000EF   445 _P5_7	=	0x00ef
                                    446 ;--------------------------------------------------------
                                    447 ; overlayable register banks
                                    448 ;--------------------------------------------------------
                                    449 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        450 	.ds 8
                                    451 ;--------------------------------------------------------
                                    452 ; internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area DSEG    (DATA)
      000022                        455 _ptr::
      000022                        456 	.ds 2
      000024                        457 _min_high:
      000024                        458 	.ds 1
      000025                        459 _min_low:
      000025                        460 	.ds 1
      000026                        461 _sec_high:
      000026                        462 	.ds 1
      000027                        463 _sec_low:
      000027                        464 	.ds 1
      000028                        465 _mili_sec:
      000028                        466 	.ds 1
      000029                        467 _clockrun_flag::
      000029                        468 	.ds 2
      00002B                        469 _custom_char_code:
      00002B                        470 	.ds 1
      00002C                        471 _elapsed_tick:
      00002C                        472 	.ds 4
      000030                        473 _lcdgotoxy_PARM_2:
      000030                        474 	.ds 1
      000031                        475 _lcdcreatechar_PARM_2:
      000031                        476 	.ds 1
      000032                        477 _arrow_set_PARM_2:
      000032                        478 	.ds 1
      000033                        479 _arrow_set_PARM_3:
      000033                        480 	.ds 1
      000034                        481 _process_custom_character_char_array_65537_92:
      000034                        482 	.ds 8
                                    483 ;--------------------------------------------------------
                                    484 ; overlayable items in internal ram
                                    485 ;--------------------------------------------------------
                                    486 	.area	OSEG    (OVR,DATA)
      00000B                        487 _lcd_command_PARM_2:
      00000B                        488 	.ds 1
      00000C                        489 _lcd_command_PARM_3:
      00000C                        490 	.ds 1
                                    491 ;--------------------------------------------------------
                                    492 ; indirectly addressable internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area ISEG    (DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; absolute internal ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area IABS    (ABS,DATA)
                                    499 	.area IABS    (ABS,DATA)
                                    500 ;--------------------------------------------------------
                                    501 ; bit data
                                    502 ;--------------------------------------------------------
                                    503 	.area BSEG    (BIT)
      000000                        504 _lcdgotoxy_sloc0_1_0:
      000000                        505 	.ds 1
                                    506 ;--------------------------------------------------------
                                    507 ; paged external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area PSEG    (PAG,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; external ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XSEG    (XDATA)
                                    514 ;--------------------------------------------------------
                                    515 ; absolute external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XABS    (ABS,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; external initialized ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XISEG   (XDATA)
      00FC00                        522 _db::
      00FC00                        523 	.ds 1
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT0 (CODE)
                                    526 	.area GSINIT1 (CODE)
                                    527 	.area GSINIT2 (CODE)
                                    528 	.area GSINIT3 (CODE)
                                    529 	.area GSINIT4 (CODE)
                                    530 	.area GSINIT5 (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area CSEG    (CODE)
                                    534 ;--------------------------------------------------------
                                    535 ; global & static initialisations
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 ;	lcd.c:31: extern __xdata uint8_t * ptr = &db;
      00208F 75 22 00         [24]  542 	mov	_ptr,#_db
      002092 75 23 FC         [24]  543 	mov	(_ptr + 1),#(_db >> 8)
                                    544 ;	lcd.c:37: extern volatile unsigned int clockrun_flag = 0;
      002095 E4               [12]  545 	clr	a
      002096 F5 29            [12]  546 	mov	_clockrun_flag,a
      002098 F5 2A            [12]  547 	mov	(_clockrun_flag + 1),a
                                    548 ;	lcd.c:39: static uint8_t custom_char_code = 1;
      00209A 75 2B 01         [24]  549 	mov	_custom_char_code,#0x01
                                    550 ;	lcd.c:40: static uint32_t  elapsed_tick = 0;
      00209D F5 2C            [12]  551 	mov	_elapsed_tick,a
      00209F F5 2D            [12]  552 	mov	(_elapsed_tick + 1),a
      0020A1 F5 2E            [12]  553 	mov	(_elapsed_tick + 2),a
      0020A3 F5 2F            [12]  554 	mov	(_elapsed_tick + 3),a
                                    555 ;--------------------------------------------------------
                                    556 ; Home
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area HOME    (CODE)
                                    560 ;--------------------------------------------------------
                                    561 ; code
                                    562 ;--------------------------------------------------------
                                    563 	.area CSEG    (CODE)
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'lcd_command'
                                    566 ;------------------------------------------------------------
                                    567 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    568 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    569 ;rs                        Allocated to registers r7 
                                    570 ;------------------------------------------------------------
                                    571 ;	lcd.c:48: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
                                    572 ;	-----------------------------------------
                                    573 ;	 function lcd_command
                                    574 ;	-----------------------------------------
      0020E8                        575 _lcd_command:
                           000007   576 	ar7 = 0x07
                           000006   577 	ar6 = 0x06
                           000005   578 	ar5 = 0x05
                           000004   579 	ar4 = 0x04
                           000003   580 	ar3 = 0x03
                           000002   581 	ar2 = 0x02
                           000001   582 	ar1 = 0x01
                           000000   583 	ar0 = 0x00
                                    584 ;	lcd.c:49: RS = rs;              // Set the Register Select pin based on the provided parameter.
                                    585 ;	assignBit
      0020E8 E5 82            [12]  586 	mov	a,dpl
      0020EA 24 FF            [12]  587 	add	a,#0xff
      0020EC 92 96            [24]  588 	mov	_P1_6,c
                                    589 ;	lcd.c:50: R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
                                    590 ;	assignBit
      0020EE E5 0B            [12]  591 	mov	a,_lcd_command_PARM_2
      0020F0 24 FF            [12]  592 	add	a,#0xff
      0020F2 92 97            [24]  593 	mov	_P1_7,c
                                    594 ;	lcd.c:51: *ptr = data;          // Write the specified data byte to the LCD data buffer.
      0020F4 85 22 82         [24]  595 	mov	dpl,_ptr
      0020F7 85 23 83         [24]  596 	mov	dph,(_ptr + 1)
      0020FA E5 0C            [12]  597 	mov	a,_lcd_command_PARM_3
      0020FC F0               [24]  598 	movx	@dptr,a
                                    599 ;	lcd.c:52: }
      0020FD 22               [24]  600 	ret
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'lcdbusywait'
                                    603 ;------------------------------------------------------------
                                    604 ;	lcd.c:57: void lcdbusywait() {
                                    605 ;	-----------------------------------------
                                    606 ;	 function lcdbusywait
                                    607 ;	-----------------------------------------
      0020FE                        608 _lcdbusywait:
                                    609 ;	lcd.c:58: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    610 ;	assignBit
      0020FE C2 96            [12]  611 	clr	_P1_6
                                    612 ;	lcd.c:59: R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
                                    613 ;	assignBit
      002100 D2 97            [12]  614 	setb	_P1_7
                                    615 ;	lcd.c:60: while (*ptr & (0b10000000)) {
      002102                        616 00101$:
      002102 85 22 82         [24]  617 	mov	dpl,_ptr
      002105 85 23 83         [24]  618 	mov	dph,(_ptr + 1)
      002108 E0               [24]  619 	movx	a,@dptr
      002109 20 E7 F6         [24]  620 	jb	acc.7,00101$
                                    621 ;	lcd.c:63: }
      00210C 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    625 ;------------------------------------------------------------
                                    626 ;addr                      Allocated to registers r7 
                                    627 ;------------------------------------------------------------
                                    628 ;	lcd.c:69: void lcdgotoaddr(uint8_t addr) {
                                    629 ;	-----------------------------------------
                                    630 ;	 function lcdgotoaddr
                                    631 ;	-----------------------------------------
      00210D                        632 _lcdgotoaddr:
      00210D AF 82            [24]  633 	mov	r7,dpl
                                    634 ;	lcd.c:70: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    635 ;	assignBit
      00210F C2 96            [12]  636 	clr	_P1_6
                                    637 ;	lcd.c:71: R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
                                    638 ;	assignBit
      002111 C2 97            [12]  639 	clr	_P1_7
                                    640 ;	lcd.c:72: *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
      002113 85 22 82         [24]  641 	mov	dpl,_ptr
      002116 85 23 83         [24]  642 	mov	dph,(_ptr + 1)
      002119 43 07 80         [24]  643 	orl	ar7,#0x80
      00211C EF               [12]  644 	mov	a,r7
      00211D F0               [24]  645 	movx	@dptr,a
                                    646 ;	lcd.c:73: lcdbusywait();               // Wait until the LCD becomes idle.
                                    647 ;	lcd.c:74: }
      00211E 02 20 FE         [24]  648 	ljmp	_lcdbusywait
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'lcdgotoxy'
                                    651 ;------------------------------------------------------------
                                    652 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    653 ;row                       Allocated to registers r7 
                                    654 ;------------------------------------------------------------
                                    655 ;	lcd.c:81: void lcdgotoxy(uint8_t row, uint8_t column) {
                                    656 ;	-----------------------------------------
                                    657 ;	 function lcdgotoxy
                                    658 ;	-----------------------------------------
      002121                        659 _lcdgotoxy:
                                    660 ;	lcd.c:83: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      002121 AE 82            [24]  661 	mov	r6,dpl
      002123 7F 00            [12]  662 	mov	r7,#0x00
      002125 EE               [12]  663 	mov	a,r6
      002126 30 E0 23         [24]  664 	jnb	acc.0,00103$
      002129 75 0B 03         [24]  665 	mov	__modsint_PARM_2,#0x03
      00212C 75 0C 00         [24]  666 	mov	(__modsint_PARM_2 + 1),#0x00
      00212F 8E 82            [24]  667 	mov	dpl,r6
      002131 8F 83            [24]  668 	mov	dph,r7
      002133 12 2C 76         [24]  669 	lcall	__modsint
      002136 AC 82            [24]  670 	mov	r4,dpl
      002138 AD 83            [24]  671 	mov	r5,dph
      00213A EC               [12]  672 	mov	a,r4
      00213B 4D               [12]  673 	orl	a,r5
      00213C B4 01 00         [24]  674 	cjne	a,#0x01,00110$
      00213F                        675 00110$:
      00213F 92 00            [24]  676 	mov  _lcdgotoxy_sloc0_1_0,c
      002141 E4               [12]  677 	clr	a
      002142 33               [12]  678 	rlc	a
      002143 C4               [12]  679 	swap	a
      002144 54 F0            [12]  680 	anl	a,#0xf0
      002146 AC 30            [24]  681 	mov	r4,_lcdgotoxy_PARM_2
      002148 2C               [12]  682 	add	a,r4
      002149 FD               [12]  683 	mov	r5,a
      00214A 80 1A            [24]  684 	sjmp	00104$
      00214C                        685 00103$:
      00214C AC 30            [24]  686 	mov	r4,_lcdgotoxy_PARM_2
      00214E 74 40            [12]  687 	mov	a,#0x40
      002150 2C               [12]  688 	add	a,r4
      002151 FC               [12]  689 	mov	r4,a
      002152 53 06 03         [24]  690 	anl	ar6,#0x03
      002155 7F 00            [12]  691 	mov	r7,#0x00
      002157 EE               [12]  692 	mov	a,r6
      002158 4F               [12]  693 	orl	a,r7
      002159 B4 01 00         [24]  694 	cjne	a,#0x01,00111$
      00215C                        695 00111$:
      00215C 92 00            [24]  696 	mov  _lcdgotoxy_sloc0_1_0,c
      00215E E4               [12]  697 	clr	a
      00215F 33               [12]  698 	rlc	a
      002160 C4               [12]  699 	swap	a
      002161 54 F0            [12]  700 	anl	a,#0xf0
      002163 FF               [12]  701 	mov	r7,a
      002164 2C               [12]  702 	add	a,r4
      002165 FD               [12]  703 	mov	r5,a
      002166                        704 00104$:
      002166 ED               [12]  705 	mov	a,r5
      002167 14               [12]  706 	dec	a
      002168 F5 82            [12]  707 	mov	dpl,a
                                    708 ;	lcd.c:84: }
      00216A 02 21 0D         [24]  709 	ljmp	_lcdgotoaddr
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'lcdputch'
                                    712 ;------------------------------------------------------------
                                    713 ;cc                        Allocated to registers r7 
                                    714 ;------------------------------------------------------------
                                    715 ;	lcd.c:90: void lcdputch(uint8_t cc) {
                                    716 ;	-----------------------------------------
                                    717 ;	 function lcdputch
                                    718 ;	-----------------------------------------
      00216D                        719 _lcdputch:
      00216D AF 82            [24]  720 	mov	r7,dpl
                                    721 ;	lcd.c:92: RS = PULSE_HIGH;
                                    722 ;	assignBit
      00216F D2 96            [12]  723 	setb	_P1_6
                                    724 ;	lcd.c:93: R_W = PULSE_LOW;
                                    725 ;	assignBit
      002171 C2 97            [12]  726 	clr	_P1_7
                                    727 ;	lcd.c:94: *ptr = cc;
      002173 85 22 82         [24]  728 	mov	dpl,_ptr
      002176 85 23 83         [24]  729 	mov	dph,(_ptr + 1)
      002179 EF               [12]  730 	mov	a,r7
      00217A F0               [24]  731 	movx	@dptr,a
                                    732 ;	lcd.c:95: lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
                                    733 ;	lcd.c:96: }
      00217B 02 20 FE         [24]  734 	ljmp	_lcdbusywait
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'lcdputstr'
                                    737 ;------------------------------------------------------------
                                    738 ;ss                        Allocated to registers 
                                    739 ;lcd_ptr_addr              Allocated to registers r4 
                                    740 ;------------------------------------------------------------
                                    741 ;	lcd.c:103: void lcdputstr(uint8_t *ss) {
                                    742 ;	-----------------------------------------
                                    743 ;	 function lcdputstr
                                    744 ;	-----------------------------------------
      00217E                        745 _lcdputstr:
      00217E AD 82            [24]  746 	mov	r5,dpl
      002180 AE 83            [24]  747 	mov	r6,dph
      002182 AF F0            [24]  748 	mov	r7,b
                                    749 ;	lcd.c:107: while (*ss != '\0') {
      002184                        750 00107$:
      002184 8D 82            [24]  751 	mov	dpl,r5
      002186 8E 83            [24]  752 	mov	dph,r6
      002188 8F F0            [24]  753 	mov	b,r7
      00218A 12 2C 5A         [24]  754 	lcall	__gptrget
      00218D 70 01            [24]  755 	jnz	00137$
      00218F 22               [24]  756 	ret
      002190                        757 00137$:
                                    758 ;	lcd.c:109: RS = PULSE_LOW;
                                    759 ;	assignBit
      002190 C2 96            [12]  760 	clr	_P1_6
                                    761 ;	lcd.c:110: R_W = PULSE_HIGH;
                                    762 ;	assignBit
      002192 D2 97            [12]  763 	setb	_P1_7
                                    764 ;	lcd.c:111: lcdputch(*ss);
      002194 8D 82            [24]  765 	mov	dpl,r5
      002196 8E 83            [24]  766 	mov	dph,r6
      002198 8F F0            [24]  767 	mov	b,r7
      00219A 12 2C 5A         [24]  768 	lcall	__gptrget
      00219D F5 82            [12]  769 	mov	dpl,a
      00219F C0 07            [24]  770 	push	ar7
      0021A1 C0 06            [24]  771 	push	ar6
      0021A3 C0 05            [24]  772 	push	ar5
      0021A5 12 21 6D         [24]  773 	lcall	_lcdputch
      0021A8 D0 05            [24]  774 	pop	ar5
      0021AA D0 06            [24]  775 	pop	ar6
      0021AC D0 07            [24]  776 	pop	ar7
                                    777 ;	lcd.c:114: lcd_ptr_addr = *ptr & (0b01111111);
      0021AE 85 22 82         [24]  778 	mov	dpl,_ptr
      0021B1 85 23 83         [24]  779 	mov	dph,(_ptr + 1)
      0021B4 E0               [24]  780 	movx	a,@dptr
      0021B5 FC               [12]  781 	mov	r4,a
      0021B6 53 04 7F         [24]  782 	anl	ar4,#0x7f
                                    783 ;	lcd.c:115: switch (lcd_ptr_addr) {
      0021B9 BC 10 02         [24]  784 	cjne	r4,#0x10,00138$
      0021BC 80 0F            [24]  785 	sjmp	00101$
      0021BE                        786 00138$:
      0021BE BC 20 02         [24]  787 	cjne	r4,#0x20,00139$
      0021C1 80 32            [24]  788 	sjmp	00103$
      0021C3                        789 00139$:
      0021C3 BC 50 02         [24]  790 	cjne	r4,#0x50,00140$
      0021C6 80 19            [24]  791 	sjmp	00102$
      0021C8                        792 00140$:
                                    793 ;	lcd.c:116: case 0x10:
      0021C8 BC 60 50         [24]  794 	cjne	r4,#0x60,00106$
      0021CB 80 3C            [24]  795 	sjmp	00104$
      0021CD                        796 00101$:
                                    797 ;	lcd.c:117: lcdgotoaddr(0x40);
      0021CD 75 82 40         [24]  798 	mov	dpl,#0x40
      0021D0 C0 07            [24]  799 	push	ar7
      0021D2 C0 06            [24]  800 	push	ar6
      0021D4 C0 05            [24]  801 	push	ar5
      0021D6 12 21 0D         [24]  802 	lcall	_lcdgotoaddr
      0021D9 D0 05            [24]  803 	pop	ar5
      0021DB D0 06            [24]  804 	pop	ar6
      0021DD D0 07            [24]  805 	pop	ar7
                                    806 ;	lcd.c:118: break;
                                    807 ;	lcd.c:119: case 0x50:
      0021DF 80 3A            [24]  808 	sjmp	00106$
      0021E1                        809 00102$:
                                    810 ;	lcd.c:120: lcdgotoaddr(0x10);
      0021E1 75 82 10         [24]  811 	mov	dpl,#0x10
      0021E4 C0 07            [24]  812 	push	ar7
      0021E6 C0 06            [24]  813 	push	ar6
      0021E8 C0 05            [24]  814 	push	ar5
      0021EA 12 21 0D         [24]  815 	lcall	_lcdgotoaddr
      0021ED D0 05            [24]  816 	pop	ar5
      0021EF D0 06            [24]  817 	pop	ar6
      0021F1 D0 07            [24]  818 	pop	ar7
                                    819 ;	lcd.c:121: break;
                                    820 ;	lcd.c:122: case 0x20:
      0021F3 80 26            [24]  821 	sjmp	00106$
      0021F5                        822 00103$:
                                    823 ;	lcd.c:123: lcdgotoaddr(0x50);
      0021F5 75 82 50         [24]  824 	mov	dpl,#0x50
      0021F8 C0 07            [24]  825 	push	ar7
      0021FA C0 06            [24]  826 	push	ar6
      0021FC C0 05            [24]  827 	push	ar5
      0021FE 12 21 0D         [24]  828 	lcall	_lcdgotoaddr
      002201 D0 05            [24]  829 	pop	ar5
      002203 D0 06            [24]  830 	pop	ar6
      002205 D0 07            [24]  831 	pop	ar7
                                    832 ;	lcd.c:124: break;
                                    833 ;	lcd.c:125: case 0x60:
      002207 80 12            [24]  834 	sjmp	00106$
      002209                        835 00104$:
                                    836 ;	lcd.c:126: lcdgotoaddr(0x00);
      002209 75 82 00         [24]  837 	mov	dpl,#0x00
      00220C C0 07            [24]  838 	push	ar7
      00220E C0 06            [24]  839 	push	ar6
      002210 C0 05            [24]  840 	push	ar5
      002212 12 21 0D         [24]  841 	lcall	_lcdgotoaddr
      002215 D0 05            [24]  842 	pop	ar5
      002217 D0 06            [24]  843 	pop	ar6
      002219 D0 07            [24]  844 	pop	ar7
                                    845 ;	lcd.c:130: }
      00221B                        846 00106$:
                                    847 ;	lcd.c:132: ss++;  // Move to the next character in the string.
      00221B 0D               [12]  848 	inc	r5
      00221C BD 00 01         [24]  849 	cjne	r5,#0x00,00142$
      00221F 0E               [12]  850 	inc	r6
      002220                        851 00142$:
                                    852 ;	lcd.c:134: }
      002220 02 21 84         [24]  853 	ljmp	00107$
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'lcdinit'
                                    856 ;------------------------------------------------------------
                                    857 ;	lcd.c:139: void lcdinit() {
                                    858 ;	-----------------------------------------
                                    859 ;	 function lcdinit
                                    860 ;	-----------------------------------------
      002223                        861 _lcdinit:
                                    862 ;	lcd.c:141: delay(14000);
      002223 90 36 B0         [24]  863 	mov	dptr,#0x36b0
      002226 E4               [12]  864 	clr	a
      002227 F5 F0            [12]  865 	mov	b,a
      002229 12 20 A8         [24]  866 	lcall	_delay
                                    867 ;	lcd.c:144: lcd_command(0, 0, 0x30);
      00222C 75 0B 00         [24]  868 	mov	_lcd_command_PARM_2,#0x00
      00222F 75 0C 30         [24]  869 	mov	_lcd_command_PARM_3,#0x30
      002232 75 82 00         [24]  870 	mov	dpl,#0x00
      002235 12 20 E8         [24]  871 	lcall	_lcd_command
                                    872 ;	lcd.c:145: delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
      002238 90 0F A0         [24]  873 	mov	dptr,#0x0fa0
      00223B E4               [12]  874 	clr	a
      00223C F5 F0            [12]  875 	mov	b,a
      00223E 12 20 A8         [24]  876 	lcall	_delay
                                    877 ;	lcd.c:146: lcd_command(0, 0, 0x30);
      002241 75 0B 00         [24]  878 	mov	_lcd_command_PARM_2,#0x00
      002244 75 0C 30         [24]  879 	mov	_lcd_command_PARM_3,#0x30
      002247 75 82 00         [24]  880 	mov	dpl,#0x00
      00224A 12 20 E8         [24]  881 	lcall	_lcd_command
                                    882 ;	lcd.c:147: delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
      00224D 90 00 64         [24]  883 	mov	dptr,#(0x64&0x00ff)
      002250 E4               [12]  884 	clr	a
      002251 F5 F0            [12]  885 	mov	b,a
      002253 12 20 A8         [24]  886 	lcall	_delay
                                    887 ;	lcd.c:148: lcd_command(0, 0, 0x30);
      002256 75 0B 00         [24]  888 	mov	_lcd_command_PARM_2,#0x00
      002259 75 0C 30         [24]  889 	mov	_lcd_command_PARM_3,#0x30
      00225C 75 82 00         [24]  890 	mov	dpl,#0x00
      00225F 12 20 E8         [24]  891 	lcall	_lcd_command
                                    892 ;	lcd.c:150: lcdbusywait();  // Wait for the LCD to finish processing the commands.
      002262 12 20 FE         [24]  893 	lcall	_lcdbusywait
                                    894 ;	lcd.c:152: lcd_command(0, 0, 0x38);  // Function set command
      002265 75 0B 00         [24]  895 	mov	_lcd_command_PARM_2,#0x00
      002268 75 0C 38         [24]  896 	mov	_lcd_command_PARM_3,#0x38
      00226B 75 82 00         [24]  897 	mov	dpl,#0x00
      00226E 12 20 E8         [24]  898 	lcall	_lcd_command
                                    899 ;	lcd.c:153: lcdbusywait();
      002271 12 20 FE         [24]  900 	lcall	_lcdbusywait
                                    901 ;	lcd.c:155: lcd_command(0, 0, 0x08);  // Turn off display command
      002274 75 0B 00         [24]  902 	mov	_lcd_command_PARM_2,#0x00
      002277 75 0C 08         [24]  903 	mov	_lcd_command_PARM_3,#0x08
      00227A 75 82 00         [24]  904 	mov	dpl,#0x00
      00227D 12 20 E8         [24]  905 	lcall	_lcd_command
                                    906 ;	lcd.c:156: lcdbusywait();
      002280 12 20 FE         [24]  907 	lcall	_lcdbusywait
                                    908 ;	lcd.c:158: lcd_command(0, 0, 0x0C);  // Turn on display command
      002283 75 0B 00         [24]  909 	mov	_lcd_command_PARM_2,#0x00
      002286 75 0C 0C         [24]  910 	mov	_lcd_command_PARM_3,#0x0c
      002289 75 82 00         [24]  911 	mov	dpl,#0x00
      00228C 12 20 E8         [24]  912 	lcall	_lcd_command
                                    913 ;	lcd.c:159: lcdbusywait();
      00228F 12 20 FE         [24]  914 	lcall	_lcdbusywait
                                    915 ;	lcd.c:161: lcd_command(0, 0, 0x06);  // Entry mode set command
      002292 75 0B 00         [24]  916 	mov	_lcd_command_PARM_2,#0x00
      002295 75 0C 06         [24]  917 	mov	_lcd_command_PARM_3,#0x06
      002298 75 82 00         [24]  918 	mov	dpl,#0x00
      00229B 12 20 E8         [24]  919 	lcall	_lcd_command
                                    920 ;	lcd.c:162: lcdbusywait();
      00229E 12 20 FE         [24]  921 	lcall	_lcdbusywait
                                    922 ;	lcd.c:164: lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
      0022A1 75 0B 00         [24]  923 	mov	_lcd_command_PARM_2,#0x00
      0022A4 75 0C 01         [24]  924 	mov	_lcd_command_PARM_3,#0x01
      0022A7 75 82 00         [24]  925 	mov	dpl,#0x00
                                    926 ;	lcd.c:165: }
      0022AA 02 20 E8         [24]  927 	ljmp	_lcd_command
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'lcdclear'
                                    930 ;------------------------------------------------------------
                                    931 ;	lcd.c:170: void lcdclear() {
                                    932 ;	-----------------------------------------
                                    933 ;	 function lcdclear
                                    934 ;	-----------------------------------------
      0022AD                        935 _lcdclear:
                                    936 ;	lcd.c:171: RS = PULSE_LOW;
                                    937 ;	assignBit
      0022AD C2 96            [12]  938 	clr	_P1_6
                                    939 ;	lcd.c:172: R_W = PULSE_LOW;
                                    940 ;	assignBit
      0022AF C2 97            [12]  941 	clr	_P1_7
                                    942 ;	lcd.c:173: *ptr = 0b00000001;  // Send the command to clear the screen.
      0022B1 85 22 82         [24]  943 	mov	dpl,_ptr
      0022B4 85 23 83         [24]  944 	mov	dph,(_ptr + 1)
      0022B7 74 01            [12]  945 	mov	a,#0x01
      0022B9 F0               [24]  946 	movx	@dptr,a
                                    947 ;	lcd.c:174: lcdbusywait();      // Wait for the LCD to finish processing the command.
                                    948 ;	lcd.c:175: }
      0022BA 02 20 FE         [24]  949 	ljmp	_lcdbusywait
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'test_functionality'
                                    952 ;------------------------------------------------------------
                                    953 ;	lcd.c:180: void test_functionality() {
                                    954 ;	-----------------------------------------
                                    955 ;	 function test_functionality
                                    956 ;	-----------------------------------------
      0022BD                        957 _test_functionality:
                                    958 ;	lcd.c:181: printf_tiny("test_functionality start\n\r");
      0022BD 74 AC            [12]  959 	mov	a,#___str_0
      0022BF C0 E0            [24]  960 	push	acc
      0022C1 74 2C            [12]  961 	mov	a,#(___str_0 >> 8)
      0022C3 C0 E0            [24]  962 	push	acc
      0022C5 12 2B 04         [24]  963 	lcall	_printf_tiny
      0022C8 15 81            [12]  964 	dec	sp
      0022CA 15 81            [12]  965 	dec	sp
                                    966 ;	lcd.c:184: lcdgotoaddr(0x01);
      0022CC 75 82 01         [24]  967 	mov	dpl,#0x01
      0022CF 12 21 0D         [24]  968 	lcall	_lcdgotoaddr
                                    969 ;	lcd.c:185: lcdputch('E');
      0022D2 75 82 45         [24]  970 	mov	dpl,#0x45
      0022D5 12 21 6D         [24]  971 	lcall	_lcdputch
                                    972 ;	lcd.c:186: delay(100000);
      0022D8 90 86 A0         [24]  973 	mov	dptr,#0x86a0
      0022DB 75 F0 01         [24]  974 	mov	b,#0x01
      0022DE E4               [12]  975 	clr	a
      0022DF 12 20 A8         [24]  976 	lcall	_delay
                                    977 ;	lcd.c:189: lcdgotoxy(1, 1);
      0022E2 75 30 01         [24]  978 	mov	_lcdgotoxy_PARM_2,#0x01
      0022E5 75 82 01         [24]  979 	mov	dpl,#0x01
      0022E8 12 21 21         [24]  980 	lcall	_lcdgotoxy
                                    981 ;	lcd.c:190: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022EB 90 2C C7         [24]  982 	mov	dptr,#___str_1
      0022EE 75 F0 80         [24]  983 	mov	b,#0x80
      0022F1 12 21 7E         [24]  984 	lcall	_lcdputstr
                                    985 ;	lcd.c:191: delay(100000);
      0022F4 90 86 A0         [24]  986 	mov	dptr,#0x86a0
      0022F7 75 F0 01         [24]  987 	mov	b,#0x01
      0022FA E4               [12]  988 	clr	a
      0022FB 12 20 A8         [24]  989 	lcall	_delay
                                    990 ;	lcd.c:194: lcdclear();
      0022FE 12 22 AD         [24]  991 	lcall	_lcdclear
                                    992 ;	lcd.c:196: printf_tiny("test_functionality end\n\r");
      002301 74 0A            [12]  993 	mov	a,#___str_2
      002303 C0 E0            [24]  994 	push	acc
      002305 74 2D            [12]  995 	mov	a,#(___str_2 >> 8)
      002307 C0 E0            [24]  996 	push	acc
      002309 12 2B 04         [24]  997 	lcall	_printf_tiny
      00230C 15 81            [12]  998 	dec	sp
      00230E 15 81            [12]  999 	dec	sp
                                   1000 ;	lcd.c:197: }
      002310 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'set_cgram_address'
                                   1004 ;------------------------------------------------------------
                                   1005 ;cgram_address             Allocated to registers r7 
                                   1006 ;------------------------------------------------------------
                                   1007 ;	lcd.c:203: void set_cgram_address(uint8_t cgram_address) {
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function set_cgram_address
                                   1010 ;	-----------------------------------------
      002311                       1011 _set_cgram_address:
      002311 AF 82            [24] 1012 	mov	r7,dpl
                                   1013 ;	lcd.c:204: RS = PULSE_LOW;
                                   1014 ;	assignBit
      002313 C2 96            [12] 1015 	clr	_P1_6
                                   1016 ;	lcd.c:205: R_W = PULSE_LOW;
                                   1017 ;	assignBit
      002315 C2 97            [12] 1018 	clr	_P1_7
                                   1019 ;	lcd.c:206: *ptr = cgram_address;
      002317 85 22 82         [24] 1020 	mov	dpl,_ptr
      00231A 85 23 83         [24] 1021 	mov	dph,(_ptr + 1)
      00231D EF               [12] 1022 	mov	a,r7
      00231E F0               [24] 1023 	movx	@dptr,a
                                   1024 ;	lcd.c:207: lcdbusywait();
                                   1025 ;	lcd.c:208: }
      00231F 02 20 FE         [24] 1026 	ljmp	_lcdbusywait
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'lcdcreatechar'
                                   1029 ;------------------------------------------------------------
                                   1030 ;c                         Allocated with name '_lcdcreatechar_PARM_2'
                                   1031 ;char_num                  Allocated to registers 
                                   1032 ;------------------------------------------------------------
                                   1033 ;	lcd.c:214: void lcdcreatechar(uint8_t char_num, uint8_t c) {
                                   1034 ;	-----------------------------------------
                                   1035 ;	 function lcdcreatechar
                                   1036 ;	-----------------------------------------
      002322                       1037 _lcdcreatechar:
                                   1038 ;	lcd.c:216: set_cgram_address(char_num);
      002322 12 23 11         [24] 1039 	lcall	_set_cgram_address
                                   1040 ;	lcd.c:219: lcdputch(c);
      002325 85 31 82         [24] 1041 	mov	dpl,_lcdcreatechar_PARM_2
                                   1042 ;	lcd.c:220: }
      002328 02 21 6D         [24] 1043 	ljmp	_lcdputch
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'reset_clock'
                                   1046 ;------------------------------------------------------------
                                   1047 ;	lcd.c:226: void reset_clock() {
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function reset_clock
                                   1050 ;	-----------------------------------------
      00232B                       1051 _reset_clock:
                                   1052 ;	lcd.c:228: min_high = '0';
      00232B 75 24 30         [24] 1053 	mov	_min_high,#0x30
                                   1054 ;	lcd.c:229: min_low = '0';
      00232E 75 25 30         [24] 1055 	mov	_min_low,#0x30
                                   1056 ;	lcd.c:230: sec_high = '0';
      002331 75 26 30         [24] 1057 	mov	_sec_high,#0x30
                                   1058 ;	lcd.c:231: sec_low = '0';
      002334 75 27 30         [24] 1059 	mov	_sec_low,#0x30
                                   1060 ;	lcd.c:232: mili_sec = '0';
      002337 75 28 30         [24] 1061 	mov	_mili_sec,#0x30
                                   1062 ;	lcd.c:235: lcdgotoaddr(0x59);
      00233A 75 82 59         [24] 1063 	mov	dpl,#0x59
      00233D 12 21 0D         [24] 1064 	lcall	_lcdgotoaddr
                                   1065 ;	lcd.c:236: lcdputch(min_high);
      002340 85 24 82         [24] 1066 	mov	dpl,_min_high
      002343 12 21 6D         [24] 1067 	lcall	_lcdputch
                                   1068 ;	lcd.c:237: lcdputch(min_low);
      002346 85 25 82         [24] 1069 	mov	dpl,_min_low
      002349 12 21 6D         [24] 1070 	lcall	_lcdputch
                                   1071 ;	lcd.c:238: lcdputch(':');
      00234C 75 82 3A         [24] 1072 	mov	dpl,#0x3a
      00234F 12 21 6D         [24] 1073 	lcall	_lcdputch
                                   1074 ;	lcd.c:239: lcdputch(sec_high);
      002352 85 26 82         [24] 1075 	mov	dpl,_sec_high
      002355 12 21 6D         [24] 1076 	lcall	_lcdputch
                                   1077 ;	lcd.c:240: lcdputch(sec_low);
      002358 85 27 82         [24] 1078 	mov	dpl,_sec_low
      00235B 12 21 6D         [24] 1079 	lcall	_lcdputch
                                   1080 ;	lcd.c:241: lcdputch('.');
      00235E 75 82 2E         [24] 1081 	mov	dpl,#0x2e
      002361 12 21 6D         [24] 1082 	lcall	_lcdputch
                                   1083 ;	lcd.c:242: lcdputch(mili_sec);
      002364 85 28 82         [24] 1084 	mov	dpl,_mili_sec
                                   1085 ;	lcd.c:243: }
      002367 02 21 6D         [24] 1086 	ljmp	_lcdputch
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'clock_run'
                                   1089 ;------------------------------------------------------------
                                   1090 ;	lcd.c:248: void clock_run() {
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function clock_run
                                   1093 ;	-----------------------------------------
      00236A                       1094 _clock_run:
                                   1095 ;	lcd.c:250: if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
      00236A E5 29            [12] 1096 	mov	a,_clockrun_flag
      00236C 45 2A            [12] 1097 	orl	a,(_clockrun_flag + 1)
      00236E 70 01            [24] 1098 	jnz	00149$
      002370 22               [24] 1099 	ret
      002371                       1100 00149$:
      002371 E5 08            [12] 1101 	mov	a,_tick
      002373 30 E0 01         [24] 1102 	jnb	acc.0,00150$
      002376 22               [24] 1103 	ret
      002377                       1104 00150$:
      002377 AC 08            [24] 1105 	mov	r4,_tick
      002379 AD 09            [24] 1106 	mov	r5,(_tick + 1)
      00237B 7E 00            [12] 1107 	mov	r6,#0x00
      00237D 7F 00            [12] 1108 	mov	r7,#0x00
      00237F C3               [12] 1109 	clr	c
      002380 E5 2C            [12] 1110 	mov	a,_elapsed_tick
      002382 9C               [12] 1111 	subb	a,r4
      002383 E5 2D            [12] 1112 	mov	a,(_elapsed_tick + 1)
      002385 9D               [12] 1113 	subb	a,r5
      002386 E5 2E            [12] 1114 	mov	a,(_elapsed_tick + 2)
      002388 9E               [12] 1115 	subb	a,r6
      002389 E5 2F            [12] 1116 	mov	a,(_elapsed_tick + 3)
      00238B 9F               [12] 1117 	subb	a,r7
      00238C 40 01            [24] 1118 	jc	00151$
      00238E 22               [24] 1119 	ret
      00238F                       1120 00151$:
                                   1121 ;	lcd.c:251: elapsed_tick = tick;  // Update the elapsed tick
      00238F 85 08 2C         [24] 1122 	mov	_elapsed_tick,_tick
      002392 85 09 2D         [24] 1123 	mov	(_elapsed_tick + 1),(_tick + 1)
      002395 75 2E 00         [24] 1124 	mov	(_elapsed_tick + 2),#0x00
      002398 75 2F 00         [24] 1125 	mov	(_elapsed_tick + 3),#0x00
                                   1126 ;	lcd.c:253: mili_sec++;  // Increment milliseconds
      00239B 05 28            [12] 1127 	inc	_mili_sec
                                   1128 ;	lcd.c:254: if (mili_sec > '9') {
      00239D E5 28            [12] 1129 	mov	a,_mili_sec
      00239F 24 C6            [12] 1130 	add	a,#0xff - 0x39
      0023A1 50 1D            [24] 1131 	jnc	00102$
                                   1132 ;	lcd.c:255: mili_sec = '0';
      0023A3 75 28 30         [24] 1133 	mov	_mili_sec,#0x30
                                   1134 ;	lcd.c:256: lcdgotoaddr(0x5F);
      0023A6 75 82 5F         [24] 1135 	mov	dpl,#0x5f
      0023A9 12 21 0D         [24] 1136 	lcall	_lcdgotoaddr
                                   1137 ;	lcd.c:257: lcdputch(mili_sec);
      0023AC 85 28 82         [24] 1138 	mov	dpl,_mili_sec
      0023AF 12 21 6D         [24] 1139 	lcall	_lcdputch
                                   1140 ;	lcd.c:258: sec_low++;
      0023B2 05 27            [12] 1141 	inc	_sec_low
                                   1142 ;	lcd.c:259: lcdgotoaddr(0x5D);
      0023B4 75 82 5D         [24] 1143 	mov	dpl,#0x5d
      0023B7 12 21 0D         [24] 1144 	lcall	_lcdgotoaddr
                                   1145 ;	lcd.c:260: lcdputch(sec_low);
      0023BA 85 27 82         [24] 1146 	mov	dpl,_sec_low
      0023BD 12 21 6D         [24] 1147 	lcall	_lcdputch
      0023C0                       1148 00102$:
                                   1149 ;	lcd.c:262: if (sec_low > '9') {
      0023C0 E5 27            [12] 1150 	mov	a,_sec_low
      0023C2 24 C6            [12] 1151 	add	a,#0xff - 0x39
      0023C4 50 1D            [24] 1152 	jnc	00104$
                                   1153 ;	lcd.c:263: sec_low = '0';
      0023C6 75 27 30         [24] 1154 	mov	_sec_low,#0x30
                                   1155 ;	lcd.c:264: lcdgotoaddr(0x5D);
      0023C9 75 82 5D         [24] 1156 	mov	dpl,#0x5d
      0023CC 12 21 0D         [24] 1157 	lcall	_lcdgotoaddr
                                   1158 ;	lcd.c:265: lcdputch(sec_low);
      0023CF 85 27 82         [24] 1159 	mov	dpl,_sec_low
      0023D2 12 21 6D         [24] 1160 	lcall	_lcdputch
                                   1161 ;	lcd.c:266: sec_high++;
      0023D5 05 26            [12] 1162 	inc	_sec_high
                                   1163 ;	lcd.c:267: lcdgotoaddr(0x5C);
      0023D7 75 82 5C         [24] 1164 	mov	dpl,#0x5c
      0023DA 12 21 0D         [24] 1165 	lcall	_lcdgotoaddr
                                   1166 ;	lcd.c:268: lcdputch(sec_high);
      0023DD 85 26 82         [24] 1167 	mov	dpl,_sec_high
      0023E0 12 21 6D         [24] 1168 	lcall	_lcdputch
      0023E3                       1169 00104$:
                                   1170 ;	lcd.c:270: if (sec_high > '5') {
      0023E3 E5 26            [12] 1171 	mov	a,_sec_high
      0023E5 24 CA            [12] 1172 	add	a,#0xff - 0x35
      0023E7 50 1D            [24] 1173 	jnc	00106$
                                   1174 ;	lcd.c:271: sec_high = '0';
      0023E9 75 26 30         [24] 1175 	mov	_sec_high,#0x30
                                   1176 ;	lcd.c:272: lcdgotoaddr(0x5C);
      0023EC 75 82 5C         [24] 1177 	mov	dpl,#0x5c
      0023EF 12 21 0D         [24] 1178 	lcall	_lcdgotoaddr
                                   1179 ;	lcd.c:273: lcdputch(sec_high);
      0023F2 85 26 82         [24] 1180 	mov	dpl,_sec_high
      0023F5 12 21 6D         [24] 1181 	lcall	_lcdputch
                                   1182 ;	lcd.c:274: min_low++;
      0023F8 05 25            [12] 1183 	inc	_min_low
                                   1184 ;	lcd.c:275: lcdgotoaddr(0x5A);
      0023FA 75 82 5A         [24] 1185 	mov	dpl,#0x5a
      0023FD 12 21 0D         [24] 1186 	lcall	_lcdgotoaddr
                                   1187 ;	lcd.c:276: lcdputch(min_low);
      002400 85 25 82         [24] 1188 	mov	dpl,_min_low
      002403 12 21 6D         [24] 1189 	lcall	_lcdputch
      002406                       1190 00106$:
                                   1191 ;	lcd.c:278: if (min_low > '9') {
      002406 E5 25            [12] 1192 	mov	a,_min_low
      002408 24 C6            [12] 1193 	add	a,#0xff - 0x39
      00240A 50 1D            [24] 1194 	jnc	00108$
                                   1195 ;	lcd.c:279: min_low = '0';
      00240C 75 25 30         [24] 1196 	mov	_min_low,#0x30
                                   1197 ;	lcd.c:280: lcdgotoaddr(0x5A);
      00240F 75 82 5A         [24] 1198 	mov	dpl,#0x5a
      002412 12 21 0D         [24] 1199 	lcall	_lcdgotoaddr
                                   1200 ;	lcd.c:281: lcdputch(min_low);
      002415 85 25 82         [24] 1201 	mov	dpl,_min_low
      002418 12 21 6D         [24] 1202 	lcall	_lcdputch
                                   1203 ;	lcd.c:282: min_high++;
      00241B 05 24            [12] 1204 	inc	_min_high
                                   1205 ;	lcd.c:283: lcdgotoaddr(0x59);
      00241D 75 82 59         [24] 1206 	mov	dpl,#0x59
      002420 12 21 0D         [24] 1207 	lcall	_lcdgotoaddr
                                   1208 ;	lcd.c:284: lcdputch(min_high);
      002423 85 24 82         [24] 1209 	mov	dpl,_min_high
      002426 12 21 6D         [24] 1210 	lcall	_lcdputch
      002429                       1211 00108$:
                                   1212 ;	lcd.c:286: if (min_high > '5') {
      002429 E5 24            [12] 1213 	mov	a,_min_high
      00242B 24 CA            [12] 1214 	add	a,#0xff - 0x35
      00242D 50 0F            [24] 1215 	jnc	00110$
                                   1216 ;	lcd.c:287: min_high = '0';
      00242F 75 24 30         [24] 1217 	mov	_min_high,#0x30
                                   1218 ;	lcd.c:288: lcdgotoaddr(0x59);
      002432 75 82 59         [24] 1219 	mov	dpl,#0x59
      002435 12 21 0D         [24] 1220 	lcall	_lcdgotoaddr
                                   1221 ;	lcd.c:289: lcdputch(min_high);
      002438 85 24 82         [24] 1222 	mov	dpl,_min_high
      00243B 12 21 6D         [24] 1223 	lcall	_lcdputch
      00243E                       1224 00110$:
                                   1225 ;	lcd.c:291: lcdgotoaddr(0x5F);
      00243E 75 82 5F         [24] 1226 	mov	dpl,#0x5f
      002441 12 21 0D         [24] 1227 	lcall	_lcdgotoaddr
                                   1228 ;	lcd.c:292: lcdputch(mili_sec);
      002444 85 28 82         [24] 1229 	mov	dpl,_mili_sec
                                   1230 ;	lcd.c:294: }
      002447 02 21 6D         [24] 1231 	ljmp	_lcdputch
                                   1232 ;------------------------------------------------------------
                                   1233 ;Allocation info for local variables in function 'menu_lcd'
                                   1234 ;------------------------------------------------------------
                                   1235 ;	lcd.c:299: void menu_lcd() {
                                   1236 ;	-----------------------------------------
                                   1237 ;	 function menu_lcd
                                   1238 ;	-----------------------------------------
      00244A                       1239 _menu_lcd:
                                   1240 ;	lcd.c:300: reset_clock();  // Reset clock values for display consistency
      00244A 12 23 2B         [24] 1241 	lcall	_reset_clock
                                   1242 ;	lcd.c:301: lcdgotoxy(1, 1);
      00244D 75 30 01         [24] 1243 	mov	_lcdgotoxy_PARM_2,#0x01
      002450 75 82 01         [24] 1244 	mov	dpl,#0x01
      002453 12 21 21         [24] 1245 	lcall	_lcdgotoxy
                                   1246 ;	lcd.c:302: lcdputstr("Clock status:");
      002456 90 2D 23         [24] 1247 	mov	dptr,#___str_3
      002459 75 F0 80         [24] 1248 	mov	b,#0x80
      00245C 12 21 7E         [24] 1249 	lcall	_lcdputstr
                                   1250 ;	lcd.c:303: lcdgotoxy(2, 1);
      00245F 75 30 01         [24] 1251 	mov	_lcdgotoxy_PARM_2,#0x01
      002462 75 82 02         [24] 1252 	mov	dpl,#0x02
      002465 12 21 21         [24] 1253 	lcall	_lcdgotoxy
                                   1254 ;	lcd.c:304: lcdputstr("Running");
      002468 90 2D 31         [24] 1255 	mov	dptr,#___str_4
      00246B 75 F0 80         [24] 1256 	mov	b,#0x80
      00246E 12 21 7E         [24] 1257 	lcall	_lcdputstr
                                   1258 ;	lcd.c:305: lcdgotoxy(3, 1);
      002471 75 30 01         [24] 1259 	mov	_lcdgotoxy_PARM_2,#0x01
      002474 75 82 03         [24] 1260 	mov	dpl,#0x03
      002477 12 21 21         [24] 1261 	lcall	_lcdgotoxy
                                   1262 ;	lcd.c:306: lcdputstr("Stopped");
      00247A 90 2D 39         [24] 1263 	mov	dptr,#___str_5
      00247D 75 F0 80         [24] 1264 	mov	b,#0x80
      002480 12 21 7E         [24] 1265 	lcall	_lcdputstr
                                   1266 ;	lcd.c:307: lcdgotoxy(4, 1);
      002483 75 30 01         [24] 1267 	mov	_lcdgotoxy_PARM_2,#0x01
      002486 75 82 04         [24] 1268 	mov	dpl,#0x04
      002489 12 21 21         [24] 1269 	lcall	_lcdgotoxy
                                   1270 ;	lcd.c:308: lcdputstr("Reset");
      00248C 90 2D 41         [24] 1271 	mov	dptr,#___str_6
      00248F 75 F0 80         [24] 1272 	mov	b,#0x80
                                   1273 ;	lcd.c:309: }
      002492 02 21 7E         [24] 1274 	ljmp	_lcdputstr
                                   1275 ;------------------------------------------------------------
                                   1276 ;Allocation info for local variables in function 'arrow_set'
                                   1277 ;------------------------------------------------------------
                                   1278 ;b                         Allocated with name '_arrow_set_PARM_2'
                                   1279 ;c                         Allocated with name '_arrow_set_PARM_3'
                                   1280 ;a                         Allocated to registers r7 
                                   1281 ;------------------------------------------------------------
                                   1282 ;	lcd.c:317: void arrow_set(char a, char b, char c) {
                                   1283 ;	-----------------------------------------
                                   1284 ;	 function arrow_set
                                   1285 ;	-----------------------------------------
      002495                       1286 _arrow_set:
      002495 AF 82            [24] 1287 	mov	r7,dpl
                                   1288 ;	lcd.c:318: lcdgotoxy(2, 8);
      002497 75 30 08         [24] 1289 	mov	_lcdgotoxy_PARM_2,#0x08
      00249A 75 82 02         [24] 1290 	mov	dpl,#0x02
      00249D C0 07            [24] 1291 	push	ar7
      00249F 12 21 21         [24] 1292 	lcall	_lcdgotoxy
      0024A2 D0 07            [24] 1293 	pop	ar7
                                   1294 ;	lcd.c:319: lcdputch(a);  // Display arrow indicator for "Running"
      0024A4 8F 82            [24] 1295 	mov	dpl,r7
      0024A6 12 21 6D         [24] 1296 	lcall	_lcdputch
                                   1297 ;	lcd.c:320: lcdgotoxy(3, 8);
      0024A9 75 30 08         [24] 1298 	mov	_lcdgotoxy_PARM_2,#0x08
      0024AC 75 82 03         [24] 1299 	mov	dpl,#0x03
      0024AF 12 21 21         [24] 1300 	lcall	_lcdgotoxy
                                   1301 ;	lcd.c:321: lcdputch(b);  // Display arrow indicator for "Stopped"
      0024B2 85 32 82         [24] 1302 	mov	dpl,_arrow_set_PARM_2
      0024B5 12 21 6D         [24] 1303 	lcall	_lcdputch
                                   1304 ;	lcd.c:322: lcdgotoxy(4, 6);
      0024B8 75 30 06         [24] 1305 	mov	_lcdgotoxy_PARM_2,#0x06
      0024BB 75 82 04         [24] 1306 	mov	dpl,#0x04
      0024BE 12 21 21         [24] 1307 	lcall	_lcdgotoxy
                                   1308 ;	lcd.c:323: lcdputch(c);  // Display arrow indicator for "Reset"
      0024C1 85 33 82         [24] 1309 	mov	dpl,_arrow_set_PARM_3
                                   1310 ;	lcd.c:324: }
      0024C4 02 21 6D         [24] 1311 	ljmp	_lcdputch
                                   1312 ;------------------------------------------------------------
                                   1313 ;Allocation info for local variables in function 'set_ddram_address'
                                   1314 ;------------------------------------------------------------
                                   1315 ;ddram_address             Allocated to registers r7 
                                   1316 ;------------------------------------------------------------
                                   1317 ;	lcd.c:334: void set_ddram_address(uint8_t ddram_address) {
                                   1318 ;	-----------------------------------------
                                   1319 ;	 function set_ddram_address
                                   1320 ;	-----------------------------------------
      0024C7                       1321 _set_ddram_address:
      0024C7 AF 82            [24] 1322 	mov	r7,dpl
                                   1323 ;	lcd.c:335: RS = PULSE_LOW;            // Set RS (Register Select) to LOW for command mode
                                   1324 ;	assignBit
      0024C9 C2 96            [12] 1325 	clr	_P1_6
                                   1326 ;	lcd.c:336: R_W = PULSE_LOW;           // Set R_W (Read/Write) to LOW for write operation
                                   1327 ;	assignBit
      0024CB C2 97            [12] 1328 	clr	_P1_7
                                   1329 ;	lcd.c:337: *ptr = ddram_address | 0b10000000; // Set the DDRAM address with the required command
      0024CD 85 22 82         [24] 1330 	mov	dpl,_ptr
      0024D0 85 23 83         [24] 1331 	mov	dph,(_ptr + 1)
      0024D3 43 07 80         [24] 1332 	orl	ar7,#0x80
      0024D6 EF               [12] 1333 	mov	a,r7
      0024D7 F0               [24] 1334 	movx	@dptr,a
                                   1335 ;	lcd.c:338: lcdbusywait();             // Wait for the LCD to process the command
                                   1336 ;	lcd.c:339: }
      0024D8 02 20 FE         [24] 1337 	ljmp	_lcdbusywait
                                   1338 ;------------------------------------------------------------
                                   1339 ;Allocation info for local variables in function 'read_xxram_address'
                                   1340 ;------------------------------------------------------------
                                   1341 ;data                      Allocated to registers r7 
                                   1342 ;------------------------------------------------------------
                                   1343 ;	lcd.c:347: uint8_t read_xxram_address() {
                                   1344 ;	-----------------------------------------
                                   1345 ;	 function read_xxram_address
                                   1346 ;	-----------------------------------------
      0024DB                       1347 _read_xxram_address:
                                   1348 ;	lcd.c:349: RS = PULSE_HIGH;         // Set RS (Register Select) to HIGH for data mode
                                   1349 ;	assignBit
      0024DB D2 96            [12] 1350 	setb	_P1_6
                                   1351 ;	lcd.c:350: R_W = PULSE_HIGH;        // Set R_W (Read/Write) to HIGH for read operation
                                   1352 ;	assignBit
      0024DD D2 97            [12] 1353 	setb	_P1_7
                                   1354 ;	lcd.c:351: data = *ptr;             // Read the data from the specified XRAM address
      0024DF 85 22 82         [24] 1355 	mov	dpl,_ptr
      0024E2 85 23 83         [24] 1356 	mov	dph,(_ptr + 1)
      0024E5 E0               [24] 1357 	movx	a,@dptr
      0024E6 FF               [12] 1358 	mov	r7,a
                                   1359 ;	lcd.c:352: lcdbusywait();           // Wait for the LCD to process the read operation
      0024E7 C0 07            [24] 1360 	push	ar7
      0024E9 12 20 FE         [24] 1361 	lcall	_lcdbusywait
      0024EC D0 07            [24] 1362 	pop	ar7
                                   1363 ;	lcd.c:353: return data;             // Return the read data
      0024EE 8F 82            [24] 1364 	mov	dpl,r7
                                   1365 ;	lcd.c:354: }
      0024F0 22               [24] 1366 	ret
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'ddram_hex_dump'
                                   1369 ;------------------------------------------------------------
                                   1370 ;i                         Allocated to registers r7 
                                   1371 ;j                         Allocated to registers r5 r6 
                                   1372 ;------------------------------------------------------------
                                   1373 ;	lcd.c:361: void ddram_hex_dump() {
                                   1374 ;	-----------------------------------------
                                   1375 ;	 function ddram_hex_dump
                                   1376 ;	-----------------------------------------
      0024F1                       1377 _ddram_hex_dump:
                                   1378 ;	lcd.c:362: for(uint8_t i = 0; i < 4; i++) {
      0024F1 7F 00            [12] 1379 	mov	r7,#0x00
      0024F3                       1380 00113$:
      0024F3 BF 04 00         [24] 1381 	cjne	r7,#0x04,00139$
      0024F6                       1382 00139$:
      0024F6 40 01            [24] 1383 	jc	00140$
      0024F8 22               [24] 1384 	ret
      0024F9                       1385 00140$:
                                   1386 ;	lcd.c:363: switch (i) {
      0024F9 EF               [12] 1387 	mov	a,r7
      0024FA 24 FC            [12] 1388 	add	a,#0xff - 0x03
      0024FC 50 03            [24] 1389 	jnc	00141$
      0024FE 02 25 9B         [24] 1390 	ljmp	00120$
      002501                       1391 00141$:
      002501 EF               [12] 1392 	mov	a,r7
      002502 2F               [12] 1393 	add	a,r7
                                   1394 ;	lcd.c:364: case 0:
      002503 90 25 07         [24] 1395 	mov	dptr,#00142$
      002506 73               [24] 1396 	jmp	@a+dptr
      002507                       1397 00142$:
      002507 80 06            [24] 1398 	sjmp	00101$
      002509 80 26            [24] 1399 	sjmp	00102$
      00250B 80 48            [24] 1400 	sjmp	00103$
      00250D 80 6A            [24] 1401 	sjmp	00104$
      00250F                       1402 00101$:
                                   1403 ;	lcd.c:365: set_ddram_address(0x00);
      00250F 75 82 00         [24] 1404 	mov	dpl,#0x00
      002512 C0 07            [24] 1405 	push	ar7
      002514 12 24 C7         [24] 1406 	lcall	_set_ddram_address
                                   1407 ;	lcd.c:366: printf_tiny("0x%x: ", 0x00);
      002517 E4               [12] 1408 	clr	a
      002518 C0 E0            [24] 1409 	push	acc
      00251A C0 E0            [24] 1410 	push	acc
      00251C 74 47            [12] 1411 	mov	a,#___str_7
      00251E C0 E0            [24] 1412 	push	acc
      002520 74 2D            [12] 1413 	mov	a,#(___str_7 >> 8)
      002522 C0 E0            [24] 1414 	push	acc
      002524 12 2B 04         [24] 1415 	lcall	_printf_tiny
      002527 E5 81            [12] 1416 	mov	a,sp
      002529 24 FC            [12] 1417 	add	a,#0xfc
      00252B F5 81            [12] 1418 	mov	sp,a
      00252D D0 07            [24] 1419 	pop	ar7
                                   1420 ;	lcd.c:367: break;
                                   1421 ;	lcd.c:368: case 1:
      00252F 80 6A            [24] 1422 	sjmp	00120$
      002531                       1423 00102$:
                                   1424 ;	lcd.c:369: set_ddram_address(0x40);
      002531 75 82 40         [24] 1425 	mov	dpl,#0x40
      002534 C0 07            [24] 1426 	push	ar7
      002536 12 24 C7         [24] 1427 	lcall	_set_ddram_address
                                   1428 ;	lcd.c:370: printf_tiny("0x%x: ", 0x40);
      002539 74 40            [12] 1429 	mov	a,#0x40
      00253B C0 E0            [24] 1430 	push	acc
      00253D E4               [12] 1431 	clr	a
      00253E C0 E0            [24] 1432 	push	acc
      002540 74 47            [12] 1433 	mov	a,#___str_7
      002542 C0 E0            [24] 1434 	push	acc
      002544 74 2D            [12] 1435 	mov	a,#(___str_7 >> 8)
      002546 C0 E0            [24] 1436 	push	acc
      002548 12 2B 04         [24] 1437 	lcall	_printf_tiny
      00254B E5 81            [12] 1438 	mov	a,sp
      00254D 24 FC            [12] 1439 	add	a,#0xfc
      00254F F5 81            [12] 1440 	mov	sp,a
      002551 D0 07            [24] 1441 	pop	ar7
                                   1442 ;	lcd.c:371: break;
                                   1443 ;	lcd.c:372: case 2:
      002553 80 46            [24] 1444 	sjmp	00120$
      002555                       1445 00103$:
                                   1446 ;	lcd.c:373: set_ddram_address(0x10);
      002555 75 82 10         [24] 1447 	mov	dpl,#0x10
      002558 C0 07            [24] 1448 	push	ar7
      00255A 12 24 C7         [24] 1449 	lcall	_set_ddram_address
                                   1450 ;	lcd.c:374: printf_tiny("0x%x: ", 0x10);
      00255D 74 10            [12] 1451 	mov	a,#0x10
      00255F C0 E0            [24] 1452 	push	acc
      002561 E4               [12] 1453 	clr	a
      002562 C0 E0            [24] 1454 	push	acc
      002564 74 47            [12] 1455 	mov	a,#___str_7
      002566 C0 E0            [24] 1456 	push	acc
      002568 74 2D            [12] 1457 	mov	a,#(___str_7 >> 8)
      00256A C0 E0            [24] 1458 	push	acc
      00256C 12 2B 04         [24] 1459 	lcall	_printf_tiny
      00256F E5 81            [12] 1460 	mov	a,sp
      002571 24 FC            [12] 1461 	add	a,#0xfc
      002573 F5 81            [12] 1462 	mov	sp,a
      002575 D0 07            [24] 1463 	pop	ar7
                                   1464 ;	lcd.c:375: break;
                                   1465 ;	lcd.c:376: case 3:
      002577 80 22            [24] 1466 	sjmp	00120$
      002579                       1467 00104$:
                                   1468 ;	lcd.c:377: set_ddram_address(0x50);
      002579 75 82 50         [24] 1469 	mov	dpl,#0x50
      00257C C0 07            [24] 1470 	push	ar7
      00257E 12 24 C7         [24] 1471 	lcall	_set_ddram_address
                                   1472 ;	lcd.c:378: printf_tiny("0x%x: ", 0x50);
      002581 74 50            [12] 1473 	mov	a,#0x50
      002583 C0 E0            [24] 1474 	push	acc
      002585 E4               [12] 1475 	clr	a
      002586 C0 E0            [24] 1476 	push	acc
      002588 74 47            [12] 1477 	mov	a,#___str_7
      00258A C0 E0            [24] 1478 	push	acc
      00258C 74 2D            [12] 1479 	mov	a,#(___str_7 >> 8)
      00258E C0 E0            [24] 1480 	push	acc
      002590 12 2B 04         [24] 1481 	lcall	_printf_tiny
      002593 E5 81            [12] 1482 	mov	a,sp
      002595 24 FC            [12] 1483 	add	a,#0xfc
      002597 F5 81            [12] 1484 	mov	sp,a
      002599 D0 07            [24] 1485 	pop	ar7
                                   1486 ;	lcd.c:384: for(int j = 0; j < 16; j++) {
      00259B                       1487 00120$:
      00259B 7D 00            [12] 1488 	mov	r5,#0x00
      00259D 7E 00            [12] 1489 	mov	r6,#0x00
      00259F                       1490 00110$:
      00259F C3               [12] 1491 	clr	c
      0025A0 ED               [12] 1492 	mov	a,r5
      0025A1 94 10            [12] 1493 	subb	a,#0x10
      0025A3 EE               [12] 1494 	mov	a,r6
      0025A4 64 80            [12] 1495 	xrl	a,#0x80
      0025A6 94 80            [12] 1496 	subb	a,#0x80
      0025A8 50 2F            [24] 1497 	jnc	00107$
                                   1498 ;	lcd.c:385: printf_tiny(" %x", read_xxram_address());
      0025AA C0 07            [24] 1499 	push	ar7
      0025AC C0 06            [24] 1500 	push	ar6
      0025AE C0 05            [24] 1501 	push	ar5
      0025B0 12 24 DB         [24] 1502 	lcall	_read_xxram_address
      0025B3 AC 82            [24] 1503 	mov	r4,dpl
      0025B5 7B 00            [12] 1504 	mov	r3,#0x00
      0025B7 C0 04            [24] 1505 	push	ar4
      0025B9 C0 03            [24] 1506 	push	ar3
      0025BB 74 4E            [12] 1507 	mov	a,#___str_8
      0025BD C0 E0            [24] 1508 	push	acc
      0025BF 74 2D            [12] 1509 	mov	a,#(___str_8 >> 8)
      0025C1 C0 E0            [24] 1510 	push	acc
      0025C3 12 2B 04         [24] 1511 	lcall	_printf_tiny
      0025C6 E5 81            [12] 1512 	mov	a,sp
      0025C8 24 FC            [12] 1513 	add	a,#0xfc
      0025CA F5 81            [12] 1514 	mov	sp,a
      0025CC D0 05            [24] 1515 	pop	ar5
      0025CE D0 06            [24] 1516 	pop	ar6
      0025D0 D0 07            [24] 1517 	pop	ar7
                                   1518 ;	lcd.c:384: for(int j = 0; j < 16; j++) {
      0025D2 0D               [12] 1519 	inc	r5
      0025D3 BD 00 C9         [24] 1520 	cjne	r5,#0x00,00110$
      0025D6 0E               [12] 1521 	inc	r6
      0025D7 80 C6            [24] 1522 	sjmp	00110$
      0025D9                       1523 00107$:
                                   1524 ;	lcd.c:388: printf_tiny("\n\r");
      0025D9 C0 07            [24] 1525 	push	ar7
      0025DB 74 52            [12] 1526 	mov	a,#___str_9
      0025DD C0 E0            [24] 1527 	push	acc
      0025DF 74 2D            [12] 1528 	mov	a,#(___str_9 >> 8)
      0025E1 C0 E0            [24] 1529 	push	acc
      0025E3 12 2B 04         [24] 1530 	lcall	_printf_tiny
      0025E6 15 81            [12] 1531 	dec	sp
      0025E8 15 81            [12] 1532 	dec	sp
      0025EA D0 07            [24] 1533 	pop	ar7
                                   1534 ;	lcd.c:362: for(uint8_t i = 0; i < 4; i++) {
      0025EC 0F               [12] 1535 	inc	r7
                                   1536 ;	lcd.c:390: }
      0025ED 02 24 F3         [24] 1537 	ljmp	00113$
                                   1538 ;------------------------------------------------------------
                                   1539 ;Allocation info for local variables in function 'cgram_hex_dump'
                                   1540 ;------------------------------------------------------------
                                   1541 ;i                         Allocated to registers r7 
                                   1542 ;j                         Allocated to registers r5 r6 
                                   1543 ;------------------------------------------------------------
                                   1544 ;	lcd.c:397: void cgram_hex_dump() {
                                   1545 ;	-----------------------------------------
                                   1546 ;	 function cgram_hex_dump
                                   1547 ;	-----------------------------------------
      0025F0                       1548 _cgram_hex_dump:
                                   1549 ;	lcd.c:398: set_cgram_address(0x00); // Set the CGRAM address to the start
      0025F0 75 82 00         [24] 1550 	mov	dpl,#0x00
      0025F3 12 23 11         [24] 1551 	lcall	_set_cgram_address
                                   1552 ;	lcd.c:400: for(uint8_t i = 0; i < 4; i++) {
      0025F6 7F 00            [12] 1553 	mov	r7,#0x00
      0025F8                       1554 00107$:
      0025F8 BF 04 00         [24] 1555 	cjne	r7,#0x04,00129$
      0025FB                       1556 00129$:
      0025FB 40 01            [24] 1557 	jc	00130$
      0025FD 22               [24] 1558 	ret
      0025FE                       1559 00130$:
                                   1560 ;	lcd.c:401: printf_tiny("0x%x: ", i << 4);
      0025FE 8F 05            [24] 1561 	mov	ar5,r7
      002600 E4               [12] 1562 	clr	a
      002601 CD               [12] 1563 	xch	a,r5
      002602 C4               [12] 1564 	swap	a
      002603 CD               [12] 1565 	xch	a,r5
      002604 6D               [12] 1566 	xrl	a,r5
      002605 CD               [12] 1567 	xch	a,r5
      002606 54 F0            [12] 1568 	anl	a,#0xf0
      002608 CD               [12] 1569 	xch	a,r5
      002609 6D               [12] 1570 	xrl	a,r5
      00260A FE               [12] 1571 	mov	r6,a
      00260B C0 07            [24] 1572 	push	ar7
      00260D C0 05            [24] 1573 	push	ar5
      00260F C0 06            [24] 1574 	push	ar6
      002611 74 47            [12] 1575 	mov	a,#___str_7
      002613 C0 E0            [24] 1576 	push	acc
      002615 74 2D            [12] 1577 	mov	a,#(___str_7 >> 8)
      002617 C0 E0            [24] 1578 	push	acc
      002619 12 2B 04         [24] 1579 	lcall	_printf_tiny
      00261C E5 81            [12] 1580 	mov	a,sp
      00261E 24 FC            [12] 1581 	add	a,#0xfc
      002620 F5 81            [12] 1582 	mov	sp,a
      002622 D0 07            [24] 1583 	pop	ar7
                                   1584 ;	lcd.c:403: for(int j = 0; j < 16; j++) {
      002624 7D 00            [12] 1585 	mov	r5,#0x00
      002626 7E 00            [12] 1586 	mov	r6,#0x00
      002628                       1587 00104$:
      002628 C3               [12] 1588 	clr	c
      002629 ED               [12] 1589 	mov	a,r5
      00262A 94 10            [12] 1590 	subb	a,#0x10
      00262C EE               [12] 1591 	mov	a,r6
      00262D 64 80            [12] 1592 	xrl	a,#0x80
      00262F 94 80            [12] 1593 	subb	a,#0x80
      002631 50 2F            [24] 1594 	jnc	00101$
                                   1595 ;	lcd.c:404: printf_tiny(" %x", read_xxram_address());
      002633 C0 07            [24] 1596 	push	ar7
      002635 C0 06            [24] 1597 	push	ar6
      002637 C0 05            [24] 1598 	push	ar5
      002639 12 24 DB         [24] 1599 	lcall	_read_xxram_address
      00263C AC 82            [24] 1600 	mov	r4,dpl
      00263E 7B 00            [12] 1601 	mov	r3,#0x00
      002640 C0 04            [24] 1602 	push	ar4
      002642 C0 03            [24] 1603 	push	ar3
      002644 74 4E            [12] 1604 	mov	a,#___str_8
      002646 C0 E0            [24] 1605 	push	acc
      002648 74 2D            [12] 1606 	mov	a,#(___str_8 >> 8)
      00264A C0 E0            [24] 1607 	push	acc
      00264C 12 2B 04         [24] 1608 	lcall	_printf_tiny
      00264F E5 81            [12] 1609 	mov	a,sp
      002651 24 FC            [12] 1610 	add	a,#0xfc
      002653 F5 81            [12] 1611 	mov	sp,a
      002655 D0 05            [24] 1612 	pop	ar5
      002657 D0 06            [24] 1613 	pop	ar6
      002659 D0 07            [24] 1614 	pop	ar7
                                   1615 ;	lcd.c:403: for(int j = 0; j < 16; j++) {
      00265B 0D               [12] 1616 	inc	r5
      00265C BD 00 C9         [24] 1617 	cjne	r5,#0x00,00104$
      00265F 0E               [12] 1618 	inc	r6
      002660 80 C6            [24] 1619 	sjmp	00104$
      002662                       1620 00101$:
                                   1621 ;	lcd.c:407: printf_tiny("\n\r");
      002662 C0 07            [24] 1622 	push	ar7
      002664 74 52            [12] 1623 	mov	a,#___str_9
      002666 C0 E0            [24] 1624 	push	acc
      002668 74 2D            [12] 1625 	mov	a,#(___str_9 >> 8)
      00266A C0 E0            [24] 1626 	push	acc
      00266C 12 2B 04         [24] 1627 	lcall	_printf_tiny
      00266F 15 81            [12] 1628 	dec	sp
      002671 15 81            [12] 1629 	dec	sp
      002673 D0 07            [24] 1630 	pop	ar7
                                   1631 ;	lcd.c:400: for(uint8_t i = 0; i < 4; i++) {
      002675 0F               [12] 1632 	inc	r7
                                   1633 ;	lcd.c:409: }
      002676 02 25 F8         [24] 1634 	ljmp	00107$
                                   1635 ;------------------------------------------------------------
                                   1636 ;Allocation info for local variables in function 'get_hex_value'
                                   1637 ;------------------------------------------------------------
                                   1638 ;value                     Allocated to registers r7 
                                   1639 ;i                         Allocated to registers r5 r6 
                                   1640 ;char_received             Allocated to registers r3 
                                   1641 ;------------------------------------------------------------
                                   1642 ;	lcd.c:417: uint8_t get_hex_value(){
                                   1643 ;	-----------------------------------------
                                   1644 ;	 function get_hex_value
                                   1645 ;	-----------------------------------------
      002679                       1646 _get_hex_value:
                                   1647 ;	lcd.c:418: uint8_t value = 0;
      002679 7F 00            [12] 1648 	mov	r7,#0x00
                                   1649 ;	lcd.c:419: for(int i = 0; i < 2; i++){
      00267B 7D 00            [12] 1650 	mov	r5,#0x00
      00267D 7E 00            [12] 1651 	mov	r6,#0x00
      00267F                       1652 00125$:
      00267F C3               [12] 1653 	clr	c
      002680 ED               [12] 1654 	mov	a,r5
      002681 94 02            [12] 1655 	subb	a,#0x02
      002683 EE               [12] 1656 	mov	a,r6
      002684 64 80            [12] 1657 	xrl	a,#0x80
      002686 94 80            [12] 1658 	subb	a,#0x80
      002688 40 03            [24] 1659 	jc	00183$
      00268A 02 27 42         [24] 1660 	ljmp	00123$
      00268D                       1661 00183$:
                                   1662 ;	lcd.c:420: if(i == 0) printf_tiny("0x");
      00268D ED               [12] 1663 	mov	a,r5
      00268E 4E               [12] 1664 	orl	a,r6
      00268F 70 1B            [24] 1665 	jnz	00102$
      002691 C0 07            [24] 1666 	push	ar7
      002693 C0 06            [24] 1667 	push	ar6
      002695 C0 05            [24] 1668 	push	ar5
      002697 74 55            [12] 1669 	mov	a,#___str_10
      002699 C0 E0            [24] 1670 	push	acc
      00269B 74 2D            [12] 1671 	mov	a,#(___str_10 >> 8)
      00269D C0 E0            [24] 1672 	push	acc
      00269F 12 2B 04         [24] 1673 	lcall	_printf_tiny
      0026A2 15 81            [12] 1674 	dec	sp
      0026A4 15 81            [12] 1675 	dec	sp
      0026A6 D0 05            [24] 1676 	pop	ar5
      0026A8 D0 06            [24] 1677 	pop	ar6
      0026AA D0 07            [24] 1678 	pop	ar7
      0026AC                       1679 00102$:
                                   1680 ;	lcd.c:421: uint8_t char_received = echo(); // Read a character from UART
      0026AC C0 07            [24] 1681 	push	ar7
      0026AE C0 06            [24] 1682 	push	ar6
      0026B0 C0 05            [24] 1683 	push	ar5
      0026B2 12 2A EB         [24] 1684 	lcall	_echo
      0026B5 AC 82            [24] 1685 	mov	r4,dpl
      0026B7 D0 05            [24] 1686 	pop	ar5
      0026B9 D0 06            [24] 1687 	pop	ar6
      0026BB D0 07            [24] 1688 	pop	ar7
                                   1689 ;	lcd.c:422: if((char_received >= '0') && (char_received <= '9')){
      0026BD BC 30 00         [24] 1690 	cjne	r4,#0x30,00185$
      0026C0                       1691 00185$:
      0026C0 40 0D            [24] 1692 	jc	00116$
      0026C2 EC               [12] 1693 	mov	a,r4
      0026C3 24 C6            [12] 1694 	add	a,#0xff - 0x39
      0026C5 40 08            [24] 1695 	jc	00116$
                                   1696 ;	lcd.c:423: char_received = char_received - '0'; // Convert ASCII character to its
      0026C7 8C 03            [24] 1697 	mov	ar3,r4
      0026C9 EB               [12] 1698 	mov	a,r3
      0026CA 24 D0            [12] 1699 	add	a,#0xd0
      0026CC FB               [12] 1700 	mov	r3,a
      0026CD 80 59            [24] 1701 	sjmp	00117$
      0026CF                       1702 00116$:
                                   1703 ;	lcd.c:425: }else if((char_received >= 'A') && (char_received <= 'F')){
      0026CF BC 41 00         [24] 1704 	cjne	r4,#0x41,00188$
      0026D2                       1705 00188$:
      0026D2 40 0D            [24] 1706 	jc	00112$
      0026D4 EC               [12] 1707 	mov	a,r4
      0026D5 24 B9            [12] 1708 	add	a,#0xff - 0x46
      0026D7 40 08            [24] 1709 	jc	00112$
                                   1710 ;	lcd.c:426: char_received = char_received - 'A' + 10; // Convert ASCII character to its
      0026D9 8C 02            [24] 1711 	mov	ar2,r4
      0026DB 74 C9            [12] 1712 	mov	a,#0xc9
      0026DD 2A               [12] 1713 	add	a,r2
      0026DE FB               [12] 1714 	mov	r3,a
      0026DF 80 47            [24] 1715 	sjmp	00117$
      0026E1                       1716 00112$:
                                   1717 ;	lcd.c:428: }else if((char_received >= 'a') && (char_received <= 'f')){
      0026E1 BC 61 00         [24] 1718 	cjne	r4,#0x61,00191$
      0026E4                       1719 00191$:
      0026E4 40 0D            [24] 1720 	jc	00108$
      0026E6 EC               [12] 1721 	mov	a,r4
      0026E7 24 99            [12] 1722 	add	a,#0xff - 0x66
      0026E9 40 08            [24] 1723 	jc	00108$
                                   1724 ;	lcd.c:429: char_received = char_received - 'a' + 10; // Convert ASCII character to its
      0026EB 8C 02            [24] 1725 	mov	ar2,r4
      0026ED 74 A9            [12] 1726 	mov	a,#0xa9
      0026EF 2A               [12] 1727 	add	a,r2
      0026F0 FB               [12] 1728 	mov	r3,a
      0026F1 80 35            [24] 1729 	sjmp	00117$
      0026F3                       1730 00108$:
                                   1731 ;	lcd.c:431: }else if((char_received == '\n') || (char_received == '\r')){
      0026F3 BC 0A 02         [24] 1732 	cjne	r4,#0x0a,00194$
      0026F6 80 03            [24] 1733 	sjmp	00103$
      0026F8                       1734 00194$:
      0026F8 BC 0D 16         [24] 1735 	cjne	r4,#0x0d,00104$
      0026FB                       1736 00103$:
                                   1737 ;	lcd.c:432: printf_tiny("\n\r");
      0026FB C0 07            [24] 1738 	push	ar7
      0026FD 74 52            [12] 1739 	mov	a,#___str_9
      0026FF C0 E0            [24] 1740 	push	acc
      002701 74 2D            [12] 1741 	mov	a,#(___str_9 >> 8)
      002703 C0 E0            [24] 1742 	push	acc
      002705 12 2B 04         [24] 1743 	lcall	_printf_tiny
      002708 15 81            [12] 1744 	dec	sp
      00270A 15 81            [12] 1745 	dec	sp
      00270C D0 07            [24] 1746 	pop	ar7
                                   1747 ;	lcd.c:433: return value;
      00270E 8F 82            [24] 1748 	mov	dpl,r7
      002710 22               [24] 1749 	ret
      002711                       1750 00104$:
                                   1751 ;	lcd.c:435: printf_tiny("-->Invalid input\n\r");
      002711 74 58            [12] 1752 	mov	a,#___str_11
      002713 C0 E0            [24] 1753 	push	acc
      002715 74 2D            [12] 1754 	mov	a,#(___str_11 >> 8)
      002717 C0 E0            [24] 1755 	push	acc
      002719 12 2B 04         [24] 1756 	lcall	_printf_tiny
      00271C 15 81            [12] 1757 	dec	sp
      00271E 15 81            [12] 1758 	dec	sp
                                   1759 ;	lcd.c:436: i = -1;
      002720 7D FF            [12] 1760 	mov	r5,#0xff
      002722 7E FF            [12] 1761 	mov	r6,#0xff
                                   1762 ;	lcd.c:437: value = 0;
      002724 7F 00            [12] 1763 	mov	r7,#0x00
                                   1764 ;	lcd.c:438: continue;
      002726 80 12            [24] 1765 	sjmp	00122$
      002728                       1766 00117$:
                                   1767 ;	lcd.c:440: if(i == 0){
      002728 ED               [12] 1768 	mov	a,r5
      002729 4E               [12] 1769 	orl	a,r6
      00272A 70 05            [24] 1770 	jnz	00120$
                                   1771 ;	lcd.c:441: value |= char_received;
      00272C EB               [12] 1772 	mov	a,r3
      00272D 42 07            [12] 1773 	orl	ar7,a
      00272F 80 09            [24] 1774 	sjmp	00122$
      002731                       1775 00120$:
                                   1776 ;	lcd.c:443: value = (value << 4) | char_received;
      002731 8F 04            [24] 1777 	mov	ar4,r7
      002733 EC               [12] 1778 	mov	a,r4
      002734 C4               [12] 1779 	swap	a
      002735 54 F0            [12] 1780 	anl	a,#0xf0
      002737 FC               [12] 1781 	mov	r4,a
      002738 4B               [12] 1782 	orl	a,r3
      002739 FF               [12] 1783 	mov	r7,a
      00273A                       1784 00122$:
                                   1785 ;	lcd.c:419: for(int i = 0; i < 2; i++){
      00273A 0D               [12] 1786 	inc	r5
      00273B BD 00 01         [24] 1787 	cjne	r5,#0x00,00198$
      00273E 0E               [12] 1788 	inc	r6
      00273F                       1789 00198$:
      00273F 02 26 7F         [24] 1790 	ljmp	00125$
      002742                       1791 00123$:
                                   1792 ;	lcd.c:446: printf_tiny("\n\r");
      002742 C0 07            [24] 1793 	push	ar7
      002744 74 52            [12] 1794 	mov	a,#___str_9
      002746 C0 E0            [24] 1795 	push	acc
      002748 74 2D            [12] 1796 	mov	a,#(___str_9 >> 8)
      00274A C0 E0            [24] 1797 	push	acc
      00274C 12 2B 04         [24] 1798 	lcall	_printf_tiny
      00274F 15 81            [12] 1799 	dec	sp
      002751 15 81            [12] 1800 	dec	sp
      002753 D0 07            [24] 1801 	pop	ar7
                                   1802 ;	lcd.c:447: return value;
      002755 8F 82            [24] 1803 	mov	dpl,r7
                                   1804 ;	lcd.c:448: }
      002757 22               [24] 1805 	ret
                                   1806 ;------------------------------------------------------------
                                   1807 ;Allocation info for local variables in function 'process_custom_character'
                                   1808 ;------------------------------------------------------------
                                   1809 ;ccode                     Allocated to registers r6 
                                   1810 ;address                   Allocated to registers r7 
                                   1811 ;char_array                Allocated with name '_process_custom_character_char_array_65537_92'
                                   1812 ;i                         Allocated to registers r5 
                                   1813 ;cgram_address             Allocated to registers r4 
                                   1814 ;------------------------------------------------------------
                                   1815 ;	lcd.c:457: void process_custom_character() {
                                   1816 ;	-----------------------------------------
                                   1817 ;	 function process_custom_character
                                   1818 ;	-----------------------------------------
      002758                       1819 _process_custom_character:
                                   1820 ;	lcd.c:462: while (1) {
      002758                       1821 00105$:
                                   1822 ;	lcd.c:463: printf_tiny("Enter LCD display address for the character\n\r");
      002758 74 6B            [12] 1823 	mov	a,#___str_12
      00275A C0 E0            [24] 1824 	push	acc
      00275C 74 2D            [12] 1825 	mov	a,#(___str_12 >> 8)
      00275E C0 E0            [24] 1826 	push	acc
      002760 12 2B 04         [24] 1827 	lcall	_printf_tiny
      002763 15 81            [12] 1828 	dec	sp
      002765 15 81            [12] 1829 	dec	sp
                                   1830 ;	lcd.c:464: address = get_hex_value();
      002767 12 26 79         [24] 1831 	lcall	_get_hex_value
      00276A AF 82            [24] 1832 	mov	r7,dpl
                                   1833 ;	lcd.c:465: if (address < 0x60) {
      00276C BF 60 00         [24] 1834 	cjne	r7,#0x60,00144$
      00276F                       1835 00144$:
      00276F 40 11            [24] 1836 	jc	00111$
                                   1837 ;	lcd.c:468: printf_tiny("Invalid input\n\r");
      002771 74 99            [12] 1838 	mov	a,#___str_13
      002773 C0 E0            [24] 1839 	push	acc
      002775 74 2D            [12] 1840 	mov	a,#(___str_13 >> 8)
      002777 C0 E0            [24] 1841 	push	acc
      002779 12 2B 04         [24] 1842 	lcall	_printf_tiny
      00277C 15 81            [12] 1843 	dec	sp
      00277E 15 81            [12] 1844 	dec	sp
                                   1845 ;	lcd.c:473: while (1) {
      002780 80 D6            [24] 1846 	sjmp	00105$
      002782                       1847 00111$:
                                   1848 ;	lcd.c:474: printf_tiny("Enter the character code in range 0x00 <--> 0x07\n\r");
      002782 C0 07            [24] 1849 	push	ar7
      002784 74 A9            [12] 1850 	mov	a,#___str_14
      002786 C0 E0            [24] 1851 	push	acc
      002788 74 2D            [12] 1852 	mov	a,#(___str_14 >> 8)
      00278A C0 E0            [24] 1853 	push	acc
      00278C 12 2B 04         [24] 1854 	lcall	_printf_tiny
      00278F 15 81            [12] 1855 	dec	sp
      002791 15 81            [12] 1856 	dec	sp
                                   1857 ;	lcd.c:475: ccode = get_hex_value();
      002793 12 26 79         [24] 1858 	lcall	_get_hex_value
      002796 AE 82            [24] 1859 	mov	r6,dpl
      002798 D0 07            [24] 1860 	pop	ar7
                                   1861 ;	lcd.c:476: if (ccode < 0x08) {
      00279A BE 08 00         [24] 1862 	cjne	r6,#0x08,00146$
      00279D                       1863 00146$:
      00279D 40 15            [24] 1864 	jc	00112$
                                   1865 ;	lcd.c:479: printf_tiny("Invalid input\n\r");
      00279F C0 07            [24] 1866 	push	ar7
      0027A1 74 99            [12] 1867 	mov	a,#___str_13
      0027A3 C0 E0            [24] 1868 	push	acc
      0027A5 74 2D            [12] 1869 	mov	a,#(___str_13 >> 8)
      0027A7 C0 E0            [24] 1870 	push	acc
      0027A9 12 2B 04         [24] 1871 	lcall	_printf_tiny
      0027AC 15 81            [12] 1872 	dec	sp
      0027AE 15 81            [12] 1873 	dec	sp
      0027B0 D0 07            [24] 1874 	pop	ar7
      0027B2 80 CE            [24] 1875 	sjmp	00111$
      0027B4                       1876 00112$:
                                   1877 ;	lcd.c:483: uint8_t char_array[8] = {0};
      0027B4 75 34 00         [24] 1878 	mov	_process_custom_character_char_array_65537_92,#0x00
      0027B7 75 35 00         [24] 1879 	mov	(_process_custom_character_char_array_65537_92 + 0x0001),#0x00
      0027BA 75 36 00         [24] 1880 	mov	(_process_custom_character_char_array_65537_92 + 0x0002),#0x00
      0027BD 75 37 00         [24] 1881 	mov	(_process_custom_character_char_array_65537_92 + 0x0003),#0x00
      0027C0 75 38 00         [24] 1882 	mov	(_process_custom_character_char_array_65537_92 + 0x0004),#0x00
      0027C3 75 39 00         [24] 1883 	mov	(_process_custom_character_char_array_65537_92 + 0x0005),#0x00
      0027C6 75 3A 00         [24] 1884 	mov	(_process_custom_character_char_array_65537_92 + 0x0006),#0x00
      0027C9 75 3B 00         [24] 1885 	mov	(_process_custom_character_char_array_65537_92 + 0x0007),#0x00
                                   1886 ;	lcd.c:486: printf_tiny("Enter pixel pattern hex format for each row of custom character\n\r");
      0027CC C0 07            [24] 1887 	push	ar7
      0027CE C0 06            [24] 1888 	push	ar6
      0027D0 74 DC            [12] 1889 	mov	a,#___str_15
      0027D2 C0 E0            [24] 1890 	push	acc
      0027D4 74 2D            [12] 1891 	mov	a,#(___str_15 >> 8)
      0027D6 C0 E0            [24] 1892 	push	acc
      0027D8 12 2B 04         [24] 1893 	lcall	_printf_tiny
      0027DB 15 81            [12] 1894 	dec	sp
      0027DD 15 81            [12] 1895 	dec	sp
      0027DF D0 06            [24] 1896 	pop	ar6
      0027E1 D0 07            [24] 1897 	pop	ar7
                                   1898 ;	lcd.c:489: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      0027E3 7D 00            [12] 1899 	mov	r5,#0x00
      0027E5                       1900 00115$:
      0027E5 BD 08 00         [24] 1901 	cjne	r5,#0x08,00148$
      0027E8                       1902 00148$:
      0027E8 40 01            [24] 1903 	jc	00149$
      0027EA 22               [24] 1904 	ret
      0027EB                       1905 00149$:
                                   1906 ;	lcd.c:490: printf_tiny("0x%x->", i);
      0027EB 8D 03            [24] 1907 	mov	ar3,r5
      0027ED 7C 00            [12] 1908 	mov	r4,#0x00
      0027EF C0 07            [24] 1909 	push	ar7
      0027F1 C0 06            [24] 1910 	push	ar6
      0027F3 C0 05            [24] 1911 	push	ar5
      0027F5 C0 03            [24] 1912 	push	ar3
      0027F7 C0 04            [24] 1913 	push	ar4
      0027F9 74 1E            [12] 1914 	mov	a,#___str_16
      0027FB C0 E0            [24] 1915 	push	acc
      0027FD 74 2E            [12] 1916 	mov	a,#(___str_16 >> 8)
      0027FF C0 E0            [24] 1917 	push	acc
      002801 12 2B 04         [24] 1918 	lcall	_printf_tiny
      002804 E5 81            [12] 1919 	mov	a,sp
      002806 24 FC            [12] 1920 	add	a,#0xfc
      002808 F5 81            [12] 1921 	mov	sp,a
      00280A D0 05            [24] 1922 	pop	ar5
      00280C D0 06            [24] 1923 	pop	ar6
                                   1924 ;	lcd.c:493: uint8_t cgram_address = 0b01000000 | (ccode << 3) | i;
      00280E 8E 04            [24] 1925 	mov	ar4,r6
      002810 EC               [12] 1926 	mov	a,r4
      002811 C4               [12] 1927 	swap	a
      002812 03               [12] 1928 	rr	a
      002813 54 F8            [12] 1929 	anl	a,#0xf8
      002815 FC               [12] 1930 	mov	r4,a
      002816 74 40            [12] 1931 	mov	a,#0x40
      002818 4C               [12] 1932 	orl	a,r4
      002819 4D               [12] 1933 	orl	a,r5
      00281A FC               [12] 1934 	mov	r4,a
                                   1935 ;	lcd.c:496: char_array[i] = get_hex_value() & 0b00011111;
      00281B ED               [12] 1936 	mov	a,r5
      00281C 24 34            [12] 1937 	add	a,#_process_custom_character_char_array_65537_92
      00281E F9               [12] 1938 	mov	r1,a
      00281F C0 06            [24] 1939 	push	ar6
      002821 C0 05            [24] 1940 	push	ar5
      002823 C0 04            [24] 1941 	push	ar4
      002825 C0 01            [24] 1942 	push	ar1
      002827 12 26 79         [24] 1943 	lcall	_get_hex_value
      00282A E5 82            [12] 1944 	mov	a,dpl
      00282C D0 01            [24] 1945 	pop	ar1
      00282E D0 04            [24] 1946 	pop	ar4
      002830 54 1F            [12] 1947 	anl	a,#0x1f
      002832 FB               [12] 1948 	mov	r3,a
      002833 F7               [12] 1949 	mov	@r1,a
                                   1950 ;	lcd.c:499: lcdcreatechar(cgram_address, char_array[i]);
      002834 8B 31            [24] 1951 	mov	_lcdcreatechar_PARM_2,r3
      002836 8C 82            [24] 1952 	mov	dpl,r4
      002838 12 23 22         [24] 1953 	lcall	_lcdcreatechar
      00283B D0 05            [24] 1954 	pop	ar5
      00283D D0 06            [24] 1955 	pop	ar6
      00283F D0 07            [24] 1956 	pop	ar7
                                   1957 ;	lcd.c:502: lcdgotoaddr(address);
      002841 8F 82            [24] 1958 	mov	dpl,r7
      002843 C0 07            [24] 1959 	push	ar7
      002845 C0 06            [24] 1960 	push	ar6
      002847 C0 05            [24] 1961 	push	ar5
      002849 12 21 0D         [24] 1962 	lcall	_lcdgotoaddr
      00284C D0 05            [24] 1963 	pop	ar5
      00284E D0 06            [24] 1964 	pop	ar6
                                   1965 ;	lcd.c:503: lcdputch(ccode);
      002850 8E 82            [24] 1966 	mov	dpl,r6
      002852 C0 06            [24] 1967 	push	ar6
      002854 C0 05            [24] 1968 	push	ar5
      002856 12 21 6D         [24] 1969 	lcall	_lcdputch
      002859 D0 05            [24] 1970 	pop	ar5
      00285B D0 06            [24] 1971 	pop	ar6
      00285D D0 07            [24] 1972 	pop	ar7
                                   1973 ;	lcd.c:489: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      00285F 0D               [12] 1974 	inc	r5
                                   1975 ;	lcd.c:505: }
      002860 02 27 E5         [24] 1976 	ljmp	00115$
                                   1977 	.area CSEG    (CODE)
                                   1978 	.area CONST   (CODE)
                                   1979 	.area CONST   (CODE)
      002CAC                       1980 ___str_0:
      002CAC 74 65 73 74 5F 66 75  1981 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      002CC4 0A                    1982 	.db 0x0a
      002CC5 0D                    1983 	.db 0x0d
      002CC6 00                    1984 	.db 0x00
                                   1985 	.area CSEG    (CODE)
                                   1986 	.area CONST   (CODE)
      002CC7                       1987 ___str_1:
      002CC7 41 42 43 44 45 46 47  1988 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      002D03 7A 4A 49 54 48 55     1989 	.ascii "zJITHU"
      002D09 00                    1990 	.db 0x00
                                   1991 	.area CSEG    (CODE)
                                   1992 	.area CONST   (CODE)
      002D0A                       1993 ___str_2:
      002D0A 74 65 73 74 5F 66 75  1994 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      002D20 0A                    1995 	.db 0x0a
      002D21 0D                    1996 	.db 0x0d
      002D22 00                    1997 	.db 0x00
                                   1998 	.area CSEG    (CODE)
                                   1999 	.area CONST   (CODE)
      002D23                       2000 ___str_3:
      002D23 43 6C 6F 63 6B 20 73  2001 	.ascii "Clock status:"
             74 61 74 75 73 3A
      002D30 00                    2002 	.db 0x00
                                   2003 	.area CSEG    (CODE)
                                   2004 	.area CONST   (CODE)
      002D31                       2005 ___str_4:
      002D31 52 75 6E 6E 69 6E 67  2006 	.ascii "Running"
      002D38 00                    2007 	.db 0x00
                                   2008 	.area CSEG    (CODE)
                                   2009 	.area CONST   (CODE)
      002D39                       2010 ___str_5:
      002D39 53 74 6F 70 70 65 64  2011 	.ascii "Stopped"
      002D40 00                    2012 	.db 0x00
                                   2013 	.area CSEG    (CODE)
                                   2014 	.area CONST   (CODE)
      002D41                       2015 ___str_6:
      002D41 52 65 73 65 74        2016 	.ascii "Reset"
      002D46 00                    2017 	.db 0x00
                                   2018 	.area CSEG    (CODE)
                                   2019 	.area CONST   (CODE)
      002D47                       2020 ___str_7:
      002D47 30 78 25 78 3A 20     2021 	.ascii "0x%x: "
      002D4D 00                    2022 	.db 0x00
                                   2023 	.area CSEG    (CODE)
                                   2024 	.area CONST   (CODE)
      002D4E                       2025 ___str_8:
      002D4E 20 25 78              2026 	.ascii " %x"
      002D51 00                    2027 	.db 0x00
                                   2028 	.area CSEG    (CODE)
                                   2029 	.area CONST   (CODE)
      002D52                       2030 ___str_9:
      002D52 0A                    2031 	.db 0x0a
      002D53 0D                    2032 	.db 0x0d
      002D54 00                    2033 	.db 0x00
                                   2034 	.area CSEG    (CODE)
                                   2035 	.area CONST   (CODE)
      002D55                       2036 ___str_10:
      002D55 30 78                 2037 	.ascii "0x"
      002D57 00                    2038 	.db 0x00
                                   2039 	.area CSEG    (CODE)
                                   2040 	.area CONST   (CODE)
      002D58                       2041 ___str_11:
      002D58 2D 2D 3E 49 6E 76 61  2042 	.ascii "-->Invalid input"
             6C 69 64 20 69 6E 70
             75 74
      002D68 0A                    2043 	.db 0x0a
      002D69 0D                    2044 	.db 0x0d
      002D6A 00                    2045 	.db 0x00
                                   2046 	.area CSEG    (CODE)
                                   2047 	.area CONST   (CODE)
      002D6B                       2048 ___str_12:
      002D6B 45 6E 74 65 72 20 4C  2049 	.ascii "Enter LCD display address for the character"
             43 44 20 64 69 73 70
             6C 61 79 20 61 64 64
             72 65 73 73 20 66 6F
             72 20 74 68 65 20 63
             68 61 72 61 63 74 65
             72
      002D96 0A                    2050 	.db 0x0a
      002D97 0D                    2051 	.db 0x0d
      002D98 00                    2052 	.db 0x00
                                   2053 	.area CSEG    (CODE)
                                   2054 	.area CONST   (CODE)
      002D99                       2055 ___str_13:
      002D99 49 6E 76 61 6C 69 64  2056 	.ascii "Invalid input"
             20 69 6E 70 75 74
      002DA6 0A                    2057 	.db 0x0a
      002DA7 0D                    2058 	.db 0x0d
      002DA8 00                    2059 	.db 0x00
                                   2060 	.area CSEG    (CODE)
                                   2061 	.area CONST   (CODE)
      002DA9                       2062 ___str_14:
      002DA9 45 6E 74 65 72 20 74  2063 	.ascii "Enter the character code in range 0x00 <--> 0x07"
             68 65 20 63 68 61 72
             61 63 74 65 72 20 63
             6F 64 65 20 69 6E 20
             72 61 6E 67 65 20 30
             78 30 30 20 3C 2D 2D
             3E 20 30 78 30 37
      002DD9 0A                    2064 	.db 0x0a
      002DDA 0D                    2065 	.db 0x0d
      002DDB 00                    2066 	.db 0x00
                                   2067 	.area CSEG    (CODE)
                                   2068 	.area CONST   (CODE)
      002DDC                       2069 ___str_15:
      002DDC 45 6E 74 65 72 20 70  2070 	.ascii "Enter pixel pattern hex format for each row of custom charac"
             69 78 65 6C 20 70 61
             74 74 65 72 6E 20 68
             65 78 20 66 6F 72 6D
             61 74 20 66 6F 72 20
             65 61 63 68 20 72 6F
             77 20 6F 66 20 63 75
             73 74 6F 6D 20 63 68
             61 72 61 63
      002E18 74 65 72              2071 	.ascii "ter"
      002E1B 0A                    2072 	.db 0x0a
      002E1C 0D                    2073 	.db 0x0d
      002E1D 00                    2074 	.db 0x00
                                   2075 	.area CSEG    (CODE)
                                   2076 	.area CONST   (CODE)
      002E1E                       2077 ___str_16:
      002E1E 30 78 25 78 2D 3E     2078 	.ascii "0x%x->"
      002E24 00                    2079 	.db 0x00
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area XINIT   (CODE)
      002F76                       2082 __xinit__db:
      002F76 00                    2083 	.db #0x00	; 0
                                   2084 	.area CABS    (ABS,CODE)
