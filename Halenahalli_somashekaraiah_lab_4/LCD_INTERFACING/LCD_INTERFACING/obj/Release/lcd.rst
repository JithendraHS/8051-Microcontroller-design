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
                                     13 	.globl _printf_tiny
                                     14 	.globl _delay
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _db
                                    212 	.globl _arrow_set_PARM_3
                                    213 	.globl _arrow_set_PARM_2
                                    214 	.globl _lcdgotoxy_PARM_2
                                    215 	.globl _clockrun_flag
                                    216 	.globl _ptr
                                    217 	.globl _lcd_command
                                    218 	.globl _lcdbusywait
                                    219 	.globl _lcdgotoaddr
                                    220 	.globl _lcdgotoxy
                                    221 	.globl _lcdputch
                                    222 	.globl _lcdputstr
                                    223 	.globl _lcdinit
                                    224 	.globl _lcdclear
                                    225 	.globl _test_functionality
                                    226 	.globl _set_cgram_address
                                    227 	.globl _create_custom_character
                                    228 	.globl _reset_clock
                                    229 	.globl _clock_run
                                    230 	.globl _menu_lcd
                                    231 	.globl _arrow_set
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000080   237 _P0	=	0x0080
                           000081   238 _SP	=	0x0081
                           000082   239 _DPL	=	0x0082
                           000083   240 _DPH	=	0x0083
                           000087   241 _PCON	=	0x0087
                           000088   242 _TCON	=	0x0088
                           000089   243 _TMOD	=	0x0089
                           00008A   244 _TL0	=	0x008a
                           00008B   245 _TL1	=	0x008b
                           00008C   246 _TH0	=	0x008c
                           00008D   247 _TH1	=	0x008d
                           000090   248 _P1	=	0x0090
                           000098   249 _SCON	=	0x0098
                           000099   250 _SBUF	=	0x0099
                           0000A0   251 _P2	=	0x00a0
                           0000A8   252 _IE	=	0x00a8
                           0000B0   253 _P3	=	0x00b0
                           0000B8   254 _IP	=	0x00b8
                           0000D0   255 _PSW	=	0x00d0
                           0000E0   256 _ACC	=	0x00e0
                           0000F0   257 _B	=	0x00f0
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           000097   265 _CKRL	=	0x0097
                           00008F   266 _CKCON0	=	0x008f
                           0000AF   267 _CKCON1	=	0x00af
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000FB   269 _CCAP1H	=	0x00fb
                           0000FC   270 _CCAP2H	=	0x00fc
                           0000FD   271 _CCAP3H	=	0x00fd
                           0000FE   272 _CCAP4H	=	0x00fe
                           0000EA   273 _CCAP0L	=	0x00ea
                           0000EB   274 _CCAP1L	=	0x00eb
                           0000EC   275 _CCAP2L	=	0x00ec
                           0000ED   276 _CCAP3L	=	0x00ed
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 _CCAPM0	=	0x00da
                           0000DB   279 _CCAPM1	=	0x00db
                           0000DC   280 _CCAPM2	=	0x00dc
                           0000DD   281 _CCAPM3	=	0x00dd
                           0000DE   282 _CCAPM4	=	0x00de
                           0000D8   283 _CCON	=	0x00d8
                           0000F9   284 _CH	=	0x00f9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 _CMOD	=	0x00d9
                           0000A8   287 _IEN0	=	0x00a8
                           0000B1   288 _IEN1	=	0x00b1
                           0000B8   289 _IPL0	=	0x00b8
                           0000B7   290 _IPH0	=	0x00b7
                           0000B2   291 _IPL1	=	0x00b2
                           0000B3   292 _IPH1	=	0x00b3
                           0000C0   293 _P4	=	0x00c0
                           0000E8   294 _P5	=	0x00e8
                           0000A6   295 _WDTRST	=	0x00a6
                           0000A7   296 _WDTPRG	=	0x00a7
                           0000A9   297 _SADDR	=	0x00a9
                           0000B9   298 _SADEN	=	0x00b9
                           0000C3   299 _SPCON	=	0x00c3
                           0000C4   300 _SPSTA	=	0x00c4
                           0000C5   301 _SPDAT	=	0x00c5
                           0000C9   302 _T2MOD	=	0x00c9
                           00009B   303 _BDRCON	=	0x009b
                           00009A   304 _BRL	=	0x009a
                           00009C   305 _KBLS	=	0x009c
                           00009D   306 _KBE	=	0x009d
                           00009E   307 _KBF	=	0x009e
                           0000D2   308 _EECON	=	0x00d2
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 _P0_0	=	0x0080
                           000081   315 _P0_1	=	0x0081
                           000082   316 _P0_2	=	0x0082
                           000083   317 _P0_3	=	0x0083
                           000084   318 _P0_4	=	0x0084
                           000085   319 _P0_5	=	0x0085
                           000086   320 _P0_6	=	0x0086
                           000087   321 _P0_7	=	0x0087
                           000088   322 _IT0	=	0x0088
                           000089   323 _IE0	=	0x0089
                           00008A   324 _IT1	=	0x008a
                           00008B   325 _IE1	=	0x008b
                           00008C   326 _TR0	=	0x008c
                           00008D   327 _TF0	=	0x008d
                           00008E   328 _TR1	=	0x008e
                           00008F   329 _TF1	=	0x008f
                           000090   330 _P1_0	=	0x0090
                           000091   331 _P1_1	=	0x0091
                           000092   332 _P1_2	=	0x0092
                           000093   333 _P1_3	=	0x0093
                           000094   334 _P1_4	=	0x0094
                           000095   335 _P1_5	=	0x0095
                           000096   336 _P1_6	=	0x0096
                           000097   337 _P1_7	=	0x0097
                           000098   338 _RI	=	0x0098
                           000099   339 _TI	=	0x0099
                           00009A   340 _RB8	=	0x009a
                           00009B   341 _TB8	=	0x009b
                           00009C   342 _REN	=	0x009c
                           00009D   343 _SM2	=	0x009d
                           00009E   344 _SM1	=	0x009e
                           00009F   345 _SM0	=	0x009f
                           0000A0   346 _P2_0	=	0x00a0
                           0000A1   347 _P2_1	=	0x00a1
                           0000A2   348 _P2_2	=	0x00a2
                           0000A3   349 _P2_3	=	0x00a3
                           0000A4   350 _P2_4	=	0x00a4
                           0000A5   351 _P2_5	=	0x00a5
                           0000A6   352 _P2_6	=	0x00a6
                           0000A7   353 _P2_7	=	0x00a7
                           0000A8   354 _EX0	=	0x00a8
                           0000A9   355 _ET0	=	0x00a9
                           0000AA   356 _EX1	=	0x00aa
                           0000AB   357 _ET1	=	0x00ab
                           0000AC   358 _ES	=	0x00ac
                           0000AF   359 _EA	=	0x00af
                           0000B0   360 _P3_0	=	0x00b0
                           0000B1   361 _P3_1	=	0x00b1
                           0000B2   362 _P3_2	=	0x00b2
                           0000B3   363 _P3_3	=	0x00b3
                           0000B4   364 _P3_4	=	0x00b4
                           0000B5   365 _P3_5	=	0x00b5
                           0000B6   366 _P3_6	=	0x00b6
                           0000B7   367 _P3_7	=	0x00b7
                           0000B0   368 _RXD	=	0x00b0
                           0000B1   369 _TXD	=	0x00b1
                           0000B2   370 _INT0	=	0x00b2
                           0000B3   371 _INT1	=	0x00b3
                           0000B4   372 _T0	=	0x00b4
                           0000B5   373 _T1	=	0x00b5
                           0000B6   374 _WR	=	0x00b6
                           0000B7   375 _RD	=	0x00b7
                           0000B8   376 _PX0	=	0x00b8
                           0000B9   377 _PT0	=	0x00b9
                           0000BA   378 _PX1	=	0x00ba
                           0000BB   379 _PT1	=	0x00bb
                           0000BC   380 _PS	=	0x00bc
                           0000D0   381 _P	=	0x00d0
                           0000D1   382 _F1	=	0x00d1
                           0000D2   383 _OV	=	0x00d2
                           0000D3   384 _RS0	=	0x00d3
                           0000D4   385 _RS1	=	0x00d4
                           0000D5   386 _F0	=	0x00d5
                           0000D6   387 _AC	=	0x00d6
                           0000D7   388 _CY	=	0x00d7
                           0000AD   389 _ET2	=	0x00ad
                           0000BD   390 _PT2	=	0x00bd
                           0000C8   391 _T2CON_0	=	0x00c8
                           0000C9   392 _T2CON_1	=	0x00c9
                           0000CA   393 _T2CON_2	=	0x00ca
                           0000CB   394 _T2CON_3	=	0x00cb
                           0000CC   395 _T2CON_4	=	0x00cc
                           0000CD   396 _T2CON_5	=	0x00cd
                           0000CE   397 _T2CON_6	=	0x00ce
                           0000CF   398 _T2CON_7	=	0x00cf
                           0000C8   399 _CP_RL2	=	0x00c8
                           0000C9   400 _C_T2	=	0x00c9
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 _EXEN2	=	0x00cb
                           0000CC   403 _TCLK	=	0x00cc
                           0000CD   404 _RCLK	=	0x00cd
                           0000CE   405 _EXF2	=	0x00ce
                           0000CF   406 _TF2	=	0x00cf
                           0000DF   407 _CF	=	0x00df
                           0000DE   408 _CR	=	0x00de
                           0000DC   409 _CCF4	=	0x00dc
                           0000DB   410 _CCF3	=	0x00db
                           0000DA   411 _CCF2	=	0x00da
                           0000D9   412 _CCF1	=	0x00d9
                           0000D8   413 _CCF0	=	0x00d8
                           0000AE   414 _EC	=	0x00ae
                           0000BE   415 _PPCL	=	0x00be
                           0000BD   416 _PT2L	=	0x00bd
                           0000BC   417 _PSL	=	0x00bc
                           0000BB   418 _PT1L	=	0x00bb
                           0000BA   419 _PX1L	=	0x00ba
                           0000B9   420 _PT0L	=	0x00b9
                           0000B8   421 _PX0L	=	0x00b8
                           0000C0   422 _P4_0	=	0x00c0
                           0000C1   423 _P4_1	=	0x00c1
                           0000C2   424 _P4_2	=	0x00c2
                           0000C3   425 _P4_3	=	0x00c3
                           0000C4   426 _P4_4	=	0x00c4
                           0000C5   427 _P4_5	=	0x00c5
                           0000C6   428 _P4_6	=	0x00c6
                           0000C7   429 _P4_7	=	0x00c7
                           0000E8   430 _P5_0	=	0x00e8
                           0000E9   431 _P5_1	=	0x00e9
                           0000EA   432 _P5_2	=	0x00ea
                           0000EB   433 _P5_3	=	0x00eb
                           0000EC   434 _P5_4	=	0x00ec
                           0000ED   435 _P5_5	=	0x00ed
                           0000EE   436 _P5_6	=	0x00ee
                           0000EF   437 _P5_7	=	0x00ef
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable register banks
                                    440 ;--------------------------------------------------------
                                    441 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        442 	.ds 8
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
      000022                        447 _ptr::
      000022                        448 	.ds 2
      000024                        449 _min_high:
      000024                        450 	.ds 1
      000025                        451 _min_low:
      000025                        452 	.ds 1
      000026                        453 _sec_high:
      000026                        454 	.ds 1
      000027                        455 _sec_low:
      000027                        456 	.ds 1
      000028                        457 _mili_sec:
      000028                        458 	.ds 1
      000029                        459 _clockrun_flag::
      000029                        460 	.ds 2
      00002B                        461 _custom_char_code:
      00002B                        462 	.ds 1
      00002C                        463 _elapsed_tick:
      00002C                        464 	.ds 4
      000030                        465 _lcdgotoxy_PARM_2:
      000030                        466 	.ds 1
      000031                        467 _create_custom_character_c_65536_44:
      000031                        468 	.ds 8
      000039                        469 _arrow_set_PARM_2:
      000039                        470 	.ds 1
      00003A                        471 _arrow_set_PARM_3:
      00003A                        472 	.ds 1
                                    473 ;--------------------------------------------------------
                                    474 ; overlayable items in internal ram
                                    475 ;--------------------------------------------------------
                                    476 	.area	OSEG    (OVR,DATA)
      00000B                        477 _lcd_command_PARM_2:
      00000B                        478 	.ds 1
      00000C                        479 _lcd_command_PARM_3:
      00000C                        480 	.ds 1
                                    481 ;--------------------------------------------------------
                                    482 ; indirectly addressable internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area ISEG    (DATA)
                                    485 ;--------------------------------------------------------
                                    486 ; absolute internal ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area IABS    (ABS,DATA)
                                    489 	.area IABS    (ABS,DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; bit data
                                    492 ;--------------------------------------------------------
                                    493 	.area BSEG    (BIT)
      000000                        494 _lcdgotoxy_sloc0_1_0:
      000000                        495 	.ds 1
                                    496 ;--------------------------------------------------------
                                    497 ; paged external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area PSEG    (PAG,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XSEG    (XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; absolute external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XABS    (ABS,XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; external initialized ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XISEG   (XDATA)
      00FC00                        512 _db::
      00FC00                        513 	.ds 1
                                    514 	.area HOME    (CODE)
                                    515 	.area GSINIT0 (CODE)
                                    516 	.area GSINIT1 (CODE)
                                    517 	.area GSINIT2 (CODE)
                                    518 	.area GSINIT3 (CODE)
                                    519 	.area GSINIT4 (CODE)
                                    520 	.area GSINIT5 (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area CSEG    (CODE)
                                    524 ;--------------------------------------------------------
                                    525 ; global & static initialisations
                                    526 ;--------------------------------------------------------
                                    527 	.area HOME    (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.area GSFINAL (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 ;	lcd.c:30: extern __xdata uint8_t * ptr = &db;
      00208F 75 22 00         [24]  532 	mov	_ptr,#_db
      002092 75 23 FC         [24]  533 	mov	(_ptr + 1),#(_db >> 8)
                                    534 ;	lcd.c:36: extern volatile unsigned int clockrun_flag = 0;
      002095 E4               [12]  535 	clr	a
      002096 F5 29            [12]  536 	mov	_clockrun_flag,a
      002098 F5 2A            [12]  537 	mov	(_clockrun_flag + 1),a
                                    538 ;	lcd.c:38: static uint8_t custom_char_code = 1;
      00209A 75 2B 01         [24]  539 	mov	_custom_char_code,#0x01
                                    540 ;	lcd.c:39: static uint32_t  elapsed_tick = 0;
      00209D F5 2C            [12]  541 	mov	_elapsed_tick,a
      00209F F5 2D            [12]  542 	mov	(_elapsed_tick + 1),a
      0020A1 F5 2E            [12]  543 	mov	(_elapsed_tick + 2),a
      0020A3 F5 2F            [12]  544 	mov	(_elapsed_tick + 3),a
                                    545 ;--------------------------------------------------------
                                    546 ; Home
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area HOME    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'lcd_command'
                                    556 ;------------------------------------------------------------
                                    557 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    558 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    559 ;rs                        Allocated to registers r7 
                                    560 ;------------------------------------------------------------
                                    561 ;	lcd.c:47: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function lcd_command
                                    564 ;	-----------------------------------------
      0020E8                        565 _lcd_command:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
                                    574 ;	lcd.c:48: RS = rs;              // Set the Register Select pin based on the provided parameter.
                                    575 ;	assignBit
      0020E8 E5 82            [12]  576 	mov	a,dpl
      0020EA 24 FF            [12]  577 	add	a,#0xff
      0020EC 92 96            [24]  578 	mov	_P1_6,c
                                    579 ;	lcd.c:49: R_W = r_w;            // Set the Read/Write pin based on the provided parameter.
                                    580 ;	assignBit
      0020EE E5 0B            [12]  581 	mov	a,_lcd_command_PARM_2
      0020F0 24 FF            [12]  582 	add	a,#0xff
      0020F2 92 97            [24]  583 	mov	_P1_7,c
                                    584 ;	lcd.c:50: *ptr = data;          // Write the specified data byte to the LCD data buffer.
      0020F4 85 22 82         [24]  585 	mov	dpl,_ptr
      0020F7 85 23 83         [24]  586 	mov	dph,(_ptr + 1)
      0020FA E5 0C            [12]  587 	mov	a,_lcd_command_PARM_3
      0020FC F0               [24]  588 	movx	@dptr,a
                                    589 ;	lcd.c:51: }
      0020FD 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'lcdbusywait'
                                    593 ;------------------------------------------------------------
                                    594 ;	lcd.c:56: void lcdbusywait() {
                                    595 ;	-----------------------------------------
                                    596 ;	 function lcdbusywait
                                    597 ;	-----------------------------------------
      0020FE                        598 _lcdbusywait:
                                    599 ;	lcd.c:57: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    600 ;	assignBit
      0020FE C2 96            [12]  601 	clr	_P1_6
                                    602 ;	lcd.c:58: R_W = PULSE_HIGH;            // Set Read/Write to read from the LCD.
                                    603 ;	assignBit
      002100 D2 97            [12]  604 	setb	_P1_7
                                    605 ;	lcd.c:59: while (*ptr & (0b10000000)) {
      002102                        606 00101$:
      002102 85 22 82         [24]  607 	mov	dpl,_ptr
      002105 85 23 83         [24]  608 	mov	dph,(_ptr + 1)
      002108 E0               [24]  609 	movx	a,@dptr
      002109 20 E7 F6         [24]  610 	jb	acc.7,00101$
                                    611 ;	lcd.c:62: }
      00210C 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    615 ;------------------------------------------------------------
                                    616 ;addr                      Allocated to registers r7 
                                    617 ;------------------------------------------------------------
                                    618 ;	lcd.c:68: void lcdgotoaddr(uint8_t addr) {
                                    619 ;	-----------------------------------------
                                    620 ;	 function lcdgotoaddr
                                    621 ;	-----------------------------------------
      00210D                        622 _lcdgotoaddr:
      00210D AF 82            [24]  623 	mov	r7,dpl
                                    624 ;	lcd.c:69: RS = PULSE_LOW;              // Set Register Select to indicate a command is being sent.
                                    625 ;	assignBit
      00210F C2 96            [12]  626 	clr	_P1_6
                                    627 ;	lcd.c:70: R_W = PULSE_LOW;             // Set Read/Write to write to the LCD.
                                    628 ;	assignBit
      002111 C2 97            [12]  629 	clr	_P1_7
                                    630 ;	lcd.c:71: *ptr = addr | (0x80);        // Set the cursor address with the command prefix (0x80).
      002113 85 22 82         [24]  631 	mov	dpl,_ptr
      002116 85 23 83         [24]  632 	mov	dph,(_ptr + 1)
      002119 43 07 80         [24]  633 	orl	ar7,#0x80
      00211C EF               [12]  634 	mov	a,r7
      00211D F0               [24]  635 	movx	@dptr,a
                                    636 ;	lcd.c:72: lcdbusywait();               // Wait until the LCD becomes idle.
                                    637 ;	lcd.c:73: }
      00211E 02 20 FE         [24]  638 	ljmp	_lcdbusywait
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'lcdgotoxy'
                                    641 ;------------------------------------------------------------
                                    642 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    643 ;row                       Allocated to registers r7 
                                    644 ;------------------------------------------------------------
                                    645 ;	lcd.c:80: void lcdgotoxy(uint8_t row, uint8_t column) {
                                    646 ;	-----------------------------------------
                                    647 ;	 function lcdgotoxy
                                    648 ;	-----------------------------------------
      002121                        649 _lcdgotoxy:
                                    650 ;	lcd.c:82: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      002121 AE 82            [24]  651 	mov	r6,dpl
      002123 7F 00            [12]  652 	mov	r7,#0x00
      002125 EE               [12]  653 	mov	a,r6
      002126 30 E0 23         [24]  654 	jnb	acc.0,00103$
      002129 75 0B 03         [24]  655 	mov	__modsint_PARM_2,#0x03
      00212C 75 0C 00         [24]  656 	mov	(__modsint_PARM_2 + 1),#0x00
      00212F 8E 82            [24]  657 	mov	dpl,r6
      002131 8F 83            [24]  658 	mov	dph,r7
      002133 12 28 EF         [24]  659 	lcall	__modsint
      002136 AC 82            [24]  660 	mov	r4,dpl
      002138 AD 83            [24]  661 	mov	r5,dph
      00213A EC               [12]  662 	mov	a,r4
      00213B 4D               [12]  663 	orl	a,r5
      00213C B4 01 00         [24]  664 	cjne	a,#0x01,00110$
      00213F                        665 00110$:
      00213F 92 00            [24]  666 	mov  _lcdgotoxy_sloc0_1_0,c
      002141 E4               [12]  667 	clr	a
      002142 33               [12]  668 	rlc	a
      002143 C4               [12]  669 	swap	a
      002144 54 F0            [12]  670 	anl	a,#0xf0
      002146 AC 30            [24]  671 	mov	r4,_lcdgotoxy_PARM_2
      002148 2C               [12]  672 	add	a,r4
      002149 FD               [12]  673 	mov	r5,a
      00214A 80 1A            [24]  674 	sjmp	00104$
      00214C                        675 00103$:
      00214C AC 30            [24]  676 	mov	r4,_lcdgotoxy_PARM_2
      00214E 74 40            [12]  677 	mov	a,#0x40
      002150 2C               [12]  678 	add	a,r4
      002151 FC               [12]  679 	mov	r4,a
      002152 53 06 03         [24]  680 	anl	ar6,#0x03
      002155 7F 00            [12]  681 	mov	r7,#0x00
      002157 EE               [12]  682 	mov	a,r6
      002158 4F               [12]  683 	orl	a,r7
      002159 B4 01 00         [24]  684 	cjne	a,#0x01,00111$
      00215C                        685 00111$:
      00215C 92 00            [24]  686 	mov  _lcdgotoxy_sloc0_1_0,c
      00215E E4               [12]  687 	clr	a
      00215F 33               [12]  688 	rlc	a
      002160 C4               [12]  689 	swap	a
      002161 54 F0            [12]  690 	anl	a,#0xf0
      002163 FF               [12]  691 	mov	r7,a
      002164 2C               [12]  692 	add	a,r4
      002165 FD               [12]  693 	mov	r5,a
      002166                        694 00104$:
      002166 ED               [12]  695 	mov	a,r5
      002167 14               [12]  696 	dec	a
      002168 F5 82            [12]  697 	mov	dpl,a
                                    698 ;	lcd.c:83: }
      00216A 02 21 0D         [24]  699 	ljmp	_lcdgotoaddr
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'lcdputch'
                                    702 ;------------------------------------------------------------
                                    703 ;cc                        Allocated to registers r7 
                                    704 ;------------------------------------------------------------
                                    705 ;	lcd.c:89: void lcdputch(uint8_t cc) {
                                    706 ;	-----------------------------------------
                                    707 ;	 function lcdputch
                                    708 ;	-----------------------------------------
      00216D                        709 _lcdputch:
      00216D AF 82            [24]  710 	mov	r7,dpl
                                    711 ;	lcd.c:91: RS = PULSE_HIGH;
                                    712 ;	assignBit
      00216F D2 96            [12]  713 	setb	_P1_6
                                    714 ;	lcd.c:92: R_W = PULSE_LOW;
                                    715 ;	assignBit
      002171 C2 97            [12]  716 	clr	_P1_7
                                    717 ;	lcd.c:93: *ptr = cc;
      002173 85 22 82         [24]  718 	mov	dpl,_ptr
      002176 85 23 83         [24]  719 	mov	dph,(_ptr + 1)
      002179 EF               [12]  720 	mov	a,r7
      00217A F0               [24]  721 	movx	@dptr,a
                                    722 ;	lcd.c:94: lcdbusywait();  // Wait until the LCD is not busy before performing the next operation.
                                    723 ;	lcd.c:95: }
      00217B 02 20 FE         [24]  724 	ljmp	_lcdbusywait
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'lcdputstr'
                                    727 ;------------------------------------------------------------
                                    728 ;ss                        Allocated to registers 
                                    729 ;lcd_ptr_addr              Allocated to registers r4 
                                    730 ;------------------------------------------------------------
                                    731 ;	lcd.c:102: void lcdputstr(uint8_t *ss) {
                                    732 ;	-----------------------------------------
                                    733 ;	 function lcdputstr
                                    734 ;	-----------------------------------------
      00217E                        735 _lcdputstr:
      00217E AD 82            [24]  736 	mov	r5,dpl
      002180 AE 83            [24]  737 	mov	r6,dph
      002182 AF F0            [24]  738 	mov	r7,b
                                    739 ;	lcd.c:106: while (*ss != '\0') {
      002184                        740 00107$:
      002184 8D 82            [24]  741 	mov	dpl,r5
      002186 8E 83            [24]  742 	mov	dph,r6
      002188 8F F0            [24]  743 	mov	b,r7
      00218A 12 28 D3         [24]  744 	lcall	__gptrget
      00218D 70 01            [24]  745 	jnz	00137$
      00218F 22               [24]  746 	ret
      002190                        747 00137$:
                                    748 ;	lcd.c:108: RS = PULSE_LOW;
                                    749 ;	assignBit
      002190 C2 96            [12]  750 	clr	_P1_6
                                    751 ;	lcd.c:109: R_W = PULSE_HIGH;
                                    752 ;	assignBit
      002192 D2 97            [12]  753 	setb	_P1_7
                                    754 ;	lcd.c:110: lcdputch(*ss);
      002194 8D 82            [24]  755 	mov	dpl,r5
      002196 8E 83            [24]  756 	mov	dph,r6
      002198 8F F0            [24]  757 	mov	b,r7
      00219A 12 28 D3         [24]  758 	lcall	__gptrget
      00219D F5 82            [12]  759 	mov	dpl,a
      00219F C0 07            [24]  760 	push	ar7
      0021A1 C0 06            [24]  761 	push	ar6
      0021A3 C0 05            [24]  762 	push	ar5
      0021A5 12 21 6D         [24]  763 	lcall	_lcdputch
      0021A8 D0 05            [24]  764 	pop	ar5
      0021AA D0 06            [24]  765 	pop	ar6
      0021AC D0 07            [24]  766 	pop	ar7
                                    767 ;	lcd.c:113: lcd_ptr_addr = *ptr & (0b01111111);
      0021AE 85 22 82         [24]  768 	mov	dpl,_ptr
      0021B1 85 23 83         [24]  769 	mov	dph,(_ptr + 1)
      0021B4 E0               [24]  770 	movx	a,@dptr
      0021B5 FC               [12]  771 	mov	r4,a
      0021B6 53 04 7F         [24]  772 	anl	ar4,#0x7f
                                    773 ;	lcd.c:114: switch (lcd_ptr_addr) {
      0021B9 BC 10 02         [24]  774 	cjne	r4,#0x10,00138$
      0021BC 80 0F            [24]  775 	sjmp	00101$
      0021BE                        776 00138$:
      0021BE BC 20 02         [24]  777 	cjne	r4,#0x20,00139$
      0021C1 80 32            [24]  778 	sjmp	00103$
      0021C3                        779 00139$:
      0021C3 BC 50 02         [24]  780 	cjne	r4,#0x50,00140$
      0021C6 80 19            [24]  781 	sjmp	00102$
      0021C8                        782 00140$:
                                    783 ;	lcd.c:115: case 0x10:
      0021C8 BC 60 50         [24]  784 	cjne	r4,#0x60,00106$
      0021CB 80 3C            [24]  785 	sjmp	00104$
      0021CD                        786 00101$:
                                    787 ;	lcd.c:116: lcdgotoaddr(0x40);
      0021CD 75 82 40         [24]  788 	mov	dpl,#0x40
      0021D0 C0 07            [24]  789 	push	ar7
      0021D2 C0 06            [24]  790 	push	ar6
      0021D4 C0 05            [24]  791 	push	ar5
      0021D6 12 21 0D         [24]  792 	lcall	_lcdgotoaddr
      0021D9 D0 05            [24]  793 	pop	ar5
      0021DB D0 06            [24]  794 	pop	ar6
      0021DD D0 07            [24]  795 	pop	ar7
                                    796 ;	lcd.c:117: break;
                                    797 ;	lcd.c:118: case 0x50:
      0021DF 80 3A            [24]  798 	sjmp	00106$
      0021E1                        799 00102$:
                                    800 ;	lcd.c:119: lcdgotoaddr(0x10);
      0021E1 75 82 10         [24]  801 	mov	dpl,#0x10
      0021E4 C0 07            [24]  802 	push	ar7
      0021E6 C0 06            [24]  803 	push	ar6
      0021E8 C0 05            [24]  804 	push	ar5
      0021EA 12 21 0D         [24]  805 	lcall	_lcdgotoaddr
      0021ED D0 05            [24]  806 	pop	ar5
      0021EF D0 06            [24]  807 	pop	ar6
      0021F1 D0 07            [24]  808 	pop	ar7
                                    809 ;	lcd.c:120: break;
                                    810 ;	lcd.c:121: case 0x20:
      0021F3 80 26            [24]  811 	sjmp	00106$
      0021F5                        812 00103$:
                                    813 ;	lcd.c:122: lcdgotoaddr(0x50);
      0021F5 75 82 50         [24]  814 	mov	dpl,#0x50
      0021F8 C0 07            [24]  815 	push	ar7
      0021FA C0 06            [24]  816 	push	ar6
      0021FC C0 05            [24]  817 	push	ar5
      0021FE 12 21 0D         [24]  818 	lcall	_lcdgotoaddr
      002201 D0 05            [24]  819 	pop	ar5
      002203 D0 06            [24]  820 	pop	ar6
      002205 D0 07            [24]  821 	pop	ar7
                                    822 ;	lcd.c:123: break;
                                    823 ;	lcd.c:124: case 0x60:
      002207 80 12            [24]  824 	sjmp	00106$
      002209                        825 00104$:
                                    826 ;	lcd.c:125: lcdgotoaddr(0x00);
      002209 75 82 00         [24]  827 	mov	dpl,#0x00
      00220C C0 07            [24]  828 	push	ar7
      00220E C0 06            [24]  829 	push	ar6
      002210 C0 05            [24]  830 	push	ar5
      002212 12 21 0D         [24]  831 	lcall	_lcdgotoaddr
      002215 D0 05            [24]  832 	pop	ar5
      002217 D0 06            [24]  833 	pop	ar6
      002219 D0 07            [24]  834 	pop	ar7
                                    835 ;	lcd.c:129: }
      00221B                        836 00106$:
                                    837 ;	lcd.c:131: ss++;  // Move to the next character in the string.
      00221B 0D               [12]  838 	inc	r5
      00221C BD 00 01         [24]  839 	cjne	r5,#0x00,00142$
      00221F 0E               [12]  840 	inc	r6
      002220                        841 00142$:
                                    842 ;	lcd.c:133: }
      002220 02 21 84         [24]  843 	ljmp	00107$
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'lcdinit'
                                    846 ;------------------------------------------------------------
                                    847 ;	lcd.c:138: void lcdinit() {
                                    848 ;	-----------------------------------------
                                    849 ;	 function lcdinit
                                    850 ;	-----------------------------------------
      002223                        851 _lcdinit:
                                    852 ;	lcd.c:140: delay(14000);
      002223 90 36 B0         [24]  853 	mov	dptr,#0x36b0
      002226 E4               [12]  854 	clr	a
      002227 F5 F0            [12]  855 	mov	b,a
      002229 12 20 A8         [24]  856 	lcall	_delay
                                    857 ;	lcd.c:143: lcd_command(0, 0, 0x30);
      00222C 75 0B 00         [24]  858 	mov	_lcd_command_PARM_2,#0x00
      00222F 75 0C 30         [24]  859 	mov	_lcd_command_PARM_3,#0x30
      002232 75 82 00         [24]  860 	mov	dpl,#0x00
      002235 12 20 E8         [24]  861 	lcall	_lcd_command
                                    862 ;	lcd.c:144: delay(4000); // Wait for 4.1ms (1.085us * 4000 ~= 4.1ms)
      002238 90 0F A0         [24]  863 	mov	dptr,#0x0fa0
      00223B E4               [12]  864 	clr	a
      00223C F5 F0            [12]  865 	mov	b,a
      00223E 12 20 A8         [24]  866 	lcall	_delay
                                    867 ;	lcd.c:145: lcd_command(0, 0, 0x30);
      002241 75 0B 00         [24]  868 	mov	_lcd_command_PARM_2,#0x00
      002244 75 0C 30         [24]  869 	mov	_lcd_command_PARM_3,#0x30
      002247 75 82 00         [24]  870 	mov	dpl,#0x00
      00224A 12 20 E8         [24]  871 	lcall	_lcd_command
                                    872 ;	lcd.c:146: delay(100);  // Wait for 100us (1.085us * 100 ~= 100us)
      00224D 90 00 64         [24]  873 	mov	dptr,#(0x64&0x00ff)
      002250 E4               [12]  874 	clr	a
      002251 F5 F0            [12]  875 	mov	b,a
      002253 12 20 A8         [24]  876 	lcall	_delay
                                    877 ;	lcd.c:147: lcd_command(0, 0, 0x30);
      002256 75 0B 00         [24]  878 	mov	_lcd_command_PARM_2,#0x00
      002259 75 0C 30         [24]  879 	mov	_lcd_command_PARM_3,#0x30
      00225C 75 82 00         [24]  880 	mov	dpl,#0x00
      00225F 12 20 E8         [24]  881 	lcall	_lcd_command
                                    882 ;	lcd.c:149: lcdbusywait();  // Wait for the LCD to finish processing the commands.
      002262 12 20 FE         [24]  883 	lcall	_lcdbusywait
                                    884 ;	lcd.c:151: lcd_command(0, 0, 0x38);  // Function set command
      002265 75 0B 00         [24]  885 	mov	_lcd_command_PARM_2,#0x00
      002268 75 0C 38         [24]  886 	mov	_lcd_command_PARM_3,#0x38
      00226B 75 82 00         [24]  887 	mov	dpl,#0x00
      00226E 12 20 E8         [24]  888 	lcall	_lcd_command
                                    889 ;	lcd.c:152: lcdbusywait();
      002271 12 20 FE         [24]  890 	lcall	_lcdbusywait
                                    891 ;	lcd.c:154: lcd_command(0, 0, 0x08);  // Turn off display command
      002274 75 0B 00         [24]  892 	mov	_lcd_command_PARM_2,#0x00
      002277 75 0C 08         [24]  893 	mov	_lcd_command_PARM_3,#0x08
      00227A 75 82 00         [24]  894 	mov	dpl,#0x00
      00227D 12 20 E8         [24]  895 	lcall	_lcd_command
                                    896 ;	lcd.c:155: lcdbusywait();
      002280 12 20 FE         [24]  897 	lcall	_lcdbusywait
                                    898 ;	lcd.c:157: lcd_command(0, 0, 0x0C);  // Turn on display command
      002283 75 0B 00         [24]  899 	mov	_lcd_command_PARM_2,#0x00
      002286 75 0C 0C         [24]  900 	mov	_lcd_command_PARM_3,#0x0c
      002289 75 82 00         [24]  901 	mov	dpl,#0x00
      00228C 12 20 E8         [24]  902 	lcall	_lcd_command
                                    903 ;	lcd.c:158: lcdbusywait();
      00228F 12 20 FE         [24]  904 	lcall	_lcdbusywait
                                    905 ;	lcd.c:160: lcd_command(0, 0, 0x06);  // Entry mode set command
      002292 75 0B 00         [24]  906 	mov	_lcd_command_PARM_2,#0x00
      002295 75 0C 06         [24]  907 	mov	_lcd_command_PARM_3,#0x06
      002298 75 82 00         [24]  908 	mov	dpl,#0x00
      00229B 12 20 E8         [24]  909 	lcall	_lcd_command
                                    910 ;	lcd.c:161: lcdbusywait();
      00229E 12 20 FE         [24]  911 	lcall	_lcdbusywait
                                    912 ;	lcd.c:163: lcd_command(0, 0, 0x01);  // Clear screen and send the cursor home command
      0022A1 75 0B 00         [24]  913 	mov	_lcd_command_PARM_2,#0x00
      0022A4 75 0C 01         [24]  914 	mov	_lcd_command_PARM_3,#0x01
      0022A7 75 82 00         [24]  915 	mov	dpl,#0x00
                                    916 ;	lcd.c:164: }
      0022AA 02 20 E8         [24]  917 	ljmp	_lcd_command
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'lcdclear'
                                    920 ;------------------------------------------------------------
                                    921 ;	lcd.c:169: void lcdclear() {
                                    922 ;	-----------------------------------------
                                    923 ;	 function lcdclear
                                    924 ;	-----------------------------------------
      0022AD                        925 _lcdclear:
                                    926 ;	lcd.c:170: RS = PULSE_LOW;
                                    927 ;	assignBit
      0022AD C2 96            [12]  928 	clr	_P1_6
                                    929 ;	lcd.c:171: R_W = PULSE_LOW;
                                    930 ;	assignBit
      0022AF C2 97            [12]  931 	clr	_P1_7
                                    932 ;	lcd.c:172: *ptr = 0b00000001;  // Send the command to clear the screen.
      0022B1 85 22 82         [24]  933 	mov	dpl,_ptr
      0022B4 85 23 83         [24]  934 	mov	dph,(_ptr + 1)
      0022B7 74 01            [12]  935 	mov	a,#0x01
      0022B9 F0               [24]  936 	movx	@dptr,a
                                    937 ;	lcd.c:173: lcdbusywait();      // Wait for the LCD to finish processing the command.
                                    938 ;	lcd.c:174: }
      0022BA 02 20 FE         [24]  939 	ljmp	_lcdbusywait
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'test_functionality'
                                    942 ;------------------------------------------------------------
                                    943 ;	lcd.c:179: void test_functionality() {
                                    944 ;	-----------------------------------------
                                    945 ;	 function test_functionality
                                    946 ;	-----------------------------------------
      0022BD                        947 _test_functionality:
                                    948 ;	lcd.c:180: printf_tiny("test_functionality start\n\r");
      0022BD 74 25            [12]  949 	mov	a,#___str_0
      0022BF C0 E0            [24]  950 	push	acc
      0022C1 74 29            [12]  951 	mov	a,#(___str_0 >> 8)
      0022C3 C0 E0            [24]  952 	push	acc
      0022C5 12 27 7D         [24]  953 	lcall	_printf_tiny
      0022C8 15 81            [12]  954 	dec	sp
      0022CA 15 81            [12]  955 	dec	sp
                                    956 ;	lcd.c:183: lcdgotoaddr(0x01);
      0022CC 75 82 01         [24]  957 	mov	dpl,#0x01
      0022CF 12 21 0D         [24]  958 	lcall	_lcdgotoaddr
                                    959 ;	lcd.c:184: lcdputch('E');
      0022D2 75 82 45         [24]  960 	mov	dpl,#0x45
      0022D5 12 21 6D         [24]  961 	lcall	_lcdputch
                                    962 ;	lcd.c:185: delay(100000);
      0022D8 90 86 A0         [24]  963 	mov	dptr,#0x86a0
      0022DB 75 F0 01         [24]  964 	mov	b,#0x01
      0022DE E4               [12]  965 	clr	a
      0022DF 12 20 A8         [24]  966 	lcall	_delay
                                    967 ;	lcd.c:188: lcdgotoxy(1, 1);
      0022E2 75 30 01         [24]  968 	mov	_lcdgotoxy_PARM_2,#0x01
      0022E5 75 82 01         [24]  969 	mov	dpl,#0x01
      0022E8 12 21 21         [24]  970 	lcall	_lcdgotoxy
                                    971 ;	lcd.c:189: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022EB 90 29 40         [24]  972 	mov	dptr,#___str_1
      0022EE 75 F0 80         [24]  973 	mov	b,#0x80
      0022F1 12 21 7E         [24]  974 	lcall	_lcdputstr
                                    975 ;	lcd.c:190: delay(100000);
      0022F4 90 86 A0         [24]  976 	mov	dptr,#0x86a0
      0022F7 75 F0 01         [24]  977 	mov	b,#0x01
      0022FA E4               [12]  978 	clr	a
      0022FB 12 20 A8         [24]  979 	lcall	_delay
                                    980 ;	lcd.c:193: create_custom_character(custom_char_code);
      0022FE 85 2B 82         [24]  981 	mov	dpl,_custom_char_code
      002301 12 23 3E         [24]  982 	lcall	_create_custom_character
                                    983 ;	lcd.c:194: lcdgotoaddr(0x0F);
      002304 75 82 0F         [24]  984 	mov	dpl,#0x0f
      002307 12 21 0D         [24]  985 	lcall	_lcdgotoaddr
                                    986 ;	lcd.c:195: lcdputch(custom_char_code);
      00230A 85 2B 82         [24]  987 	mov	dpl,_custom_char_code
      00230D 12 21 6D         [24]  988 	lcall	_lcdputch
                                    989 ;	lcd.c:196: delay(100000);
      002310 90 86 A0         [24]  990 	mov	dptr,#0x86a0
      002313 75 F0 01         [24]  991 	mov	b,#0x01
      002316 E4               [12]  992 	clr	a
      002317 12 20 A8         [24]  993 	lcall	_delay
                                    994 ;	lcd.c:199: lcdclear();
      00231A 12 22 AD         [24]  995 	lcall	_lcdclear
                                    996 ;	lcd.c:201: printf_tiny("test_functionality end\n\r");
      00231D 74 83            [12]  997 	mov	a,#___str_2
      00231F C0 E0            [24]  998 	push	acc
      002321 74 29            [12]  999 	mov	a,#(___str_2 >> 8)
      002323 C0 E0            [24] 1000 	push	acc
      002325 12 27 7D         [24] 1001 	lcall	_printf_tiny
      002328 15 81            [12] 1002 	dec	sp
      00232A 15 81            [12] 1003 	dec	sp
                                   1004 ;	lcd.c:202: }
      00232C 22               [24] 1005 	ret
                                   1006 ;------------------------------------------------------------
                                   1007 ;Allocation info for local variables in function 'set_cgram_address'
                                   1008 ;------------------------------------------------------------
                                   1009 ;cgram_address             Allocated to registers r7 
                                   1010 ;------------------------------------------------------------
                                   1011 ;	lcd.c:209: void set_cgram_address(uint8_t cgram_address) {
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function set_cgram_address
                                   1014 ;	-----------------------------------------
      00232D                       1015 _set_cgram_address:
      00232D AF 82            [24] 1016 	mov	r7,dpl
                                   1017 ;	lcd.c:210: RS = PULSE_LOW;
                                   1018 ;	assignBit
      00232F C2 96            [12] 1019 	clr	_P1_6
                                   1020 ;	lcd.c:211: R_W = PULSE_LOW;
                                   1021 ;	assignBit
      002331 C2 97            [12] 1022 	clr	_P1_7
                                   1023 ;	lcd.c:212: *ptr = cgram_address;
      002333 85 22 82         [24] 1024 	mov	dpl,_ptr
      002336 85 23 83         [24] 1025 	mov	dph,(_ptr + 1)
      002339 EF               [12] 1026 	mov	a,r7
      00233A F0               [24] 1027 	movx	@dptr,a
                                   1028 ;	lcd.c:213: lcdbusywait();
                                   1029 ;	lcd.c:214: }
      00233B 02 20 FE         [24] 1030 	ljmp	_lcdbusywait
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'create_custom_character'
                                   1033 ;------------------------------------------------------------
                                   1034 ;char_num                  Allocated to registers r7 
                                   1035 ;c                         Allocated with name '_create_custom_character_c_65536_44'
                                   1036 ;i                         Allocated to registers r5 r6 
                                   1037 ;cgram_address             Allocated to registers 
                                   1038 ;------------------------------------------------------------
                                   1039 ;	lcd.c:220: void create_custom_character(uint8_t char_num) {
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function create_custom_character
                                   1042 ;	-----------------------------------------
      00233E                       1043 _create_custom_character:
      00233E AF 82            [24] 1044 	mov	r7,dpl
                                   1045 ;	lcd.c:222: uint8_t c[8] =
      002340 75 31 04         [24] 1046 	mov	_create_custom_character_c_65536_44,#0x04
      002343 75 32 0E         [24] 1047 	mov	(_create_custom_character_c_65536_44 + 0x0001),#0x0e
      002346 75 33 04         [24] 1048 	mov	(_create_custom_character_c_65536_44 + 0x0002),#0x04
      002349 75 34 04         [24] 1049 	mov	(_create_custom_character_c_65536_44 + 0x0003),#0x04
      00234C 75 35 04         [24] 1050 	mov	(_create_custom_character_c_65536_44 + 0x0004),#0x04
      00234F 75 36 04         [24] 1051 	mov	(_create_custom_character_c_65536_44 + 0x0005),#0x04
      002352 75 37 04         [24] 1052 	mov	(_create_custom_character_c_65536_44 + 0x0006),#0x04
      002355 75 38 0A         [24] 1053 	mov	(_create_custom_character_c_65536_44 + 0x0007),#0x0a
                                   1054 ;	lcd.c:234: for(int i = 0; i < BYTE_LENGTH; i++) {
      002358 7D 00            [12] 1055 	mov	r5,#0x00
      00235A 7E 00            [12] 1056 	mov	r6,#0x00
      00235C                       1057 00103$:
      00235C C3               [12] 1058 	clr	c
      00235D ED               [12] 1059 	mov	a,r5
      00235E 94 08            [12] 1060 	subb	a,#0x08
      002360 EE               [12] 1061 	mov	a,r6
      002361 64 80            [12] 1062 	xrl	a,#0x80
      002363 94 80            [12] 1063 	subb	a,#0x80
      002365 50 34            [24] 1064 	jnc	00105$
                                   1065 ;	lcd.c:236: uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
      002367 8F 04            [24] 1066 	mov	ar4,r7
      002369 EC               [12] 1067 	mov	a,r4
      00236A C4               [12] 1068 	swap	a
      00236B 03               [12] 1069 	rr	a
      00236C 54 F8            [12] 1070 	anl	a,#0xf8
      00236E FC               [12] 1071 	mov	r4,a
      00236F 43 04 40         [24] 1072 	orl	ar4,#0x40
      002372 8D 03            [24] 1073 	mov	ar3,r5
      002374 EB               [12] 1074 	mov	a,r3
      002375 4C               [12] 1075 	orl	a,r4
      002376 F5 82            [12] 1076 	mov	dpl,a
                                   1077 ;	lcd.c:239: set_cgram_address(cgram_address);
      002378 C0 07            [24] 1078 	push	ar7
      00237A C0 06            [24] 1079 	push	ar6
      00237C C0 05            [24] 1080 	push	ar5
      00237E 12 23 2D         [24] 1081 	lcall	_set_cgram_address
      002381 D0 05            [24] 1082 	pop	ar5
                                   1083 ;	lcd.c:242: lcdputch(c[i]);
      002383 ED               [12] 1084 	mov	a,r5
      002384 24 31            [12] 1085 	add	a,#_create_custom_character_c_65536_44
      002386 F9               [12] 1086 	mov	r1,a
      002387 87 82            [24] 1087 	mov	dpl,@r1
      002389 C0 05            [24] 1088 	push	ar5
      00238B 12 21 6D         [24] 1089 	lcall	_lcdputch
      00238E D0 05            [24] 1090 	pop	ar5
      002390 D0 06            [24] 1091 	pop	ar6
      002392 D0 07            [24] 1092 	pop	ar7
                                   1093 ;	lcd.c:234: for(int i = 0; i < BYTE_LENGTH; i++) {
      002394 0D               [12] 1094 	inc	r5
      002395 BD 00 C4         [24] 1095 	cjne	r5,#0x00,00103$
      002398 0E               [12] 1096 	inc	r6
      002399 80 C1            [24] 1097 	sjmp	00103$
      00239B                       1098 00105$:
                                   1099 ;	lcd.c:244: }
      00239B 22               [24] 1100 	ret
                                   1101 ;------------------------------------------------------------
                                   1102 ;Allocation info for local variables in function 'reset_clock'
                                   1103 ;------------------------------------------------------------
                                   1104 ;	lcd.c:250: void reset_clock() {
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function reset_clock
                                   1107 ;	-----------------------------------------
      00239C                       1108 _reset_clock:
                                   1109 ;	lcd.c:252: min_high = '0';
      00239C 75 24 30         [24] 1110 	mov	_min_high,#0x30
                                   1111 ;	lcd.c:253: min_low = '0';
      00239F 75 25 30         [24] 1112 	mov	_min_low,#0x30
                                   1113 ;	lcd.c:254: sec_high = '0';
      0023A2 75 26 30         [24] 1114 	mov	_sec_high,#0x30
                                   1115 ;	lcd.c:255: sec_low = '0';
      0023A5 75 27 30         [24] 1116 	mov	_sec_low,#0x30
                                   1117 ;	lcd.c:256: mili_sec = '0';
      0023A8 75 28 30         [24] 1118 	mov	_mili_sec,#0x30
                                   1119 ;	lcd.c:259: lcdgotoaddr(0x59);
      0023AB 75 82 59         [24] 1120 	mov	dpl,#0x59
      0023AE 12 21 0D         [24] 1121 	lcall	_lcdgotoaddr
                                   1122 ;	lcd.c:260: lcdputch(min_high);
      0023B1 85 24 82         [24] 1123 	mov	dpl,_min_high
      0023B4 12 21 6D         [24] 1124 	lcall	_lcdputch
                                   1125 ;	lcd.c:261: lcdputch(min_low);
      0023B7 85 25 82         [24] 1126 	mov	dpl,_min_low
      0023BA 12 21 6D         [24] 1127 	lcall	_lcdputch
                                   1128 ;	lcd.c:262: lcdputch(':');
      0023BD 75 82 3A         [24] 1129 	mov	dpl,#0x3a
      0023C0 12 21 6D         [24] 1130 	lcall	_lcdputch
                                   1131 ;	lcd.c:263: lcdputch(sec_high);
      0023C3 85 26 82         [24] 1132 	mov	dpl,_sec_high
      0023C6 12 21 6D         [24] 1133 	lcall	_lcdputch
                                   1134 ;	lcd.c:264: lcdputch(sec_low);
      0023C9 85 27 82         [24] 1135 	mov	dpl,_sec_low
      0023CC 12 21 6D         [24] 1136 	lcall	_lcdputch
                                   1137 ;	lcd.c:265: lcdputch('.');
      0023CF 75 82 2E         [24] 1138 	mov	dpl,#0x2e
      0023D2 12 21 6D         [24] 1139 	lcall	_lcdputch
                                   1140 ;	lcd.c:266: lcdputch(mili_sec);
      0023D5 85 28 82         [24] 1141 	mov	dpl,_mili_sec
                                   1142 ;	lcd.c:267: }
      0023D8 02 21 6D         [24] 1143 	ljmp	_lcdputch
                                   1144 ;------------------------------------------------------------
                                   1145 ;Allocation info for local variables in function 'clock_run'
                                   1146 ;------------------------------------------------------------
                                   1147 ;	lcd.c:272: void clock_run() {
                                   1148 ;	-----------------------------------------
                                   1149 ;	 function clock_run
                                   1150 ;	-----------------------------------------
      0023DB                       1151 _clock_run:
                                   1152 ;	lcd.c:274: if (clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)) {
      0023DB E5 29            [12] 1153 	mov	a,_clockrun_flag
      0023DD 45 2A            [12] 1154 	orl	a,(_clockrun_flag + 1)
      0023DF 70 01            [24] 1155 	jnz	00149$
      0023E1 22               [24] 1156 	ret
      0023E2                       1157 00149$:
      0023E2 E5 08            [12] 1158 	mov	a,_tick
      0023E4 30 E0 01         [24] 1159 	jnb	acc.0,00150$
      0023E7 22               [24] 1160 	ret
      0023E8                       1161 00150$:
      0023E8 AC 08            [24] 1162 	mov	r4,_tick
      0023EA AD 09            [24] 1163 	mov	r5,(_tick + 1)
      0023EC 7E 00            [12] 1164 	mov	r6,#0x00
      0023EE 7F 00            [12] 1165 	mov	r7,#0x00
      0023F0 C3               [12] 1166 	clr	c
      0023F1 E5 2C            [12] 1167 	mov	a,_elapsed_tick
      0023F3 9C               [12] 1168 	subb	a,r4
      0023F4 E5 2D            [12] 1169 	mov	a,(_elapsed_tick + 1)
      0023F6 9D               [12] 1170 	subb	a,r5
      0023F7 E5 2E            [12] 1171 	mov	a,(_elapsed_tick + 2)
      0023F9 9E               [12] 1172 	subb	a,r6
      0023FA E5 2F            [12] 1173 	mov	a,(_elapsed_tick + 3)
      0023FC 9F               [12] 1174 	subb	a,r7
      0023FD 40 01            [24] 1175 	jc	00151$
      0023FF 22               [24] 1176 	ret
      002400                       1177 00151$:
                                   1178 ;	lcd.c:275: elapsed_tick = tick;  // Update the elapsed tick
      002400 85 08 2C         [24] 1179 	mov	_elapsed_tick,_tick
      002403 85 09 2D         [24] 1180 	mov	(_elapsed_tick + 1),(_tick + 1)
      002406 75 2E 00         [24] 1181 	mov	(_elapsed_tick + 2),#0x00
      002409 75 2F 00         [24] 1182 	mov	(_elapsed_tick + 3),#0x00
                                   1183 ;	lcd.c:277: mili_sec++;  // Increment milliseconds
      00240C 05 28            [12] 1184 	inc	_mili_sec
                                   1185 ;	lcd.c:278: if (mili_sec > '9') {
      00240E E5 28            [12] 1186 	mov	a,_mili_sec
      002410 24 C6            [12] 1187 	add	a,#0xff - 0x39
      002412 50 1D            [24] 1188 	jnc	00102$
                                   1189 ;	lcd.c:279: mili_sec = '0';
      002414 75 28 30         [24] 1190 	mov	_mili_sec,#0x30
                                   1191 ;	lcd.c:280: lcdgotoaddr(0x5F);
      002417 75 82 5F         [24] 1192 	mov	dpl,#0x5f
      00241A 12 21 0D         [24] 1193 	lcall	_lcdgotoaddr
                                   1194 ;	lcd.c:281: lcdputch(mili_sec);
      00241D 85 28 82         [24] 1195 	mov	dpl,_mili_sec
      002420 12 21 6D         [24] 1196 	lcall	_lcdputch
                                   1197 ;	lcd.c:282: sec_low++;
      002423 05 27            [12] 1198 	inc	_sec_low
                                   1199 ;	lcd.c:283: lcdgotoaddr(0x5D);
      002425 75 82 5D         [24] 1200 	mov	dpl,#0x5d
      002428 12 21 0D         [24] 1201 	lcall	_lcdgotoaddr
                                   1202 ;	lcd.c:284: lcdputch(sec_low);
      00242B 85 27 82         [24] 1203 	mov	dpl,_sec_low
      00242E 12 21 6D         [24] 1204 	lcall	_lcdputch
      002431                       1205 00102$:
                                   1206 ;	lcd.c:286: if (sec_low > '9') {
      002431 E5 27            [12] 1207 	mov	a,_sec_low
      002433 24 C6            [12] 1208 	add	a,#0xff - 0x39
      002435 50 1D            [24] 1209 	jnc	00104$
                                   1210 ;	lcd.c:287: sec_low = '0';
      002437 75 27 30         [24] 1211 	mov	_sec_low,#0x30
                                   1212 ;	lcd.c:288: lcdgotoaddr(0x5D);
      00243A 75 82 5D         [24] 1213 	mov	dpl,#0x5d
      00243D 12 21 0D         [24] 1214 	lcall	_lcdgotoaddr
                                   1215 ;	lcd.c:289: lcdputch(sec_low);
      002440 85 27 82         [24] 1216 	mov	dpl,_sec_low
      002443 12 21 6D         [24] 1217 	lcall	_lcdputch
                                   1218 ;	lcd.c:290: sec_high++;
      002446 05 26            [12] 1219 	inc	_sec_high
                                   1220 ;	lcd.c:291: lcdgotoaddr(0x5C);
      002448 75 82 5C         [24] 1221 	mov	dpl,#0x5c
      00244B 12 21 0D         [24] 1222 	lcall	_lcdgotoaddr
                                   1223 ;	lcd.c:292: lcdputch(sec_high);
      00244E 85 26 82         [24] 1224 	mov	dpl,_sec_high
      002451 12 21 6D         [24] 1225 	lcall	_lcdputch
      002454                       1226 00104$:
                                   1227 ;	lcd.c:294: if (sec_high > '5') {
      002454 E5 26            [12] 1228 	mov	a,_sec_high
      002456 24 CA            [12] 1229 	add	a,#0xff - 0x35
      002458 50 1D            [24] 1230 	jnc	00106$
                                   1231 ;	lcd.c:295: sec_high = '0';
      00245A 75 26 30         [24] 1232 	mov	_sec_high,#0x30
                                   1233 ;	lcd.c:296: lcdgotoaddr(0x5C);
      00245D 75 82 5C         [24] 1234 	mov	dpl,#0x5c
      002460 12 21 0D         [24] 1235 	lcall	_lcdgotoaddr
                                   1236 ;	lcd.c:297: lcdputch(sec_high);
      002463 85 26 82         [24] 1237 	mov	dpl,_sec_high
      002466 12 21 6D         [24] 1238 	lcall	_lcdputch
                                   1239 ;	lcd.c:298: min_low++;
      002469 05 25            [12] 1240 	inc	_min_low
                                   1241 ;	lcd.c:299: lcdgotoaddr(0x5A);
      00246B 75 82 5A         [24] 1242 	mov	dpl,#0x5a
      00246E 12 21 0D         [24] 1243 	lcall	_lcdgotoaddr
                                   1244 ;	lcd.c:300: lcdputch(min_low);
      002471 85 25 82         [24] 1245 	mov	dpl,_min_low
      002474 12 21 6D         [24] 1246 	lcall	_lcdputch
      002477                       1247 00106$:
                                   1248 ;	lcd.c:302: if (min_low > '9') {
      002477 E5 25            [12] 1249 	mov	a,_min_low
      002479 24 C6            [12] 1250 	add	a,#0xff - 0x39
      00247B 50 1D            [24] 1251 	jnc	00108$
                                   1252 ;	lcd.c:303: min_low = '0';
      00247D 75 25 30         [24] 1253 	mov	_min_low,#0x30
                                   1254 ;	lcd.c:304: lcdgotoaddr(0x5A);
      002480 75 82 5A         [24] 1255 	mov	dpl,#0x5a
      002483 12 21 0D         [24] 1256 	lcall	_lcdgotoaddr
                                   1257 ;	lcd.c:305: lcdputch(min_low);
      002486 85 25 82         [24] 1258 	mov	dpl,_min_low
      002489 12 21 6D         [24] 1259 	lcall	_lcdputch
                                   1260 ;	lcd.c:306: min_high++;
      00248C 05 24            [12] 1261 	inc	_min_high
                                   1262 ;	lcd.c:307: lcdgotoaddr(0x59);
      00248E 75 82 59         [24] 1263 	mov	dpl,#0x59
      002491 12 21 0D         [24] 1264 	lcall	_lcdgotoaddr
                                   1265 ;	lcd.c:308: lcdputch(min_high);
      002494 85 24 82         [24] 1266 	mov	dpl,_min_high
      002497 12 21 6D         [24] 1267 	lcall	_lcdputch
      00249A                       1268 00108$:
                                   1269 ;	lcd.c:310: if (min_high > '5') {
      00249A E5 24            [12] 1270 	mov	a,_min_high
      00249C 24 CA            [12] 1271 	add	a,#0xff - 0x35
      00249E 50 0F            [24] 1272 	jnc	00110$
                                   1273 ;	lcd.c:311: min_high = '0';
      0024A0 75 24 30         [24] 1274 	mov	_min_high,#0x30
                                   1275 ;	lcd.c:312: lcdgotoaddr(0x59);
      0024A3 75 82 59         [24] 1276 	mov	dpl,#0x59
      0024A6 12 21 0D         [24] 1277 	lcall	_lcdgotoaddr
                                   1278 ;	lcd.c:313: lcdputch(min_high);
      0024A9 85 24 82         [24] 1279 	mov	dpl,_min_high
      0024AC 12 21 6D         [24] 1280 	lcall	_lcdputch
      0024AF                       1281 00110$:
                                   1282 ;	lcd.c:315: lcdgotoaddr(0x5F);
      0024AF 75 82 5F         [24] 1283 	mov	dpl,#0x5f
      0024B2 12 21 0D         [24] 1284 	lcall	_lcdgotoaddr
                                   1285 ;	lcd.c:316: lcdputch(mili_sec);
      0024B5 85 28 82         [24] 1286 	mov	dpl,_mili_sec
                                   1287 ;	lcd.c:318: }
      0024B8 02 21 6D         [24] 1288 	ljmp	_lcdputch
                                   1289 ;------------------------------------------------------------
                                   1290 ;Allocation info for local variables in function 'menu_lcd'
                                   1291 ;------------------------------------------------------------
                                   1292 ;	lcd.c:323: void menu_lcd() {
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function menu_lcd
                                   1295 ;	-----------------------------------------
      0024BB                       1296 _menu_lcd:
                                   1297 ;	lcd.c:324: reset_clock();  // Reset clock values for display consistency
      0024BB 12 23 9C         [24] 1298 	lcall	_reset_clock
                                   1299 ;	lcd.c:325: lcdgotoxy(1, 1);
      0024BE 75 30 01         [24] 1300 	mov	_lcdgotoxy_PARM_2,#0x01
      0024C1 75 82 01         [24] 1301 	mov	dpl,#0x01
      0024C4 12 21 21         [24] 1302 	lcall	_lcdgotoxy
                                   1303 ;	lcd.c:326: lcdputstr("Clock status:");
      0024C7 90 29 9C         [24] 1304 	mov	dptr,#___str_3
      0024CA 75 F0 80         [24] 1305 	mov	b,#0x80
      0024CD 12 21 7E         [24] 1306 	lcall	_lcdputstr
                                   1307 ;	lcd.c:327: lcdgotoxy(2, 1);
      0024D0 75 30 01         [24] 1308 	mov	_lcdgotoxy_PARM_2,#0x01
      0024D3 75 82 02         [24] 1309 	mov	dpl,#0x02
      0024D6 12 21 21         [24] 1310 	lcall	_lcdgotoxy
                                   1311 ;	lcd.c:328: lcdputstr("Running");
      0024D9 90 29 AA         [24] 1312 	mov	dptr,#___str_4
      0024DC 75 F0 80         [24] 1313 	mov	b,#0x80
      0024DF 12 21 7E         [24] 1314 	lcall	_lcdputstr
                                   1315 ;	lcd.c:329: lcdgotoxy(3, 1);
      0024E2 75 30 01         [24] 1316 	mov	_lcdgotoxy_PARM_2,#0x01
      0024E5 75 82 03         [24] 1317 	mov	dpl,#0x03
      0024E8 12 21 21         [24] 1318 	lcall	_lcdgotoxy
                                   1319 ;	lcd.c:330: lcdputstr("Stopped");
      0024EB 90 29 B2         [24] 1320 	mov	dptr,#___str_5
      0024EE 75 F0 80         [24] 1321 	mov	b,#0x80
      0024F1 12 21 7E         [24] 1322 	lcall	_lcdputstr
                                   1323 ;	lcd.c:331: lcdgotoxy(4, 1);
      0024F4 75 30 01         [24] 1324 	mov	_lcdgotoxy_PARM_2,#0x01
      0024F7 75 82 04         [24] 1325 	mov	dpl,#0x04
      0024FA 12 21 21         [24] 1326 	lcall	_lcdgotoxy
                                   1327 ;	lcd.c:332: lcdputstr("Reset");
      0024FD 90 29 BA         [24] 1328 	mov	dptr,#___str_6
      002500 75 F0 80         [24] 1329 	mov	b,#0x80
                                   1330 ;	lcd.c:333: }
      002503 02 21 7E         [24] 1331 	ljmp	_lcdputstr
                                   1332 ;------------------------------------------------------------
                                   1333 ;Allocation info for local variables in function 'arrow_set'
                                   1334 ;------------------------------------------------------------
                                   1335 ;b                         Allocated with name '_arrow_set_PARM_2'
                                   1336 ;c                         Allocated with name '_arrow_set_PARM_3'
                                   1337 ;a                         Allocated to registers r7 
                                   1338 ;------------------------------------------------------------
                                   1339 ;	lcd.c:341: void arrow_set(char a, char b, char c) {
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function arrow_set
                                   1342 ;	-----------------------------------------
      002506                       1343 _arrow_set:
      002506 AF 82            [24] 1344 	mov	r7,dpl
                                   1345 ;	lcd.c:342: lcdgotoxy(2, 8);
      002508 75 30 08         [24] 1346 	mov	_lcdgotoxy_PARM_2,#0x08
      00250B 75 82 02         [24] 1347 	mov	dpl,#0x02
      00250E C0 07            [24] 1348 	push	ar7
      002510 12 21 21         [24] 1349 	lcall	_lcdgotoxy
      002513 D0 07            [24] 1350 	pop	ar7
                                   1351 ;	lcd.c:343: lcdputch(a);  // Display arrow indicator for "Running"
      002515 8F 82            [24] 1352 	mov	dpl,r7
      002517 12 21 6D         [24] 1353 	lcall	_lcdputch
                                   1354 ;	lcd.c:344: lcdgotoxy(3, 8);
      00251A 75 30 08         [24] 1355 	mov	_lcdgotoxy_PARM_2,#0x08
      00251D 75 82 03         [24] 1356 	mov	dpl,#0x03
      002520 12 21 21         [24] 1357 	lcall	_lcdgotoxy
                                   1358 ;	lcd.c:345: lcdputch(b);  // Display arrow indicator for "Stopped"
      002523 85 39 82         [24] 1359 	mov	dpl,_arrow_set_PARM_2
      002526 12 21 6D         [24] 1360 	lcall	_lcdputch
                                   1361 ;	lcd.c:346: lcdgotoxy(4, 6);
      002529 75 30 06         [24] 1362 	mov	_lcdgotoxy_PARM_2,#0x06
      00252C 75 82 04         [24] 1363 	mov	dpl,#0x04
      00252F 12 21 21         [24] 1364 	lcall	_lcdgotoxy
                                   1365 ;	lcd.c:347: lcdputch(c);  // Display arrow indicator for "Reset"
      002532 85 3A 82         [24] 1366 	mov	dpl,_arrow_set_PARM_3
                                   1367 ;	lcd.c:348: }
      002535 02 21 6D         [24] 1368 	ljmp	_lcdputch
                                   1369 	.area CSEG    (CODE)
                                   1370 	.area CONST   (CODE)
                                   1371 	.area CONST   (CODE)
      002925                       1372 ___str_0:
      002925 74 65 73 74 5F 66 75  1373 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      00293D 0A                    1374 	.db 0x0a
      00293E 0D                    1375 	.db 0x0d
      00293F 00                    1376 	.db 0x00
                                   1377 	.area CSEG    (CODE)
                                   1378 	.area CONST   (CODE)
      002940                       1379 ___str_1:
      002940 41 42 43 44 45 46 47  1380 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      00297C 7A 4A 49 54 48 55     1381 	.ascii "zJITHU"
      002982 00                    1382 	.db 0x00
                                   1383 	.area CSEG    (CODE)
                                   1384 	.area CONST   (CODE)
      002983                       1385 ___str_2:
      002983 74 65 73 74 5F 66 75  1386 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      002999 0A                    1387 	.db 0x0a
      00299A 0D                    1388 	.db 0x0d
      00299B 00                    1389 	.db 0x00
                                   1390 	.area CSEG    (CODE)
                                   1391 	.area CONST   (CODE)
      00299C                       1392 ___str_3:
      00299C 43 6C 6F 63 6B 20 73  1393 	.ascii "Clock status:"
             74 61 74 75 73 3A
      0029A9 00                    1394 	.db 0x00
                                   1395 	.area CSEG    (CODE)
                                   1396 	.area CONST   (CODE)
      0029AA                       1397 ___str_4:
      0029AA 52 75 6E 6E 69 6E 67  1398 	.ascii "Running"
      0029B1 00                    1399 	.db 0x00
                                   1400 	.area CSEG    (CODE)
                                   1401 	.area CONST   (CODE)
      0029B2                       1402 ___str_5:
      0029B2 53 74 6F 70 70 65 64  1403 	.ascii "Stopped"
      0029B9 00                    1404 	.db 0x00
                                   1405 	.area CSEG    (CODE)
                                   1406 	.area CONST   (CODE)
      0029BA                       1407 ___str_6:
      0029BA 52 65 73 65 74        1408 	.ascii "Reset"
      0029BF 00                    1409 	.db 0x00
                                   1410 	.area CSEG    (CODE)
                                   1411 	.area XINIT   (CODE)
      002AB2                       1412 __xinit__db:
      002AB2 00                    1413 	.db #0x00	; 0
                                   1414 	.area CABS    (ABS,CODE)
