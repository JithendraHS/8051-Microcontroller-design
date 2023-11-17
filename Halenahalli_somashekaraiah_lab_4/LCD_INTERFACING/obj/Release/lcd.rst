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
                                    214 	.globl _db
                                    215 	.globl _arrow_set_PARM_3
                                    216 	.globl _arrow_set_PARM_2
                                    217 	.globl _lcdcreatechar_PARM_2
                                    218 	.globl _lcdgotoxy_PARM_2
                                    219 	.globl _clockrun_flag
                                    220 	.globl _ptr
                                    221 	.globl _lcd_command
                                    222 	.globl _lcdbusywait
                                    223 	.globl _lcdgotoaddr
                                    224 	.globl _lcdgotoxy
                                    225 	.globl _lcdputch
                                    226 	.globl _lcdputstr
                                    227 	.globl _lcdinit
                                    228 	.globl _lcdclear
                                    229 	.globl _test_functionality
                                    230 	.globl _set_cgram_address
                                    231 	.globl _lcdcreatechar
                                    232 	.globl _reset_clock
                                    233 	.globl _clock_run
                                    234 	.globl _menu_lcd
                                    235 	.globl _arrow_set
                                    236 	.globl _set_ddram_address
                                    237 	.globl _read_xxram_address
                                    238 	.globl _ddram_hex_dump
                                    239 	.globl _cgram_hex_dump
                                    240 	.globl _process_custom_character
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
                                    484 ;--------------------------------------------------------
                                    485 ; overlayable items in internal ram
                                    486 ;--------------------------------------------------------
                                    487 	.area	OSEG    (OVR,DATA)
      00000C                        488 _lcd_command_PARM_2:
      00000C                        489 	.ds 1
      00000D                        490 _lcd_command_PARM_3:
      00000D                        491 	.ds 1
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
      000000                        505 _lcdgotoxy_sloc0_1_0:
      000000                        506 	.ds 1
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
      00FC00                        523 _db::
      00FC00                        524 	.ds 1
                                    525 	.area HOME    (CODE)
                                    526 	.area GSINIT0 (CODE)
                                    527 	.area GSINIT1 (CODE)
                                    528 	.area GSINIT2 (CODE)
                                    529 	.area GSINIT3 (CODE)
                                    530 	.area GSINIT4 (CODE)
                                    531 	.area GSINIT5 (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.area GSFINAL (CODE)
                                    534 	.area CSEG    (CODE)
                                    535 ;--------------------------------------------------------
                                    536 ; global & static initialisations
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 ;	lcd.c:31: extern __xdata uint8_t * ptr = &db;
      00208F 75 22 00         [24]  543 	mov	_ptr,#_db
      002092 75 23 FC         [24]  544 	mov	(_ptr + 1),#(_db >> 8)
                                    545 ;	lcd.c:37: extern volatile unsigned int clockrun_flag = 0;
      002095 E4               [12]  546 	clr	a
      002096 F5 29            [12]  547 	mov	_clockrun_flag,a
      002098 F5 2A            [12]  548 	mov	(_clockrun_flag + 1),a
                                    549 ;	lcd.c:39: static uint8_t custom_char_code = 1;
      00209A 75 2B 01         [24]  550 	mov	_custom_char_code,#0x01
                                    551 ;	lcd.c:40: static uint32_t  elapsed_tick = 0;
      00209D F5 2C            [12]  552 	mov	_elapsed_tick,a
      00209F F5 2D            [12]  553 	mov	(_elapsed_tick + 1),a
      0020A1 F5 2E            [12]  554 	mov	(_elapsed_tick + 2),a
      0020A3 F5 2F            [12]  555 	mov	(_elapsed_tick + 3),a
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'lcd_command'
                                    567 ;------------------------------------------------------------
                                    568 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    569 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    570 ;rs                        Allocated to registers r7 
                                    571 ;------------------------------------------------------------
                                    572 ;	lcd.c:48: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
                                    573 ;	-----------------------------------------
                                    574 ;	 function lcd_command
                                    575 ;	-----------------------------------------
      0020E8                        576 _lcd_command:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
                                    585 ;	lcd.c:49: RS = rs;              // Set the Register Select pin based on the provided parameter.
                                    586 ;	assignBit
      0020E8 E5 82            [12]  587 	mov	a,dpl
      0020EA 24 FF            [12]  588 	add	a,#0xff
      0020EC 92 96            [24]  589 	mov	_P1_6,c
                                    590 ;	lcd.c:50: R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
                                    591 ;	assignBit
      0020EE E5 0C            [12]  592 	mov	a,_lcd_command_PARM_2
      0020F0 24 FF            [12]  593 	add	a,#0xff
      0020F2 92 97            [24]  594 	mov	_P1_7,c
                                    595 ;	lcd.c:51: *ptr = data;          // Write the specified data byte to the LCD data buffer.
      0020F4 85 22 82         [24]  596 	mov	dpl,_ptr
      0020F7 85 23 83         [24]  597 	mov	dph,(_ptr + 1)
      0020FA E5 0D            [12]  598 	mov	a,_lcd_command_PARM_3
      0020FC F0               [24]  599 	movx	@dptr,a
                                    600 ;	lcd.c:52: }
      0020FD 22               [24]  601 	ret
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'lcdbusywait'
                                    604 ;------------------------------------------------------------
                                    605 ;	lcd.c:57: void lcdbusywait() {
                                    606 ;	-----------------------------------------
                                    607 ;	 function lcdbusywait
                                    608 ;	-----------------------------------------
      0020FE                        609 _lcdbusywait:
                                    610 ;	lcd.c:58: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    611 ;	assignBit
      0020FE C2 96            [12]  612 	clr	_P1_6
                                    613 ;	lcd.c:59: R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
                                    614 ;	assignBit
      002100 D2 97            [12]  615 	setb	_P1_7
                                    616 ;	lcd.c:60: while (*ptr & (0b10000000)) {
      002102                        617 00101$:
      002102 85 22 82         [24]  618 	mov	dpl,_ptr
      002105 85 23 83         [24]  619 	mov	dph,(_ptr + 1)
      002108 E0               [24]  620 	movx	a,@dptr
      002109 20 E7 F6         [24]  621 	jb	acc.7,00101$
                                    622 ;	lcd.c:63: }
      00210C 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    626 ;------------------------------------------------------------
                                    627 ;addr                      Allocated to registers r7 
                                    628 ;------------------------------------------------------------
                                    629 ;	lcd.c:69: void lcdgotoaddr(uint8_t addr) {
                                    630 ;	-----------------------------------------
                                    631 ;	 function lcdgotoaddr
                                    632 ;	-----------------------------------------
      00210D                        633 _lcdgotoaddr:
      00210D AF 82            [24]  634 	mov	r7,dpl
                                    635 ;	lcd.c:70: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    636 ;	assignBit
      00210F C2 96            [12]  637 	clr	_P1_6
                                    638 ;	lcd.c:71: R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
                                    639 ;	assignBit
      002111 C2 97            [12]  640 	clr	_P1_7
                                    641 ;	lcd.c:72: *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
      002113 85 22 82         [24]  642 	mov	dpl,_ptr
      002116 85 23 83         [24]  643 	mov	dph,(_ptr + 1)
      002119 43 07 80         [24]  644 	orl	ar7,#0x80
      00211C EF               [12]  645 	mov	a,r7
      00211D F0               [24]  646 	movx	@dptr,a
                                    647 ;	lcd.c:73: lcdbusywait();               // Wait until the LCD becomes idle.
                                    648 ;	lcd.c:74: }
      00211E 02 20 FE         [24]  649 	ljmp	_lcdbusywait
                                    650 ;------------------------------------------------------------
                                    651 ;Allocation info for local variables in function 'lcdgotoxy'
                                    652 ;------------------------------------------------------------
                                    653 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    654 ;row                       Allocated to registers r7 
                                    655 ;------------------------------------------------------------
                                    656 ;	lcd.c:81: void lcdgotoxy(uint8_t row, uint8_t column) {
                                    657 ;	-----------------------------------------
                                    658 ;	 function lcdgotoxy
                                    659 ;	-----------------------------------------
      002121                        660 _lcdgotoxy:
                                    661 ;	lcd.c:83: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      002121 AE 82            [24]  662 	mov	r6,dpl
      002123 7F 00            [12]  663 	mov	r7,#0x00
      002125 EE               [12]  664 	mov	a,r6
      002126 30 E0 23         [24]  665 	jnb	acc.0,00103$
      002129 75 0C 03         [24]  666 	mov	__modsint_PARM_2,#0x03
      00212C 75 0D 00         [24]  667 	mov	(__modsint_PARM_2 + 1),#0x00
      00212F 8E 82            [24]  668 	mov	dpl,r6
      002131 8F 83            [24]  669 	mov	dph,r7
      002133 12 34 10         [24]  670 	lcall	__modsint
      002136 AC 82            [24]  671 	mov	r4,dpl
      002138 AD 83            [24]  672 	mov	r5,dph
      00213A EC               [12]  673 	mov	a,r4
      00213B 4D               [12]  674 	orl	a,r5
      00213C B4 01 00         [24]  675 	cjne	a,#0x01,00110$
      00213F                        676 00110$:
      00213F 92 00            [24]  677 	mov  _lcdgotoxy_sloc0_1_0,c
      002141 E4               [12]  678 	clr	a
      002142 33               [12]  679 	rlc	a
      002143 C4               [12]  680 	swap	a
      002144 54 F0            [12]  681 	anl	a,#0xf0
      002146 AC 30            [24]  682 	mov	r4,_lcdgotoxy_PARM_2
      002148 2C               [12]  683 	add	a,r4
      002149 FD               [12]  684 	mov	r5,a
      00214A 80 1A            [24]  685 	sjmp	00104$
      00214C                        686 00103$:
      00214C AC 30            [24]  687 	mov	r4,_lcdgotoxy_PARM_2
      00214E 74 40            [12]  688 	mov	a,#0x40
      002150 2C               [12]  689 	add	a,r4
      002151 FC               [12]  690 	mov	r4,a
      002152 53 06 03         [24]  691 	anl	ar6,#0x03
      002155 7F 00            [12]  692 	mov	r7,#0x00
      002157 EE               [12]  693 	mov	a,r6
      002158 4F               [12]  694 	orl	a,r7
      002159 B4 01 00         [24]  695 	cjne	a,#0x01,00111$
      00215C                        696 00111$:
      00215C 92 00            [24]  697 	mov  _lcdgotoxy_sloc0_1_0,c
      00215E E4               [12]  698 	clr	a
      00215F 33               [12]  699 	rlc	a
      002160 C4               [12]  700 	swap	a
      002161 54 F0            [12]  701 	anl	a,#0xf0
      002163 FF               [12]  702 	mov	r7,a
      002164 2C               [12]  703 	add	a,r4
      002165 FD               [12]  704 	mov	r5,a
      002166                        705 00104$:
      002166 ED               [12]  706 	mov	a,r5
      002167 14               [12]  707 	dec	a
      002168 F5 82            [12]  708 	mov	dpl,a
                                    709 ;	lcd.c:84: }
      00216A 02 21 0D         [24]  710 	ljmp	_lcdgotoaddr
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'lcdputch'
                                    713 ;------------------------------------------------------------
                                    714 ;cc                        Allocated to registers r7 
                                    715 ;------------------------------------------------------------
                                    716 ;	lcd.c:90: void lcdputch(uint8_t cc) {
                                    717 ;	-----------------------------------------
                                    718 ;	 function lcdputch
                                    719 ;	-----------------------------------------
      00216D                        720 _lcdputch:
      00216D AF 82            [24]  721 	mov	r7,dpl
                                    722 ;	lcd.c:92: RS = PULSE_HIGH;
                                    723 ;	assignBit
      00216F D2 96            [12]  724 	setb	_P1_6
                                    725 ;	lcd.c:93: R_W = PULSE_LOW;
                                    726 ;	assignBit
      002171 C2 97            [12]  727 	clr	_P1_7
                                    728 ;	lcd.c:94: *ptr = cc;
      002173 85 22 82         [24]  729 	mov	dpl,_ptr
      002176 85 23 83         [24]  730 	mov	dph,(_ptr + 1)
      002179 EF               [12]  731 	mov	a,r7
      00217A F0               [24]  732 	movx	@dptr,a
                                    733 ;	lcd.c:95: lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
                                    734 ;	lcd.c:96: }
      00217B 02 20 FE         [24]  735 	ljmp	_lcdbusywait
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'lcdputstr'
                                    738 ;------------------------------------------------------------
                                    739 ;ss                        Allocated to registers 
                                    740 ;lcd_ptr_addr              Allocated to registers r4 
                                    741 ;------------------------------------------------------------
                                    742 ;	lcd.c:103: void lcdputstr(uint8_t *ss) {
                                    743 ;	-----------------------------------------
                                    744 ;	 function lcdputstr
                                    745 ;	-----------------------------------------
      00217E                        746 _lcdputstr:
      00217E AD 82            [24]  747 	mov	r5,dpl
      002180 AE 83            [24]  748 	mov	r6,dph
      002182 AF F0            [24]  749 	mov	r7,b
                                    750 ;	lcd.c:107: while (*ss != '\0') {
      002184                        751 00107$:
      002184 8D 82            [24]  752 	mov	dpl,r5
      002186 8E 83            [24]  753 	mov	dph,r6
      002188 8F F0            [24]  754 	mov	b,r7
      00218A 12 33 F4         [24]  755 	lcall	__gptrget
      00218D 70 01            [24]  756 	jnz	00137$
      00218F 22               [24]  757 	ret
      002190                        758 00137$:
                                    759 ;	lcd.c:109: RS = PULSE_LOW;
                                    760 ;	assignBit
      002190 C2 96            [12]  761 	clr	_P1_6
                                    762 ;	lcd.c:110: R_W = PULSE_HIGH;
                                    763 ;	assignBit
      002192 D2 97            [12]  764 	setb	_P1_7
                                    765 ;	lcd.c:111: lcdputch(*ss);
      002194 8D 82            [24]  766 	mov	dpl,r5
      002196 8E 83            [24]  767 	mov	dph,r6
      002198 8F F0            [24]  768 	mov	b,r7
      00219A 12 33 F4         [24]  769 	lcall	__gptrget
      00219D F5 82            [12]  770 	mov	dpl,a
      00219F C0 07            [24]  771 	push	ar7
      0021A1 C0 06            [24]  772 	push	ar6
      0021A3 C0 05            [24]  773 	push	ar5
      0021A5 12 21 6D         [24]  774 	lcall	_lcdputch
      0021A8 D0 05            [24]  775 	pop	ar5
      0021AA D0 06            [24]  776 	pop	ar6
      0021AC D0 07            [24]  777 	pop	ar7
                                    778 ;	lcd.c:114: lcd_ptr_addr = *ptr & (0b01111111);
      0021AE 85 22 82         [24]  779 	mov	dpl,_ptr
      0021B1 85 23 83         [24]  780 	mov	dph,(_ptr + 1)
      0021B4 E0               [24]  781 	movx	a,@dptr
      0021B5 FC               [12]  782 	mov	r4,a
      0021B6 53 04 7F         [24]  783 	anl	ar4,#0x7f
                                    784 ;	lcd.c:115: switch (lcd_ptr_addr) {
      0021B9 BC 10 02         [24]  785 	cjne	r4,#0x10,00138$
      0021BC 80 0F            [24]  786 	sjmp	00101$
      0021BE                        787 00138$:
      0021BE BC 20 02         [24]  788 	cjne	r4,#0x20,00139$
      0021C1 80 32            [24]  789 	sjmp	00103$
      0021C3                        790 00139$:
      0021C3 BC 50 02         [24]  791 	cjne	r4,#0x50,00140$
      0021C6 80 19            [24]  792 	sjmp	00102$
      0021C8                        793 00140$:
                                    794 ;	lcd.c:116: case 0x10:
      0021C8 BC 60 50         [24]  795 	cjne	r4,#0x60,00106$
      0021CB 80 3C            [24]  796 	sjmp	00104$
      0021CD                        797 00101$:
                                    798 ;	lcd.c:117: lcdgotoaddr(0x40);
      0021CD 75 82 40         [24]  799 	mov	dpl,#0x40
      0021D0 C0 07            [24]  800 	push	ar7
      0021D2 C0 06            [24]  801 	push	ar6
      0021D4 C0 05            [24]  802 	push	ar5
      0021D6 12 21 0D         [24]  803 	lcall	_lcdgotoaddr
      0021D9 D0 05            [24]  804 	pop	ar5
      0021DB D0 06            [24]  805 	pop	ar6
      0021DD D0 07            [24]  806 	pop	ar7
                                    807 ;	lcd.c:118: break;
                                    808 ;	lcd.c:119: case 0x50:
      0021DF 80 3A            [24]  809 	sjmp	00106$
      0021E1                        810 00102$:
                                    811 ;	lcd.c:120: lcdgotoaddr(0x10);
      0021E1 75 82 10         [24]  812 	mov	dpl,#0x10
      0021E4 C0 07            [24]  813 	push	ar7
      0021E6 C0 06            [24]  814 	push	ar6
      0021E8 C0 05            [24]  815 	push	ar5
      0021EA 12 21 0D         [24]  816 	lcall	_lcdgotoaddr
      0021ED D0 05            [24]  817 	pop	ar5
      0021EF D0 06            [24]  818 	pop	ar6
      0021F1 D0 07            [24]  819 	pop	ar7
                                    820 ;	lcd.c:121: break;
                                    821 ;	lcd.c:122: case 0x20:
      0021F3 80 26            [24]  822 	sjmp	00106$
      0021F5                        823 00103$:
                                    824 ;	lcd.c:123: lcdgotoaddr(0x50);
      0021F5 75 82 50         [24]  825 	mov	dpl,#0x50
      0021F8 C0 07            [24]  826 	push	ar7
      0021FA C0 06            [24]  827 	push	ar6
      0021FC C0 05            [24]  828 	push	ar5
      0021FE 12 21 0D         [24]  829 	lcall	_lcdgotoaddr
      002201 D0 05            [24]  830 	pop	ar5
      002203 D0 06            [24]  831 	pop	ar6
      002205 D0 07            [24]  832 	pop	ar7
                                    833 ;	lcd.c:124: break;
                                    834 ;	lcd.c:125: case 0x60:
      002207 80 12            [24]  835 	sjmp	00106$
      002209                        836 00104$:
                                    837 ;	lcd.c:126: lcdgotoaddr(0x00);
      002209 75 82 00         [24]  838 	mov	dpl,#0x00
      00220C C0 07            [24]  839 	push	ar7
      00220E C0 06            [24]  840 	push	ar6
      002210 C0 05            [24]  841 	push	ar5
      002212 12 21 0D         [24]  842 	lcall	_lcdgotoaddr
      002215 D0 05            [24]  843 	pop	ar5
      002217 D0 06            [24]  844 	pop	ar6
      002219 D0 07            [24]  845 	pop	ar7
                                    846 ;	lcd.c:130: }
      00221B                        847 00106$:
                                    848 ;	lcd.c:132: ss++;  // Move to the next character in the string.
      00221B 0D               [12]  849 	inc	r5
      00221C BD 00 01         [24]  850 	cjne	r5,#0x00,00142$
      00221F 0E               [12]  851 	inc	r6
      002220                        852 00142$:
                                    853 ;	lcd.c:134: }
      002220 02 21 84         [24]  854 	ljmp	00107$
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'lcdinit'
                                    857 ;------------------------------------------------------------
                                    858 ;	lcd.c:139: void lcdinit() {
                                    859 ;	-----------------------------------------
                                    860 ;	 function lcdinit
                                    861 ;	-----------------------------------------
      002223                        862 _lcdinit:
                                    863 ;	lcd.c:141: delay(14000);
      002223 90 36 B0         [24]  864 	mov	dptr,#0x36b0
      002226 E4               [12]  865 	clr	a
      002227 F5 F0            [12]  866 	mov	b,a
      002229 12 20 A8         [24]  867 	lcall	_delay
                                    868 ;	lcd.c:144: lcd_command(0, 0, 0x30);
      00222C 75 0C 00         [24]  869 	mov	_lcd_command_PARM_2,#0x00
      00222F 75 0D 30         [24]  870 	mov	_lcd_command_PARM_3,#0x30
      002232 75 82 00         [24]  871 	mov	dpl,#0x00
      002235 12 20 E8         [24]  872 	lcall	_lcd_command
                                    873 ;	lcd.c:145: delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
      002238 90 0F A0         [24]  874 	mov	dptr,#0x0fa0
      00223B E4               [12]  875 	clr	a
      00223C F5 F0            [12]  876 	mov	b,a
      00223E 12 20 A8         [24]  877 	lcall	_delay
                                    878 ;	lcd.c:146: lcd_command(0, 0, 0x30);
      002241 75 0C 00         [24]  879 	mov	_lcd_command_PARM_2,#0x00
      002244 75 0D 30         [24]  880 	mov	_lcd_command_PARM_3,#0x30
      002247 75 82 00         [24]  881 	mov	dpl,#0x00
      00224A 12 20 E8         [24]  882 	lcall	_lcd_command
                                    883 ;	lcd.c:147: delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
      00224D 90 00 64         [24]  884 	mov	dptr,#(0x64&0x00ff)
      002250 E4               [12]  885 	clr	a
      002251 F5 F0            [12]  886 	mov	b,a
      002253 12 20 A8         [24]  887 	lcall	_delay
                                    888 ;	lcd.c:148: lcd_command(0, 0, 0x30);
      002256 75 0C 00         [24]  889 	mov	_lcd_command_PARM_2,#0x00
      002259 75 0D 30         [24]  890 	mov	_lcd_command_PARM_3,#0x30
      00225C 75 82 00         [24]  891 	mov	dpl,#0x00
      00225F 12 20 E8         [24]  892 	lcall	_lcd_command
                                    893 ;	lcd.c:150: lcdbusywait();  // Wait for the LCD to finish processing the commands.
      002262 12 20 FE         [24]  894 	lcall	_lcdbusywait
                                    895 ;	lcd.c:152: lcd_command(0, 0, 0x38);  // Function set command
      002265 75 0C 00         [24]  896 	mov	_lcd_command_PARM_2,#0x00
      002268 75 0D 38         [24]  897 	mov	_lcd_command_PARM_3,#0x38
      00226B 75 82 00         [24]  898 	mov	dpl,#0x00
      00226E 12 20 E8         [24]  899 	lcall	_lcd_command
                                    900 ;	lcd.c:153: lcdbusywait();
      002271 12 20 FE         [24]  901 	lcall	_lcdbusywait
                                    902 ;	lcd.c:155: lcd_command(0, 0, 0x08);  // Turn off display command
      002274 75 0C 00         [24]  903 	mov	_lcd_command_PARM_2,#0x00
      002277 75 0D 08         [24]  904 	mov	_lcd_command_PARM_3,#0x08
      00227A 75 82 00         [24]  905 	mov	dpl,#0x00
      00227D 12 20 E8         [24]  906 	lcall	_lcd_command
                                    907 ;	lcd.c:156: lcdbusywait();
      002280 12 20 FE         [24]  908 	lcall	_lcdbusywait
                                    909 ;	lcd.c:158: lcd_command(0, 0, 0x0C);  // Turn on display command
      002283 75 0C 00         [24]  910 	mov	_lcd_command_PARM_2,#0x00
      002286 75 0D 0C         [24]  911 	mov	_lcd_command_PARM_3,#0x0c
      002289 75 82 00         [24]  912 	mov	dpl,#0x00
      00228C 12 20 E8         [24]  913 	lcall	_lcd_command
                                    914 ;	lcd.c:159: lcdbusywait();
      00228F 12 20 FE         [24]  915 	lcall	_lcdbusywait
                                    916 ;	lcd.c:161: lcd_command(0, 0, 0x06);  // Entry mode set command
      002292 75 0C 00         [24]  917 	mov	_lcd_command_PARM_2,#0x00
      002295 75 0D 06         [24]  918 	mov	_lcd_command_PARM_3,#0x06
      002298 75 82 00         [24]  919 	mov	dpl,#0x00
      00229B 12 20 E8         [24]  920 	lcall	_lcd_command
                                    921 ;	lcd.c:162: lcdbusywait();
      00229E 12 20 FE         [24]  922 	lcall	_lcdbusywait
                                    923 ;	lcd.c:164: lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
      0022A1 75 0C 00         [24]  924 	mov	_lcd_command_PARM_2,#0x00
      0022A4 75 0D 01         [24]  925 	mov	_lcd_command_PARM_3,#0x01
      0022A7 75 82 00         [24]  926 	mov	dpl,#0x00
                                    927 ;	lcd.c:165: }
      0022AA 02 20 E8         [24]  928 	ljmp	_lcd_command
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'lcdclear'
                                    931 ;------------------------------------------------------------
                                    932 ;	lcd.c:170: void lcdclear() {
                                    933 ;	-----------------------------------------
                                    934 ;	 function lcdclear
                                    935 ;	-----------------------------------------
      0022AD                        936 _lcdclear:
                                    937 ;	lcd.c:171: RS = PULSE_LOW;
                                    938 ;	assignBit
      0022AD C2 96            [12]  939 	clr	_P1_6
                                    940 ;	lcd.c:172: R_W = PULSE_LOW;
                                    941 ;	assignBit
      0022AF C2 97            [12]  942 	clr	_P1_7
                                    943 ;	lcd.c:173: *ptr = 0b00000001;  // Send the command to clear the screen.
      0022B1 85 22 82         [24]  944 	mov	dpl,_ptr
      0022B4 85 23 83         [24]  945 	mov	dph,(_ptr + 1)
      0022B7 74 01            [12]  946 	mov	a,#0x01
      0022B9 F0               [24]  947 	movx	@dptr,a
                                    948 ;	lcd.c:174: lcdbusywait();      // Wait for the LCD to finish processing the command.
                                    949 ;	lcd.c:175: }
      0022BA 02 20 FE         [24]  950 	ljmp	_lcdbusywait
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'test_functionality'
                                    953 ;------------------------------------------------------------
                                    954 ;	lcd.c:180: void test_functionality() {
                                    955 ;	-----------------------------------------
                                    956 ;	 function test_functionality
                                    957 ;	-----------------------------------------
      0022BD                        958 _test_functionality:
                                    959 ;	lcd.c:181: printf_tiny("test_functionality start\n\r");
      0022BD 74 46            [12]  960 	mov	a,#___str_0
      0022BF C0 E0            [24]  961 	push	acc
      0022C1 74 34            [12]  962 	mov	a,#(___str_0 >> 8)
      0022C3 C0 E0            [24]  963 	push	acc
      0022C5 12 2B 32         [24]  964 	lcall	_printf_tiny
      0022C8 15 81            [12]  965 	dec	sp
      0022CA 15 81            [12]  966 	dec	sp
                                    967 ;	lcd.c:184: lcdgotoaddr(0x01);
      0022CC 75 82 01         [24]  968 	mov	dpl,#0x01
      0022CF 12 21 0D         [24]  969 	lcall	_lcdgotoaddr
                                    970 ;	lcd.c:185: lcdputch('E');
      0022D2 75 82 45         [24]  971 	mov	dpl,#0x45
      0022D5 12 21 6D         [24]  972 	lcall	_lcdputch
                                    973 ;	lcd.c:186: delay(100000);
      0022D8 90 86 A0         [24]  974 	mov	dptr,#0x86a0
      0022DB 75 F0 01         [24]  975 	mov	b,#0x01
      0022DE E4               [12]  976 	clr	a
      0022DF 12 20 A8         [24]  977 	lcall	_delay
                                    978 ;	lcd.c:189: lcdgotoxy(1, 1);
      0022E2 75 30 01         [24]  979 	mov	_lcdgotoxy_PARM_2,#0x01
      0022E5 75 82 01         [24]  980 	mov	dpl,#0x01
      0022E8 12 21 21         [24]  981 	lcall	_lcdgotoxy
                                    982 ;	lcd.c:190: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022EB 90 34 61         [24]  983 	mov	dptr,#___str_1
      0022EE 75 F0 80         [24]  984 	mov	b,#0x80
      0022F1 12 21 7E         [24]  985 	lcall	_lcdputstr
                                    986 ;	lcd.c:191: delay(100000);
      0022F4 90 86 A0         [24]  987 	mov	dptr,#0x86a0
      0022F7 75 F0 01         [24]  988 	mov	b,#0x01
      0022FA E4               [12]  989 	clr	a
      0022FB 12 20 A8         [24]  990 	lcall	_delay
                                    991 ;	lcd.c:194: lcdclear();
      0022FE 12 22 AD         [24]  992 	lcall	_lcdclear
                                    993 ;	lcd.c:196: printf_tiny("test_functionality end\n\r");
      002301 74 A4            [12]  994 	mov	a,#___str_2
      002303 C0 E0            [24]  995 	push	acc
      002305 74 34            [12]  996 	mov	a,#(___str_2 >> 8)
      002307 C0 E0            [24]  997 	push	acc
      002309 12 2B 32         [24]  998 	lcall	_printf_tiny
      00230C 15 81            [12]  999 	dec	sp
      00230E 15 81            [12] 1000 	dec	sp
                                   1001 ;	lcd.c:197: }
      002310 22               [24] 1002 	ret
                                   1003 ;------------------------------------------------------------
                                   1004 ;Allocation info for local variables in function 'set_cgram_address'
                                   1005 ;------------------------------------------------------------
                                   1006 ;cgram_address             Allocated to registers r7 
                                   1007 ;------------------------------------------------------------
                                   1008 ;	lcd.c:203: void set_cgram_address(uint8_t cgram_address) {
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function set_cgram_address
                                   1011 ;	-----------------------------------------
      002311                       1012 _set_cgram_address:
      002311 AF 82            [24] 1013 	mov	r7,dpl
                                   1014 ;	lcd.c:204: RS = PULSE_LOW;
                                   1015 ;	assignBit
      002313 C2 96            [12] 1016 	clr	_P1_6
                                   1017 ;	lcd.c:205: R_W = PULSE_LOW;
                                   1018 ;	assignBit
      002315 C2 97            [12] 1019 	clr	_P1_7
                                   1020 ;	lcd.c:206: *ptr = cgram_address;
      002317 85 22 82         [24] 1021 	mov	dpl,_ptr
      00231A 85 23 83         [24] 1022 	mov	dph,(_ptr + 1)
      00231D EF               [12] 1023 	mov	a,r7
      00231E F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	lcd.c:207: lcdbusywait();
                                   1026 ;	lcd.c:208: }
      00231F 02 20 FE         [24] 1027 	ljmp	_lcdbusywait
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'lcdcreatechar'
                                   1030 ;------------------------------------------------------------
                                   1031 ;c                         Allocated with name '_lcdcreatechar_PARM_2'
                                   1032 ;char_num                  Allocated to registers 
                                   1033 ;------------------------------------------------------------
                                   1034 ;	lcd.c:214: void lcdcreatechar(uint8_t char_num, uint8_t c) {
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function lcdcreatechar
                                   1037 ;	-----------------------------------------
      002322                       1038 _lcdcreatechar:
                                   1039 ;	lcd.c:216: set_cgram_address(char_num);
      002322 12 23 11         [24] 1040 	lcall	_set_cgram_address
                                   1041 ;	lcd.c:219: lcdputch(c);
      002325 85 31 82         [24] 1042 	mov	dpl,_lcdcreatechar_PARM_2
                                   1043 ;	lcd.c:220: }
      002328 02 21 6D         [24] 1044 	ljmp	_lcdputch
                                   1045 ;------------------------------------------------------------
                                   1046 ;Allocation info for local variables in function 'reset_clock'
                                   1047 ;------------------------------------------------------------
                                   1048 ;	lcd.c:226: void reset_clock() {
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function reset_clock
                                   1051 ;	-----------------------------------------
      00232B                       1052 _reset_clock:
                                   1053 ;	lcd.c:228: min_high = '0';
      00232B 75 24 30         [24] 1054 	mov	_min_high,#0x30
                                   1055 ;	lcd.c:229: min_low = '0';
      00232E 75 25 30         [24] 1056 	mov	_min_low,#0x30
                                   1057 ;	lcd.c:230: sec_high = '0';
      002331 75 26 30         [24] 1058 	mov	_sec_high,#0x30
                                   1059 ;	lcd.c:231: sec_low = '0';
      002334 75 27 30         [24] 1060 	mov	_sec_low,#0x30
                                   1061 ;	lcd.c:232: mili_sec = '0';
      002337 75 28 30         [24] 1062 	mov	_mili_sec,#0x30
                                   1063 ;	lcd.c:235: lcdgotoaddr(0x59);
      00233A 75 82 59         [24] 1064 	mov	dpl,#0x59
      00233D 12 21 0D         [24] 1065 	lcall	_lcdgotoaddr
                                   1066 ;	lcd.c:236: lcdputch(min_high);
      002340 85 24 82         [24] 1067 	mov	dpl,_min_high
      002343 12 21 6D         [24] 1068 	lcall	_lcdputch
                                   1069 ;	lcd.c:237: lcdputch(min_low);
      002346 85 25 82         [24] 1070 	mov	dpl,_min_low
      002349 12 21 6D         [24] 1071 	lcall	_lcdputch
                                   1072 ;	lcd.c:238: lcdputch(':');
      00234C 75 82 3A         [24] 1073 	mov	dpl,#0x3a
      00234F 12 21 6D         [24] 1074 	lcall	_lcdputch
                                   1075 ;	lcd.c:239: lcdputch(sec_high);
      002352 85 26 82         [24] 1076 	mov	dpl,_sec_high
      002355 12 21 6D         [24] 1077 	lcall	_lcdputch
                                   1078 ;	lcd.c:240: lcdputch(sec_low);
      002358 85 27 82         [24] 1079 	mov	dpl,_sec_low
      00235B 12 21 6D         [24] 1080 	lcall	_lcdputch
                                   1081 ;	lcd.c:241: lcdputch('.');
      00235E 75 82 2E         [24] 1082 	mov	dpl,#0x2e
      002361 12 21 6D         [24] 1083 	lcall	_lcdputch
                                   1084 ;	lcd.c:242: lcdputch(mili_sec);
      002364 85 28 82         [24] 1085 	mov	dpl,_mili_sec
                                   1086 ;	lcd.c:243: }
      002367 02 21 6D         [24] 1087 	ljmp	_lcdputch
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'clock_run'
                                   1090 ;------------------------------------------------------------
                                   1091 ;	lcd.c:248: void clock_run() {
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function clock_run
                                   1094 ;	-----------------------------------------
      00236A                       1095 _clock_run:
                                   1096 ;	lcd.c:250: if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
      00236A E5 29            [12] 1097 	mov	a,_clockrun_flag
      00236C 45 2A            [12] 1098 	orl	a,(_clockrun_flag + 1)
      00236E 70 01            [24] 1099 	jnz	00149$
      002370 22               [24] 1100 	ret
      002371                       1101 00149$:
      002371 E5 08            [12] 1102 	mov	a,_tick
      002373 30 E0 01         [24] 1103 	jnb	acc.0,00150$
      002376 22               [24] 1104 	ret
      002377                       1105 00150$:
      002377 AC 08            [24] 1106 	mov	r4,_tick
      002379 AD 09            [24] 1107 	mov	r5,(_tick + 1)
      00237B 7E 00            [12] 1108 	mov	r6,#0x00
      00237D 7F 00            [12] 1109 	mov	r7,#0x00
      00237F C3               [12] 1110 	clr	c
      002380 E5 2C            [12] 1111 	mov	a,_elapsed_tick
      002382 9C               [12] 1112 	subb	a,r4
      002383 E5 2D            [12] 1113 	mov	a,(_elapsed_tick + 1)
      002385 9D               [12] 1114 	subb	a,r5
      002386 E5 2E            [12] 1115 	mov	a,(_elapsed_tick + 2)
      002388 9E               [12] 1116 	subb	a,r6
      002389 E5 2F            [12] 1117 	mov	a,(_elapsed_tick + 3)
      00238B 9F               [12] 1118 	subb	a,r7
      00238C 40 01            [24] 1119 	jc	00151$
      00238E 22               [24] 1120 	ret
      00238F                       1121 00151$:
                                   1122 ;	lcd.c:251: elapsed_tick = tick;  // Update the elapsed tick
      00238F 85 08 2C         [24] 1123 	mov	_elapsed_tick,_tick
      002392 85 09 2D         [24] 1124 	mov	(_elapsed_tick + 1),(_tick + 1)
      002395 75 2E 00         [24] 1125 	mov	(_elapsed_tick + 2),#0x00
      002398 75 2F 00         [24] 1126 	mov	(_elapsed_tick + 3),#0x00
                                   1127 ;	lcd.c:253: mili_sec++;  // Increment milliseconds
      00239B 05 28            [12] 1128 	inc	_mili_sec
                                   1129 ;	lcd.c:254: if (mili_sec > '9') {
      00239D E5 28            [12] 1130 	mov	a,_mili_sec
      00239F 24 C6            [12] 1131 	add	a,#0xff - 0x39
      0023A1 50 1D            [24] 1132 	jnc	00102$
                                   1133 ;	lcd.c:255: mili_sec = '0';
      0023A3 75 28 30         [24] 1134 	mov	_mili_sec,#0x30
                                   1135 ;	lcd.c:256: lcdgotoaddr(0x5F);
      0023A6 75 82 5F         [24] 1136 	mov	dpl,#0x5f
      0023A9 12 21 0D         [24] 1137 	lcall	_lcdgotoaddr
                                   1138 ;	lcd.c:257: lcdputch(mili_sec);
      0023AC 85 28 82         [24] 1139 	mov	dpl,_mili_sec
      0023AF 12 21 6D         [24] 1140 	lcall	_lcdputch
                                   1141 ;	lcd.c:258: sec_low++;
      0023B2 05 27            [12] 1142 	inc	_sec_low
                                   1143 ;	lcd.c:259: lcdgotoaddr(0x5D);
      0023B4 75 82 5D         [24] 1144 	mov	dpl,#0x5d
      0023B7 12 21 0D         [24] 1145 	lcall	_lcdgotoaddr
                                   1146 ;	lcd.c:260: lcdputch(sec_low);
      0023BA 85 27 82         [24] 1147 	mov	dpl,_sec_low
      0023BD 12 21 6D         [24] 1148 	lcall	_lcdputch
      0023C0                       1149 00102$:
                                   1150 ;	lcd.c:262: if (sec_low > '9') {
      0023C0 E5 27            [12] 1151 	mov	a,_sec_low
      0023C2 24 C6            [12] 1152 	add	a,#0xff - 0x39
      0023C4 50 1D            [24] 1153 	jnc	00104$
                                   1154 ;	lcd.c:263: sec_low = '0';
      0023C6 75 27 30         [24] 1155 	mov	_sec_low,#0x30
                                   1156 ;	lcd.c:264: lcdgotoaddr(0x5D);
      0023C9 75 82 5D         [24] 1157 	mov	dpl,#0x5d
      0023CC 12 21 0D         [24] 1158 	lcall	_lcdgotoaddr
                                   1159 ;	lcd.c:265: lcdputch(sec_low);
      0023CF 85 27 82         [24] 1160 	mov	dpl,_sec_low
      0023D2 12 21 6D         [24] 1161 	lcall	_lcdputch
                                   1162 ;	lcd.c:266: sec_high++;
      0023D5 05 26            [12] 1163 	inc	_sec_high
                                   1164 ;	lcd.c:267: lcdgotoaddr(0x5C);
      0023D7 75 82 5C         [24] 1165 	mov	dpl,#0x5c
      0023DA 12 21 0D         [24] 1166 	lcall	_lcdgotoaddr
                                   1167 ;	lcd.c:268: lcdputch(sec_high);
      0023DD 85 26 82         [24] 1168 	mov	dpl,_sec_high
      0023E0 12 21 6D         [24] 1169 	lcall	_lcdputch
      0023E3                       1170 00104$:
                                   1171 ;	lcd.c:270: if (sec_high > '5') {
      0023E3 E5 26            [12] 1172 	mov	a,_sec_high
      0023E5 24 CA            [12] 1173 	add	a,#0xff - 0x35
      0023E7 50 1D            [24] 1174 	jnc	00106$
                                   1175 ;	lcd.c:271: sec_high = '0';
      0023E9 75 26 30         [24] 1176 	mov	_sec_high,#0x30
                                   1177 ;	lcd.c:272: lcdgotoaddr(0x5C);
      0023EC 75 82 5C         [24] 1178 	mov	dpl,#0x5c
      0023EF 12 21 0D         [24] 1179 	lcall	_lcdgotoaddr
                                   1180 ;	lcd.c:273: lcdputch(sec_high);
      0023F2 85 26 82         [24] 1181 	mov	dpl,_sec_high
      0023F5 12 21 6D         [24] 1182 	lcall	_lcdputch
                                   1183 ;	lcd.c:274: min_low++;
      0023F8 05 25            [12] 1184 	inc	_min_low
                                   1185 ;	lcd.c:275: lcdgotoaddr(0x5A);
      0023FA 75 82 5A         [24] 1186 	mov	dpl,#0x5a
      0023FD 12 21 0D         [24] 1187 	lcall	_lcdgotoaddr
                                   1188 ;	lcd.c:276: lcdputch(min_low);
      002400 85 25 82         [24] 1189 	mov	dpl,_min_low
      002403 12 21 6D         [24] 1190 	lcall	_lcdputch
      002406                       1191 00106$:
                                   1192 ;	lcd.c:278: if (min_low > '9') {
      002406 E5 25            [12] 1193 	mov	a,_min_low
      002408 24 C6            [12] 1194 	add	a,#0xff - 0x39
      00240A 50 1D            [24] 1195 	jnc	00108$
                                   1196 ;	lcd.c:279: min_low = '0';
      00240C 75 25 30         [24] 1197 	mov	_min_low,#0x30
                                   1198 ;	lcd.c:280: lcdgotoaddr(0x5A);
      00240F 75 82 5A         [24] 1199 	mov	dpl,#0x5a
      002412 12 21 0D         [24] 1200 	lcall	_lcdgotoaddr
                                   1201 ;	lcd.c:281: lcdputch(min_low);
      002415 85 25 82         [24] 1202 	mov	dpl,_min_low
      002418 12 21 6D         [24] 1203 	lcall	_lcdputch
                                   1204 ;	lcd.c:282: min_high++;
      00241B 05 24            [12] 1205 	inc	_min_high
                                   1206 ;	lcd.c:283: lcdgotoaddr(0x59);
      00241D 75 82 59         [24] 1207 	mov	dpl,#0x59
      002420 12 21 0D         [24] 1208 	lcall	_lcdgotoaddr
                                   1209 ;	lcd.c:284: lcdputch(min_high);
      002423 85 24 82         [24] 1210 	mov	dpl,_min_high
      002426 12 21 6D         [24] 1211 	lcall	_lcdputch
      002429                       1212 00108$:
                                   1213 ;	lcd.c:286: if (min_high > '5') {
      002429 E5 24            [12] 1214 	mov	a,_min_high
      00242B 24 CA            [12] 1215 	add	a,#0xff - 0x35
      00242D 50 0F            [24] 1216 	jnc	00110$
                                   1217 ;	lcd.c:287: min_high = '0';
      00242F 75 24 30         [24] 1218 	mov	_min_high,#0x30
                                   1219 ;	lcd.c:288: lcdgotoaddr(0x59);
      002432 75 82 59         [24] 1220 	mov	dpl,#0x59
      002435 12 21 0D         [24] 1221 	lcall	_lcdgotoaddr
                                   1222 ;	lcd.c:289: lcdputch(min_high);
      002438 85 24 82         [24] 1223 	mov	dpl,_min_high
      00243B 12 21 6D         [24] 1224 	lcall	_lcdputch
      00243E                       1225 00110$:
                                   1226 ;	lcd.c:291: lcdgotoaddr(0x5F);
      00243E 75 82 5F         [24] 1227 	mov	dpl,#0x5f
      002441 12 21 0D         [24] 1228 	lcall	_lcdgotoaddr
                                   1229 ;	lcd.c:292: lcdputch(mili_sec);
      002444 85 28 82         [24] 1230 	mov	dpl,_mili_sec
                                   1231 ;	lcd.c:294: }
      002447 02 21 6D         [24] 1232 	ljmp	_lcdputch
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'menu_lcd'
                                   1235 ;------------------------------------------------------------
                                   1236 ;	lcd.c:299: void menu_lcd() {
                                   1237 ;	-----------------------------------------
                                   1238 ;	 function menu_lcd
                                   1239 ;	-----------------------------------------
      00244A                       1240 _menu_lcd:
                                   1241 ;	lcd.c:300: reset_clock();  // Reset clock values for display consistency
      00244A 12 23 2B         [24] 1242 	lcall	_reset_clock
                                   1243 ;	lcd.c:301: lcdgotoxy(1, 1);
      00244D 75 30 01         [24] 1244 	mov	_lcdgotoxy_PARM_2,#0x01
      002450 75 82 01         [24] 1245 	mov	dpl,#0x01
      002453 12 21 21         [24] 1246 	lcall	_lcdgotoxy
                                   1247 ;	lcd.c:302: lcdputstr("Clock status:");
      002456 90 34 BD         [24] 1248 	mov	dptr,#___str_3
      002459 75 F0 80         [24] 1249 	mov	b,#0x80
      00245C 12 21 7E         [24] 1250 	lcall	_lcdputstr
                                   1251 ;	lcd.c:303: lcdgotoxy(2, 1);
      00245F 75 30 01         [24] 1252 	mov	_lcdgotoxy_PARM_2,#0x01
      002462 75 82 02         [24] 1253 	mov	dpl,#0x02
      002465 12 21 21         [24] 1254 	lcall	_lcdgotoxy
                                   1255 ;	lcd.c:304: lcdputstr("Running");
      002468 90 34 CB         [24] 1256 	mov	dptr,#___str_4
      00246B 75 F0 80         [24] 1257 	mov	b,#0x80
      00246E 12 21 7E         [24] 1258 	lcall	_lcdputstr
                                   1259 ;	lcd.c:305: lcdgotoxy(3, 1);
      002471 75 30 01         [24] 1260 	mov	_lcdgotoxy_PARM_2,#0x01
      002474 75 82 03         [24] 1261 	mov	dpl,#0x03
      002477 12 21 21         [24] 1262 	lcall	_lcdgotoxy
                                   1263 ;	lcd.c:306: lcdputstr("Stopped");
      00247A 90 34 D3         [24] 1264 	mov	dptr,#___str_5
      00247D 75 F0 80         [24] 1265 	mov	b,#0x80
      002480 12 21 7E         [24] 1266 	lcall	_lcdputstr
                                   1267 ;	lcd.c:307: lcdgotoxy(4, 1);
      002483 75 30 01         [24] 1268 	mov	_lcdgotoxy_PARM_2,#0x01
      002486 75 82 04         [24] 1269 	mov	dpl,#0x04
      002489 12 21 21         [24] 1270 	lcall	_lcdgotoxy
                                   1271 ;	lcd.c:308: lcdputstr("Reset");
      00248C 90 34 DB         [24] 1272 	mov	dptr,#___str_6
      00248F 75 F0 80         [24] 1273 	mov	b,#0x80
                                   1274 ;	lcd.c:309: }
      002492 02 21 7E         [24] 1275 	ljmp	_lcdputstr
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'arrow_set'
                                   1278 ;------------------------------------------------------------
                                   1279 ;b                         Allocated with name '_arrow_set_PARM_2'
                                   1280 ;c                         Allocated with name '_arrow_set_PARM_3'
                                   1281 ;a                         Allocated to registers r7 
                                   1282 ;------------------------------------------------------------
                                   1283 ;	lcd.c:317: void arrow_set(char a, char b, char c) {
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function arrow_set
                                   1286 ;	-----------------------------------------
      002495                       1287 _arrow_set:
      002495 AF 82            [24] 1288 	mov	r7,dpl
                                   1289 ;	lcd.c:318: lcdgotoxy(2, 8);
      002497 75 30 08         [24] 1290 	mov	_lcdgotoxy_PARM_2,#0x08
      00249A 75 82 02         [24] 1291 	mov	dpl,#0x02
      00249D C0 07            [24] 1292 	push	ar7
      00249F 12 21 21         [24] 1293 	lcall	_lcdgotoxy
      0024A2 D0 07            [24] 1294 	pop	ar7
                                   1295 ;	lcd.c:319: lcdputch(a);  // Display arrow indicator for "Running"
      0024A4 8F 82            [24] 1296 	mov	dpl,r7
      0024A6 12 21 6D         [24] 1297 	lcall	_lcdputch
                                   1298 ;	lcd.c:320: lcdgotoxy(3, 8);
      0024A9 75 30 08         [24] 1299 	mov	_lcdgotoxy_PARM_2,#0x08
      0024AC 75 82 03         [24] 1300 	mov	dpl,#0x03
      0024AF 12 21 21         [24] 1301 	lcall	_lcdgotoxy
                                   1302 ;	lcd.c:321: lcdputch(b);  // Display arrow indicator for "Stopped"
      0024B2 85 32 82         [24] 1303 	mov	dpl,_arrow_set_PARM_2
      0024B5 12 21 6D         [24] 1304 	lcall	_lcdputch
                                   1305 ;	lcd.c:322: lcdgotoxy(4, 6);
      0024B8 75 30 06         [24] 1306 	mov	_lcdgotoxy_PARM_2,#0x06
      0024BB 75 82 04         [24] 1307 	mov	dpl,#0x04
      0024BE 12 21 21         [24] 1308 	lcall	_lcdgotoxy
                                   1309 ;	lcd.c:323: lcdputch(c);  // Display arrow indicator for "Reset"
      0024C1 85 33 82         [24] 1310 	mov	dpl,_arrow_set_PARM_3
                                   1311 ;	lcd.c:324: }
      0024C4 02 21 6D         [24] 1312 	ljmp	_lcdputch
                                   1313 ;------------------------------------------------------------
                                   1314 ;Allocation info for local variables in function 'set_ddram_address'
                                   1315 ;------------------------------------------------------------
                                   1316 ;ddram_address             Allocated to registers r7 
                                   1317 ;------------------------------------------------------------
                                   1318 ;	lcd.c:334: void set_ddram_address(uint8_t ddram_address) {
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function set_ddram_address
                                   1321 ;	-----------------------------------------
      0024C7                       1322 _set_ddram_address:
      0024C7 AF 82            [24] 1323 	mov	r7,dpl
                                   1324 ;	lcd.c:335: RS = PULSE_LOW;            // Set RS (Register Select) to LOW for command mode
                                   1325 ;	assignBit
      0024C9 C2 96            [12] 1326 	clr	_P1_6
                                   1327 ;	lcd.c:336: R_W = PULSE_LOW;           // Set R_W (Read/Write) to LOW for write operation
                                   1328 ;	assignBit
      0024CB C2 97            [12] 1329 	clr	_P1_7
                                   1330 ;	lcd.c:337: *ptr = ddram_address | 0b10000000; // Set the DDRAM address with the required command
      0024CD 85 22 82         [24] 1331 	mov	dpl,_ptr
      0024D0 85 23 83         [24] 1332 	mov	dph,(_ptr + 1)
      0024D3 43 07 80         [24] 1333 	orl	ar7,#0x80
      0024D6 EF               [12] 1334 	mov	a,r7
      0024D7 F0               [24] 1335 	movx	@dptr,a
                                   1336 ;	lcd.c:338: lcdbusywait();             // Wait for the LCD to process the command
                                   1337 ;	lcd.c:339: }
      0024D8 02 20 FE         [24] 1338 	ljmp	_lcdbusywait
                                   1339 ;------------------------------------------------------------
                                   1340 ;Allocation info for local variables in function 'read_xxram_address'
                                   1341 ;------------------------------------------------------------
                                   1342 ;data                      Allocated to registers r7 
                                   1343 ;------------------------------------------------------------
                                   1344 ;	lcd.c:347: uint8_t read_xxram_address() {
                                   1345 ;	-----------------------------------------
                                   1346 ;	 function read_xxram_address
                                   1347 ;	-----------------------------------------
      0024DB                       1348 _read_xxram_address:
                                   1349 ;	lcd.c:349: RS = PULSE_HIGH;         // Set RS (Register Select) to HIGH for data mode
                                   1350 ;	assignBit
      0024DB D2 96            [12] 1351 	setb	_P1_6
                                   1352 ;	lcd.c:350: R_W = PULSE_HIGH;        // Set R_W (Read/Write) to HIGH for read operation
                                   1353 ;	assignBit
      0024DD D2 97            [12] 1354 	setb	_P1_7
                                   1355 ;	lcd.c:351: data = *ptr;             // Read the data from the specified XRAM address
      0024DF 85 22 82         [24] 1356 	mov	dpl,_ptr
      0024E2 85 23 83         [24] 1357 	mov	dph,(_ptr + 1)
      0024E5 E0               [24] 1358 	movx	a,@dptr
      0024E6 FF               [12] 1359 	mov	r7,a
                                   1360 ;	lcd.c:352: lcdbusywait();           // Wait for the LCD to process the read operation
      0024E7 C0 07            [24] 1361 	push	ar7
      0024E9 12 20 FE         [24] 1362 	lcall	_lcdbusywait
      0024EC D0 07            [24] 1363 	pop	ar7
                                   1364 ;	lcd.c:353: return data;             // Return the read data
      0024EE 8F 82            [24] 1365 	mov	dpl,r7
                                   1366 ;	lcd.c:354: }
      0024F0 22               [24] 1367 	ret
                                   1368 ;------------------------------------------------------------
                                   1369 ;Allocation info for local variables in function 'ddram_hex_dump'
                                   1370 ;------------------------------------------------------------
                                   1371 ;i                         Allocated to registers r7 
                                   1372 ;j                         Allocated to registers r5 r6 
                                   1373 ;------------------------------------------------------------
                                   1374 ;	lcd.c:361: void ddram_hex_dump() {
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function ddram_hex_dump
                                   1377 ;	-----------------------------------------
      0024F1                       1378 _ddram_hex_dump:
                                   1379 ;	lcd.c:362: for(uint8_t i = 0; i < 4; i++) {
      0024F1 7F 00            [12] 1380 	mov	r7,#0x00
      0024F3                       1381 00113$:
      0024F3 BF 04 00         [24] 1382 	cjne	r7,#0x04,00139$
      0024F6                       1383 00139$:
      0024F6 40 01            [24] 1384 	jc	00140$
      0024F8 22               [24] 1385 	ret
      0024F9                       1386 00140$:
                                   1387 ;	lcd.c:363: switch (i) {
      0024F9 EF               [12] 1388 	mov	a,r7
      0024FA 24 FC            [12] 1389 	add	a,#0xff - 0x03
      0024FC 50 03            [24] 1390 	jnc	00141$
      0024FE 02 25 AB         [24] 1391 	ljmp	00120$
      002501                       1392 00141$:
      002501 EF               [12] 1393 	mov	a,r7
      002502 2F               [12] 1394 	add	a,r7
                                   1395 ;	lcd.c:364: case 0:
      002503 90 25 07         [24] 1396 	mov	dptr,#00142$
      002506 73               [24] 1397 	jmp	@a+dptr
      002507                       1398 00142$:
      002507 80 06            [24] 1399 	sjmp	00101$
      002509 80 2A            [24] 1400 	sjmp	00102$
      00250B 80 50            [24] 1401 	sjmp	00103$
      00250D 80 76            [24] 1402 	sjmp	00104$
      00250F                       1403 00101$:
                                   1404 ;	lcd.c:365: set_ddram_address(0x00);
      00250F 75 82 00         [24] 1405 	mov	dpl,#0x00
      002512 C0 07            [24] 1406 	push	ar7
      002514 12 24 C7         [24] 1407 	lcall	_set_ddram_address
                                   1408 ;	lcd.c:366: printf("0x%02x: ", 0x00);
      002517 E4               [12] 1409 	clr	a
      002518 C0 E0            [24] 1410 	push	acc
      00251A C0 E0            [24] 1411 	push	acc
      00251C 74 E1            [12] 1412 	mov	a,#___str_7
      00251E C0 E0            [24] 1413 	push	acc
      002520 74 34            [12] 1414 	mov	a,#(___str_7 >> 8)
      002522 C0 E0            [24] 1415 	push	acc
      002524 74 80            [12] 1416 	mov	a,#0x80
      002526 C0 E0            [24] 1417 	push	acc
      002528 12 2C B0         [24] 1418 	lcall	_printf
      00252B E5 81            [12] 1419 	mov	a,sp
      00252D 24 FB            [12] 1420 	add	a,#0xfb
      00252F F5 81            [12] 1421 	mov	sp,a
      002531 D0 07            [24] 1422 	pop	ar7
                                   1423 ;	lcd.c:367: break;
                                   1424 ;	lcd.c:368: case 1:
      002533 80 76            [24] 1425 	sjmp	00120$
      002535                       1426 00102$:
                                   1427 ;	lcd.c:369: set_ddram_address(0x40);
      002535 75 82 40         [24] 1428 	mov	dpl,#0x40
      002538 C0 07            [24] 1429 	push	ar7
      00253A 12 24 C7         [24] 1430 	lcall	_set_ddram_address
                                   1431 ;	lcd.c:370: printf("0x%02x: ", 0x40);
      00253D 74 40            [12] 1432 	mov	a,#0x40
      00253F C0 E0            [24] 1433 	push	acc
      002541 E4               [12] 1434 	clr	a
      002542 C0 E0            [24] 1435 	push	acc
      002544 74 E1            [12] 1436 	mov	a,#___str_7
      002546 C0 E0            [24] 1437 	push	acc
      002548 74 34            [12] 1438 	mov	a,#(___str_7 >> 8)
      00254A C0 E0            [24] 1439 	push	acc
      00254C 74 80            [12] 1440 	mov	a,#0x80
      00254E C0 E0            [24] 1441 	push	acc
      002550 12 2C B0         [24] 1442 	lcall	_printf
      002553 E5 81            [12] 1443 	mov	a,sp
      002555 24 FB            [12] 1444 	add	a,#0xfb
      002557 F5 81            [12] 1445 	mov	sp,a
      002559 D0 07            [24] 1446 	pop	ar7
                                   1447 ;	lcd.c:371: break;
                                   1448 ;	lcd.c:372: case 2:
      00255B 80 4E            [24] 1449 	sjmp	00120$
      00255D                       1450 00103$:
                                   1451 ;	lcd.c:373: set_ddram_address(0x10);
      00255D 75 82 10         [24] 1452 	mov	dpl,#0x10
      002560 C0 07            [24] 1453 	push	ar7
      002562 12 24 C7         [24] 1454 	lcall	_set_ddram_address
                                   1455 ;	lcd.c:374: printf("0x%02x: ", 0x10);
      002565 74 10            [12] 1456 	mov	a,#0x10
      002567 C0 E0            [24] 1457 	push	acc
      002569 E4               [12] 1458 	clr	a
      00256A C0 E0            [24] 1459 	push	acc
      00256C 74 E1            [12] 1460 	mov	a,#___str_7
      00256E C0 E0            [24] 1461 	push	acc
      002570 74 34            [12] 1462 	mov	a,#(___str_7 >> 8)
      002572 C0 E0            [24] 1463 	push	acc
      002574 74 80            [12] 1464 	mov	a,#0x80
      002576 C0 E0            [24] 1465 	push	acc
      002578 12 2C B0         [24] 1466 	lcall	_printf
      00257B E5 81            [12] 1467 	mov	a,sp
      00257D 24 FB            [12] 1468 	add	a,#0xfb
      00257F F5 81            [12] 1469 	mov	sp,a
      002581 D0 07            [24] 1470 	pop	ar7
                                   1471 ;	lcd.c:375: break;
                                   1472 ;	lcd.c:376: case 3:
      002583 80 26            [24] 1473 	sjmp	00120$
      002585                       1474 00104$:
                                   1475 ;	lcd.c:377: set_ddram_address(0x50);
      002585 75 82 50         [24] 1476 	mov	dpl,#0x50
      002588 C0 07            [24] 1477 	push	ar7
      00258A 12 24 C7         [24] 1478 	lcall	_set_ddram_address
                                   1479 ;	lcd.c:378: printf("0x%02x: ", 0x50);
      00258D 74 50            [12] 1480 	mov	a,#0x50
      00258F C0 E0            [24] 1481 	push	acc
      002591 E4               [12] 1482 	clr	a
      002592 C0 E0            [24] 1483 	push	acc
      002594 74 E1            [12] 1484 	mov	a,#___str_7
      002596 C0 E0            [24] 1485 	push	acc
      002598 74 34            [12] 1486 	mov	a,#(___str_7 >> 8)
      00259A C0 E0            [24] 1487 	push	acc
      00259C 74 80            [12] 1488 	mov	a,#0x80
      00259E C0 E0            [24] 1489 	push	acc
      0025A0 12 2C B0         [24] 1490 	lcall	_printf
      0025A3 E5 81            [12] 1491 	mov	a,sp
      0025A5 24 FB            [12] 1492 	add	a,#0xfb
      0025A7 F5 81            [12] 1493 	mov	sp,a
      0025A9 D0 07            [24] 1494 	pop	ar7
                                   1495 ;	lcd.c:384: for(int j = 0; j < 16; j++) {
      0025AB                       1496 00120$:
      0025AB 7D 00            [12] 1497 	mov	r5,#0x00
      0025AD 7E 00            [12] 1498 	mov	r6,#0x00
      0025AF                       1499 00110$:
      0025AF C3               [12] 1500 	clr	c
      0025B0 ED               [12] 1501 	mov	a,r5
      0025B1 94 10            [12] 1502 	subb	a,#0x10
      0025B3 EE               [12] 1503 	mov	a,r6
      0025B4 64 80            [12] 1504 	xrl	a,#0x80
      0025B6 94 80            [12] 1505 	subb	a,#0x80
      0025B8 50 33            [24] 1506 	jnc	00107$
                                   1507 ;	lcd.c:385: printf(" %02x", read_xxram_address());
      0025BA C0 07            [24] 1508 	push	ar7
      0025BC C0 06            [24] 1509 	push	ar6
      0025BE C0 05            [24] 1510 	push	ar5
      0025C0 12 24 DB         [24] 1511 	lcall	_read_xxram_address
      0025C3 AC 82            [24] 1512 	mov	r4,dpl
      0025C5 7B 00            [12] 1513 	mov	r3,#0x00
      0025C7 C0 04            [24] 1514 	push	ar4
      0025C9 C0 03            [24] 1515 	push	ar3
      0025CB 74 EA            [12] 1516 	mov	a,#___str_8
      0025CD C0 E0            [24] 1517 	push	acc
      0025CF 74 34            [12] 1518 	mov	a,#(___str_8 >> 8)
      0025D1 C0 E0            [24] 1519 	push	acc
      0025D3 74 80            [12] 1520 	mov	a,#0x80
      0025D5 C0 E0            [24] 1521 	push	acc
      0025D7 12 2C B0         [24] 1522 	lcall	_printf
      0025DA E5 81            [12] 1523 	mov	a,sp
      0025DC 24 FB            [12] 1524 	add	a,#0xfb
      0025DE F5 81            [12] 1525 	mov	sp,a
      0025E0 D0 05            [24] 1526 	pop	ar5
      0025E2 D0 06            [24] 1527 	pop	ar6
      0025E4 D0 07            [24] 1528 	pop	ar7
                                   1529 ;	lcd.c:384: for(int j = 0; j < 16; j++) {
      0025E6 0D               [12] 1530 	inc	r5
      0025E7 BD 00 C5         [24] 1531 	cjne	r5,#0x00,00110$
      0025EA 0E               [12] 1532 	inc	r6
      0025EB 80 C2            [24] 1533 	sjmp	00110$
      0025ED                       1534 00107$:
                                   1535 ;	lcd.c:388: printf_tiny("\n\r");
      0025ED C0 07            [24] 1536 	push	ar7
      0025EF 74 F0            [12] 1537 	mov	a,#___str_9
      0025F1 C0 E0            [24] 1538 	push	acc
      0025F3 74 34            [12] 1539 	mov	a,#(___str_9 >> 8)
      0025F5 C0 E0            [24] 1540 	push	acc
      0025F7 12 2B 32         [24] 1541 	lcall	_printf_tiny
      0025FA 15 81            [12] 1542 	dec	sp
      0025FC 15 81            [12] 1543 	dec	sp
      0025FE D0 07            [24] 1544 	pop	ar7
                                   1545 ;	lcd.c:362: for(uint8_t i = 0; i < 4; i++) {
      002600 0F               [12] 1546 	inc	r7
                                   1547 ;	lcd.c:390: }
      002601 02 24 F3         [24] 1548 	ljmp	00113$
                                   1549 ;------------------------------------------------------------
                                   1550 ;Allocation info for local variables in function 'cgram_hex_dump'
                                   1551 ;------------------------------------------------------------
                                   1552 ;i                         Allocated to registers r7 
                                   1553 ;j                         Allocated to registers r5 r6 
                                   1554 ;cgram_address             Allocated to registers 
                                   1555 ;------------------------------------------------------------
                                   1556 ;	lcd.c:397: void cgram_hex_dump() {
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function cgram_hex_dump
                                   1559 ;	-----------------------------------------
      002604                       1560 _cgram_hex_dump:
                                   1561 ;	lcd.c:399: for(uint8_t i = 0; i < 8; i++) {
      002604 7F 00            [12] 1562 	mov	r7,#0x00
      002606                       1563 00107$:
      002606 BF 08 00         [24] 1564 	cjne	r7,#0x08,00129$
      002609                       1565 00129$:
      002609 40 01            [24] 1566 	jc	00130$
      00260B 22               [24] 1567 	ret
      00260C                       1568 00130$:
                                   1569 ;	lcd.c:400: printf("0x%02x: ", i << 3);
      00260C 8F 05            [24] 1570 	mov	ar5,r7
      00260E E4               [12] 1571 	clr	a
      00260F 03               [12] 1572 	rr	a
      002610 54 F8            [12] 1573 	anl	a,#0xf8
      002612 CD               [12] 1574 	xch	a,r5
      002613 C4               [12] 1575 	swap	a
      002614 03               [12] 1576 	rr	a
      002615 CD               [12] 1577 	xch	a,r5
      002616 6D               [12] 1578 	xrl	a,r5
      002617 CD               [12] 1579 	xch	a,r5
      002618 54 F8            [12] 1580 	anl	a,#0xf8
      00261A CD               [12] 1581 	xch	a,r5
      00261B 6D               [12] 1582 	xrl	a,r5
      00261C FE               [12] 1583 	mov	r6,a
      00261D C0 07            [24] 1584 	push	ar7
      00261F C0 05            [24] 1585 	push	ar5
      002621 C0 06            [24] 1586 	push	ar6
      002623 74 E1            [12] 1587 	mov	a,#___str_7
      002625 C0 E0            [24] 1588 	push	acc
      002627 74 34            [12] 1589 	mov	a,#(___str_7 >> 8)
      002629 C0 E0            [24] 1590 	push	acc
      00262B 74 80            [12] 1591 	mov	a,#0x80
      00262D C0 E0            [24] 1592 	push	acc
      00262F 12 2C B0         [24] 1593 	lcall	_printf
      002632 E5 81            [12] 1594 	mov	a,sp
      002634 24 FB            [12] 1595 	add	a,#0xfb
      002636 F5 81            [12] 1596 	mov	sp,a
      002638 D0 07            [24] 1597 	pop	ar7
                                   1598 ;	lcd.c:401: for(int j = 0; j < 8; j++) {
      00263A 7D 00            [12] 1599 	mov	r5,#0x00
      00263C 7E 00            [12] 1600 	mov	r6,#0x00
      00263E                       1601 00104$:
      00263E C3               [12] 1602 	clr	c
      00263F ED               [12] 1603 	mov	a,r5
      002640 94 08            [12] 1604 	subb	a,#0x08
      002642 EE               [12] 1605 	mov	a,r6
      002643 64 80            [12] 1606 	xrl	a,#0x80
      002645 94 80            [12] 1607 	subb	a,#0x80
      002647 50 47            [24] 1608 	jnc	00101$
                                   1609 ;	lcd.c:403: uint8_t cgram_address = 0b01000000 | (i << 3) | j;
      002649 8F 04            [24] 1610 	mov	ar4,r7
      00264B EC               [12] 1611 	mov	a,r4
      00264C C4               [12] 1612 	swap	a
      00264D 03               [12] 1613 	rr	a
      00264E 54 F8            [12] 1614 	anl	a,#0xf8
      002650 FC               [12] 1615 	mov	r4,a
      002651 43 04 40         [24] 1616 	orl	ar4,#0x40
      002654 8D 03            [24] 1617 	mov	ar3,r5
      002656 EB               [12] 1618 	mov	a,r3
      002657 4C               [12] 1619 	orl	a,r4
      002658 F5 82            [12] 1620 	mov	dpl,a
                                   1621 ;	lcd.c:404: set_cgram_address(cgram_address); // Set the CGRAM address to the start
      00265A C0 07            [24] 1622 	push	ar7
      00265C C0 06            [24] 1623 	push	ar6
      00265E C0 05            [24] 1624 	push	ar5
      002660 12 23 11         [24] 1625 	lcall	_set_cgram_address
                                   1626 ;	lcd.c:405: printf(" %02x", read_xxram_address());
      002663 12 24 DB         [24] 1627 	lcall	_read_xxram_address
      002666 AC 82            [24] 1628 	mov	r4,dpl
      002668 7B 00            [12] 1629 	mov	r3,#0x00
      00266A C0 04            [24] 1630 	push	ar4
      00266C C0 03            [24] 1631 	push	ar3
      00266E 74 EA            [12] 1632 	mov	a,#___str_8
      002670 C0 E0            [24] 1633 	push	acc
      002672 74 34            [12] 1634 	mov	a,#(___str_8 >> 8)
      002674 C0 E0            [24] 1635 	push	acc
      002676 74 80            [12] 1636 	mov	a,#0x80
      002678 C0 E0            [24] 1637 	push	acc
      00267A 12 2C B0         [24] 1638 	lcall	_printf
      00267D E5 81            [12] 1639 	mov	a,sp
      00267F 24 FB            [12] 1640 	add	a,#0xfb
      002681 F5 81            [12] 1641 	mov	sp,a
      002683 D0 05            [24] 1642 	pop	ar5
      002685 D0 06            [24] 1643 	pop	ar6
      002687 D0 07            [24] 1644 	pop	ar7
                                   1645 ;	lcd.c:401: for(int j = 0; j < 8; j++) {
      002689 0D               [12] 1646 	inc	r5
      00268A BD 00 B1         [24] 1647 	cjne	r5,#0x00,00104$
      00268D 0E               [12] 1648 	inc	r6
      00268E 80 AE            [24] 1649 	sjmp	00104$
      002690                       1650 00101$:
                                   1651 ;	lcd.c:407: printf_tiny("\n\r");
      002690 C0 07            [24] 1652 	push	ar7
      002692 74 F0            [12] 1653 	mov	a,#___str_9
      002694 C0 E0            [24] 1654 	push	acc
      002696 74 34            [12] 1655 	mov	a,#(___str_9 >> 8)
      002698 C0 E0            [24] 1656 	push	acc
      00269A 12 2B 32         [24] 1657 	lcall	_printf_tiny
      00269D 15 81            [12] 1658 	dec	sp
      00269F 15 81            [12] 1659 	dec	sp
      0026A1 D0 07            [24] 1660 	pop	ar7
                                   1661 ;	lcd.c:399: for(uint8_t i = 0; i < 8; i++) {
      0026A3 0F               [12] 1662 	inc	r7
                                   1663 ;	lcd.c:409: }
      0026A4 02 26 06         [24] 1664 	ljmp	00107$
                                   1665 ;------------------------------------------------------------
                                   1666 ;Allocation info for local variables in function 'get_hex_value'
                                   1667 ;------------------------------------------------------------
                                   1668 ;value                     Allocated to registers r7 
                                   1669 ;i                         Allocated to registers r5 r6 
                                   1670 ;char_received             Allocated to registers r3 
                                   1671 ;------------------------------------------------------------
                                   1672 ;	lcd.c:415: uint8_t get_hex_value(){
                                   1673 ;	-----------------------------------------
                                   1674 ;	 function get_hex_value
                                   1675 ;	-----------------------------------------
      0026A7                       1676 _get_hex_value:
                                   1677 ;	lcd.c:416: uint8_t value = 0;
      0026A7 7F 00            [12] 1678 	mov	r7,#0x00
                                   1679 ;	lcd.c:417: for(int i = 0; i < 2; i++){
      0026A9 7D 00            [12] 1680 	mov	r5,#0x00
      0026AB 7E 00            [12] 1681 	mov	r6,#0x00
      0026AD                       1682 00125$:
      0026AD C3               [12] 1683 	clr	c
      0026AE ED               [12] 1684 	mov	a,r5
      0026AF 94 02            [12] 1685 	subb	a,#0x02
      0026B1 EE               [12] 1686 	mov	a,r6
      0026B2 64 80            [12] 1687 	xrl	a,#0x80
      0026B4 94 80            [12] 1688 	subb	a,#0x80
      0026B6 40 03            [24] 1689 	jc	00183$
      0026B8 02 27 70         [24] 1690 	ljmp	00123$
      0026BB                       1691 00183$:
                                   1692 ;	lcd.c:418: if(i == 0) printf_tiny("0x");
      0026BB ED               [12] 1693 	mov	a,r5
      0026BC 4E               [12] 1694 	orl	a,r6
      0026BD 70 1B            [24] 1695 	jnz	00102$
      0026BF C0 07            [24] 1696 	push	ar7
      0026C1 C0 06            [24] 1697 	push	ar6
      0026C3 C0 05            [24] 1698 	push	ar5
      0026C5 74 F3            [12] 1699 	mov	a,#___str_10
      0026C7 C0 E0            [24] 1700 	push	acc
      0026C9 74 34            [12] 1701 	mov	a,#(___str_10 >> 8)
      0026CB C0 E0            [24] 1702 	push	acc
      0026CD 12 2B 32         [24] 1703 	lcall	_printf_tiny
      0026D0 15 81            [12] 1704 	dec	sp
      0026D2 15 81            [12] 1705 	dec	sp
      0026D4 D0 05            [24] 1706 	pop	ar5
      0026D6 D0 06            [24] 1707 	pop	ar6
      0026D8 D0 07            [24] 1708 	pop	ar7
      0026DA                       1709 00102$:
                                   1710 ;	lcd.c:419: uint8_t char_received = echo(); // Read a character from UART
      0026DA C0 07            [24] 1711 	push	ar7
      0026DC C0 06            [24] 1712 	push	ar6
      0026DE C0 05            [24] 1713 	push	ar5
      0026E0 12 2B 19         [24] 1714 	lcall	_echo
      0026E3 AC 82            [24] 1715 	mov	r4,dpl
      0026E5 D0 05            [24] 1716 	pop	ar5
      0026E7 D0 06            [24] 1717 	pop	ar6
      0026E9 D0 07            [24] 1718 	pop	ar7
                                   1719 ;	lcd.c:420: if((char_received >= '0') && (char_received <= '9')){
      0026EB BC 30 00         [24] 1720 	cjne	r4,#0x30,00185$
      0026EE                       1721 00185$:
      0026EE 40 0D            [24] 1722 	jc	00116$
      0026F0 EC               [12] 1723 	mov	a,r4
      0026F1 24 C6            [12] 1724 	add	a,#0xff - 0x39
      0026F3 40 08            [24] 1725 	jc	00116$
                                   1726 ;	lcd.c:421: char_received = char_received - '0'; // Convert ASCII character to its
      0026F5 8C 03            [24] 1727 	mov	ar3,r4
      0026F7 EB               [12] 1728 	mov	a,r3
      0026F8 24 D0            [12] 1729 	add	a,#0xd0
      0026FA FB               [12] 1730 	mov	r3,a
      0026FB 80 59            [24] 1731 	sjmp	00117$
      0026FD                       1732 00116$:
                                   1733 ;	lcd.c:423: }else if((char_received >= 'A') && (char_received <= 'F')){
      0026FD BC 41 00         [24] 1734 	cjne	r4,#0x41,00188$
      002700                       1735 00188$:
      002700 40 0D            [24] 1736 	jc	00112$
      002702 EC               [12] 1737 	mov	a,r4
      002703 24 B9            [12] 1738 	add	a,#0xff - 0x46
      002705 40 08            [24] 1739 	jc	00112$
                                   1740 ;	lcd.c:424: char_received = char_received - 'A' + 10; // Convert ASCII character to its
      002707 8C 02            [24] 1741 	mov	ar2,r4
      002709 74 C9            [12] 1742 	mov	a,#0xc9
      00270B 2A               [12] 1743 	add	a,r2
      00270C FB               [12] 1744 	mov	r3,a
      00270D 80 47            [24] 1745 	sjmp	00117$
      00270F                       1746 00112$:
                                   1747 ;	lcd.c:426: }else if((char_received >= 'a') && (char_received <= 'f')){
      00270F BC 61 00         [24] 1748 	cjne	r4,#0x61,00191$
      002712                       1749 00191$:
      002712 40 0D            [24] 1750 	jc	00108$
      002714 EC               [12] 1751 	mov	a,r4
      002715 24 99            [12] 1752 	add	a,#0xff - 0x66
      002717 40 08            [24] 1753 	jc	00108$
                                   1754 ;	lcd.c:427: char_received = char_received - 'a' + 10; // Convert ASCII character to its
      002719 8C 02            [24] 1755 	mov	ar2,r4
      00271B 74 A9            [12] 1756 	mov	a,#0xa9
      00271D 2A               [12] 1757 	add	a,r2
      00271E FB               [12] 1758 	mov	r3,a
      00271F 80 35            [24] 1759 	sjmp	00117$
      002721                       1760 00108$:
                                   1761 ;	lcd.c:429: }else if((char_received == '\n') || (char_received == '\r')){
      002721 BC 0A 02         [24] 1762 	cjne	r4,#0x0a,00194$
      002724 80 03            [24] 1763 	sjmp	00103$
      002726                       1764 00194$:
      002726 BC 0D 16         [24] 1765 	cjne	r4,#0x0d,00104$
      002729                       1766 00103$:
                                   1767 ;	lcd.c:430: printf_tiny("\n\r");
      002729 C0 07            [24] 1768 	push	ar7
      00272B 74 F0            [12] 1769 	mov	a,#___str_9
      00272D C0 E0            [24] 1770 	push	acc
      00272F 74 34            [12] 1771 	mov	a,#(___str_9 >> 8)
      002731 C0 E0            [24] 1772 	push	acc
      002733 12 2B 32         [24] 1773 	lcall	_printf_tiny
      002736 15 81            [12] 1774 	dec	sp
      002738 15 81            [12] 1775 	dec	sp
      00273A D0 07            [24] 1776 	pop	ar7
                                   1777 ;	lcd.c:431: return value;
      00273C 8F 82            [24] 1778 	mov	dpl,r7
      00273E 22               [24] 1779 	ret
      00273F                       1780 00104$:
                                   1781 ;	lcd.c:433: printf_tiny("-->Invalid input\n\r");
      00273F 74 F6            [12] 1782 	mov	a,#___str_11
      002741 C0 E0            [24] 1783 	push	acc
      002743 74 34            [12] 1784 	mov	a,#(___str_11 >> 8)
      002745 C0 E0            [24] 1785 	push	acc
      002747 12 2B 32         [24] 1786 	lcall	_printf_tiny
      00274A 15 81            [12] 1787 	dec	sp
      00274C 15 81            [12] 1788 	dec	sp
                                   1789 ;	lcd.c:434: i = -1;
      00274E 7D FF            [12] 1790 	mov	r5,#0xff
      002750 7E FF            [12] 1791 	mov	r6,#0xff
                                   1792 ;	lcd.c:435: value = 0;
      002752 7F 00            [12] 1793 	mov	r7,#0x00
                                   1794 ;	lcd.c:436: continue;
      002754 80 12            [24] 1795 	sjmp	00122$
      002756                       1796 00117$:
                                   1797 ;	lcd.c:438: if(i == 0){
      002756 ED               [12] 1798 	mov	a,r5
      002757 4E               [12] 1799 	orl	a,r6
      002758 70 05            [24] 1800 	jnz	00120$
                                   1801 ;	lcd.c:439: value |= char_received;
      00275A EB               [12] 1802 	mov	a,r3
      00275B 42 07            [12] 1803 	orl	ar7,a
      00275D 80 09            [24] 1804 	sjmp	00122$
      00275F                       1805 00120$:
                                   1806 ;	lcd.c:441: value = (value << 4) | char_received;
      00275F 8F 04            [24] 1807 	mov	ar4,r7
      002761 EC               [12] 1808 	mov	a,r4
      002762 C4               [12] 1809 	swap	a
      002763 54 F0            [12] 1810 	anl	a,#0xf0
      002765 FC               [12] 1811 	mov	r4,a
      002766 4B               [12] 1812 	orl	a,r3
      002767 FF               [12] 1813 	mov	r7,a
      002768                       1814 00122$:
                                   1815 ;	lcd.c:417: for(int i = 0; i < 2; i++){
      002768 0D               [12] 1816 	inc	r5
      002769 BD 00 01         [24] 1817 	cjne	r5,#0x00,00198$
      00276C 0E               [12] 1818 	inc	r6
      00276D                       1819 00198$:
      00276D 02 26 AD         [24] 1820 	ljmp	00125$
      002770                       1821 00123$:
                                   1822 ;	lcd.c:444: printf_tiny("\n\r");
      002770 C0 07            [24] 1823 	push	ar7
      002772 74 F0            [12] 1824 	mov	a,#___str_9
      002774 C0 E0            [24] 1825 	push	acc
      002776 74 34            [12] 1826 	mov	a,#(___str_9 >> 8)
      002778 C0 E0            [24] 1827 	push	acc
      00277A 12 2B 32         [24] 1828 	lcall	_printf_tiny
      00277D 15 81            [12] 1829 	dec	sp
      00277F 15 81            [12] 1830 	dec	sp
      002781 D0 07            [24] 1831 	pop	ar7
                                   1832 ;	lcd.c:445: return value;
      002783 8F 82            [24] 1833 	mov	dpl,r7
                                   1834 ;	lcd.c:446: }
      002785 22               [24] 1835 	ret
                                   1836 ;------------------------------------------------------------
                                   1837 ;Allocation info for local variables in function 'process_custom_character'
                                   1838 ;------------------------------------------------------------
                                   1839 ;ccode                     Allocated to registers r6 
                                   1840 ;address                   Allocated to registers r7 
                                   1841 ;char_array                Allocated with name '_process_custom_character_char_array_65537_92'
                                   1842 ;i                         Allocated to registers r5 
                                   1843 ;cgram_address             Allocated to registers r4 
                                   1844 ;------------------------------------------------------------
                                   1845 ;	lcd.c:455: void process_custom_character() {
                                   1846 ;	-----------------------------------------
                                   1847 ;	 function process_custom_character
                                   1848 ;	-----------------------------------------
      002786                       1849 _process_custom_character:
                                   1850 ;	lcd.c:460: while (1) {
      002786                       1851 00105$:
                                   1852 ;	lcd.c:461: printf_tiny("Enter LCD display address for the character\n\r");
      002786 74 09            [12] 1853 	mov	a,#___str_12
      002788 C0 E0            [24] 1854 	push	acc
      00278A 74 35            [12] 1855 	mov	a,#(___str_12 >> 8)
      00278C C0 E0            [24] 1856 	push	acc
      00278E 12 2B 32         [24] 1857 	lcall	_printf_tiny
      002791 15 81            [12] 1858 	dec	sp
      002793 15 81            [12] 1859 	dec	sp
                                   1860 ;	lcd.c:462: address = get_hex_value();
      002795 12 26 A7         [24] 1861 	lcall	_get_hex_value
      002798 AF 82            [24] 1862 	mov	r7,dpl
                                   1863 ;	lcd.c:463: if (address < 0x60) {
      00279A BF 60 00         [24] 1864 	cjne	r7,#0x60,00144$
      00279D                       1865 00144$:
      00279D 40 11            [24] 1866 	jc	00111$
                                   1867 ;	lcd.c:466: printf_tiny("Invalid input\n\r");
      00279F 74 37            [12] 1868 	mov	a,#___str_13
      0027A1 C0 E0            [24] 1869 	push	acc
      0027A3 74 35            [12] 1870 	mov	a,#(___str_13 >> 8)
      0027A5 C0 E0            [24] 1871 	push	acc
      0027A7 12 2B 32         [24] 1872 	lcall	_printf_tiny
      0027AA 15 81            [12] 1873 	dec	sp
      0027AC 15 81            [12] 1874 	dec	sp
                                   1875 ;	lcd.c:471: while (1) {
      0027AE 80 D6            [24] 1876 	sjmp	00105$
      0027B0                       1877 00111$:
                                   1878 ;	lcd.c:472: printf_tiny("Enter the character code in range 0x00 <--> 0x07\n\r");
      0027B0 C0 07            [24] 1879 	push	ar7
      0027B2 74 47            [12] 1880 	mov	a,#___str_14
      0027B4 C0 E0            [24] 1881 	push	acc
      0027B6 74 35            [12] 1882 	mov	a,#(___str_14 >> 8)
      0027B8 C0 E0            [24] 1883 	push	acc
      0027BA 12 2B 32         [24] 1884 	lcall	_printf_tiny
      0027BD 15 81            [12] 1885 	dec	sp
      0027BF 15 81            [12] 1886 	dec	sp
                                   1887 ;	lcd.c:473: ccode = get_hex_value();
      0027C1 12 26 A7         [24] 1888 	lcall	_get_hex_value
      0027C4 AE 82            [24] 1889 	mov	r6,dpl
      0027C6 D0 07            [24] 1890 	pop	ar7
                                   1891 ;	lcd.c:474: if (ccode < 0x08) {
      0027C8 BE 08 00         [24] 1892 	cjne	r6,#0x08,00146$
      0027CB                       1893 00146$:
      0027CB 40 15            [24] 1894 	jc	00112$
                                   1895 ;	lcd.c:477: printf_tiny("Invalid input\n\r");
      0027CD C0 07            [24] 1896 	push	ar7
      0027CF 74 37            [12] 1897 	mov	a,#___str_13
      0027D1 C0 E0            [24] 1898 	push	acc
      0027D3 74 35            [12] 1899 	mov	a,#(___str_13 >> 8)
      0027D5 C0 E0            [24] 1900 	push	acc
      0027D7 12 2B 32         [24] 1901 	lcall	_printf_tiny
      0027DA 15 81            [12] 1902 	dec	sp
      0027DC 15 81            [12] 1903 	dec	sp
      0027DE D0 07            [24] 1904 	pop	ar7
      0027E0 80 CE            [24] 1905 	sjmp	00111$
      0027E2                       1906 00112$:
                                   1907 ;	lcd.c:481: uint8_t char_array[8] = {0};
      0027E2 75 34 00         [24] 1908 	mov	_process_custom_character_char_array_65537_92,#0x00
      0027E5 75 35 00         [24] 1909 	mov	(_process_custom_character_char_array_65537_92 + 0x0001),#0x00
      0027E8 75 36 00         [24] 1910 	mov	(_process_custom_character_char_array_65537_92 + 0x0002),#0x00
      0027EB 75 37 00         [24] 1911 	mov	(_process_custom_character_char_array_65537_92 + 0x0003),#0x00
      0027EE 75 38 00         [24] 1912 	mov	(_process_custom_character_char_array_65537_92 + 0x0004),#0x00
      0027F1 75 39 00         [24] 1913 	mov	(_process_custom_character_char_array_65537_92 + 0x0005),#0x00
      0027F4 75 3A 00         [24] 1914 	mov	(_process_custom_character_char_array_65537_92 + 0x0006),#0x00
      0027F7 75 3B 00         [24] 1915 	mov	(_process_custom_character_char_array_65537_92 + 0x0007),#0x00
                                   1916 ;	lcd.c:484: printf_tiny("Enter pixel pattern hex format for each row of custom character\n\r");
      0027FA C0 07            [24] 1917 	push	ar7
      0027FC C0 06            [24] 1918 	push	ar6
      0027FE 74 7A            [12] 1919 	mov	a,#___str_15
      002800 C0 E0            [24] 1920 	push	acc
      002802 74 35            [12] 1921 	mov	a,#(___str_15 >> 8)
      002804 C0 E0            [24] 1922 	push	acc
      002806 12 2B 32         [24] 1923 	lcall	_printf_tiny
      002809 15 81            [12] 1924 	dec	sp
      00280B 15 81            [12] 1925 	dec	sp
      00280D D0 06            [24] 1926 	pop	ar6
      00280F D0 07            [24] 1927 	pop	ar7
                                   1928 ;	lcd.c:487: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      002811 7D 00            [12] 1929 	mov	r5,#0x00
      002813                       1930 00115$:
      002813 BD 08 00         [24] 1931 	cjne	r5,#0x08,00148$
      002816                       1932 00148$:
      002816 40 01            [24] 1933 	jc	00149$
      002818 22               [24] 1934 	ret
      002819                       1935 00149$:
                                   1936 ;	lcd.c:488: printf_tiny("0x%x->", i);
      002819 8D 03            [24] 1937 	mov	ar3,r5
      00281B 7C 00            [12] 1938 	mov	r4,#0x00
      00281D C0 07            [24] 1939 	push	ar7
      00281F C0 06            [24] 1940 	push	ar6
      002821 C0 05            [24] 1941 	push	ar5
      002823 C0 03            [24] 1942 	push	ar3
      002825 C0 04            [24] 1943 	push	ar4
      002827 74 BC            [12] 1944 	mov	a,#___str_16
      002829 C0 E0            [24] 1945 	push	acc
      00282B 74 35            [12] 1946 	mov	a,#(___str_16 >> 8)
      00282D C0 E0            [24] 1947 	push	acc
      00282F 12 2B 32         [24] 1948 	lcall	_printf_tiny
      002832 E5 81            [12] 1949 	mov	a,sp
      002834 24 FC            [12] 1950 	add	a,#0xfc
      002836 F5 81            [12] 1951 	mov	sp,a
      002838 D0 05            [24] 1952 	pop	ar5
      00283A D0 06            [24] 1953 	pop	ar6
                                   1954 ;	lcd.c:491: uint8_t cgram_address = 0b01000000 | (ccode << 3) | i;
      00283C 8E 04            [24] 1955 	mov	ar4,r6
      00283E EC               [12] 1956 	mov	a,r4
      00283F C4               [12] 1957 	swap	a
      002840 03               [12] 1958 	rr	a
      002841 54 F8            [12] 1959 	anl	a,#0xf8
      002843 FC               [12] 1960 	mov	r4,a
      002844 74 40            [12] 1961 	mov	a,#0x40
      002846 4C               [12] 1962 	orl	a,r4
      002847 4D               [12] 1963 	orl	a,r5
      002848 FC               [12] 1964 	mov	r4,a
                                   1965 ;	lcd.c:494: char_array[i] = get_hex_value() & 0b00011111;
      002849 ED               [12] 1966 	mov	a,r5
      00284A 24 34            [12] 1967 	add	a,#_process_custom_character_char_array_65537_92
      00284C F9               [12] 1968 	mov	r1,a
      00284D C0 06            [24] 1969 	push	ar6
      00284F C0 05            [24] 1970 	push	ar5
      002851 C0 04            [24] 1971 	push	ar4
      002853 C0 01            [24] 1972 	push	ar1
      002855 12 26 A7         [24] 1973 	lcall	_get_hex_value
      002858 E5 82            [12] 1974 	mov	a,dpl
      00285A D0 01            [24] 1975 	pop	ar1
      00285C D0 04            [24] 1976 	pop	ar4
      00285E 54 1F            [12] 1977 	anl	a,#0x1f
      002860 FB               [12] 1978 	mov	r3,a
      002861 F7               [12] 1979 	mov	@r1,a
                                   1980 ;	lcd.c:497: lcdcreatechar(cgram_address, char_array[i]);
      002862 8B 31            [24] 1981 	mov	_lcdcreatechar_PARM_2,r3
      002864 8C 82            [24] 1982 	mov	dpl,r4
      002866 12 23 22         [24] 1983 	lcall	_lcdcreatechar
      002869 D0 05            [24] 1984 	pop	ar5
      00286B D0 06            [24] 1985 	pop	ar6
      00286D D0 07            [24] 1986 	pop	ar7
                                   1987 ;	lcd.c:500: lcdgotoaddr(address);
      00286F 8F 82            [24] 1988 	mov	dpl,r7
      002871 C0 07            [24] 1989 	push	ar7
      002873 C0 06            [24] 1990 	push	ar6
      002875 C0 05            [24] 1991 	push	ar5
      002877 12 21 0D         [24] 1992 	lcall	_lcdgotoaddr
      00287A D0 05            [24] 1993 	pop	ar5
      00287C D0 06            [24] 1994 	pop	ar6
                                   1995 ;	lcd.c:501: lcdputch(ccode);
      00287E 8E 82            [24] 1996 	mov	dpl,r6
      002880 C0 06            [24] 1997 	push	ar6
      002882 C0 05            [24] 1998 	push	ar5
      002884 12 21 6D         [24] 1999 	lcall	_lcdputch
      002887 D0 05            [24] 2000 	pop	ar5
      002889 D0 06            [24] 2001 	pop	ar6
      00288B D0 07            [24] 2002 	pop	ar7
                                   2003 ;	lcd.c:487: for (uint8_t i = 0; i < BYTE_LENGTH; i++) {
      00288D 0D               [12] 2004 	inc	r5
                                   2005 ;	lcd.c:503: }
      00288E 02 28 13         [24] 2006 	ljmp	00115$
                                   2007 	.area CSEG    (CODE)
                                   2008 	.area CONST   (CODE)
                                   2009 	.area CONST   (CODE)
      003446                       2010 ___str_0:
      003446 74 65 73 74 5F 66 75  2011 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      00345E 0A                    2012 	.db 0x0a
      00345F 0D                    2013 	.db 0x0d
      003460 00                    2014 	.db 0x00
                                   2015 	.area CSEG    (CODE)
                                   2016 	.area CONST   (CODE)
      003461                       2017 ___str_1:
      003461 41 42 43 44 45 46 47  2018 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      00349D 7A 4A 49 54 48 55     2019 	.ascii "zJITHU"
      0034A3 00                    2020 	.db 0x00
                                   2021 	.area CSEG    (CODE)
                                   2022 	.area CONST   (CODE)
      0034A4                       2023 ___str_2:
      0034A4 74 65 73 74 5F 66 75  2024 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      0034BA 0A                    2025 	.db 0x0a
      0034BB 0D                    2026 	.db 0x0d
      0034BC 00                    2027 	.db 0x00
                                   2028 	.area CSEG    (CODE)
                                   2029 	.area CONST   (CODE)
      0034BD                       2030 ___str_3:
      0034BD 43 6C 6F 63 6B 20 73  2031 	.ascii "Clock status:"
             74 61 74 75 73 3A
      0034CA 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                                   2034 	.area CONST   (CODE)
      0034CB                       2035 ___str_4:
      0034CB 52 75 6E 6E 69 6E 67  2036 	.ascii "Running"
      0034D2 00                    2037 	.db 0x00
                                   2038 	.area CSEG    (CODE)
                                   2039 	.area CONST   (CODE)
      0034D3                       2040 ___str_5:
      0034D3 53 74 6F 70 70 65 64  2041 	.ascii "Stopped"
      0034DA 00                    2042 	.db 0x00
                                   2043 	.area CSEG    (CODE)
                                   2044 	.area CONST   (CODE)
      0034DB                       2045 ___str_6:
      0034DB 52 65 73 65 74        2046 	.ascii "Reset"
      0034E0 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      0034E1                       2050 ___str_7:
      0034E1 30 78 25 30 32 78 3A  2051 	.ascii "0x%02x: "
             20
      0034E9 00                    2052 	.db 0x00
                                   2053 	.area CSEG    (CODE)
                                   2054 	.area CONST   (CODE)
      0034EA                       2055 ___str_8:
      0034EA 20 25 30 32 78        2056 	.ascii " %02x"
      0034EF 00                    2057 	.db 0x00
                                   2058 	.area CSEG    (CODE)
                                   2059 	.area CONST   (CODE)
      0034F0                       2060 ___str_9:
      0034F0 0A                    2061 	.db 0x0a
      0034F1 0D                    2062 	.db 0x0d
      0034F2 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      0034F3                       2066 ___str_10:
      0034F3 30 78                 2067 	.ascii "0x"
      0034F5 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      0034F6                       2071 ___str_11:
      0034F6 2D 2D 3E 49 6E 76 61  2072 	.ascii "-->Invalid input"
             6C 69 64 20 69 6E 70
             75 74
      003506 0A                    2073 	.db 0x0a
      003507 0D                    2074 	.db 0x0d
      003508 00                    2075 	.db 0x00
                                   2076 	.area CSEG    (CODE)
                                   2077 	.area CONST   (CODE)
      003509                       2078 ___str_12:
      003509 45 6E 74 65 72 20 4C  2079 	.ascii "Enter LCD display address for the character"
             43 44 20 64 69 73 70
             6C 61 79 20 61 64 64
             72 65 73 73 20 66 6F
             72 20 74 68 65 20 63
             68 61 72 61 63 74 65
             72
      003534 0A                    2080 	.db 0x0a
      003535 0D                    2081 	.db 0x0d
      003536 00                    2082 	.db 0x00
                                   2083 	.area CSEG    (CODE)
                                   2084 	.area CONST   (CODE)
      003537                       2085 ___str_13:
      003537 49 6E 76 61 6C 69 64  2086 	.ascii "Invalid input"
             20 69 6E 70 75 74
      003544 0A                    2087 	.db 0x0a
      003545 0D                    2088 	.db 0x0d
      003546 00                    2089 	.db 0x00
                                   2090 	.area CSEG    (CODE)
                                   2091 	.area CONST   (CODE)
      003547                       2092 ___str_14:
      003547 45 6E 74 65 72 20 74  2093 	.ascii "Enter the character code in range 0x00 <--> 0x07"
             68 65 20 63 68 61 72
             61 63 74 65 72 20 63
             6F 64 65 20 69 6E 20
             72 61 6E 67 65 20 30
             78 30 30 20 3C 2D 2D
             3E 20 30 78 30 37
      003577 0A                    2094 	.db 0x0a
      003578 0D                    2095 	.db 0x0d
      003579 00                    2096 	.db 0x00
                                   2097 	.area CSEG    (CODE)
                                   2098 	.area CONST   (CODE)
      00357A                       2099 ___str_15:
      00357A 45 6E 74 65 72 20 70  2100 	.ascii "Enter pixel pattern hex format for each row of custom charac"
             69 78 65 6C 20 70 61
             74 74 65 72 6E 20 68
             65 78 20 66 6F 72 6D
             61 74 20 66 6F 72 20
             65 61 63 68 20 72 6F
             77 20 6F 66 20 63 75
             73 74 6F 6D 20 63 68
             61 72 61 63
      0035B6 74 65 72              2101 	.ascii "ter"
      0035B9 0A                    2102 	.db 0x0a
      0035BA 0D                    2103 	.db 0x0d
      0035BB 00                    2104 	.db 0x00
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
      0035BC                       2107 ___str_16:
      0035BC 30 78 25 78 2D 3E     2108 	.ascii "0x%x->"
      0035C2 00                    2109 	.db 0x00
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area XINIT   (CODE)
      00371F                       2112 __xinit__db:
      00371F 00                    2113 	.db #0x00	; 0
                                   2114 	.area CABS    (ABS,CODE)
