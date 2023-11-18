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
                                     16 	.globl _printf
                                     17 	.globl _delay
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
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
                                    240 	.globl _show_custom_character
                                    241 ;--------------------------------------------------------
                                    242 ; special function registers
                                    243 ;--------------------------------------------------------
                                    244 	.area RSEG    (ABS,DATA)
      000000                        245 	.org 0x0000
                           000080   246 _P0	=	0x0080
                           000081   247 _SP	=	0x0081
                           000082   248 _DPL	=	0x0082
                           000083   249 _DPH	=	0x0083
                           000087   250 _PCON	=	0x0087
                           000088   251 _TCON	=	0x0088
                           000089   252 _TMOD	=	0x0089
                           00008A   253 _TL0	=	0x008a
                           00008B   254 _TL1	=	0x008b
                           00008C   255 _TH0	=	0x008c
                           00008D   256 _TH1	=	0x008d
                           000090   257 _P1	=	0x0090
                           000098   258 _SCON	=	0x0098
                           000099   259 _SBUF	=	0x0099
                           0000A0   260 _P2	=	0x00a0
                           0000A8   261 _IE	=	0x00a8
                           0000B0   262 _P3	=	0x00b0
                           0000B8   263 _IP	=	0x00b8
                           0000D0   264 _PSW	=	0x00d0
                           0000E0   265 _ACC	=	0x00e0
                           0000F0   266 _B	=	0x00f0
                           0000C8   267 _T2CON	=	0x00c8
                           0000CA   268 _RCAP2L	=	0x00ca
                           0000CB   269 _RCAP2H	=	0x00cb
                           0000CC   270 _TL2	=	0x00cc
                           0000CD   271 _TH2	=	0x00cd
                           00008E   272 _AUXR	=	0x008e
                           0000A2   273 _AUXR1	=	0x00a2
                           000097   274 _CKRL	=	0x0097
                           00008F   275 _CKCON0	=	0x008f
                           0000AF   276 _CKCON1	=	0x00af
                           0000FA   277 _CCAP0H	=	0x00fa
                           0000FB   278 _CCAP1H	=	0x00fb
                           0000FC   279 _CCAP2H	=	0x00fc
                           0000FD   280 _CCAP3H	=	0x00fd
                           0000FE   281 _CCAP4H	=	0x00fe
                           0000EA   282 _CCAP0L	=	0x00ea
                           0000EB   283 _CCAP1L	=	0x00eb
                           0000EC   284 _CCAP2L	=	0x00ec
                           0000ED   285 _CCAP3L	=	0x00ed
                           0000EE   286 _CCAP4L	=	0x00ee
                           0000DA   287 _CCAPM0	=	0x00da
                           0000DB   288 _CCAPM1	=	0x00db
                           0000DC   289 _CCAPM2	=	0x00dc
                           0000DD   290 _CCAPM3	=	0x00dd
                           0000DE   291 _CCAPM4	=	0x00de
                           0000D8   292 _CCON	=	0x00d8
                           0000F9   293 _CH	=	0x00f9
                           0000E9   294 _CL	=	0x00e9
                           0000D9   295 _CMOD	=	0x00d9
                           0000A8   296 _IEN0	=	0x00a8
                           0000B1   297 _IEN1	=	0x00b1
                           0000B8   298 _IPL0	=	0x00b8
                           0000B7   299 _IPH0	=	0x00b7
                           0000B2   300 _IPL1	=	0x00b2
                           0000B3   301 _IPH1	=	0x00b3
                           0000C0   302 _P4	=	0x00c0
                           0000E8   303 _P5	=	0x00e8
                           0000A6   304 _WDTRST	=	0x00a6
                           0000A7   305 _WDTPRG	=	0x00a7
                           0000A9   306 _SADDR	=	0x00a9
                           0000B9   307 _SADEN	=	0x00b9
                           0000C3   308 _SPCON	=	0x00c3
                           0000C4   309 _SPSTA	=	0x00c4
                           0000C5   310 _SPDAT	=	0x00c5
                           0000C9   311 _T2MOD	=	0x00c9
                           00009B   312 _BDRCON	=	0x009b
                           00009A   313 _BRL	=	0x009a
                           00009C   314 _KBLS	=	0x009c
                           00009D   315 _KBE	=	0x009d
                           00009E   316 _KBF	=	0x009e
                           0000D2   317 _EECON	=	0x00d2
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                           000080   323 _P0_0	=	0x0080
                           000081   324 _P0_1	=	0x0081
                           000082   325 _P0_2	=	0x0082
                           000083   326 _P0_3	=	0x0083
                           000084   327 _P0_4	=	0x0084
                           000085   328 _P0_5	=	0x0085
                           000086   329 _P0_6	=	0x0086
                           000087   330 _P0_7	=	0x0087
                           000088   331 _IT0	=	0x0088
                           000089   332 _IE0	=	0x0089
                           00008A   333 _IT1	=	0x008a
                           00008B   334 _IE1	=	0x008b
                           00008C   335 _TR0	=	0x008c
                           00008D   336 _TF0	=	0x008d
                           00008E   337 _TR1	=	0x008e
                           00008F   338 _TF1	=	0x008f
                           000090   339 _P1_0	=	0x0090
                           000091   340 _P1_1	=	0x0091
                           000092   341 _P1_2	=	0x0092
                           000093   342 _P1_3	=	0x0093
                           000094   343 _P1_4	=	0x0094
                           000095   344 _P1_5	=	0x0095
                           000096   345 _P1_6	=	0x0096
                           000097   346 _P1_7	=	0x0097
                           000098   347 _RI	=	0x0098
                           000099   348 _TI	=	0x0099
                           00009A   349 _RB8	=	0x009a
                           00009B   350 _TB8	=	0x009b
                           00009C   351 _REN	=	0x009c
                           00009D   352 _SM2	=	0x009d
                           00009E   353 _SM1	=	0x009e
                           00009F   354 _SM0	=	0x009f
                           0000A0   355 _P2_0	=	0x00a0
                           0000A1   356 _P2_1	=	0x00a1
                           0000A2   357 _P2_2	=	0x00a2
                           0000A3   358 _P2_3	=	0x00a3
                           0000A4   359 _P2_4	=	0x00a4
                           0000A5   360 _P2_5	=	0x00a5
                           0000A6   361 _P2_6	=	0x00a6
                           0000A7   362 _P2_7	=	0x00a7
                           0000A8   363 _EX0	=	0x00a8
                           0000A9   364 _ET0	=	0x00a9
                           0000AA   365 _EX1	=	0x00aa
                           0000AB   366 _ET1	=	0x00ab
                           0000AC   367 _ES	=	0x00ac
                           0000AF   368 _EA	=	0x00af
                           0000B0   369 _P3_0	=	0x00b0
                           0000B1   370 _P3_1	=	0x00b1
                           0000B2   371 _P3_2	=	0x00b2
                           0000B3   372 _P3_3	=	0x00b3
                           0000B4   373 _P3_4	=	0x00b4
                           0000B5   374 _P3_5	=	0x00b5
                           0000B6   375 _P3_6	=	0x00b6
                           0000B7   376 _P3_7	=	0x00b7
                           0000B0   377 _RXD	=	0x00b0
                           0000B1   378 _TXD	=	0x00b1
                           0000B2   379 _INT0	=	0x00b2
                           0000B3   380 _INT1	=	0x00b3
                           0000B4   381 _T0	=	0x00b4
                           0000B5   382 _T1	=	0x00b5
                           0000B6   383 _WR	=	0x00b6
                           0000B7   384 _RD	=	0x00b7
                           0000B8   385 _PX0	=	0x00b8
                           0000B9   386 _PT0	=	0x00b9
                           0000BA   387 _PX1	=	0x00ba
                           0000BB   388 _PT1	=	0x00bb
                           0000BC   389 _PS	=	0x00bc
                           0000D0   390 _P	=	0x00d0
                           0000D1   391 _F1	=	0x00d1
                           0000D2   392 _OV	=	0x00d2
                           0000D3   393 _RS0	=	0x00d3
                           0000D4   394 _RS1	=	0x00d4
                           0000D5   395 _F0	=	0x00d5
                           0000D6   396 _AC	=	0x00d6
                           0000D7   397 _CY	=	0x00d7
                           0000AD   398 _ET2	=	0x00ad
                           0000BD   399 _PT2	=	0x00bd
                           0000C8   400 _T2CON_0	=	0x00c8
                           0000C9   401 _T2CON_1	=	0x00c9
                           0000CA   402 _T2CON_2	=	0x00ca
                           0000CB   403 _T2CON_3	=	0x00cb
                           0000CC   404 _T2CON_4	=	0x00cc
                           0000CD   405 _T2CON_5	=	0x00cd
                           0000CE   406 _T2CON_6	=	0x00ce
                           0000CF   407 _T2CON_7	=	0x00cf
                           0000C8   408 _CP_RL2	=	0x00c8
                           0000C9   409 _C_T2	=	0x00c9
                           0000CA   410 _TR2	=	0x00ca
                           0000CB   411 _EXEN2	=	0x00cb
                           0000CC   412 _TCLK	=	0x00cc
                           0000CD   413 _RCLK	=	0x00cd
                           0000CE   414 _EXF2	=	0x00ce
                           0000CF   415 _TF2	=	0x00cf
                           0000DF   416 _CF	=	0x00df
                           0000DE   417 _CR	=	0x00de
                           0000DC   418 _CCF4	=	0x00dc
                           0000DB   419 _CCF3	=	0x00db
                           0000DA   420 _CCF2	=	0x00da
                           0000D9   421 _CCF1	=	0x00d9
                           0000D8   422 _CCF0	=	0x00d8
                           0000AE   423 _EC	=	0x00ae
                           0000BE   424 _PPCL	=	0x00be
                           0000BD   425 _PT2L	=	0x00bd
                           0000BC   426 _PSL	=	0x00bc
                           0000BB   427 _PT1L	=	0x00bb
                           0000BA   428 _PX1L	=	0x00ba
                           0000B9   429 _PT0L	=	0x00b9
                           0000B8   430 _PX0L	=	0x00b8
                           0000C0   431 _P4_0	=	0x00c0
                           0000C1   432 _P4_1	=	0x00c1
                           0000C2   433 _P4_2	=	0x00c2
                           0000C3   434 _P4_3	=	0x00c3
                           0000C4   435 _P4_4	=	0x00c4
                           0000C5   436 _P4_5	=	0x00c5
                           0000C6   437 _P4_6	=	0x00c6
                           0000C7   438 _P4_7	=	0x00c7
                           0000E8   439 _P5_0	=	0x00e8
                           0000E9   440 _P5_1	=	0x00e9
                           0000EA   441 _P5_2	=	0x00ea
                           0000EB   442 _P5_3	=	0x00eb
                           0000EC   443 _P5_4	=	0x00ec
                           0000ED   444 _P5_5	=	0x00ed
                           0000EE   445 _P5_6	=	0x00ee
                           0000EF   446 _P5_7	=	0x00ef
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable register banks
                                    449 ;--------------------------------------------------------
                                    450 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        451 	.ds 8
                                    452 ;--------------------------------------------------------
                                    453 ; internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area DSEG    (DATA)
      000022                        456 _ptr::
      000022                        457 	.ds 2
      000024                        458 _min_high:
      000024                        459 	.ds 1
      000025                        460 _min_low:
      000025                        461 	.ds 1
      000026                        462 _sec_high:
      000026                        463 	.ds 1
      000027                        464 _sec_low:
      000027                        465 	.ds 1
      000028                        466 _mili_sec:
      000028                        467 	.ds 1
      000029                        468 _clockrun_flag::
      000029                        469 	.ds 2
      00002B                        470 _custom_char_code:
      00002B                        471 	.ds 1
      00002C                        472 _elapsed_tick:
      00002C                        473 	.ds 4
      000030                        474 _lcdgotoxy_PARM_2:
      000030                        475 	.ds 1
      000031                        476 _lcdcreatechar_PARM_2:
      000031                        477 	.ds 1
      000032                        478 _arrow_set_PARM_2:
      000032                        479 	.ds 1
      000033                        480 _arrow_set_PARM_3:
      000033                        481 	.ds 1
      000034                        482 _process_custom_character_char_array_65537_92:
      000034                        483 	.ds 8
      00003C                        484 _show_custom_character_address_65536_96:
      00003C                        485 	.ds 4
      000040                        486 _show_custom_character_ccode_65536_96:
      000040                        487 	.ds 4
      000044                        488 _show_custom_character_char_array_65536_96:
      000044                        489 	.ds 8
                                    490 ;--------------------------------------------------------
                                    491 ; overlayable items in internal ram
                                    492 ;--------------------------------------------------------
                                    493 	.area	OSEG    (OVR,DATA)
      00000C                        494 _lcd_command_PARM_2:
      00000C                        495 	.ds 1
      00000D                        496 _lcd_command_PARM_3:
      00000D                        497 	.ds 1
                                    498 ;--------------------------------------------------------
                                    499 ; indirectly addressable internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area ISEG    (DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; absolute internal ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area IABS    (ABS,DATA)
                                    506 	.area IABS    (ABS,DATA)
                                    507 ;--------------------------------------------------------
                                    508 ; bit data
                                    509 ;--------------------------------------------------------
                                    510 	.area BSEG    (BIT)
      000000                        511 _lcdgotoxy_sloc0_1_0:
      000000                        512 	.ds 1
                                    513 ;--------------------------------------------------------
                                    514 ; paged external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area PSEG    (PAG,XDATA)
                                    517 ;--------------------------------------------------------
                                    518 ; external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XSEG    (XDATA)
      000000                        521 _show_custom_character_a_65536_96:
      000000                        522 	.ds 32
                                    523 ;--------------------------------------------------------
                                    524 ; absolute external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area XABS    (ABS,XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; external initialized ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XISEG   (XDATA)
                                    531 	.area HOME    (CODE)
                                    532 	.area GSINIT0 (CODE)
                                    533 	.area GSINIT1 (CODE)
                                    534 	.area GSINIT2 (CODE)
                                    535 	.area GSINIT3 (CODE)
                                    536 	.area GSINIT4 (CODE)
                                    537 	.area GSINIT5 (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area CSEG    (CODE)
                                    541 ;--------------------------------------------------------
                                    542 ; global & static initialisations
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.area GSFINAL (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 ;	lcd.c:30: extern __xdata uint8_t * ptr = (__xdata uint8_t *)0xFFFF;
      00208F 75 22 FF         [24]  549 	mov	_ptr,#0xff
      002092 75 23 FF         [24]  550 	mov	(_ptr + 1),#0xff
                                    551 ;	lcd.c:36: extern volatile unsigned int clockrun_flag = 0;
      002095 E4               [12]  552 	clr	a
      002096 F5 29            [12]  553 	mov	_clockrun_flag,a
      002098 F5 2A            [12]  554 	mov	(_clockrun_flag + 1),a
                                    555 ;	lcd.c:38: static uint8_t custom_char_code = 1;
      00209A 75 2B 01         [24]  556 	mov	_custom_char_code,#0x01
                                    557 ;	lcd.c:39: static uint32_t  elapsed_tick = 0;
      00209D F5 2C            [12]  558 	mov	_elapsed_tick,a
      00209F F5 2D            [12]  559 	mov	(_elapsed_tick + 1),a
      0020A1 F5 2E            [12]  560 	mov	(_elapsed_tick + 2),a
      0020A3 F5 2F            [12]  561 	mov	(_elapsed_tick + 3),a
                                    562 ;--------------------------------------------------------
                                    563 ; Home
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area HOME    (CODE)
                                    567 ;--------------------------------------------------------
                                    568 ; code
                                    569 ;--------------------------------------------------------
                                    570 	.area CSEG    (CODE)
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'lcd_command'
                                    573 ;------------------------------------------------------------
                                    574 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    575 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    576 ;rs                        Allocated to registers r7 
                                    577 ;------------------------------------------------------------
                                    578 ;	lcd.c:47: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
                                    579 ;	-----------------------------------------
                                    580 ;	 function lcd_command
                                    581 ;	-----------------------------------------
      0020E8                        582 _lcd_command:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
                                    591 ;	lcd.c:48: RS = rs;              // Set the Register Select pin based on the provided parameter.
                                    592 ;	assignBit
      0020E8 E5 82            [12]  593 	mov	a,dpl
      0020EA 24 FF            [12]  594 	add	a,#0xff
      0020EC 92 96            [24]  595 	mov	_P1_6,c
                                    596 ;	lcd.c:49: R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
                                    597 ;	assignBit
      0020EE E5 0C            [12]  598 	mov	a,_lcd_command_PARM_2
      0020F0 24 FF            [12]  599 	add	a,#0xff
      0020F2 92 97            [24]  600 	mov	_P1_7,c
                                    601 ;	lcd.c:50: *ptr = data;          // Write the specified data byte to the LCD data buffer.
      0020F4 85 22 82         [24]  602 	mov	dpl,_ptr
      0020F7 85 23 83         [24]  603 	mov	dph,(_ptr + 1)
      0020FA E5 0D            [12]  604 	mov	a,_lcd_command_PARM_3
      0020FC F0               [24]  605 	movx	@dptr,a
                                    606 ;	lcd.c:51: }
      0020FD 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'lcdbusywait'
                                    610 ;------------------------------------------------------------
                                    611 ;	lcd.c:56: void lcdbusywait() {
                                    612 ;	-----------------------------------------
                                    613 ;	 function lcdbusywait
                                    614 ;	-----------------------------------------
      0020FE                        615 _lcdbusywait:
                                    616 ;	lcd.c:57: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    617 ;	assignBit
      0020FE C2 96            [12]  618 	clr	_P1_6
                                    619 ;	lcd.c:58: R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
                                    620 ;	assignBit
      002100 D2 97            [12]  621 	setb	_P1_7
                                    622 ;	lcd.c:59: while (*ptr & (0b10000000)) {
      002102                        623 00101$:
      002102 85 22 82         [24]  624 	mov	dpl,_ptr
      002105 85 23 83         [24]  625 	mov	dph,(_ptr + 1)
      002108 E0               [24]  626 	movx	a,@dptr
      002109 20 E7 F6         [24]  627 	jb	acc.7,00101$
                                    628 ;	lcd.c:62: }
      00210C 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    632 ;------------------------------------------------------------
                                    633 ;addr                      Allocated to registers r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	lcd.c:68: void lcdgotoaddr(uint8_t addr) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function lcdgotoaddr
                                    638 ;	-----------------------------------------
      00210D                        639 _lcdgotoaddr:
      00210D AF 82            [24]  640 	mov	r7,dpl
                                    641 ;	lcd.c:69: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    642 ;	assignBit
      00210F C2 96            [12]  643 	clr	_P1_6
                                    644 ;	lcd.c:70: R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
                                    645 ;	assignBit
      002111 C2 97            [12]  646 	clr	_P1_7
                                    647 ;	lcd.c:71: *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
      002113 85 22 82         [24]  648 	mov	dpl,_ptr
      002116 85 23 83         [24]  649 	mov	dph,(_ptr + 1)
      002119 43 07 80         [24]  650 	orl	ar7,#0x80
      00211C EF               [12]  651 	mov	a,r7
      00211D F0               [24]  652 	movx	@dptr,a
                                    653 ;	lcd.c:72: lcdbusywait();               // Wait until the LCD becomes idle.
                                    654 ;	lcd.c:73: }
      00211E 02 20 FE         [24]  655 	ljmp	_lcdbusywait
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'lcdgotoxy'
                                    658 ;------------------------------------------------------------
                                    659 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    660 ;row                       Allocated to registers r7 
                                    661 ;------------------------------------------------------------
                                    662 ;	lcd.c:80: void lcdgotoxy(uint8_t row, uint8_t column) {
                                    663 ;	-----------------------------------------
                                    664 ;	 function lcdgotoxy
                                    665 ;	-----------------------------------------
      002121                        666 _lcdgotoxy:
                                    667 ;	lcd.c:82: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      002121 AE 82            [24]  668 	mov	r6,dpl
      002123 7F 00            [12]  669 	mov	r7,#0x00
      002125 EE               [12]  670 	mov	a,r6
      002126 30 E0 23         [24]  671 	jnb	acc.0,00103$
      002129 75 0C 03         [24]  672 	mov	__modsint_PARM_2,#0x03
      00212C 75 0D 00         [24]  673 	mov	(__modsint_PARM_2 + 1),#0x00
      00212F 8E 82            [24]  674 	mov	dpl,r6
      002131 8F 83            [24]  675 	mov	dph,r7
      002133 12 35 92         [24]  676 	lcall	__modsint
      002136 AC 82            [24]  677 	mov	r4,dpl
      002138 AD 83            [24]  678 	mov	r5,dph
      00213A EC               [12]  679 	mov	a,r4
      00213B 4D               [12]  680 	orl	a,r5
      00213C B4 01 00         [24]  681 	cjne	a,#0x01,00110$
      00213F                        682 00110$:
      00213F 92 00            [24]  683 	mov  _lcdgotoxy_sloc0_1_0,c
      002141 E4               [12]  684 	clr	a
      002142 33               [12]  685 	rlc	a
      002143 C4               [12]  686 	swap	a
      002144 54 F0            [12]  687 	anl	a,#0xf0
      002146 AC 30            [24]  688 	mov	r4,_lcdgotoxy_PARM_2
      002148 2C               [12]  689 	add	a,r4
      002149 FD               [12]  690 	mov	r5,a
      00214A 80 1A            [24]  691 	sjmp	00104$
      00214C                        692 00103$:
      00214C AC 30            [24]  693 	mov	r4,_lcdgotoxy_PARM_2
      00214E 74 40            [12]  694 	mov	a,#0x40
      002150 2C               [12]  695 	add	a,r4
      002151 FC               [12]  696 	mov	r4,a
      002152 53 06 03         [24]  697 	anl	ar6,#0x03
      002155 7F 00            [12]  698 	mov	r7,#0x00
      002157 EE               [12]  699 	mov	a,r6
      002158 4F               [12]  700 	orl	a,r7
      002159 B4 01 00         [24]  701 	cjne	a,#0x01,00111$
      00215C                        702 00111$:
      00215C 92 00            [24]  703 	mov  _lcdgotoxy_sloc0_1_0,c
      00215E E4               [12]  704 	clr	a
      00215F 33               [12]  705 	rlc	a
      002160 C4               [12]  706 	swap	a
      002161 54 F0            [12]  707 	anl	a,#0xf0
      002163 FF               [12]  708 	mov	r7,a
      002164 2C               [12]  709 	add	a,r4
      002165 FD               [12]  710 	mov	r5,a
      002166                        711 00104$:
      002166 ED               [12]  712 	mov	a,r5
      002167 14               [12]  713 	dec	a
      002168 F5 82            [12]  714 	mov	dpl,a
                                    715 ;	lcd.c:83: }
      00216A 02 21 0D         [24]  716 	ljmp	_lcdgotoaddr
                                    717 ;------------------------------------------------------------
                                    718 ;Allocation info for local variables in function 'lcdputch'
                                    719 ;------------------------------------------------------------
                                    720 ;cc                        Allocated to registers r7 
                                    721 ;------------------------------------------------------------
                                    722 ;	lcd.c:89: void lcdputch(uint8_t cc) {
                                    723 ;	-----------------------------------------
                                    724 ;	 function lcdputch
                                    725 ;	-----------------------------------------
      00216D                        726 _lcdputch:
      00216D AF 82            [24]  727 	mov	r7,dpl
                                    728 ;	lcd.c:91: RS = PULSE_HIGH;
                                    729 ;	assignBit
      00216F D2 96            [12]  730 	setb	_P1_6
                                    731 ;	lcd.c:92: R_W = PULSE_LOW;
                                    732 ;	assignBit
      002171 C2 97            [12]  733 	clr	_P1_7
                                    734 ;	lcd.c:93: *ptr = cc;
      002173 85 22 82         [24]  735 	mov	dpl,_ptr
      002176 85 23 83         [24]  736 	mov	dph,(_ptr + 1)
      002179 EF               [12]  737 	mov	a,r7
      00217A F0               [24]  738 	movx	@dptr,a
                                    739 ;	lcd.c:94: lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
                                    740 ;	lcd.c:95: }
      00217B 02 20 FE         [24]  741 	ljmp	_lcdbusywait
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'lcdputstr'
                                    744 ;------------------------------------------------------------
                                    745 ;ss                        Allocated to registers 
                                    746 ;lcd_ptr_addr              Allocated to registers r4 
                                    747 ;------------------------------------------------------------
                                    748 ;	lcd.c:102: void lcdputstr(uint8_t *ss) {
                                    749 ;	-----------------------------------------
                                    750 ;	 function lcdputstr
                                    751 ;	-----------------------------------------
      00217E                        752 _lcdputstr:
      00217E AD 82            [24]  753 	mov	r5,dpl
      002180 AE 83            [24]  754 	mov	r6,dph
      002182 AF F0            [24]  755 	mov	r7,b
                                    756 ;	lcd.c:106: while (*ss != '\0') {
      002184                        757 00107$:
      002184 8D 82            [24]  758 	mov	dpl,r5
      002186 8E 83            [24]  759 	mov	dph,r6
      002188 8F F0            [24]  760 	mov	b,r7
      00218A 12 35 76         [24]  761 	lcall	__gptrget
      00218D 70 01            [24]  762 	jnz	00137$
      00218F 22               [24]  763 	ret
      002190                        764 00137$:
                                    765 ;	lcd.c:108: RS = PULSE_LOW;
                                    766 ;	assignBit
      002190 C2 96            [12]  767 	clr	_P1_6
                                    768 ;	lcd.c:109: R_W = PULSE_HIGH;
                                    769 ;	assignBit
      002192 D2 97            [12]  770 	setb	_P1_7
                                    771 ;	lcd.c:110: lcdputch(*ss);
      002194 8D 82            [24]  772 	mov	dpl,r5
      002196 8E 83            [24]  773 	mov	dph,r6
      002198 8F F0            [24]  774 	mov	b,r7
      00219A 12 35 76         [24]  775 	lcall	__gptrget
      00219D F5 82            [12]  776 	mov	dpl,a
      00219F C0 07            [24]  777 	push	ar7
      0021A1 C0 06            [24]  778 	push	ar6
      0021A3 C0 05            [24]  779 	push	ar5
      0021A5 12 21 6D         [24]  780 	lcall	_lcdputch
      0021A8 D0 05            [24]  781 	pop	ar5
      0021AA D0 06            [24]  782 	pop	ar6
      0021AC D0 07            [24]  783 	pop	ar7
                                    784 ;	lcd.c:113: lcd_ptr_addr = *ptr & (0b01111111);
      0021AE 85 22 82         [24]  785 	mov	dpl,_ptr
      0021B1 85 23 83         [24]  786 	mov	dph,(_ptr + 1)
      0021B4 E0               [24]  787 	movx	a,@dptr
      0021B5 FC               [12]  788 	mov	r4,a
      0021B6 53 04 7F         [24]  789 	anl	ar4,#0x7f
                                    790 ;	lcd.c:114: switch (lcd_ptr_addr) {
      0021B9 BC 10 02         [24]  791 	cjne	r4,#0x10,00138$
      0021BC 80 0F            [24]  792 	sjmp	00101$
      0021BE                        793 00138$:
      0021BE BC 20 02         [24]  794 	cjne	r4,#0x20,00139$
      0021C1 80 32            [24]  795 	sjmp	00103$
      0021C3                        796 00139$:
      0021C3 BC 50 02         [24]  797 	cjne	r4,#0x50,00140$
      0021C6 80 19            [24]  798 	sjmp	00102$
      0021C8                        799 00140$:
                                    800 ;	lcd.c:115: case 0x10:
      0021C8 BC 60 50         [24]  801 	cjne	r4,#0x60,00106$
      0021CB 80 3C            [24]  802 	sjmp	00104$
      0021CD                        803 00101$:
                                    804 ;	lcd.c:116: lcdgotoaddr(0x40);
      0021CD 75 82 40         [24]  805 	mov	dpl,#0x40
      0021D0 C0 07            [24]  806 	push	ar7
      0021D2 C0 06            [24]  807 	push	ar6
      0021D4 C0 05            [24]  808 	push	ar5
      0021D6 12 21 0D         [24]  809 	lcall	_lcdgotoaddr
      0021D9 D0 05            [24]  810 	pop	ar5
      0021DB D0 06            [24]  811 	pop	ar6
      0021DD D0 07            [24]  812 	pop	ar7
                                    813 ;	lcd.c:117: break;
                                    814 ;	lcd.c:118: case 0x50:
      0021DF 80 3A            [24]  815 	sjmp	00106$
      0021E1                        816 00102$:
                                    817 ;	lcd.c:119: lcdgotoaddr(0x10);
      0021E1 75 82 10         [24]  818 	mov	dpl,#0x10
      0021E4 C0 07            [24]  819 	push	ar7
      0021E6 C0 06            [24]  820 	push	ar6
      0021E8 C0 05            [24]  821 	push	ar5
      0021EA 12 21 0D         [24]  822 	lcall	_lcdgotoaddr
      0021ED D0 05            [24]  823 	pop	ar5
      0021EF D0 06            [24]  824 	pop	ar6
      0021F1 D0 07            [24]  825 	pop	ar7
                                    826 ;	lcd.c:120: break;
                                    827 ;	lcd.c:121: case 0x20:
      0021F3 80 26            [24]  828 	sjmp	00106$
      0021F5                        829 00103$:
                                    830 ;	lcd.c:122: lcdgotoaddr(0x50);
      0021F5 75 82 50         [24]  831 	mov	dpl,#0x50
      0021F8 C0 07            [24]  832 	push	ar7
      0021FA C0 06            [24]  833 	push	ar6
      0021FC C0 05            [24]  834 	push	ar5
      0021FE 12 21 0D         [24]  835 	lcall	_lcdgotoaddr
      002201 D0 05            [24]  836 	pop	ar5
      002203 D0 06            [24]  837 	pop	ar6
      002205 D0 07            [24]  838 	pop	ar7
                                    839 ;	lcd.c:123: break;
                                    840 ;	lcd.c:124: case 0x60:
      002207 80 12            [24]  841 	sjmp	00106$
      002209                        842 00104$:
                                    843 ;	lcd.c:125: lcdgotoaddr(0x00);
      002209 75 82 00         [24]  844 	mov	dpl,#0x00
      00220C C0 07            [24]  845 	push	ar7
      00220E C0 06            [24]  846 	push	ar6
      002210 C0 05            [24]  847 	push	ar5
      002212 12 21 0D         [24]  848 	lcall	_lcdgotoaddr
      002215 D0 05            [24]  849 	pop	ar5
      002217 D0 06            [24]  850 	pop	ar6
      002219 D0 07            [24]  851 	pop	ar7
                                    852 ;	lcd.c:129: }
      00221B                        853 00106$:
                                    854 ;	lcd.c:131: ss++;  // Move to the next character in the string.
      00221B 0D               [12]  855 	inc	r5
      00221C BD 00 01         [24]  856 	cjne	r5,#0x00,00142$
      00221F 0E               [12]  857 	inc	r6
      002220                        858 00142$:
                                    859 ;	lcd.c:133: }
      002220 02 21 84         [24]  860 	ljmp	00107$
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'lcdinit'
                                    863 ;------------------------------------------------------------
                                    864 ;	lcd.c:138: void lcdinit() {
                                    865 ;	-----------------------------------------
                                    866 ;	 function lcdinit
                                    867 ;	-----------------------------------------
      002223                        868 _lcdinit:
                                    869 ;	lcd.c:140: delay(14000);
      002223 90 36 B0         [24]  870 	mov	dptr,#0x36b0
      002226 E4               [12]  871 	clr	a
      002227 F5 F0            [12]  872 	mov	b,a
      002229 12 20 A8         [24]  873 	lcall	_delay
                                    874 ;	lcd.c:143: lcd_command(0, 0, 0x30);
      00222C 75 0C 00         [24]  875 	mov	_lcd_command_PARM_2,#0x00
      00222F 75 0D 30         [24]  876 	mov	_lcd_command_PARM_3,#0x30
      002232 75 82 00         [24]  877 	mov	dpl,#0x00
      002235 12 20 E8         [24]  878 	lcall	_lcd_command
                                    879 ;	lcd.c:144: delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
      002238 90 0F A0         [24]  880 	mov	dptr,#0x0fa0
      00223B E4               [12]  881 	clr	a
      00223C F5 F0            [12]  882 	mov	b,a
      00223E 12 20 A8         [24]  883 	lcall	_delay
                                    884 ;	lcd.c:145: lcd_command(0, 0, 0x30);
      002241 75 0C 00         [24]  885 	mov	_lcd_command_PARM_2,#0x00
      002244 75 0D 30         [24]  886 	mov	_lcd_command_PARM_3,#0x30
      002247 75 82 00         [24]  887 	mov	dpl,#0x00
      00224A 12 20 E8         [24]  888 	lcall	_lcd_command
                                    889 ;	lcd.c:146: delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
      00224D 90 00 64         [24]  890 	mov	dptr,#(0x64&0x00ff)
      002250 E4               [12]  891 	clr	a
      002251 F5 F0            [12]  892 	mov	b,a
      002253 12 20 A8         [24]  893 	lcall	_delay
                                    894 ;	lcd.c:147: lcd_command(0, 0, 0x30);
      002256 75 0C 00         [24]  895 	mov	_lcd_command_PARM_2,#0x00
      002259 75 0D 30         [24]  896 	mov	_lcd_command_PARM_3,#0x30
      00225C 75 82 00         [24]  897 	mov	dpl,#0x00
      00225F 12 20 E8         [24]  898 	lcall	_lcd_command
                                    899 ;	lcd.c:149: lcdbusywait();  // Wait for the LCD to finish processing the commands.
      002262 12 20 FE         [24]  900 	lcall	_lcdbusywait
                                    901 ;	lcd.c:151: lcd_command(0, 0, 0x38);  // Function set command
      002265 75 0C 00         [24]  902 	mov	_lcd_command_PARM_2,#0x00
      002268 75 0D 38         [24]  903 	mov	_lcd_command_PARM_3,#0x38
      00226B 75 82 00         [24]  904 	mov	dpl,#0x00
      00226E 12 20 E8         [24]  905 	lcall	_lcd_command
                                    906 ;	lcd.c:152: lcdbusywait();
      002271 12 20 FE         [24]  907 	lcall	_lcdbusywait
                                    908 ;	lcd.c:154: lcd_command(0, 0, 0x08);  // Turn off display command
      002274 75 0C 00         [24]  909 	mov	_lcd_command_PARM_2,#0x00
      002277 75 0D 08         [24]  910 	mov	_lcd_command_PARM_3,#0x08
      00227A 75 82 00         [24]  911 	mov	dpl,#0x00
      00227D 12 20 E8         [24]  912 	lcall	_lcd_command
                                    913 ;	lcd.c:155: lcdbusywait();
      002280 12 20 FE         [24]  914 	lcall	_lcdbusywait
                                    915 ;	lcd.c:157: lcd_command(0, 0, 0x0C);  // Turn on display command
      002283 75 0C 00         [24]  916 	mov	_lcd_command_PARM_2,#0x00
      002286 75 0D 0C         [24]  917 	mov	_lcd_command_PARM_3,#0x0c
      002289 75 82 00         [24]  918 	mov	dpl,#0x00
      00228C 12 20 E8         [24]  919 	lcall	_lcd_command
                                    920 ;	lcd.c:158: lcdbusywait();
      00228F 12 20 FE         [24]  921 	lcall	_lcdbusywait
                                    922 ;	lcd.c:160: lcd_command(0, 0, 0x06);  // Entry mode set command
      002292 75 0C 00         [24]  923 	mov	_lcd_command_PARM_2,#0x00
      002295 75 0D 06         [24]  924 	mov	_lcd_command_PARM_3,#0x06
      002298 75 82 00         [24]  925 	mov	dpl,#0x00
      00229B 12 20 E8         [24]  926 	lcall	_lcd_command
                                    927 ;	lcd.c:161: lcdbusywait();
      00229E 12 20 FE         [24]  928 	lcall	_lcdbusywait
                                    929 ;	lcd.c:163: lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
      0022A1 75 0C 00         [24]  930 	mov	_lcd_command_PARM_2,#0x00
      0022A4 75 0D 01         [24]  931 	mov	_lcd_command_PARM_3,#0x01
      0022A7 75 82 00         [24]  932 	mov	dpl,#0x00
                                    933 ;	lcd.c:164: }
      0022AA 02 20 E8         [24]  934 	ljmp	_lcd_command
                                    935 ;------------------------------------------------------------
                                    936 ;Allocation info for local variables in function 'lcdclear'
                                    937 ;------------------------------------------------------------
                                    938 ;	lcd.c:169: void lcdclear() {
                                    939 ;	-----------------------------------------
                                    940 ;	 function lcdclear
                                    941 ;	-----------------------------------------
      0022AD                        942 _lcdclear:
                                    943 ;	lcd.c:170: RS = PULSE_LOW;
                                    944 ;	assignBit
      0022AD C2 96            [12]  945 	clr	_P1_6
                                    946 ;	lcd.c:171: R_W = PULSE_LOW;
                                    947 ;	assignBit
      0022AF C2 97            [12]  948 	clr	_P1_7
                                    949 ;	lcd.c:172: *ptr = 0b00000001;  // Send the command to clear the screen.
      0022B1 85 22 82         [24]  950 	mov	dpl,_ptr
      0022B4 85 23 83         [24]  951 	mov	dph,(_ptr + 1)
      0022B7 74 01            [12]  952 	mov	a,#0x01
      0022B9 F0               [24]  953 	movx	@dptr,a
                                    954 ;	lcd.c:173: lcdbusywait();      // Wait for the LCD to finish processing the command.
                                    955 ;	lcd.c:174: }
      0022BA 02 20 FE         [24]  956 	ljmp	_lcdbusywait
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'test_functionality'
                                    959 ;------------------------------------------------------------
                                    960 ;	lcd.c:179: void test_functionality() {
                                    961 ;	-----------------------------------------
                                    962 ;	 function test_functionality
                                    963 ;	-----------------------------------------
      0022BD                        964 _test_functionality:
                                    965 ;	lcd.c:180: printf_tiny("test_functionality start\n\r");
      0022BD 74 C8            [12]  966 	mov	a,#___str_0
      0022BF C0 E0            [24]  967 	push	acc
      0022C1 74 35            [12]  968 	mov	a,#(___str_0 >> 8)
      0022C3 C0 E0            [24]  969 	push	acc
      0022C5 12 2C B4         [24]  970 	lcall	_printf_tiny
      0022C8 15 81            [12]  971 	dec	sp
      0022CA 15 81            [12]  972 	dec	sp
                                    973 ;	lcd.c:183: lcdgotoaddr(0x01);
      0022CC 75 82 01         [24]  974 	mov	dpl,#0x01
      0022CF 12 21 0D         [24]  975 	lcall	_lcdgotoaddr
                                    976 ;	lcd.c:184: lcdputch('E');
      0022D2 75 82 45         [24]  977 	mov	dpl,#0x45
      0022D5 12 21 6D         [24]  978 	lcall	_lcdputch
                                    979 ;	lcd.c:185: delay(100000);
      0022D8 90 86 A0         [24]  980 	mov	dptr,#0x86a0
      0022DB 75 F0 01         [24]  981 	mov	b,#0x01
      0022DE E4               [12]  982 	clr	a
      0022DF 12 20 A8         [24]  983 	lcall	_delay
                                    984 ;	lcd.c:188: lcdgotoxy(1, 1);
      0022E2 75 30 01         [24]  985 	mov	_lcdgotoxy_PARM_2,#0x01
      0022E5 75 82 01         [24]  986 	mov	dpl,#0x01
      0022E8 12 21 21         [24]  987 	lcall	_lcdgotoxy
                                    988 ;	lcd.c:189: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022EB 90 35 E3         [24]  989 	mov	dptr,#___str_1
      0022EE 75 F0 80         [24]  990 	mov	b,#0x80
      0022F1 12 21 7E         [24]  991 	lcall	_lcdputstr
                                    992 ;	lcd.c:190: delay(100000);
      0022F4 90 86 A0         [24]  993 	mov	dptr,#0x86a0
      0022F7 75 F0 01         [24]  994 	mov	b,#0x01
      0022FA E4               [12]  995 	clr	a
      0022FB 12 20 A8         [24]  996 	lcall	_delay
                                    997 ;	lcd.c:193: lcdclear();
      0022FE 12 22 AD         [24]  998 	lcall	_lcdclear
                                    999 ;	lcd.c:195: printf_tiny("test_functionality end\n\r");
      002301 74 26            [12] 1000 	mov	a,#___str_2
      002303 C0 E0            [24] 1001 	push	acc
      002305 74 36            [12] 1002 	mov	a,#(___str_2 >> 8)
      002307 C0 E0            [24] 1003 	push	acc
      002309 12 2C B4         [24] 1004 	lcall	_printf_tiny
      00230C 15 81            [12] 1005 	dec	sp
      00230E 15 81            [12] 1006 	dec	sp
                                   1007 ;	lcd.c:196: }
      002310 22               [24] 1008 	ret
                                   1009 ;------------------------------------------------------------
                                   1010 ;Allocation info for local variables in function 'set_cgram_address'
                                   1011 ;------------------------------------------------------------
                                   1012 ;cgram_address             Allocated to registers r7 
                                   1013 ;------------------------------------------------------------
                                   1014 ;	lcd.c:202: void set_cgram_address(uint8_t cgram_address) {
                                   1015 ;	-----------------------------------------
                                   1016 ;	 function set_cgram_address
                                   1017 ;	-----------------------------------------
      002311                       1018 _set_cgram_address:
      002311 AF 82            [24] 1019 	mov	r7,dpl
                                   1020 ;	lcd.c:203: RS = PULSE_LOW;
                                   1021 ;	assignBit
      002313 C2 96            [12] 1022 	clr	_P1_6
                                   1023 ;	lcd.c:204: R_W = PULSE_LOW;
                                   1024 ;	assignBit
      002315 C2 97            [12] 1025 	clr	_P1_7
                                   1026 ;	lcd.c:205: *ptr = cgram_address;
      002317 85 22 82         [24] 1027 	mov	dpl,_ptr
      00231A 85 23 83         [24] 1028 	mov	dph,(_ptr + 1)
      00231D EF               [12] 1029 	mov	a,r7
      00231E F0               [24] 1030 	movx	@dptr,a
                                   1031 ;	lcd.c:206: lcdbusywait();
                                   1032 ;	lcd.c:207: }
      00231F 02 20 FE         [24] 1033 	ljmp	_lcdbusywait
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'lcdcreatechar'
                                   1036 ;------------------------------------------------------------
                                   1037 ;c                         Allocated with name '_lcdcreatechar_PARM_2'
                                   1038 ;char_num                  Allocated to registers 
                                   1039 ;------------------------------------------------------------
                                   1040 ;	lcd.c:213: void lcdcreatechar(uint8_t char_num, uint8_t c) {
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function lcdcreatechar
                                   1043 ;	-----------------------------------------
      002322                       1044 _lcdcreatechar:
                                   1045 ;	lcd.c:215: set_cgram_address(char_num);
      002322 12 23 11         [24] 1046 	lcall	_set_cgram_address
                                   1047 ;	lcd.c:218: lcdputch(c);
      002325 85 31 82         [24] 1048 	mov	dpl,_lcdcreatechar_PARM_2
                                   1049 ;	lcd.c:219: }
      002328 02 21 6D         [24] 1050 	ljmp	_lcdputch
                                   1051 ;------------------------------------------------------------
                                   1052 ;Allocation info for local variables in function 'reset_clock'
                                   1053 ;------------------------------------------------------------
                                   1054 ;	lcd.c:225: void reset_clock() {
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function reset_clock
                                   1057 ;	-----------------------------------------
      00232B                       1058 _reset_clock:
                                   1059 ;	lcd.c:227: min_high = '0';
      00232B 75 24 30         [24] 1060 	mov	_min_high,#0x30
                                   1061 ;	lcd.c:228: min_low = '0';
      00232E 75 25 30         [24] 1062 	mov	_min_low,#0x30
                                   1063 ;	lcd.c:229: sec_high = '0';
      002331 75 26 30         [24] 1064 	mov	_sec_high,#0x30
                                   1065 ;	lcd.c:230: sec_low = '0';
      002334 75 27 30         [24] 1066 	mov	_sec_low,#0x30
                                   1067 ;	lcd.c:231: mili_sec = '0';
      002337 75 28 30         [24] 1068 	mov	_mili_sec,#0x30
                                   1069 ;	lcd.c:234: lcdgotoaddr(0x59);
      00233A 75 82 59         [24] 1070 	mov	dpl,#0x59
      00233D 12 21 0D         [24] 1071 	lcall	_lcdgotoaddr
                                   1072 ;	lcd.c:235: lcdputch(min_high);
      002340 85 24 82         [24] 1073 	mov	dpl,_min_high
      002343 12 21 6D         [24] 1074 	lcall	_lcdputch
                                   1075 ;	lcd.c:236: lcdputch(min_low);
      002346 85 25 82         [24] 1076 	mov	dpl,_min_low
      002349 12 21 6D         [24] 1077 	lcall	_lcdputch
                                   1078 ;	lcd.c:237: lcdputch(':');
      00234C 75 82 3A         [24] 1079 	mov	dpl,#0x3a
      00234F 12 21 6D         [24] 1080 	lcall	_lcdputch
                                   1081 ;	lcd.c:238: lcdputch(sec_high);
      002352 85 26 82         [24] 1082 	mov	dpl,_sec_high
      002355 12 21 6D         [24] 1083 	lcall	_lcdputch
                                   1084 ;	lcd.c:239: lcdputch(sec_low);
      002358 85 27 82         [24] 1085 	mov	dpl,_sec_low
      00235B 12 21 6D         [24] 1086 	lcall	_lcdputch
                                   1087 ;	lcd.c:240: lcdputch('.');
      00235E 75 82 2E         [24] 1088 	mov	dpl,#0x2e
      002361 12 21 6D         [24] 1089 	lcall	_lcdputch
                                   1090 ;	lcd.c:241: lcdputch(mili_sec);
      002364 85 28 82         [24] 1091 	mov	dpl,_mili_sec
                                   1092 ;	lcd.c:242: }
      002367 02 21 6D         [24] 1093 	ljmp	_lcdputch
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'clock_run'
                                   1096 ;------------------------------------------------------------
                                   1097 ;	lcd.c:247: void clock_run() {
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function clock_run
                                   1100 ;	-----------------------------------------
      00236A                       1101 _clock_run:
                                   1102 ;	lcd.c:249: if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
      00236A E5 29            [12] 1103 	mov	a,_clockrun_flag
      00236C 45 2A            [12] 1104 	orl	a,(_clockrun_flag + 1)
      00236E 70 01            [24] 1105 	jnz	00149$
      002370 22               [24] 1106 	ret
      002371                       1107 00149$:
      002371 E5 08            [12] 1108 	mov	a,_tick
      002373 30 E0 01         [24] 1109 	jnb	acc.0,00150$
      002376 22               [24] 1110 	ret
      002377                       1111 00150$:
      002377 AC 08            [24] 1112 	mov	r4,_tick
      002379 AD 09            [24] 1113 	mov	r5,(_tick + 1)
      00237B 7E 00            [12] 1114 	mov	r6,#0x00
      00237D 7F 00            [12] 1115 	mov	r7,#0x00
      00237F C3               [12] 1116 	clr	c
      002380 E5 2C            [12] 1117 	mov	a,_elapsed_tick
      002382 9C               [12] 1118 	subb	a,r4
      002383 E5 2D            [12] 1119 	mov	a,(_elapsed_tick + 1)
      002385 9D               [12] 1120 	subb	a,r5
      002386 E5 2E            [12] 1121 	mov	a,(_elapsed_tick + 2)
      002388 9E               [12] 1122 	subb	a,r6
      002389 E5 2F            [12] 1123 	mov	a,(_elapsed_tick + 3)
      00238B 9F               [12] 1124 	subb	a,r7
      00238C 40 01            [24] 1125 	jc	00151$
      00238E 22               [24] 1126 	ret
      00238F                       1127 00151$:
                                   1128 ;	lcd.c:250: elapsed_tick = tick;  // Update the elapsed tick
      00238F 85 08 2C         [24] 1129 	mov	_elapsed_tick,_tick
      002392 85 09 2D         [24] 1130 	mov	(_elapsed_tick + 1),(_tick + 1)
      002395 75 2E 00         [24] 1131 	mov	(_elapsed_tick + 2),#0x00
      002398 75 2F 00         [24] 1132 	mov	(_elapsed_tick + 3),#0x00
                                   1133 ;	lcd.c:252: mili_sec++;  // Increment milliseconds
      00239B 05 28            [12] 1134 	inc	_mili_sec
                                   1135 ;	lcd.c:253: if (mili_sec > '9') {
      00239D E5 28            [12] 1136 	mov	a,_mili_sec
      00239F 24 C6            [12] 1137 	add	a,#0xff - 0x39
      0023A1 50 1D            [24] 1138 	jnc	00102$
                                   1139 ;	lcd.c:254: mili_sec = '0';
      0023A3 75 28 30         [24] 1140 	mov	_mili_sec,#0x30
                                   1141 ;	lcd.c:255: lcdgotoaddr(0x5F);
      0023A6 75 82 5F         [24] 1142 	mov	dpl,#0x5f
      0023A9 12 21 0D         [24] 1143 	lcall	_lcdgotoaddr
                                   1144 ;	lcd.c:256: lcdputch(mili_sec);
      0023AC 85 28 82         [24] 1145 	mov	dpl,_mili_sec
      0023AF 12 21 6D         [24] 1146 	lcall	_lcdputch
                                   1147 ;	lcd.c:257: sec_low++;
      0023B2 05 27            [12] 1148 	inc	_sec_low
                                   1149 ;	lcd.c:258: lcdgotoaddr(0x5D);
      0023B4 75 82 5D         [24] 1150 	mov	dpl,#0x5d
      0023B7 12 21 0D         [24] 1151 	lcall	_lcdgotoaddr
                                   1152 ;	lcd.c:259: lcdputch(sec_low);
      0023BA 85 27 82         [24] 1153 	mov	dpl,_sec_low
      0023BD 12 21 6D         [24] 1154 	lcall	_lcdputch
      0023C0                       1155 00102$:
                                   1156 ;	lcd.c:261: if (sec_low > '9') {
      0023C0 E5 27            [12] 1157 	mov	a,_sec_low
      0023C2 24 C6            [12] 1158 	add	a,#0xff - 0x39
      0023C4 50 1D            [24] 1159 	jnc	00104$
                                   1160 ;	lcd.c:262: sec_low = '0';
      0023C6 75 27 30         [24] 1161 	mov	_sec_low,#0x30
                                   1162 ;	lcd.c:263: lcdgotoaddr(0x5D);
      0023C9 75 82 5D         [24] 1163 	mov	dpl,#0x5d
      0023CC 12 21 0D         [24] 1164 	lcall	_lcdgotoaddr
                                   1165 ;	lcd.c:264: lcdputch(sec_low);
      0023CF 85 27 82         [24] 1166 	mov	dpl,_sec_low
      0023D2 12 21 6D         [24] 1167 	lcall	_lcdputch
                                   1168 ;	lcd.c:265: sec_high++;
      0023D5 05 26            [12] 1169 	inc	_sec_high
                                   1170 ;	lcd.c:266: lcdgotoaddr(0x5C);
      0023D7 75 82 5C         [24] 1171 	mov	dpl,#0x5c
      0023DA 12 21 0D         [24] 1172 	lcall	_lcdgotoaddr
                                   1173 ;	lcd.c:267: lcdputch(sec_high);
      0023DD 85 26 82         [24] 1174 	mov	dpl,_sec_high
      0023E0 12 21 6D         [24] 1175 	lcall	_lcdputch
      0023E3                       1176 00104$:
                                   1177 ;	lcd.c:269: if (sec_high > '5') {
      0023E3 E5 26            [12] 1178 	mov	a,_sec_high
      0023E5 24 CA            [12] 1179 	add	a,#0xff - 0x35
      0023E7 50 1D            [24] 1180 	jnc	00106$
                                   1181 ;	lcd.c:270: sec_high = '0';
      0023E9 75 26 30         [24] 1182 	mov	_sec_high,#0x30
                                   1183 ;	lcd.c:271: lcdgotoaddr(0x5C);
      0023EC 75 82 5C         [24] 1184 	mov	dpl,#0x5c
      0023EF 12 21 0D         [24] 1185 	lcall	_lcdgotoaddr
                                   1186 ;	lcd.c:272: lcdputch(sec_high);
      0023F2 85 26 82         [24] 1187 	mov	dpl,_sec_high
      0023F5 12 21 6D         [24] 1188 	lcall	_lcdputch
                                   1189 ;	lcd.c:273: min_low++;
      0023F8 05 25            [12] 1190 	inc	_min_low
                                   1191 ;	lcd.c:274: lcdgotoaddr(0x5A);
      0023FA 75 82 5A         [24] 1192 	mov	dpl,#0x5a
      0023FD 12 21 0D         [24] 1193 	lcall	_lcdgotoaddr
                                   1194 ;	lcd.c:275: lcdputch(min_low);
      002400 85 25 82         [24] 1195 	mov	dpl,_min_low
      002403 12 21 6D         [24] 1196 	lcall	_lcdputch
      002406                       1197 00106$:
                                   1198 ;	lcd.c:277: if (min_low > '9') {
      002406 E5 25            [12] 1199 	mov	a,_min_low
      002408 24 C6            [12] 1200 	add	a,#0xff - 0x39
      00240A 50 1D            [24] 1201 	jnc	00108$
                                   1202 ;	lcd.c:278: min_low = '0';
      00240C 75 25 30         [24] 1203 	mov	_min_low,#0x30
                                   1204 ;	lcd.c:279: lcdgotoaddr(0x5A);
      00240F 75 82 5A         [24] 1205 	mov	dpl,#0x5a
      002412 12 21 0D         [24] 1206 	lcall	_lcdgotoaddr
                                   1207 ;	lcd.c:280: lcdputch(min_low);
      002415 85 25 82         [24] 1208 	mov	dpl,_min_low
      002418 12 21 6D         [24] 1209 	lcall	_lcdputch
                                   1210 ;	lcd.c:281: min_high++;
      00241B 05 24            [12] 1211 	inc	_min_high
                                   1212 ;	lcd.c:282: lcdgotoaddr(0x59);
      00241D 75 82 59         [24] 1213 	mov	dpl,#0x59
      002420 12 21 0D         [24] 1214 	lcall	_lcdgotoaddr
                                   1215 ;	lcd.c:283: lcdputch(min_high);
      002423 85 24 82         [24] 1216 	mov	dpl,_min_high
      002426 12 21 6D         [24] 1217 	lcall	_lcdputch
      002429                       1218 00108$:
                                   1219 ;	lcd.c:285: if (min_high > '5') {
      002429 E5 24            [12] 1220 	mov	a,_min_high
      00242B 24 CA            [12] 1221 	add	a,#0xff - 0x35
      00242D 50 0F            [24] 1222 	jnc	00110$
                                   1223 ;	lcd.c:286: min_high = '0';
      00242F 75 24 30         [24] 1224 	mov	_min_high,#0x30
                                   1225 ;	lcd.c:287: lcdgotoaddr(0x59);
      002432 75 82 59         [24] 1226 	mov	dpl,#0x59
      002435 12 21 0D         [24] 1227 	lcall	_lcdgotoaddr
                                   1228 ;	lcd.c:288: lcdputch(min_high);
      002438 85 24 82         [24] 1229 	mov	dpl,_min_high
      00243B 12 21 6D         [24] 1230 	lcall	_lcdputch
      00243E                       1231 00110$:
                                   1232 ;	lcd.c:290: lcdgotoaddr(0x5F);
      00243E 75 82 5F         [24] 1233 	mov	dpl,#0x5f
      002441 12 21 0D         [24] 1234 	lcall	_lcdgotoaddr
                                   1235 ;	lcd.c:291: lcdputch(mili_sec);
      002444 85 28 82         [24] 1236 	mov	dpl,_mili_sec
                                   1237 ;	lcd.c:293: }
      002447 02 21 6D         [24] 1238 	ljmp	_lcdputch
                                   1239 ;------------------------------------------------------------
                                   1240 ;Allocation info for local variables in function 'menu_lcd'
                                   1241 ;------------------------------------------------------------
                                   1242 ;	lcd.c:298: void menu_lcd() {
                                   1243 ;	-----------------------------------------
                                   1244 ;	 function menu_lcd
                                   1245 ;	-----------------------------------------
      00244A                       1246 _menu_lcd:
                                   1247 ;	lcd.c:299: reset_clock();  // Reset clock values for display consistency
      00244A 12 23 2B         [24] 1248 	lcall	_reset_clock
                                   1249 ;	lcd.c:300: lcdgotoxy(1, 1);
      00244D 75 30 01         [24] 1250 	mov	_lcdgotoxy_PARM_2,#0x01
      002450 75 82 01         [24] 1251 	mov	dpl,#0x01
      002453 12 21 21         [24] 1252 	lcall	_lcdgotoxy
                                   1253 ;	lcd.c:301: lcdputstr("Clock status:");
      002456 90 36 3F         [24] 1254 	mov	dptr,#___str_3
      002459 75 F0 80         [24] 1255 	mov	b,#0x80
      00245C 12 21 7E         [24] 1256 	lcall	_lcdputstr
                                   1257 ;	lcd.c:302: lcdgotoxy(2, 1);
      00245F 75 30 01         [24] 1258 	mov	_lcdgotoxy_PARM_2,#0x01
      002462 75 82 02         [24] 1259 	mov	dpl,#0x02
      002465 12 21 21         [24] 1260 	lcall	_lcdgotoxy
                                   1261 ;	lcd.c:303: lcdputstr("Running");
      002468 90 36 4D         [24] 1262 	mov	dptr,#___str_4
      00246B 75 F0 80         [24] 1263 	mov	b,#0x80
      00246E 12 21 7E         [24] 1264 	lcall	_lcdputstr
                                   1265 ;	lcd.c:304: lcdgotoxy(3, 1);
      002471 75 30 01         [24] 1266 	mov	_lcdgotoxy_PARM_2,#0x01
      002474 75 82 03         [24] 1267 	mov	dpl,#0x03
      002477 12 21 21         [24] 1268 	lcall	_lcdgotoxy
                                   1269 ;	lcd.c:305: lcdputstr("Stopped");
      00247A 90 36 55         [24] 1270 	mov	dptr,#___str_5
      00247D 75 F0 80         [24] 1271 	mov	b,#0x80
      002480 12 21 7E         [24] 1272 	lcall	_lcdputstr
                                   1273 ;	lcd.c:306: lcdgotoxy(4, 1);
      002483 75 30 01         [24] 1274 	mov	_lcdgotoxy_PARM_2,#0x01
      002486 75 82 04         [24] 1275 	mov	dpl,#0x04
      002489 12 21 21         [24] 1276 	lcall	_lcdgotoxy
                                   1277 ;	lcd.c:307: lcdputstr("Reset");
      00248C 90 36 5D         [24] 1278 	mov	dptr,#___str_6
      00248F 75 F0 80         [24] 1279 	mov	b,#0x80
                                   1280 ;	lcd.c:308: }
      002492 02 21 7E         [24] 1281 	ljmp	_lcdputstr
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'arrow_set'
                                   1284 ;------------------------------------------------------------
                                   1285 ;b                         Allocated with name '_arrow_set_PARM_2'
                                   1286 ;c                         Allocated with name '_arrow_set_PARM_3'
                                   1287 ;a                         Allocated to registers r7 
                                   1288 ;------------------------------------------------------------
                                   1289 ;	lcd.c:316: void arrow_set(char a, char b, char c) {
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function arrow_set
                                   1292 ;	-----------------------------------------
      002495                       1293 _arrow_set:
      002495 AF 82            [24] 1294 	mov	r7,dpl
                                   1295 ;	lcd.c:317: lcdgotoxy(2, 8);
      002497 75 30 08         [24] 1296 	mov	_lcdgotoxy_PARM_2,#0x08
      00249A 75 82 02         [24] 1297 	mov	dpl,#0x02
      00249D C0 07            [24] 1298 	push	ar7
      00249F 12 21 21         [24] 1299 	lcall	_lcdgotoxy
      0024A2 D0 07            [24] 1300 	pop	ar7
                                   1301 ;	lcd.c:318: lcdputch(a);  // Display arrow indicator for "Running"
      0024A4 8F 82            [24] 1302 	mov	dpl,r7
      0024A6 12 21 6D         [24] 1303 	lcall	_lcdputch
                                   1304 ;	lcd.c:319: lcdgotoxy(3, 8);
      0024A9 75 30 08         [24] 1305 	mov	_lcdgotoxy_PARM_2,#0x08
      0024AC 75 82 03         [24] 1306 	mov	dpl,#0x03
      0024AF 12 21 21         [24] 1307 	lcall	_lcdgotoxy
                                   1308 ;	lcd.c:320: lcdputch(b);  // Display arrow indicator for "Stopped"
      0024B2 85 32 82         [24] 1309 	mov	dpl,_arrow_set_PARM_2
      0024B5 12 21 6D         [24] 1310 	lcall	_lcdputch
                                   1311 ;	lcd.c:321: lcdgotoxy(4, 6);
      0024B8 75 30 06         [24] 1312 	mov	_lcdgotoxy_PARM_2,#0x06
      0024BB 75 82 04         [24] 1313 	mov	dpl,#0x04
      0024BE 12 21 21         [24] 1314 	lcall	_lcdgotoxy
                                   1315 ;	lcd.c:322: lcdputch(c);  // Display arrow indicator for "Reset"
      0024C1 85 33 82         [24] 1316 	mov	dpl,_arrow_set_PARM_3
                                   1317 ;	lcd.c:323: }
      0024C4 02 21 6D         [24] 1318 	ljmp	_lcdputch
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'set_ddram_address'
                                   1321 ;------------------------------------------------------------
                                   1322 ;ddram_address             Allocated to registers r7 
                                   1323 ;------------------------------------------------------------
                                   1324 ;	lcd.c:333: void set_ddram_address(uint8_t ddram_address) {
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function set_ddram_address
                                   1327 ;	-----------------------------------------
      0024C7                       1328 _set_ddram_address:
      0024C7 AF 82            [24] 1329 	mov	r7,dpl
                                   1330 ;	lcd.c:334: RS = PULSE_LOW;            // Set RS (Register Select) to LOW for command mode
                                   1331 ;	assignBit
      0024C9 C2 96            [12] 1332 	clr	_P1_6
                                   1333 ;	lcd.c:335: R_W = PULSE_LOW;           // Set R_W (Read/Write) to LOW for write operation
                                   1334 ;	assignBit
      0024CB C2 97            [12] 1335 	clr	_P1_7
                                   1336 ;	lcd.c:336: *ptr = ddram_address | 0b10000000; // Set the DDRAM address with the required command
      0024CD 85 22 82         [24] 1337 	mov	dpl,_ptr
      0024D0 85 23 83         [24] 1338 	mov	dph,(_ptr + 1)
      0024D3 43 07 80         [24] 1339 	orl	ar7,#0x80
      0024D6 EF               [12] 1340 	mov	a,r7
      0024D7 F0               [24] 1341 	movx	@dptr,a
                                   1342 ;	lcd.c:337: lcdbusywait();             // Wait for the LCD to process the command
                                   1343 ;	lcd.c:338: }
      0024D8 02 20 FE         [24] 1344 	ljmp	_lcdbusywait
                                   1345 ;------------------------------------------------------------
                                   1346 ;Allocation info for local variables in function 'read_xxram_address'
                                   1347 ;------------------------------------------------------------
                                   1348 ;data                      Allocated to registers r7 
                                   1349 ;------------------------------------------------------------
                                   1350 ;	lcd.c:346: uint8_t read_xxram_address() {
                                   1351 ;	-----------------------------------------
                                   1352 ;	 function read_xxram_address
                                   1353 ;	-----------------------------------------
      0024DB                       1354 _read_xxram_address:
                                   1355 ;	lcd.c:348: RS = PULSE_HIGH;         // Set RS (Register Select) to HIGH for data mode
                                   1356 ;	assignBit
      0024DB D2 96            [12] 1357 	setb	_P1_6
                                   1358 ;	lcd.c:349: R_W = PULSE_HIGH;        // Set R_W (Read/Write) to HIGH for read operation
                                   1359 ;	assignBit
      0024DD D2 97            [12] 1360 	setb	_P1_7
                                   1361 ;	lcd.c:350: data = *ptr;             // Read the data from the specified XRAM address
      0024DF 85 22 82         [24] 1362 	mov	dpl,_ptr
      0024E2 85 23 83         [24] 1363 	mov	dph,(_ptr + 1)
      0024E5 E0               [24] 1364 	movx	a,@dptr
      0024E6 FF               [12] 1365 	mov	r7,a
                                   1366 ;	lcd.c:351: lcdbusywait();           // Wait for the LCD to process the read operation
      0024E7 C0 07            [24] 1367 	push	ar7
      0024E9 12 20 FE         [24] 1368 	lcall	_lcdbusywait
      0024EC D0 07            [24] 1369 	pop	ar7
                                   1370 ;	lcd.c:352: return data;             // Return the read data
      0024EE 8F 82            [24] 1371 	mov	dpl,r7
                                   1372 ;	lcd.c:353: }
      0024F0 22               [24] 1373 	ret
                                   1374 ;------------------------------------------------------------
                                   1375 ;Allocation info for local variables in function 'ddram_hex_dump'
                                   1376 ;------------------------------------------------------------
                                   1377 ;i                         Allocated to registers r7 
                                   1378 ;j                         Allocated to registers r5 r6 
                                   1379 ;------------------------------------------------------------
                                   1380 ;	lcd.c:360: void ddram_hex_dump() {
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function ddram_hex_dump
                                   1383 ;	-----------------------------------------
      0024F1                       1384 _ddram_hex_dump:
                                   1385 ;	lcd.c:361: for(uint8_t i = 0; i < 4; i++) {
      0024F1 7F 00            [12] 1386 	mov	r7,#0x00
      0024F3                       1387 00113$:
      0024F3 BF 04 00         [24] 1388 	cjne	r7,#0x04,00139$
      0024F6                       1389 00139$:
      0024F6 40 01            [24] 1390 	jc	00140$
      0024F8 22               [24] 1391 	ret
      0024F9                       1392 00140$:
                                   1393 ;	lcd.c:362: switch (i) {
      0024F9 EF               [12] 1394 	mov	a,r7
      0024FA 24 FC            [12] 1395 	add	a,#0xff - 0x03
      0024FC 50 03            [24] 1396 	jnc	00141$
      0024FE 02 25 AB         [24] 1397 	ljmp	00120$
      002501                       1398 00141$:
      002501 EF               [12] 1399 	mov	a,r7
      002502 2F               [12] 1400 	add	a,r7
                                   1401 ;	lcd.c:363: case 0:
      002503 90 25 07         [24] 1402 	mov	dptr,#00142$
      002506 73               [24] 1403 	jmp	@a+dptr
      002507                       1404 00142$:
      002507 80 06            [24] 1405 	sjmp	00101$
      002509 80 2A            [24] 1406 	sjmp	00102$
      00250B 80 50            [24] 1407 	sjmp	00103$
      00250D 80 76            [24] 1408 	sjmp	00104$
      00250F                       1409 00101$:
                                   1410 ;	lcd.c:364: set_ddram_address(0x00);
      00250F 75 82 00         [24] 1411 	mov	dpl,#0x00
      002512 C0 07            [24] 1412 	push	ar7
      002514 12 24 C7         [24] 1413 	lcall	_set_ddram_address
                                   1414 ;	lcd.c:365: printf("0x%02x: ", 0x00);
      002517 E4               [12] 1415 	clr	a
      002518 C0 E0            [24] 1416 	push	acc
      00251A C0 E0            [24] 1417 	push	acc
      00251C 74 63            [12] 1418 	mov	a,#___str_7
      00251E C0 E0            [24] 1419 	push	acc
      002520 74 36            [12] 1420 	mov	a,#(___str_7 >> 8)
      002522 C0 E0            [24] 1421 	push	acc
      002524 74 80            [12] 1422 	mov	a,#0x80
      002526 C0 E0            [24] 1423 	push	acc
      002528 12 2E 32         [24] 1424 	lcall	_printf
      00252B E5 81            [12] 1425 	mov	a,sp
      00252D 24 FB            [12] 1426 	add	a,#0xfb
      00252F F5 81            [12] 1427 	mov	sp,a
      002531 D0 07            [24] 1428 	pop	ar7
                                   1429 ;	lcd.c:366: break;
                                   1430 ;	lcd.c:367: case 1:
      002533 80 76            [24] 1431 	sjmp	00120$
      002535                       1432 00102$:
                                   1433 ;	lcd.c:368: set_ddram_address(0x40);
      002535 75 82 40         [24] 1434 	mov	dpl,#0x40
      002538 C0 07            [24] 1435 	push	ar7
      00253A 12 24 C7         [24] 1436 	lcall	_set_ddram_address
                                   1437 ;	lcd.c:369: printf("0x%02x: ", 0x40);
      00253D 74 40            [12] 1438 	mov	a,#0x40
      00253F C0 E0            [24] 1439 	push	acc
      002541 E4               [12] 1440 	clr	a
      002542 C0 E0            [24] 1441 	push	acc
      002544 74 63            [12] 1442 	mov	a,#___str_7
      002546 C0 E0            [24] 1443 	push	acc
      002548 74 36            [12] 1444 	mov	a,#(___str_7 >> 8)
      00254A C0 E0            [24] 1445 	push	acc
      00254C 74 80            [12] 1446 	mov	a,#0x80
      00254E C0 E0            [24] 1447 	push	acc
      002550 12 2E 32         [24] 1448 	lcall	_printf
      002553 E5 81            [12] 1449 	mov	a,sp
      002555 24 FB            [12] 1450 	add	a,#0xfb
      002557 F5 81            [12] 1451 	mov	sp,a
      002559 D0 07            [24] 1452 	pop	ar7
                                   1453 ;	lcd.c:370: break;
                                   1454 ;	lcd.c:371: case 2:
      00255B 80 4E            [24] 1455 	sjmp	00120$
      00255D                       1456 00103$:
                                   1457 ;	lcd.c:372: set_ddram_address(0x10);
      00255D 75 82 10         [24] 1458 	mov	dpl,#0x10
      002560 C0 07            [24] 1459 	push	ar7
      002562 12 24 C7         [24] 1460 	lcall	_set_ddram_address
                                   1461 ;	lcd.c:373: printf("0x%02x: ", 0x10);
      002565 74 10            [12] 1462 	mov	a,#0x10
      002567 C0 E0            [24] 1463 	push	acc
      002569 E4               [12] 1464 	clr	a
      00256A C0 E0            [24] 1465 	push	acc
      00256C 74 63            [12] 1466 	mov	a,#___str_7
      00256E C0 E0            [24] 1467 	push	acc
      002570 74 36            [12] 1468 	mov	a,#(___str_7 >> 8)
      002572 C0 E0            [24] 1469 	push	acc
      002574 74 80            [12] 1470 	mov	a,#0x80
      002576 C0 E0            [24] 1471 	push	acc
      002578 12 2E 32         [24] 1472 	lcall	_printf
      00257B E5 81            [12] 1473 	mov	a,sp
      00257D 24 FB            [12] 1474 	add	a,#0xfb
      00257F F5 81            [12] 1475 	mov	sp,a
      002581 D0 07            [24] 1476 	pop	ar7
                                   1477 ;	lcd.c:374: break;
                                   1478 ;	lcd.c:375: case 3:
      002583 80 26            [24] 1479 	sjmp	00120$
      002585                       1480 00104$:
                                   1481 ;	lcd.c:376: set_ddram_address(0x50);
      002585 75 82 50         [24] 1482 	mov	dpl,#0x50
      002588 C0 07            [24] 1483 	push	ar7
      00258A 12 24 C7         [24] 1484 	lcall	_set_ddram_address
                                   1485 ;	lcd.c:377: printf("0x%02x: ", 0x50);
      00258D 74 50            [12] 1486 	mov	a,#0x50
      00258F C0 E0            [24] 1487 	push	acc
      002591 E4               [12] 1488 	clr	a
      002592 C0 E0            [24] 1489 	push	acc
      002594 74 63            [12] 1490 	mov	a,#___str_7
      002596 C0 E0            [24] 1491 	push	acc
      002598 74 36            [12] 1492 	mov	a,#(___str_7 >> 8)
      00259A C0 E0            [24] 1493 	push	acc
      00259C 74 80            [12] 1494 	mov	a,#0x80
      00259E C0 E0            [24] 1495 	push	acc
      0025A0 12 2E 32         [24] 1496 	lcall	_printf
      0025A3 E5 81            [12] 1497 	mov	a,sp
      0025A5 24 FB            [12] 1498 	add	a,#0xfb
      0025A7 F5 81            [12] 1499 	mov	sp,a
      0025A9 D0 07            [24] 1500 	pop	ar7
                                   1501 ;	lcd.c:383: for(int j = 0; j < 16; j++) {
      0025AB                       1502 00120$:
      0025AB 7D 00            [12] 1503 	mov	r5,#0x00
      0025AD 7E 00            [12] 1504 	mov	r6,#0x00
      0025AF                       1505 00110$:
      0025AF C3               [12] 1506 	clr	c
      0025B0 ED               [12] 1507 	mov	a,r5
      0025B1 94 10            [12] 1508 	subb	a,#0x10
      0025B3 EE               [12] 1509 	mov	a,r6
      0025B4 64 80            [12] 1510 	xrl	a,#0x80
      0025B6 94 80            [12] 1511 	subb	a,#0x80
      0025B8 50 33            [24] 1512 	jnc	00107$
                                   1513 ;	lcd.c:384: printf(" %02x", read_xxram_address());
      0025BA C0 07            [24] 1514 	push	ar7
      0025BC C0 06            [24] 1515 	push	ar6
      0025BE C0 05            [24] 1516 	push	ar5
      0025C0 12 24 DB         [24] 1517 	lcall	_read_xxram_address
      0025C3 AC 82            [24] 1518 	mov	r4,dpl
      0025C5 7B 00            [12] 1519 	mov	r3,#0x00
      0025C7 C0 04            [24] 1520 	push	ar4
      0025C9 C0 03            [24] 1521 	push	ar3
      0025CB 74 6C            [12] 1522 	mov	a,#___str_8
      0025CD C0 E0            [24] 1523 	push	acc
      0025CF 74 36            [12] 1524 	mov	a,#(___str_8 >> 8)
      0025D1 C0 E0            [24] 1525 	push	acc
      0025D3 74 80            [12] 1526 	mov	a,#0x80
      0025D5 C0 E0            [24] 1527 	push	acc
      0025D7 12 2E 32         [24] 1528 	lcall	_printf
      0025DA E5 81            [12] 1529 	mov	a,sp
      0025DC 24 FB            [12] 1530 	add	a,#0xfb
      0025DE F5 81            [12] 1531 	mov	sp,a
      0025E0 D0 05            [24] 1532 	pop	ar5
      0025E2 D0 06            [24] 1533 	pop	ar6
      0025E4 D0 07            [24] 1534 	pop	ar7
                                   1535 ;	lcd.c:383: for(int j = 0; j < 16; j++) {
      0025E6 0D               [12] 1536 	inc	r5
      0025E7 BD 00 C5         [24] 1537 	cjne	r5,#0x00,00110$
      0025EA 0E               [12] 1538 	inc	r6
      0025EB 80 C2            [24] 1539 	sjmp	00110$
      0025ED                       1540 00107$:
                                   1541 ;	lcd.c:387: printf_tiny("\n\r");
      0025ED C0 07            [24] 1542 	push	ar7
      0025EF 74 72            [12] 1543 	mov	a,#___str_9
      0025F1 C0 E0            [24] 1544 	push	acc
      0025F3 74 36            [12] 1545 	mov	a,#(___str_9 >> 8)
      0025F5 C0 E0            [24] 1546 	push	acc
      0025F7 12 2C B4         [24] 1547 	lcall	_printf_tiny
      0025FA 15 81            [12] 1548 	dec	sp
      0025FC 15 81            [12] 1549 	dec	sp
      0025FE D0 07            [24] 1550 	pop	ar7
                                   1551 ;	lcd.c:361: for(uint8_t i = 0; i < 4; i++) {
      002600 0F               [12] 1552 	inc	r7
                                   1553 ;	lcd.c:389: }
      002601 02 24 F3         [24] 1554 	ljmp	00113$
                                   1555 ;------------------------------------------------------------
                                   1556 ;Allocation info for local variables in function 'cgram_hex_dump'
                                   1557 ;------------------------------------------------------------
                                   1558 ;i                         Allocated to registers r7 
                                   1559 ;j                         Allocated to registers r5 r6 
                                   1560 ;cgram_address             Allocated to registers 
                                   1561 ;------------------------------------------------------------
                                   1562 ;	lcd.c:396: void cgram_hex_dump() {
                                   1563 ;	-----------------------------------------
                                   1564 ;	 function cgram_hex_dump
                                   1565 ;	-----------------------------------------
      002604                       1566 _cgram_hex_dump:
                                   1567 ;	lcd.c:398: for(uint8_t i = 0; i < 8; i++) {
      002604 7F 00            [12] 1568 	mov	r7,#0x00
      002606                       1569 00107$:
      002606 BF 08 00         [24] 1570 	cjne	r7,#0x08,00129$
      002609                       1571 00129$:
      002609 40 01            [24] 1572 	jc	00130$
      00260B 22               [24] 1573 	ret
      00260C                       1574 00130$:
                                   1575 ;	lcd.c:399: printf("0x%02x: ", i << 3);
      00260C 8F 05            [24] 1576 	mov	ar5,r7
      00260E E4               [12] 1577 	clr	a
      00260F 03               [12] 1578 	rr	a
      002610 54 F8            [12] 1579 	anl	a,#0xf8
      002612 CD               [12] 1580 	xch	a,r5
      002613 C4               [12] 1581 	swap	a
      002614 03               [12] 1582 	rr	a
      002615 CD               [12] 1583 	xch	a,r5
      002616 6D               [12] 1584 	xrl	a,r5
      002617 CD               [12] 1585 	xch	a,r5
      002618 54 F8            [12] 1586 	anl	a,#0xf8
      00261A CD               [12] 1587 	xch	a,r5
      00261B 6D               [12] 1588 	xrl	a,r5
      00261C FE               [12] 1589 	mov	r6,a
      00261D C0 07            [24] 1590 	push	ar7
      00261F C0 05            [24] 1591 	push	ar5
      002621 C0 06            [24] 1592 	push	ar6
      002623 74 63            [12] 1593 	mov	a,#___str_7
      002625 C0 E0            [24] 1594 	push	acc
      002627 74 36            [12] 1595 	mov	a,#(___str_7 >> 8)
      002629 C0 E0            [24] 1596 	push	acc
      00262B 74 80            [12] 1597 	mov	a,#0x80
      00262D C0 E0            [24] 1598 	push	acc
      00262F 12 2E 32         [24] 1599 	lcall	_printf
      002632 E5 81            [12] 1600 	mov	a,sp
      002634 24 FB            [12] 1601 	add	a,#0xfb
      002636 F5 81            [12] 1602 	mov	sp,a
      002638 D0 07            [24] 1603 	pop	ar7
                                   1604 ;	lcd.c:400: for(int j = 0; j < 8; j++) {
      00263A 7D 00            [12] 1605 	mov	r5,#0x00
      00263C 7E 00            [12] 1606 	mov	r6,#0x00
      00263E                       1607 00104$:
      00263E C3               [12] 1608 	clr	c
      00263F ED               [12] 1609 	mov	a,r5
      002640 94 08            [12] 1610 	subb	a,#0x08
      002642 EE               [12] 1611 	mov	a,r6
      002643 64 80            [12] 1612 	xrl	a,#0x80
      002645 94 80            [12] 1613 	subb	a,#0x80
      002647 50 47            [24] 1614 	jnc	00101$
                                   1615 ;	lcd.c:402: uint8_t cgram_address = 0b01000000 | (i << 3) | j;
      002649 8F 04            [24] 1616 	mov	ar4,r7
      00264B EC               [12] 1617 	mov	a,r4
      00264C C4               [12] 1618 	swap	a
      00264D 03               [12] 1619 	rr	a
      00264E 54 F8            [12] 1620 	anl	a,#0xf8
      002650 FC               [12] 1621 	mov	r4,a
      002651 43 04 40         [24] 1622 	orl	ar4,#0x40
      002654 8D 03            [24] 1623 	mov	ar3,r5
      002656 EB               [12] 1624 	mov	a,r3
      002657 4C               [12] 1625 	orl	a,r4
      002658 F5 82            [12] 1626 	mov	dpl,a
                                   1627 ;	lcd.c:403: set_cgram_address(cgram_address); // Set the CGRAM address to the start
      00265A C0 07            [24] 1628 	push	ar7
      00265C C0 06            [24] 1629 	push	ar6
      00265E C0 05            [24] 1630 	push	ar5
      002660 12 23 11         [24] 1631 	lcall	_set_cgram_address
                                   1632 ;	lcd.c:404: printf(" %02x", read_xxram_address());
      002663 12 24 DB         [24] 1633 	lcall	_read_xxram_address
      002666 AC 82            [24] 1634 	mov	r4,dpl
      002668 7B 00            [12] 1635 	mov	r3,#0x00
      00266A C0 04            [24] 1636 	push	ar4
      00266C C0 03            [24] 1637 	push	ar3
      00266E 74 6C            [12] 1638 	mov	a,#___str_8
      002670 C0 E0            [24] 1639 	push	acc
      002672 74 36            [12] 1640 	mov	a,#(___str_8 >> 8)
      002674 C0 E0            [24] 1641 	push	acc
      002676 74 80            [12] 1642 	mov	a,#0x80
      002678 C0 E0            [24] 1643 	push	acc
      00267A 12 2E 32         [24] 1644 	lcall	_printf
      00267D E5 81            [12] 1645 	mov	a,sp
      00267F 24 FB            [12] 1646 	add	a,#0xfb
      002681 F5 81            [12] 1647 	mov	sp,a
      002683 D0 05            [24] 1648 	pop	ar5
      002685 D0 06            [24] 1649 	pop	ar6
      002687 D0 07            [24] 1650 	pop	ar7
                                   1651 ;	lcd.c:400: for(int j = 0; j < 8; j++) {
      002689 0D               [12] 1652 	inc	r5
      00268A BD 00 B1         [24] 1653 	cjne	r5,#0x00,00104$
      00268D 0E               [12] 1654 	inc	r6
      00268E 80 AE            [24] 1655 	sjmp	00104$
      002690                       1656 00101$:
                                   1657 ;	lcd.c:406: printf_tiny("\n\r");
      002690 C0 07            [24] 1658 	push	ar7
      002692 74 72            [12] 1659 	mov	a,#___str_9
      002694 C0 E0            [24] 1660 	push	acc
      002696 74 36            [12] 1661 	mov	a,#(___str_9 >> 8)
      002698 C0 E0            [24] 1662 	push	acc
      00269A 12 2C B4         [24] 1663 	lcall	_printf_tiny
      00269D 15 81            [12] 1664 	dec	sp
      00269F 15 81            [12] 1665 	dec	sp
      0026A1 D0 07            [24] 1666 	pop	ar7
                                   1667 ;	lcd.c:398: for(uint8_t i = 0; i < 8; i++) {
      0026A3 0F               [12] 1668 	inc	r7
                                   1669 ;	lcd.c:408: }
      0026A4 02 26 06         [24] 1670 	ljmp	00107$
                                   1671 ;------------------------------------------------------------
                                   1672 ;Allocation info for local variables in function 'get_hex_value'
                                   1673 ;------------------------------------------------------------
                                   1674 ;value                     Allocated to registers r7 
                                   1675 ;i                         Allocated to registers r5 r6 
                                   1676 ;char_received             Allocated to registers r3 
                                   1677 ;------------------------------------------------------------
                                   1678 ;	lcd.c:414: uint8_t get_hex_value(){
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function get_hex_value
                                   1681 ;	-----------------------------------------
      0026A7                       1682 _get_hex_value:
                                   1683 ;	lcd.c:415: uint8_t value = 0;
      0026A7 7F 00            [12] 1684 	mov	r7,#0x00
                                   1685 ;	lcd.c:416: for(int i = 0; i < 2; i++){
      0026A9 7D 00            [12] 1686 	mov	r5,#0x00
      0026AB 7E 00            [12] 1687 	mov	r6,#0x00
      0026AD                       1688 00125$:
      0026AD C3               [12] 1689 	clr	c
      0026AE ED               [12] 1690 	mov	a,r5
      0026AF 94 02            [12] 1691 	subb	a,#0x02
      0026B1 EE               [12] 1692 	mov	a,r6
      0026B2 64 80            [12] 1693 	xrl	a,#0x80
      0026B4 94 80            [12] 1694 	subb	a,#0x80
      0026B6 40 03            [24] 1695 	jc	00183$
      0026B8 02 27 70         [24] 1696 	ljmp	00123$
      0026BB                       1697 00183$:
                                   1698 ;	lcd.c:417: if(i == 0) printf_tiny("0x");
      0026BB ED               [12] 1699 	mov	a,r5
      0026BC 4E               [12] 1700 	orl	a,r6
      0026BD 70 1B            [24] 1701 	jnz	00102$
      0026BF C0 07            [24] 1702 	push	ar7
      0026C1 C0 06            [24] 1703 	push	ar6
      0026C3 C0 05            [24] 1704 	push	ar5
      0026C5 74 75            [12] 1705 	mov	a,#___str_10
      0026C7 C0 E0            [24] 1706 	push	acc
      0026C9 74 36            [12] 1707 	mov	a,#(___str_10 >> 8)
      0026CB C0 E0            [24] 1708 	push	acc
      0026CD 12 2C B4         [24] 1709 	lcall	_printf_tiny
      0026D0 15 81            [12] 1710 	dec	sp
      0026D2 15 81            [12] 1711 	dec	sp
      0026D4 D0 05            [24] 1712 	pop	ar5
      0026D6 D0 06            [24] 1713 	pop	ar6
      0026D8 D0 07            [24] 1714 	pop	ar7
      0026DA                       1715 00102$:
                                   1716 ;	lcd.c:418: uint8_t char_received = echo(); // Read a character from UART
      0026DA C0 07            [24] 1717 	push	ar7
      0026DC C0 06            [24] 1718 	push	ar6
      0026DE C0 05            [24] 1719 	push	ar5
      0026E0 12 2C 9B         [24] 1720 	lcall	_echo
      0026E3 AC 82            [24] 1721 	mov	r4,dpl
      0026E5 D0 05            [24] 1722 	pop	ar5
      0026E7 D0 06            [24] 1723 	pop	ar6
      0026E9 D0 07            [24] 1724 	pop	ar7
                                   1725 ;	lcd.c:419: if((char_received >= '0') && (char_received <= '9')){
      0026EB BC 30 00         [24] 1726 	cjne	r4,#0x30,00185$
      0026EE                       1727 00185$:
      0026EE 40 0D            [24] 1728 	jc	00116$
      0026F0 EC               [12] 1729 	mov	a,r4
      0026F1 24 C6            [12] 1730 	add	a,#0xff - 0x39
      0026F3 40 08            [24] 1731 	jc	00116$
                                   1732 ;	lcd.c:420: char_received = char_received - '0'; // Convert ASCII character to its
      0026F5 8C 03            [24] 1733 	mov	ar3,r4
      0026F7 EB               [12] 1734 	mov	a,r3
      0026F8 24 D0            [12] 1735 	add	a,#0xd0
      0026FA FB               [12] 1736 	mov	r3,a
      0026FB 80 59            [24] 1737 	sjmp	00117$
      0026FD                       1738 00116$:
                                   1739 ;	lcd.c:422: }else if((char_received >= 'A') && (char_received <= 'F')){
      0026FD BC 41 00         [24] 1740 	cjne	r4,#0x41,00188$
      002700                       1741 00188$:
      002700 40 0D            [24] 1742 	jc	00112$
      002702 EC               [12] 1743 	mov	a,r4
      002703 24 B9            [12] 1744 	add	a,#0xff - 0x46
      002705 40 08            [24] 1745 	jc	00112$
                                   1746 ;	lcd.c:423: char_received = char_received - 'A' + 10; // Convert ASCII character to its
      002707 8C 02            [24] 1747 	mov	ar2,r4
      002709 74 C9            [12] 1748 	mov	a,#0xc9
      00270B 2A               [12] 1749 	add	a,r2
      00270C FB               [12] 1750 	mov	r3,a
      00270D 80 47            [24] 1751 	sjmp	00117$
      00270F                       1752 00112$:
                                   1753 ;	lcd.c:425: }else if((char_received >= 'a') && (char_received <= 'f')){
      00270F BC 61 00         [24] 1754 	cjne	r4,#0x61,00191$
      002712                       1755 00191$:
      002712 40 0D            [24] 1756 	jc	00108$
      002714 EC               [12] 1757 	mov	a,r4
      002715 24 99            [12] 1758 	add	a,#0xff - 0x66
      002717 40 08            [24] 1759 	jc	00108$
                                   1760 ;	lcd.c:426: char_received = char_received - 'a' + 10; // Convert ASCII character to its
      002719 8C 02            [24] 1761 	mov	ar2,r4
      00271B 74 A9            [12] 1762 	mov	a,#0xa9
      00271D 2A               [12] 1763 	add	a,r2
      00271E FB               [12] 1764 	mov	r3,a
      00271F 80 35            [24] 1765 	sjmp	00117$
      002721                       1766 00108$:
                                   1767 ;	lcd.c:428: }else if((char_received == '\n') || (char_received == '\r')){
      002721 BC 0A 02         [24] 1768 	cjne	r4,#0x0a,00194$
      002724 80 03            [24] 1769 	sjmp	00103$
      002726                       1770 00194$:
      002726 BC 0D 16         [24] 1771 	cjne	r4,#0x0d,00104$
      002729                       1772 00103$:
                                   1773 ;	lcd.c:429: printf_tiny("\n\r");
      002729 C0 07            [24] 1774 	push	ar7
      00272B 74 72            [12] 1775 	mov	a,#___str_9
      00272D C0 E0            [24] 1776 	push	acc
      00272F 74 36            [12] 1777 	mov	a,#(___str_9 >> 8)
      002731 C0 E0            [24] 1778 	push	acc
      002733 12 2C B4         [24] 1779 	lcall	_printf_tiny
      002736 15 81            [12] 1780 	dec	sp
      002738 15 81            [12] 1781 	dec	sp
      00273A D0 07            [24] 1782 	pop	ar7
                                   1783 ;	lcd.c:430: return value;
      00273C 8F 82            [24] 1784 	mov	dpl,r7
      00273E 22               [24] 1785 	ret
      00273F                       1786 00104$:
                                   1787 ;	lcd.c:432: printf_tiny("-->Invalid input\n\r");
      00273F 74 78            [12] 1788 	mov	a,#___str_11
      002741 C0 E0            [24] 1789 	push	acc
      002743 74 36            [12] 1790 	mov	a,#(___str_11 >> 8)
      002745 C0 E0            [24] 1791 	push	acc
      002747 12 2C B4         [24] 1792 	lcall	_printf_tiny
      00274A 15 81            [12] 1793 	dec	sp
      00274C 15 81            [12] 1794 	dec	sp
                                   1795 ;	lcd.c:433: i = -1;
      00274E 7D FF            [12] 1796 	mov	r5,#0xff
      002750 7E FF            [12] 1797 	mov	r6,#0xff
                                   1798 ;	lcd.c:434: value = 0;
      002752 7F 00            [12] 1799 	mov	r7,#0x00
                                   1800 ;	lcd.c:435: continue;
      002754 80 12            [24] 1801 	sjmp	00122$
      002756                       1802 00117$:
                                   1803 ;	lcd.c:437: if(i == 0){
      002756 ED               [12] 1804 	mov	a,r5
      002757 4E               [12] 1805 	orl	a,r6
      002758 70 05            [24] 1806 	jnz	00120$
                                   1807 ;	lcd.c:438: value |= char_received;
      00275A EB               [12] 1808 	mov	a,r3
      00275B 42 07            [12] 1809 	orl	ar7,a
      00275D 80 09            [24] 1810 	sjmp	00122$
      00275F                       1811 00120$:
                                   1812 ;	lcd.c:440: value = (value << 4) | char_received;
      00275F 8F 04            [24] 1813 	mov	ar4,r7
      002761 EC               [12] 1814 	mov	a,r4
      002762 C4               [12] 1815 	swap	a
      002763 54 F0            [12] 1816 	anl	a,#0xf0
      002765 FC               [12] 1817 	mov	r4,a
      002766 4B               [12] 1818 	orl	a,r3
      002767 FF               [12] 1819 	mov	r7,a
      002768                       1820 00122$:
                                   1821 ;	lcd.c:416: for(int i = 0; i < 2; i++){
      002768 0D               [12] 1822 	inc	r5
      002769 BD 00 01         [24] 1823 	cjne	r5,#0x00,00198$
      00276C 0E               [12] 1824 	inc	r6
      00276D                       1825 00198$:
      00276D 02 26 AD         [24] 1826 	ljmp	00125$
      002770                       1827 00123$:
                                   1828 ;	lcd.c:443: printf_tiny("\n\r");
      002770 C0 07            [24] 1829 	push	ar7
      002772 74 72            [12] 1830 	mov	a,#___str_9
      002774 C0 E0            [24] 1831 	push	acc
      002776 74 36            [12] 1832 	mov	a,#(___str_9 >> 8)
      002778 C0 E0            [24] 1833 	push	acc
      00277A 12 2C B4         [24] 1834 	lcall	_printf_tiny
      00277D 15 81            [12] 1835 	dec	sp
      00277F 15 81            [12] 1836 	dec	sp
      002781 D0 07            [24] 1837 	pop	ar7
                                   1838 ;	lcd.c:444: return value;
      002783 8F 82            [24] 1839 	mov	dpl,r7
                                   1840 ;	lcd.c:445: }
      002785 22               [24] 1841 	ret
                                   1842 ;------------------------------------------------------------
                                   1843 ;Allocation info for local variables in function 'process_custom_character'
                                   1844 ;------------------------------------------------------------
                                   1845 ;ccode                     Allocated to registers r6 
                                   1846 ;address                   Allocated to registers r7 
                                   1847 ;char_array                Allocated with name '_process_custom_character_char_array_65537_92'
                                   1848 ;i                         Allocated to registers r5 
                                   1849 ;cgram_address             Allocated to registers r4 
                                   1850 ;------------------------------------------------------------
                                   1851 ;	lcd.c:454: void process_custom_character() {
                                   1852 ;	-----------------------------------------
                                   1853 ;	 function process_custom_character
                                   1854 ;	-----------------------------------------
      002786                       1855 _process_custom_character:
                                   1856 ;	lcd.c:459: while (1) {
      002786                       1857 00105$:
                                   1858 ;	lcd.c:460: printf_tiny("Enter LCD display address for the character\n\r");
      002786 74 8B            [12] 1859 	mov	a,#___str_12
      002788 C0 E0            [24] 1860 	push	acc
      00278A 74 36            [12] 1861 	mov	a,#(___str_12 >> 8)
      00278C C0 E0            [24] 1862 	push	acc
      00278E 12 2C B4         [24] 1863 	lcall	_printf_tiny
      002791 15 81            [12] 1864 	dec	sp
      002793 15 81            [12] 1865 	dec	sp
                                   1866 ;	lcd.c:461: address = get_hex_value();
      002795 12 26 A7         [24] 1867 	lcall	_get_hex_value
      002798 AF 82            [24] 1868 	mov	r7,dpl
                                   1869 ;	lcd.c:462: if (address < 0x60) {
      00279A BF 60 00         [24] 1870 	cjne	r7,#0x60,00144$
      00279D                       1871 00144$:
      00279D 40 11            [24] 1872 	jc	00111$
                                   1873 ;	lcd.c:465: printf_tiny("Invalid input\n\r");
      00279F 74 B9            [12] 1874 	mov	a,#___str_13
      0027A1 C0 E0            [24] 1875 	push	acc
      0027A3 74 36            [12] 1876 	mov	a,#(___str_13 >> 8)
      0027A5 C0 E0            [24] 1877 	push	acc
      0027A7 12 2C B4         [24] 1878 	lcall	_printf_tiny
      0027AA 15 81            [12] 1879 	dec	sp
      0027AC 15 81            [12] 1880 	dec	sp
                                   1881 ;	lcd.c:470: while (1) {
      0027AE 80 D6            [24] 1882 	sjmp	00105$
      0027B0                       1883 00111$:
                                   1884 ;	lcd.c:471: printf_tiny("Enter the character code in range 0x00 <--> 0x07\n\r");
      0027B0 C0 07            [24] 1885 	push	ar7
      0027B2 74 C9            [12] 1886 	mov	a,#___str_14
      0027B4 C0 E0            [24] 1887 	push	acc
      0027B6 74 36            [12] 1888 	mov	a,#(___str_14 >> 8)
      0027B8 C0 E0            [24] 1889 	push	acc
      0027BA 12 2C B4         [24] 1890 	lcall	_printf_tiny
      0027BD 15 81            [12] 1891 	dec	sp
      0027BF 15 81            [12] 1892 	dec	sp
                                   1893 ;	lcd.c:472: ccode = get_hex_value();
      0027C1 12 26 A7         [24] 1894 	lcall	_get_hex_value
      0027C4 AE 82            [24] 1895 	mov	r6,dpl
      0027C6 D0 07            [24] 1896 	pop	ar7
                                   1897 ;	lcd.c:473: if (ccode < 0x08) {
      0027C8 BE 08 00         [24] 1898 	cjne	r6,#0x08,00146$
      0027CB                       1899 00146$:
      0027CB 40 15            [24] 1900 	jc	00112$
                                   1901 ;	lcd.c:476: printf_tiny("Invalid input\n\r");
      0027CD C0 07            [24] 1902 	push	ar7
      0027CF 74 B9            [12] 1903 	mov	a,#___str_13
      0027D1 C0 E0            [24] 1904 	push	acc
      0027D3 74 36            [12] 1905 	mov	a,#(___str_13 >> 8)
      0027D5 C0 E0            [24] 1906 	push	acc
      0027D7 12 2C B4         [24] 1907 	lcall	_printf_tiny
      0027DA 15 81            [12] 1908 	dec	sp
      0027DC 15 81            [12] 1909 	dec	sp
      0027DE D0 07            [24] 1910 	pop	ar7
      0027E0 80 CE            [24] 1911 	sjmp	00111$
      0027E2                       1912 00112$:
                                   1913 ;	lcd.c:480: uint8_t char_array[8] = {0};
      0027E2 75 34 00         [24] 1914 	mov	_process_custom_character_char_array_65537_92,#0x00
      0027E5 75 35 00         [24] 1915 	mov	(_process_custom_character_char_array_65537_92 + 0x0001),#0x00
      0027E8 75 36 00         [24] 1916 	mov	(_process_custom_character_char_array_65537_92 + 0x0002),#0x00
      0027EB 75 37 00         [24] 1917 	mov	(_process_custom_character_char_array_65537_92 + 0x0003),#0x00
      0027EE 75 38 00         [24] 1918 	mov	(_process_custom_character_char_array_65537_92 + 0x0004),#0x00
      0027F1 75 39 00         [24] 1919 	mov	(_process_custom_character_char_array_65537_92 + 0x0005),#0x00
      0027F4 75 3A 00         [24] 1920 	mov	(_process_custom_character_char_array_65537_92 + 0x0006),#0x00
      0027F7 75 3B 00         [24] 1921 	mov	(_process_custom_character_char_array_65537_92 + 0x0007),#0x00
                                   1922 ;	lcd.c:483: printf_tiny("Enter pixel pattern hex format for each row of custom character\n\r");
      0027FA C0 07            [24] 1923 	push	ar7
      0027FC C0 06            [24] 1924 	push	ar6
      0027FE 74 FC            [12] 1925 	mov	a,#___str_15
      002800 C0 E0            [24] 1926 	push	acc
      002802 74 36            [12] 1927 	mov	a,#(___str_15 >> 8)
      002804 C0 E0            [24] 1928 	push	acc
      002806 12 2C B4         [24] 1929 	lcall	_printf_tiny
      002809 15 81            [12] 1930 	dec	sp
      00280B 15 81            [12] 1931 	dec	sp
      00280D D0 06            [24] 1932 	pop	ar6
      00280F D0 07            [24] 1933 	pop	ar7
                                   1934 ;	lcd.c:486: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      002811 7D 00            [12] 1935 	mov	r5,#0x00
      002813                       1936 00115$:
      002813 BD 08 00         [24] 1937 	cjne	r5,#0x08,00148$
      002816                       1938 00148$:
      002816 40 01            [24] 1939 	jc	00149$
      002818 22               [24] 1940 	ret
      002819                       1941 00149$:
                                   1942 ;	lcd.c:487: printf_tiny("0x%x->", i);
      002819 8D 03            [24] 1943 	mov	ar3,r5
      00281B 7C 00            [12] 1944 	mov	r4,#0x00
      00281D C0 07            [24] 1945 	push	ar7
      00281F C0 06            [24] 1946 	push	ar6
      002821 C0 05            [24] 1947 	push	ar5
      002823 C0 03            [24] 1948 	push	ar3
      002825 C0 04            [24] 1949 	push	ar4
      002827 74 3E            [12] 1950 	mov	a,#___str_16
      002829 C0 E0            [24] 1951 	push	acc
      00282B 74 37            [12] 1952 	mov	a,#(___str_16 >> 8)
      00282D C0 E0            [24] 1953 	push	acc
      00282F 12 2C B4         [24] 1954 	lcall	_printf_tiny
      002832 E5 81            [12] 1955 	mov	a,sp
      002834 24 FC            [12] 1956 	add	a,#0xfc
      002836 F5 81            [12] 1957 	mov	sp,a
      002838 D0 05            [24] 1958 	pop	ar5
      00283A D0 06            [24] 1959 	pop	ar6
                                   1960 ;	lcd.c:490: uint8_t cgram_address = 0b01000000 | (ccode << 3) | i;
      00283C 8E 04            [24] 1961 	mov	ar4,r6
      00283E EC               [12] 1962 	mov	a,r4
      00283F C4               [12] 1963 	swap	a
      002840 03               [12] 1964 	rr	a
      002841 54 F8            [12] 1965 	anl	a,#0xf8
      002843 FC               [12] 1966 	mov	r4,a
      002844 74 40            [12] 1967 	mov	a,#0x40
      002846 4C               [12] 1968 	orl	a,r4
      002847 4D               [12] 1969 	orl	a,r5
      002848 FC               [12] 1970 	mov	r4,a
                                   1971 ;	lcd.c:493: char_array[i] = get_hex_value() & 0b00011111;
      002849 ED               [12] 1972 	mov	a,r5
      00284A 24 34            [12] 1973 	add	a,#_process_custom_character_char_array_65537_92
      00284C F9               [12] 1974 	mov	r1,a
      00284D C0 06            [24] 1975 	push	ar6
      00284F C0 05            [24] 1976 	push	ar5
      002851 C0 04            [24] 1977 	push	ar4
      002853 C0 01            [24] 1978 	push	ar1
      002855 12 26 A7         [24] 1979 	lcall	_get_hex_value
      002858 E5 82            [12] 1980 	mov	a,dpl
      00285A D0 01            [24] 1981 	pop	ar1
      00285C D0 04            [24] 1982 	pop	ar4
      00285E 54 1F            [12] 1983 	anl	a,#0x1f
      002860 FB               [12] 1984 	mov	r3,a
      002861 F7               [12] 1985 	mov	@r1,a
                                   1986 ;	lcd.c:496: lcdcreatechar(cgram_address, char_array[i]);
      002862 8B 31            [24] 1987 	mov	_lcdcreatechar_PARM_2,r3
      002864 8C 82            [24] 1988 	mov	dpl,r4
      002866 12 23 22         [24] 1989 	lcall	_lcdcreatechar
      002869 D0 05            [24] 1990 	pop	ar5
      00286B D0 06            [24] 1991 	pop	ar6
      00286D D0 07            [24] 1992 	pop	ar7
                                   1993 ;	lcd.c:499: lcdgotoaddr(address);
      00286F 8F 82            [24] 1994 	mov	dpl,r7
      002871 C0 07            [24] 1995 	push	ar7
      002873 C0 06            [24] 1996 	push	ar6
      002875 C0 05            [24] 1997 	push	ar5
      002877 12 21 0D         [24] 1998 	lcall	_lcdgotoaddr
      00287A D0 05            [24] 1999 	pop	ar5
      00287C D0 06            [24] 2000 	pop	ar6
                                   2001 ;	lcd.c:500: lcdputch(ccode);
      00287E 8E 82            [24] 2002 	mov	dpl,r6
      002880 C0 06            [24] 2003 	push	ar6
      002882 C0 05            [24] 2004 	push	ar5
      002884 12 21 6D         [24] 2005 	lcall	_lcdputch
      002887 D0 05            [24] 2006 	pop	ar5
      002889 D0 06            [24] 2007 	pop	ar6
      00288B D0 07            [24] 2008 	pop	ar7
                                   2009 ;	lcd.c:486: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      00288D 0D               [12] 2010 	inc	r5
                                   2011 ;	lcd.c:502: }
      00288E 02 28 13         [24] 2012 	ljmp	00115$
                                   2013 ;------------------------------------------------------------
                                   2014 ;Allocation info for local variables in function 'show_custom_character'
                                   2015 ;------------------------------------------------------------
                                   2016 ;address                   Allocated with name '_show_custom_character_address_65536_96'
                                   2017 ;ccode                     Allocated with name '_show_custom_character_ccode_65536_96'
                                   2018 ;char_array                Allocated with name '_show_custom_character_char_array_65536_96'
                                   2019 ;j                         Allocated to registers r7 
                                   2020 ;i                         Allocated to registers r4 
                                   2021 ;cgram_address             Allocated to registers r3 
                                   2022 ;k                         Allocated to registers r7 
                                   2023 ;a                         Allocated with name '_show_custom_character_a_65536_96'
                                   2024 ;------------------------------------------------------------
                                   2025 ;	lcd.c:506: void show_custom_character(){
                                   2026 ;	-----------------------------------------
                                   2027 ;	 function show_custom_character
                                   2028 ;	-----------------------------------------
      002891                       2029 _show_custom_character:
                                   2030 ;	lcd.c:507: uint8_t address[4] = {0x4d, 0x1c, 0x1d, 0x1e};
      002891 75 3C 4D         [24] 2031 	mov	_show_custom_character_address_65536_96,#0x4d
      002894 75 3D 1C         [24] 2032 	mov	(_show_custom_character_address_65536_96 + 0x0001),#0x1c
      002897 75 3E 1D         [24] 2033 	mov	(_show_custom_character_address_65536_96 + 0x0002),#0x1d
      00289A 75 3F 1E         [24] 2034 	mov	(_show_custom_character_address_65536_96 + 0x0003),#0x1e
                                   2035 ;	lcd.c:508: uint8_t ccode[4] = {0x00, 0x01, 0x02, 0x03};
      00289D 75 40 00         [24] 2036 	mov	_show_custom_character_ccode_65536_96,#0x00
      0028A0 75 41 01         [24] 2037 	mov	(_show_custom_character_ccode_65536_96 + 0x0001),#0x01
      0028A3 75 42 02         [24] 2038 	mov	(_show_custom_character_ccode_65536_96 + 0x0002),#0x02
      0028A6 75 43 03         [24] 2039 	mov	(_show_custom_character_ccode_65536_96 + 0x0003),#0x03
                                   2040 ;	lcd.c:509: __xdata uint8_t a[4][8] = {{0x00, 0x02, 0x06,0x0C,0x18,0x0c,0x06,0x04},
      0028A9 90 00 00         [24] 2041 	mov	dptr,#_show_custom_character_a_65536_96
      0028AC E4               [12] 2042 	clr	a
      0028AD F0               [24] 2043 	movx	@dptr,a
      0028AE 90 00 01         [24] 2044 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0001)
      0028B1 74 02            [12] 2045 	mov	a,#0x02
      0028B3 F0               [24] 2046 	movx	@dptr,a
      0028B4 90 00 02         [24] 2047 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0002)
      0028B7 74 06            [12] 2048 	mov	a,#0x06
      0028B9 F0               [24] 2049 	movx	@dptr,a
      0028BA 90 00 03         [24] 2050 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0003)
      0028BD 23               [12] 2051 	rl	a
      0028BE F0               [24] 2052 	movx	@dptr,a
      0028BF 90 00 04         [24] 2053 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0004)
      0028C2 23               [12] 2054 	rl	a
      0028C3 F0               [24] 2055 	movx	@dptr,a
      0028C4 90 00 05         [24] 2056 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0005)
      0028C7 03               [12] 2057 	rr	a
      0028C8 F0               [24] 2058 	movx	@dptr,a
      0028C9 90 00 06         [24] 2059 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0006)
      0028CC 03               [12] 2060 	rr	a
      0028CD F0               [24] 2061 	movx	@dptr,a
      0028CE 90 00 07         [24] 2062 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0007)
      0028D1 74 04            [12] 2063 	mov	a,#0x04
      0028D3 F0               [24] 2064 	movx	@dptr,a
      0028D4 90 00 08         [24] 2065 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0008)
      0028D7 74 1F            [12] 2066 	mov	a,#0x1f
      0028D9 F0               [24] 2067 	movx	@dptr,a
      0028DA 90 00 09         [24] 2068 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0009)
      0028DD F0               [24] 2069 	movx	@dptr,a
      0028DE 90 00 0A         [24] 2070 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x000a)
      0028E1 74 0F            [12] 2071 	mov	a,#0x0f
      0028E3 F0               [24] 2072 	movx	@dptr,a
      0028E4 90 00 0B         [24] 2073 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x000b)
      0028E7 F0               [24] 2074 	movx	@dptr,a
      0028E8 90 00 0C         [24] 2075 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x000c)
      0028EB 74 07            [12] 2076 	mov	a,#0x07
      0028ED F0               [24] 2077 	movx	@dptr,a
      0028EE 90 00 0D         [24] 2078 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x000d)
      0028F1 74 03            [12] 2079 	mov	a,#0x03
      0028F3 F0               [24] 2080 	movx	@dptr,a
      0028F4 90 00 0E         [24] 2081 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x000e)
      0028F7 74 01            [12] 2082 	mov	a,#0x01
      0028F9 F0               [24] 2083 	movx	@dptr,a
      0028FA 90 00 0F         [24] 2084 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x000f)
      0028FD F0               [24] 2085 	movx	@dptr,a
      0028FE 90 00 10         [24] 2086 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0010)
      002901 74 1F            [12] 2087 	mov	a,#0x1f
      002903 F0               [24] 2088 	movx	@dptr,a
      002904 90 00 11         [24] 2089 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0011)
      002907 F0               [24] 2090 	movx	@dptr,a
      002908 90 00 12         [24] 2091 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0012)
      00290B F0               [24] 2092 	movx	@dptr,a
      00290C 90 00 13         [24] 2093 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0013)
      00290F F0               [24] 2094 	movx	@dptr,a
      002910 90 00 14         [24] 2095 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0014)
      002913 F0               [24] 2096 	movx	@dptr,a
      002914 90 00 15         [24] 2097 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0015)
      002917 F0               [24] 2098 	movx	@dptr,a
      002918 90 00 16         [24] 2099 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0016)
      00291B F0               [24] 2100 	movx	@dptr,a
      00291C 90 00 17         [24] 2101 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0017)
      00291F F0               [24] 2102 	movx	@dptr,a
      002920 90 00 18         [24] 2103 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0018)
      002923 F0               [24] 2104 	movx	@dptr,a
      002924 90 00 19         [24] 2105 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x0019)
      002927 F0               [24] 2106 	movx	@dptr,a
      002928 90 00 1A         [24] 2107 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x001a)
      00292B 14               [12] 2108 	dec	a
      00292C F0               [24] 2109 	movx	@dptr,a
      00292D 90 00 1B         [24] 2110 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x001b)
      002930 F0               [24] 2111 	movx	@dptr,a
      002931 90 00 1C         [24] 2112 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x001c)
      002934 74 1C            [12] 2113 	mov	a,#0x1c
      002936 F0               [24] 2114 	movx	@dptr,a
      002937 90 00 1D         [24] 2115 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x001d)
      00293A 74 18            [12] 2116 	mov	a,#0x18
      00293C F0               [24] 2117 	movx	@dptr,a
      00293D 90 00 1E         [24] 2118 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x001e)
      002940 74 10            [12] 2119 	mov	a,#0x10
      002942 F0               [24] 2120 	movx	@dptr,a
      002943 90 00 1F         [24] 2121 	mov	dptr,#(_show_custom_character_a_65536_96 + 0x001f)
      002946 F0               [24] 2122 	movx	@dptr,a
                                   2123 ;	lcd.c:513: uint8_t char_array[8] = {0};
      002947 75 44 00         [24] 2124 	mov	_show_custom_character_char_array_65536_96,#0x00
      00294A 75 45 00         [24] 2125 	mov	(_show_custom_character_char_array_65536_96 + 0x0001),#0x00
      00294D 75 46 00         [24] 2126 	mov	(_show_custom_character_char_array_65536_96 + 0x0002),#0x00
      002950 75 47 00         [24] 2127 	mov	(_show_custom_character_char_array_65536_96 + 0x0003),#0x00
      002953 75 48 00         [24] 2128 	mov	(_show_custom_character_char_array_65536_96 + 0x0004),#0x00
      002956 75 49 00         [24] 2129 	mov	(_show_custom_character_char_array_65536_96 + 0x0005),#0x00
      002959 75 4A 00         [24] 2130 	mov	(_show_custom_character_char_array_65536_96 + 0x0006),#0x00
      00295C 75 4B 00         [24] 2131 	mov	(_show_custom_character_char_array_65536_96 + 0x0007),#0x00
                                   2132 ;	lcd.c:514: for(uint8_t j = 0; j< 4; j++){
      00295F 7F 00            [12] 2133 	mov	r7,#0x00
      002961                       2134 00108$:
      002961 BF 04 00         [24] 2135 	cjne	r7,#0x04,00142$
      002964                       2136 00142$:
      002964 50 57            [24] 2137 	jnc	00102$
                                   2138 ;	lcd.c:516: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      002966 EF               [12] 2139 	mov	a,r7
      002967 24 40            [12] 2140 	add	a,#_show_custom_character_ccode_65536_96
      002969 F9               [12] 2141 	mov	r1,a
      00296A EF               [12] 2142 	mov	a,r7
      00296B 75 F0 08         [24] 2143 	mov	b,#0x08
      00296E A4               [48] 2144 	mul	ab
      00296F 24 00            [12] 2145 	add	a,#_show_custom_character_a_65536_96
      002971 FD               [12] 2146 	mov	r5,a
      002972 74 00            [12] 2147 	mov	a,#(_show_custom_character_a_65536_96 >> 8)
      002974 35 F0            [12] 2148 	addc	a,b
      002976 FE               [12] 2149 	mov	r6,a
      002977 7C 00            [12] 2150 	mov	r4,#0x00
      002979                       2151 00105$:
      002979 BC 08 00         [24] 2152 	cjne	r4,#0x08,00144$
      00297C                       2153 00144$:
      00297C 50 3C            [24] 2154 	jnc	00109$
                                   2155 ;	lcd.c:519: uint8_t cgram_address = 0b01000000 | (ccode[j] << 3) | i;
      00297E E7               [12] 2156 	mov	a,@r1
      00297F C4               [12] 2157 	swap	a
      002980 03               [12] 2158 	rr	a
      002981 54 F8            [12] 2159 	anl	a,#0xf8
      002983 FB               [12] 2160 	mov	r3,a
      002984 74 40            [12] 2161 	mov	a,#0x40
      002986 4B               [12] 2162 	orl	a,r3
      002987 4C               [12] 2163 	orl	a,r4
      002988 FB               [12] 2164 	mov	r3,a
                                   2165 ;	lcd.c:522: char_array[i] = a[j][i] & 0b00011111;
      002989 EC               [12] 2166 	mov	a,r4
      00298A 24 44            [12] 2167 	add	a,#_show_custom_character_char_array_65536_96
      00298C F8               [12] 2168 	mov	r0,a
      00298D EC               [12] 2169 	mov	a,r4
      00298E 2D               [12] 2170 	add	a,r5
      00298F F5 82            [12] 2171 	mov	dpl,a
      002991 E4               [12] 2172 	clr	a
      002992 3E               [12] 2173 	addc	a,r6
      002993 F5 83            [12] 2174 	mov	dph,a
      002995 E0               [24] 2175 	movx	a,@dptr
      002996 FA               [12] 2176 	mov	r2,a
      002997 53 02 1F         [24] 2177 	anl	ar2,#0x1f
      00299A A6 02            [24] 2178 	mov	@r0,ar2
                                   2179 ;	lcd.c:524: lcdcreatechar(cgram_address, char_array[i]);
      00299C 8A 31            [24] 2180 	mov	_lcdcreatechar_PARM_2,r2
      00299E 8B 82            [24] 2181 	mov	dpl,r3
      0029A0 C0 07            [24] 2182 	push	ar7
      0029A2 C0 06            [24] 2183 	push	ar6
      0029A4 C0 05            [24] 2184 	push	ar5
      0029A6 C0 04            [24] 2185 	push	ar4
      0029A8 C0 01            [24] 2186 	push	ar1
      0029AA 12 23 22         [24] 2187 	lcall	_lcdcreatechar
      0029AD D0 01            [24] 2188 	pop	ar1
      0029AF D0 04            [24] 2189 	pop	ar4
      0029B1 D0 05            [24] 2190 	pop	ar5
      0029B3 D0 06            [24] 2191 	pop	ar6
      0029B5 D0 07            [24] 2192 	pop	ar7
                                   2193 ;	lcd.c:516: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      0029B7 0C               [12] 2194 	inc	r4
      0029B8 80 BF            [24] 2195 	sjmp	00105$
      0029BA                       2196 00109$:
                                   2197 ;	lcd.c:514: for(uint8_t j = 0; j< 4; j++){
      0029BA 0F               [12] 2198 	inc	r7
      0029BB 80 A4            [24] 2199 	sjmp	00108$
      0029BD                       2200 00102$:
                                   2201 ;	lcd.c:528: for(uint8_t k = 0; k < 4; k++){
      0029BD 7F 00            [12] 2202 	mov	r7,#0x00
      0029BF                       2203 00111$:
      0029BF BF 04 00         [24] 2204 	cjne	r7,#0x04,00146$
      0029C2                       2205 00146$:
      0029C2 50 1D            [24] 2206 	jnc	00113$
                                   2207 ;	lcd.c:530: lcdgotoaddr(address[k]);
      0029C4 EF               [12] 2208 	mov	a,r7
      0029C5 24 3C            [12] 2209 	add	a,#_show_custom_character_address_65536_96
      0029C7 F9               [12] 2210 	mov	r1,a
      0029C8 87 82            [24] 2211 	mov	dpl,@r1
      0029CA C0 07            [24] 2212 	push	ar7
      0029CC 12 21 0D         [24] 2213 	lcall	_lcdgotoaddr
      0029CF D0 07            [24] 2214 	pop	ar7
                                   2215 ;	lcd.c:531: lcdputch(ccode[k]);
      0029D1 EF               [12] 2216 	mov	a,r7
      0029D2 24 40            [12] 2217 	add	a,#_show_custom_character_ccode_65536_96
      0029D4 F9               [12] 2218 	mov	r1,a
      0029D5 87 82            [24] 2219 	mov	dpl,@r1
      0029D7 C0 07            [24] 2220 	push	ar7
      0029D9 12 21 6D         [24] 2221 	lcall	_lcdputch
      0029DC D0 07            [24] 2222 	pop	ar7
                                   2223 ;	lcd.c:528: for(uint8_t k = 0; k < 4; k++){
      0029DE 0F               [12] 2224 	inc	r7
      0029DF 80 DE            [24] 2225 	sjmp	00111$
      0029E1                       2226 00113$:
                                   2227 ;	lcd.c:533: }
      0029E1 22               [24] 2228 	ret
                                   2229 	.area CSEG    (CODE)
                                   2230 	.area CONST   (CODE)
                                   2231 	.area CONST   (CODE)
      0035C8                       2232 ___str_0:
      0035C8 74 65 73 74 5F 66 75  2233 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      0035E0 0A                    2234 	.db 0x0a
      0035E1 0D                    2235 	.db 0x0d
      0035E2 00                    2236 	.db 0x00
                                   2237 	.area CSEG    (CODE)
                                   2238 	.area CONST   (CODE)
      0035E3                       2239 ___str_1:
      0035E3 41 42 43 44 45 46 47  2240 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      00361F 7A 4A 49 54 48 55     2241 	.ascii "zJITHU"
      003625 00                    2242 	.db 0x00
                                   2243 	.area CSEG    (CODE)
                                   2244 	.area CONST   (CODE)
      003626                       2245 ___str_2:
      003626 74 65 73 74 5F 66 75  2246 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      00363C 0A                    2247 	.db 0x0a
      00363D 0D                    2248 	.db 0x0d
      00363E 00                    2249 	.db 0x00
                                   2250 	.area CSEG    (CODE)
                                   2251 	.area CONST   (CODE)
      00363F                       2252 ___str_3:
      00363F 43 6C 6F 63 6B 20 73  2253 	.ascii "Clock status:"
             74 61 74 75 73 3A
      00364C 00                    2254 	.db 0x00
                                   2255 	.area CSEG    (CODE)
                                   2256 	.area CONST   (CODE)
      00364D                       2257 ___str_4:
      00364D 52 75 6E 6E 69 6E 67  2258 	.ascii "Running"
      003654 00                    2259 	.db 0x00
                                   2260 	.area CSEG    (CODE)
                                   2261 	.area CONST   (CODE)
      003655                       2262 ___str_5:
      003655 53 74 6F 70 70 65 64  2263 	.ascii "Stopped"
      00365C 00                    2264 	.db 0x00
                                   2265 	.area CSEG    (CODE)
                                   2266 	.area CONST   (CODE)
      00365D                       2267 ___str_6:
      00365D 52 65 73 65 74        2268 	.ascii "Reset"
      003662 00                    2269 	.db 0x00
                                   2270 	.area CSEG    (CODE)
                                   2271 	.area CONST   (CODE)
      003663                       2272 ___str_7:
      003663 30 78 25 30 32 78 3A  2273 	.ascii "0x%02x: "
             20
      00366B 00                    2274 	.db 0x00
                                   2275 	.area CSEG    (CODE)
                                   2276 	.area CONST   (CODE)
      00366C                       2277 ___str_8:
      00366C 20 25 30 32 78        2278 	.ascii " %02x"
      003671 00                    2279 	.db 0x00
                                   2280 	.area CSEG    (CODE)
                                   2281 	.area CONST   (CODE)
      003672                       2282 ___str_9:
      003672 0A                    2283 	.db 0x0a
      003673 0D                    2284 	.db 0x0d
      003674 00                    2285 	.db 0x00
                                   2286 	.area CSEG    (CODE)
                                   2287 	.area CONST   (CODE)
      003675                       2288 ___str_10:
      003675 30 78                 2289 	.ascii "0x"
      003677 00                    2290 	.db 0x00
                                   2291 	.area CSEG    (CODE)
                                   2292 	.area CONST   (CODE)
      003678                       2293 ___str_11:
      003678 2D 2D 3E 49 6E 76 61  2294 	.ascii "-->Invalid input"
             6C 69 64 20 69 6E 70
             75 74
      003688 0A                    2295 	.db 0x0a
      003689 0D                    2296 	.db 0x0d
      00368A 00                    2297 	.db 0x00
                                   2298 	.area CSEG    (CODE)
                                   2299 	.area CONST   (CODE)
      00368B                       2300 ___str_12:
      00368B 45 6E 74 65 72 20 4C  2301 	.ascii "Enter LCD display address for the character"
             43 44 20 64 69 73 70
             6C 61 79 20 61 64 64
             72 65 73 73 20 66 6F
             72 20 74 68 65 20 63
             68 61 72 61 63 74 65
             72
      0036B6 0A                    2302 	.db 0x0a
      0036B7 0D                    2303 	.db 0x0d
      0036B8 00                    2304 	.db 0x00
                                   2305 	.area CSEG    (CODE)
                                   2306 	.area CONST   (CODE)
      0036B9                       2307 ___str_13:
      0036B9 49 6E 76 61 6C 69 64  2308 	.ascii "Invalid input"
             20 69 6E 70 75 74
      0036C6 0A                    2309 	.db 0x0a
      0036C7 0D                    2310 	.db 0x0d
      0036C8 00                    2311 	.db 0x00
                                   2312 	.area CSEG    (CODE)
                                   2313 	.area CONST   (CODE)
      0036C9                       2314 ___str_14:
      0036C9 45 6E 74 65 72 20 74  2315 	.ascii "Enter the character code in range 0x00 <--> 0x07"
             68 65 20 63 68 61 72
             61 63 74 65 72 20 63
             6F 64 65 20 69 6E 20
             72 61 6E 67 65 20 30
             78 30 30 20 3C 2D 2D
             3E 20 30 78 30 37
      0036F9 0A                    2316 	.db 0x0a
      0036FA 0D                    2317 	.db 0x0d
      0036FB 00                    2318 	.db 0x00
                                   2319 	.area CSEG    (CODE)
                                   2320 	.area CONST   (CODE)
      0036FC                       2321 ___str_15:
      0036FC 45 6E 74 65 72 20 70  2322 	.ascii "Enter pixel pattern hex format for each row of custom charac"
             69 78 65 6C 20 70 61
             74 74 65 72 6E 20 68
             65 78 20 66 6F 72 6D
             61 74 20 66 6F 72 20
             65 61 63 68 20 72 6F
             77 20 6F 66 20 63 75
             73 74 6F 6D 20 63 68
             61 72 61 63
      003738 74 65 72              2323 	.ascii "ter"
      00373B 0A                    2324 	.db 0x0a
      00373C 0D                    2325 	.db 0x0d
      00373D 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      00373E                       2329 ___str_16:
      00373E 30 78 25 78 2D 3E     2330 	.ascii "0x%x->"
      003744 00                    2331 	.db 0x00
                                   2332 	.area CSEG    (CODE)
                                   2333 	.area XINIT   (CODE)
                                   2334 	.area CABS    (ABS,CODE)
