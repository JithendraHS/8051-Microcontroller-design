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
                                     11 	.globl _lcd_command_PARM_3
                                     12 	.globl _lcd_command_PARM_2
                                     13 	.globl _main
                                     14 	.globl _reset_clock
                                     15 	.globl _isr_timer2
                                     16 	.globl _timer2_interrupt_Init
                                     17 	.globl _timer2_init
                                     18 	.globl _set_cgram_address
                                     19 	.globl _test_functionality
                                     20 	.globl _lcdclear
                                     21 	.globl _lcdinit
                                     22 	.globl _lcdputstr
                                     23 	.globl _lcdputch
                                     24 	.globl _lcdgotoxy
                                     25 	.globl _lcdgotoaddr
                                     26 	.globl _lcdbusywait
                                     27 	.globl _lcd_command
                                     28 	.globl _delay
                                     29 	.globl __sdcc_external_startup
                                     30 	.globl _echo
                                     31 	.globl _printf_tiny
                                     32 	.globl _TF1
                                     33 	.globl _TR1
                                     34 	.globl _TF0
                                     35 	.globl _TR0
                                     36 	.globl _IE1
                                     37 	.globl _IT1
                                     38 	.globl _IE0
                                     39 	.globl _IT0
                                     40 	.globl _SM0
                                     41 	.globl _SM1
                                     42 	.globl _SM2
                                     43 	.globl _REN
                                     44 	.globl _TB8
                                     45 	.globl _RB8
                                     46 	.globl _TI
                                     47 	.globl _RI
                                     48 	.globl _CY
                                     49 	.globl _AC
                                     50 	.globl _F0
                                     51 	.globl _RS1
                                     52 	.globl _RS0
                                     53 	.globl _OV
                                     54 	.globl _F1
                                     55 	.globl _P
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD0
                                     63 	.globl _TXD
                                     64 	.globl _RXD0
                                     65 	.globl _RXD
                                     66 	.globl _P3_7
                                     67 	.globl _P3_6
                                     68 	.globl _P3_5
                                     69 	.globl _P3_4
                                     70 	.globl _P3_3
                                     71 	.globl _P3_2
                                     72 	.globl _P3_1
                                     73 	.globl _P3_0
                                     74 	.globl _P2_7
                                     75 	.globl _P2_6
                                     76 	.globl _P2_5
                                     77 	.globl _P2_4
                                     78 	.globl _P2_3
                                     79 	.globl _P2_2
                                     80 	.globl _P2_1
                                     81 	.globl _P2_0
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _PS
                                     99 	.globl _PT1
                                    100 	.globl _PX1
                                    101 	.globl _PT0
                                    102 	.globl _PX0
                                    103 	.globl _EA
                                    104 	.globl _ES
                                    105 	.globl _ET1
                                    106 	.globl _EX1
                                    107 	.globl _ET0
                                    108 	.globl _EX0
                                    109 	.globl _BREG_F7
                                    110 	.globl _BREG_F6
                                    111 	.globl _BREG_F5
                                    112 	.globl _BREG_F4
                                    113 	.globl _BREG_F3
                                    114 	.globl _BREG_F2
                                    115 	.globl _BREG_F1
                                    116 	.globl _BREG_F0
                                    117 	.globl _P5_7
                                    118 	.globl _P5_6
                                    119 	.globl _P5_5
                                    120 	.globl _P5_4
                                    121 	.globl _P5_3
                                    122 	.globl _P5_2
                                    123 	.globl _P5_1
                                    124 	.globl _P5_0
                                    125 	.globl _P4_7
                                    126 	.globl _P4_6
                                    127 	.globl _P4_5
                                    128 	.globl _P4_4
                                    129 	.globl _P4_3
                                    130 	.globl _P4_2
                                    131 	.globl _P4_1
                                    132 	.globl _P4_0
                                    133 	.globl _PX0L
                                    134 	.globl _PT0L
                                    135 	.globl _PX1L
                                    136 	.globl _PT1L
                                    137 	.globl _PSL
                                    138 	.globl _PT2L
                                    139 	.globl _PPCL
                                    140 	.globl _EC
                                    141 	.globl _CCF0
                                    142 	.globl _CCF1
                                    143 	.globl _CCF2
                                    144 	.globl _CCF3
                                    145 	.globl _CCF4
                                    146 	.globl _CR
                                    147 	.globl _CF
                                    148 	.globl _TF2
                                    149 	.globl _EXF2
                                    150 	.globl _RCLK
                                    151 	.globl _TCLK
                                    152 	.globl _EXEN2
                                    153 	.globl _TR2
                                    154 	.globl _C_T2
                                    155 	.globl _CP_RL2
                                    156 	.globl _T2CON_7
                                    157 	.globl _T2CON_6
                                    158 	.globl _T2CON_5
                                    159 	.globl _T2CON_4
                                    160 	.globl _T2CON_3
                                    161 	.globl _T2CON_2
                                    162 	.globl _T2CON_1
                                    163 	.globl _T2CON_0
                                    164 	.globl _PT2
                                    165 	.globl _ET2
                                    166 	.globl _TMOD
                                    167 	.globl _TL1
                                    168 	.globl _TL0
                                    169 	.globl _TH1
                                    170 	.globl _TH0
                                    171 	.globl _TCON
                                    172 	.globl _SP
                                    173 	.globl _SCON
                                    174 	.globl _SBUF0
                                    175 	.globl _SBUF
                                    176 	.globl _PSW
                                    177 	.globl _PCON
                                    178 	.globl _P3
                                    179 	.globl _P2
                                    180 	.globl _P1
                                    181 	.globl _P0
                                    182 	.globl _IP
                                    183 	.globl _IE
                                    184 	.globl _DP0L
                                    185 	.globl _DPL
                                    186 	.globl _DP0H
                                    187 	.globl _DPH
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _EECON
                                    191 	.globl _KBF
                                    192 	.globl _KBE
                                    193 	.globl _KBLS
                                    194 	.globl _BRL
                                    195 	.globl _BDRCON
                                    196 	.globl _T2MOD
                                    197 	.globl _SPDAT
                                    198 	.globl _SPSTA
                                    199 	.globl _SPCON
                                    200 	.globl _SADEN
                                    201 	.globl _SADDR
                                    202 	.globl _WDTPRG
                                    203 	.globl _WDTRST
                                    204 	.globl _P5
                                    205 	.globl _P4
                                    206 	.globl _IPH1
                                    207 	.globl _IPL1
                                    208 	.globl _IPH0
                                    209 	.globl _IPL0
                                    210 	.globl _IEN1
                                    211 	.globl _IEN0
                                    212 	.globl _CMOD
                                    213 	.globl _CL
                                    214 	.globl _CH
                                    215 	.globl _CCON
                                    216 	.globl _CCAPM4
                                    217 	.globl _CCAPM3
                                    218 	.globl _CCAPM2
                                    219 	.globl _CCAPM1
                                    220 	.globl _CCAPM0
                                    221 	.globl _CCAP4L
                                    222 	.globl _CCAP3L
                                    223 	.globl _CCAP2L
                                    224 	.globl _CCAP1L
                                    225 	.globl _CCAP0L
                                    226 	.globl _CCAP4H
                                    227 	.globl _CCAP3H
                                    228 	.globl _CCAP2H
                                    229 	.globl _CCAP1H
                                    230 	.globl _CCAP0H
                                    231 	.globl _CKCON1
                                    232 	.globl _CKCON0
                                    233 	.globl _CKRL
                                    234 	.globl _AUXR1
                                    235 	.globl _AUXR
                                    236 	.globl _TH2
                                    237 	.globl _TL2
                                    238 	.globl _RCAP2H
                                    239 	.globl _RCAP2L
                                    240 	.globl _T2CON
                                    241 	.globl _db
                                    242 	.globl _lcdgotoxy_PARM_2
                                    243 	.globl _clockrun_flag
                                    244 	.globl _custom_char_code
                                    245 	.globl _mili_sec
                                    246 	.globl _sec_low
                                    247 	.globl _sec_high
                                    248 	.globl _min_low
                                    249 	.globl _min_high
                                    250 	.globl _elapsed_tick
                                    251 	.globl _tick
                                    252 	.globl _ptr
                                    253 	.globl _create_custom_character
                                    254 	.globl _clock_run
                                    255 ;--------------------------------------------------------
                                    256 ; special function registers
                                    257 ;--------------------------------------------------------
                                    258 	.area RSEG    (ABS,DATA)
      000000                        259 	.org 0x0000
                           0000C8   260 _T2CON	=	0x00c8
                           0000CA   261 _RCAP2L	=	0x00ca
                           0000CB   262 _RCAP2H	=	0x00cb
                           0000CC   263 _TL2	=	0x00cc
                           0000CD   264 _TH2	=	0x00cd
                           00008E   265 _AUXR	=	0x008e
                           0000A2   266 _AUXR1	=	0x00a2
                           000097   267 _CKRL	=	0x0097
                           00008F   268 _CKCON0	=	0x008f
                           0000AF   269 _CKCON1	=	0x00af
                           0000FA   270 _CCAP0H	=	0x00fa
                           0000FB   271 _CCAP1H	=	0x00fb
                           0000FC   272 _CCAP2H	=	0x00fc
                           0000FD   273 _CCAP3H	=	0x00fd
                           0000FE   274 _CCAP4H	=	0x00fe
                           0000EA   275 _CCAP0L	=	0x00ea
                           0000EB   276 _CCAP1L	=	0x00eb
                           0000EC   277 _CCAP2L	=	0x00ec
                           0000ED   278 _CCAP3L	=	0x00ed
                           0000EE   279 _CCAP4L	=	0x00ee
                           0000DA   280 _CCAPM0	=	0x00da
                           0000DB   281 _CCAPM1	=	0x00db
                           0000DC   282 _CCAPM2	=	0x00dc
                           0000DD   283 _CCAPM3	=	0x00dd
                           0000DE   284 _CCAPM4	=	0x00de
                           0000D8   285 _CCON	=	0x00d8
                           0000F9   286 _CH	=	0x00f9
                           0000E9   287 _CL	=	0x00e9
                           0000D9   288 _CMOD	=	0x00d9
                           0000A8   289 _IEN0	=	0x00a8
                           0000B1   290 _IEN1	=	0x00b1
                           0000B8   291 _IPL0	=	0x00b8
                           0000B7   292 _IPH0	=	0x00b7
                           0000B2   293 _IPL1	=	0x00b2
                           0000B3   294 _IPH1	=	0x00b3
                           0000C0   295 _P4	=	0x00c0
                           0000E8   296 _P5	=	0x00e8
                           0000A6   297 _WDTRST	=	0x00a6
                           0000A7   298 _WDTPRG	=	0x00a7
                           0000A9   299 _SADDR	=	0x00a9
                           0000B9   300 _SADEN	=	0x00b9
                           0000C3   301 _SPCON	=	0x00c3
                           0000C4   302 _SPSTA	=	0x00c4
                           0000C5   303 _SPDAT	=	0x00c5
                           0000C9   304 _T2MOD	=	0x00c9
                           00009B   305 _BDRCON	=	0x009b
                           00009A   306 _BRL	=	0x009a
                           00009C   307 _KBLS	=	0x009c
                           00009D   308 _KBE	=	0x009d
                           00009E   309 _KBF	=	0x009e
                           0000D2   310 _EECON	=	0x00d2
                           0000E0   311 _ACC	=	0x00e0
                           0000F0   312 _B	=	0x00f0
                           000083   313 _DPH	=	0x0083
                           000083   314 _DP0H	=	0x0083
                           000082   315 _DPL	=	0x0082
                           000082   316 _DP0L	=	0x0082
                           0000A8   317 _IE	=	0x00a8
                           0000B8   318 _IP	=	0x00b8
                           000080   319 _P0	=	0x0080
                           000090   320 _P1	=	0x0090
                           0000A0   321 _P2	=	0x00a0
                           0000B0   322 _P3	=	0x00b0
                           000087   323 _PCON	=	0x0087
                           0000D0   324 _PSW	=	0x00d0
                           000099   325 _SBUF	=	0x0099
                           000099   326 _SBUF0	=	0x0099
                           000098   327 _SCON	=	0x0098
                           000081   328 _SP	=	0x0081
                           000088   329 _TCON	=	0x0088
                           00008C   330 _TH0	=	0x008c
                           00008D   331 _TH1	=	0x008d
                           00008A   332 _TL0	=	0x008a
                           00008B   333 _TL1	=	0x008b
                           000089   334 _TMOD	=	0x0089
                                    335 ;--------------------------------------------------------
                                    336 ; special function bits
                                    337 ;--------------------------------------------------------
                                    338 	.area RSEG    (ABS,DATA)
      000000                        339 	.org 0x0000
                           0000AD   340 _ET2	=	0x00ad
                           0000BD   341 _PT2	=	0x00bd
                           0000C8   342 _T2CON_0	=	0x00c8
                           0000C9   343 _T2CON_1	=	0x00c9
                           0000CA   344 _T2CON_2	=	0x00ca
                           0000CB   345 _T2CON_3	=	0x00cb
                           0000CC   346 _T2CON_4	=	0x00cc
                           0000CD   347 _T2CON_5	=	0x00cd
                           0000CE   348 _T2CON_6	=	0x00ce
                           0000CF   349 _T2CON_7	=	0x00cf
                           0000C8   350 _CP_RL2	=	0x00c8
                           0000C9   351 _C_T2	=	0x00c9
                           0000CA   352 _TR2	=	0x00ca
                           0000CB   353 _EXEN2	=	0x00cb
                           0000CC   354 _TCLK	=	0x00cc
                           0000CD   355 _RCLK	=	0x00cd
                           0000CE   356 _EXF2	=	0x00ce
                           0000CF   357 _TF2	=	0x00cf
                           0000DF   358 _CF	=	0x00df
                           0000DE   359 _CR	=	0x00de
                           0000DC   360 _CCF4	=	0x00dc
                           0000DB   361 _CCF3	=	0x00db
                           0000DA   362 _CCF2	=	0x00da
                           0000D9   363 _CCF1	=	0x00d9
                           0000D8   364 _CCF0	=	0x00d8
                           0000AE   365 _EC	=	0x00ae
                           0000BE   366 _PPCL	=	0x00be
                           0000BD   367 _PT2L	=	0x00bd
                           0000BC   368 _PSL	=	0x00bc
                           0000BB   369 _PT1L	=	0x00bb
                           0000BA   370 _PX1L	=	0x00ba
                           0000B9   371 _PT0L	=	0x00b9
                           0000B8   372 _PX0L	=	0x00b8
                           0000C0   373 _P4_0	=	0x00c0
                           0000C1   374 _P4_1	=	0x00c1
                           0000C2   375 _P4_2	=	0x00c2
                           0000C3   376 _P4_3	=	0x00c3
                           0000C4   377 _P4_4	=	0x00c4
                           0000C5   378 _P4_5	=	0x00c5
                           0000C6   379 _P4_6	=	0x00c6
                           0000C7   380 _P4_7	=	0x00c7
                           0000E8   381 _P5_0	=	0x00e8
                           0000E9   382 _P5_1	=	0x00e9
                           0000EA   383 _P5_2	=	0x00ea
                           0000EB   384 _P5_3	=	0x00eb
                           0000EC   385 _P5_4	=	0x00ec
                           0000ED   386 _P5_5	=	0x00ed
                           0000EE   387 _P5_6	=	0x00ee
                           0000EF   388 _P5_7	=	0x00ef
                           0000F0   389 _BREG_F0	=	0x00f0
                           0000F1   390 _BREG_F1	=	0x00f1
                           0000F2   391 _BREG_F2	=	0x00f2
                           0000F3   392 _BREG_F3	=	0x00f3
                           0000F4   393 _BREG_F4	=	0x00f4
                           0000F5   394 _BREG_F5	=	0x00f5
                           0000F6   395 _BREG_F6	=	0x00f6
                           0000F7   396 _BREG_F7	=	0x00f7
                           0000A8   397 _EX0	=	0x00a8
                           0000A9   398 _ET0	=	0x00a9
                           0000AA   399 _EX1	=	0x00aa
                           0000AB   400 _ET1	=	0x00ab
                           0000AC   401 _ES	=	0x00ac
                           0000AF   402 _EA	=	0x00af
                           0000B8   403 _PX0	=	0x00b8
                           0000B9   404 _PT0	=	0x00b9
                           0000BA   405 _PX1	=	0x00ba
                           0000BB   406 _PT1	=	0x00bb
                           0000BC   407 _PS	=	0x00bc
                           000080   408 _P0_0	=	0x0080
                           000081   409 _P0_1	=	0x0081
                           000082   410 _P0_2	=	0x0082
                           000083   411 _P0_3	=	0x0083
                           000084   412 _P0_4	=	0x0084
                           000085   413 _P0_5	=	0x0085
                           000086   414 _P0_6	=	0x0086
                           000087   415 _P0_7	=	0x0087
                           000090   416 _P1_0	=	0x0090
                           000091   417 _P1_1	=	0x0091
                           000092   418 _P1_2	=	0x0092
                           000093   419 _P1_3	=	0x0093
                           000094   420 _P1_4	=	0x0094
                           000095   421 _P1_5	=	0x0095
                           000096   422 _P1_6	=	0x0096
                           000097   423 _P1_7	=	0x0097
                           0000A0   424 _P2_0	=	0x00a0
                           0000A1   425 _P2_1	=	0x00a1
                           0000A2   426 _P2_2	=	0x00a2
                           0000A3   427 _P2_3	=	0x00a3
                           0000A4   428 _P2_4	=	0x00a4
                           0000A5   429 _P2_5	=	0x00a5
                           0000A6   430 _P2_6	=	0x00a6
                           0000A7   431 _P2_7	=	0x00a7
                           0000B0   432 _P3_0	=	0x00b0
                           0000B1   433 _P3_1	=	0x00b1
                           0000B2   434 _P3_2	=	0x00b2
                           0000B3   435 _P3_3	=	0x00b3
                           0000B4   436 _P3_4	=	0x00b4
                           0000B5   437 _P3_5	=	0x00b5
                           0000B6   438 _P3_6	=	0x00b6
                           0000B7   439 _P3_7	=	0x00b7
                           0000B0   440 _RXD	=	0x00b0
                           0000B0   441 _RXD0	=	0x00b0
                           0000B1   442 _TXD	=	0x00b1
                           0000B1   443 _TXD0	=	0x00b1
                           0000B2   444 _INT0	=	0x00b2
                           0000B3   445 _INT1	=	0x00b3
                           0000B4   446 _T0	=	0x00b4
                           0000B5   447 _T1	=	0x00b5
                           0000B6   448 _WR	=	0x00b6
                           0000B7   449 _RD	=	0x00b7
                           0000D0   450 _P	=	0x00d0
                           0000D1   451 _F1	=	0x00d1
                           0000D2   452 _OV	=	0x00d2
                           0000D3   453 _RS0	=	0x00d3
                           0000D4   454 _RS1	=	0x00d4
                           0000D5   455 _F0	=	0x00d5
                           0000D6   456 _AC	=	0x00d6
                           0000D7   457 _CY	=	0x00d7
                           000098   458 _RI	=	0x0098
                           000099   459 _TI	=	0x0099
                           00009A   460 _RB8	=	0x009a
                           00009B   461 _TB8	=	0x009b
                           00009C   462 _REN	=	0x009c
                           00009D   463 _SM2	=	0x009d
                           00009E   464 _SM1	=	0x009e
                           00009F   465 _SM0	=	0x009f
                           000088   466 _IT0	=	0x0088
                           000089   467 _IE0	=	0x0089
                           00008A   468 _IT1	=	0x008a
                           00008B   469 _IE1	=	0x008b
                           00008C   470 _TR0	=	0x008c
                           00008D   471 _TF0	=	0x008d
                           00008E   472 _TR1	=	0x008e
                           00008F   473 _TF1	=	0x008f
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable register banks
                                    476 ;--------------------------------------------------------
                                    477 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        478 	.ds 8
                                    479 ;--------------------------------------------------------
                                    480 ; overlayable bit register bank
                                    481 ;--------------------------------------------------------
                                    482 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        483 bits:
      000021                        484 	.ds 1
                           008000   485 	b0 = bits[0]
                           008100   486 	b1 = bits[1]
                           008200   487 	b2 = bits[2]
                           008300   488 	b3 = bits[3]
                           008400   489 	b4 = bits[4]
                           008500   490 	b5 = bits[5]
                           008600   491 	b6 = bits[6]
                           008700   492 	b7 = bits[7]
                                    493 ;--------------------------------------------------------
                                    494 ; internal ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area DSEG    (DATA)
      000008                        497 _ptr::
      000008                        498 	.ds 2
      00000A                        499 _tick::
      00000A                        500 	.ds 2
      00000C                        501 _elapsed_tick::
      00000C                        502 	.ds 2
      00000E                        503 _min_high::
      00000E                        504 	.ds 1
      00000F                        505 _min_low::
      00000F                        506 	.ds 1
      000010                        507 _sec_high::
      000010                        508 	.ds 1
      000011                        509 _sec_low::
      000011                        510 	.ds 1
      000012                        511 _mili_sec::
      000012                        512 	.ds 1
      000013                        513 _custom_char_code::
      000013                        514 	.ds 1
      000014                        515 _clockrun_flag::
      000014                        516 	.ds 2
      000016                        517 _lcdgotoxy_PARM_2:
      000016                        518 	.ds 1
      000017                        519 _create_custom_character_c_65536_69:
      000017                        520 	.ds 8
                                    521 ;--------------------------------------------------------
                                    522 ; overlayable items in internal ram
                                    523 ;--------------------------------------------------------
                                    524 	.area	OSEG    (OVR,DATA)
                                    525 	.area	OSEG    (OVR,DATA)
      000022                        526 _lcd_command_PARM_2:
      000022                        527 	.ds 1
      000023                        528 _lcd_command_PARM_3:
      000023                        529 	.ds 1
                                    530 ;--------------------------------------------------------
                                    531 ; Stack segment in internal ram
                                    532 ;--------------------------------------------------------
                                    533 	.area	SSEG
      000024                        534 __start__stack:
      000024                        535 	.ds	1
                                    536 
                                    537 ;--------------------------------------------------------
                                    538 ; indirectly addressable internal ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area ISEG    (DATA)
                                    541 ;--------------------------------------------------------
                                    542 ; absolute internal ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area IABS    (ABS,DATA)
                                    545 	.area IABS    (ABS,DATA)
                                    546 ;--------------------------------------------------------
                                    547 ; bit data
                                    548 ;--------------------------------------------------------
                                    549 	.area BSEG    (BIT)
      000000                        550 _lcdgotoxy_sloc0_1_0:
      000000                        551 	.ds 1
      000001                        552 _isr_timer2_sloc0_1_0:
      000001                        553 	.ds 1
                                    554 ;--------------------------------------------------------
                                    555 ; paged external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area PSEG    (PAG,XDATA)
                                    558 ;--------------------------------------------------------
                                    559 ; external ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XSEG    (XDATA)
                                    562 ;--------------------------------------------------------
                                    563 ; absolute external ram data
                                    564 ;--------------------------------------------------------
                                    565 	.area XABS    (ABS,XDATA)
                                    566 ;--------------------------------------------------------
                                    567 ; external initialized ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area XISEG   (XDATA)
      00FC00                        570 _db::
      00FC00                        571 	.ds 1
                                    572 	.area HOME    (CODE)
                                    573 	.area GSINIT0 (CODE)
                                    574 	.area GSINIT1 (CODE)
                                    575 	.area GSINIT2 (CODE)
                                    576 	.area GSINIT3 (CODE)
                                    577 	.area GSINIT4 (CODE)
                                    578 	.area GSINIT5 (CODE)
                                    579 	.area GSINIT  (CODE)
                                    580 	.area GSFINAL (CODE)
                                    581 	.area CSEG    (CODE)
                                    582 ;--------------------------------------------------------
                                    583 ; interrupt vector
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
      002000                        586 __interrupt_vect:
      002000 02 20 31         [24]  587 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  588 	reti
      002004                        589 	.ds	7
      00200B 32               [24]  590 	reti
      00200C                        591 	.ds	7
      002013 32               [24]  592 	reti
      002014                        593 	.ds	7
      00201B 32               [24]  594 	reti
      00201C                        595 	.ds	7
      002023 32               [24]  596 	reti
      002024                        597 	.ds	7
      00202B 02 23 9E         [24]  598 	ljmp	_isr_timer2
                                    599 ;--------------------------------------------------------
                                    600 ; global & static initialisations
                                    601 ;--------------------------------------------------------
                                    602 	.area HOME    (CODE)
                                    603 	.area GSINIT  (CODE)
                                    604 	.area GSFINAL (CODE)
                                    605 	.area GSINIT  (CODE)
                                    606 	.globl __sdcc_gsinit_startup
                                    607 	.globl __sdcc_program_startup
                                    608 	.globl __start__stack
                                    609 	.globl __mcs51_genXINIT
                                    610 	.globl __mcs51_genXRAMCLEAR
                                    611 	.globl __mcs51_genRAMCLEAR
                                    612 ;	main.c:18: __xdata uint8_t * ptr = &db;
      00208A 75 08 00         [24]  613 	mov	_ptr,#_db
      00208D 75 09 FC         [24]  614 	mov	(_ptr + 1),#(_db >> 8)
                                    615 ;	main.c:19: volatile unsigned int tick = 0;
      002090 E4               [12]  616 	clr	a
      002091 F5 0A            [12]  617 	mov	_tick,a
      002093 F5 0B            [12]  618 	mov	(_tick + 1),a
                                    619 ;	main.c:20: volatile unsigned int  elapsed_tick = 0;
      002095 F5 0C            [12]  620 	mov	_elapsed_tick,a
      002097 F5 0D            [12]  621 	mov	(_elapsed_tick + 1),a
                                    622 ;	main.c:28: uint8_t custom_char_code = 1;
      002099 75 13 01         [24]  623 	mov	_custom_char_code,#0x01
                                    624 ;	main.c:30: volatile unsigned int clockrun_flag = 0;
      00209C F5 14            [12]  625 	mov	_clockrun_flag,a
      00209E F5 15            [12]  626 	mov	(_clockrun_flag + 1),a
                                    627 	.area GSFINAL (CODE)
      0020A0 02 20 2E         [24]  628 	ljmp	__sdcc_program_startup
                                    629 ;--------------------------------------------------------
                                    630 ; Home
                                    631 ;--------------------------------------------------------
                                    632 	.area HOME    (CODE)
                                    633 	.area HOME    (CODE)
      00202E                        634 __sdcc_program_startup:
      00202E 02 25 13         [24]  635 	ljmp	_main
                                    636 ;	return from main will return to caller
                                    637 ;--------------------------------------------------------
                                    638 ; code
                                    639 ;--------------------------------------------------------
                                    640 	.area CSEG    (CODE)
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    643 ;------------------------------------------------------------
                                    644 ;	main.c:37: _sdcc_external_startup()
                                    645 ;	-----------------------------------------
                                    646 ;	 function _sdcc_external_startup
                                    647 ;	-----------------------------------------
      0020A3                        648 __sdcc_external_startup:
                           000007   649 	ar7 = 0x07
                           000006   650 	ar6 = 0x06
                           000005   651 	ar5 = 0x05
                           000004   652 	ar4 = 0x04
                           000003   653 	ar3 = 0x03
                           000002   654 	ar2 = 0x02
                           000001   655 	ar1 = 0x01
                           000000   656 	ar0 = 0x00
                                    657 ;	main.c:39: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      0020A3 43 8E 0C         [24]  658 	orl	_AUXR,#0x0c
                                    659 ;	main.c:40: return 0;               // Return 0 to indicate successful startup
      0020A6 90 00 00         [24]  660 	mov	dptr,#0x0000
                                    661 ;	main.c:41: }
      0020A9 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'delay'
                                    665 ;------------------------------------------------------------
                                    666 ;t                         Allocated to registers 
                                    667 ;------------------------------------------------------------
                                    668 ;	main.c:52: void delay(uint32_t t)
                                    669 ;	-----------------------------------------
                                    670 ;	 function delay
                                    671 ;	-----------------------------------------
      0020AA                        672 _delay:
      0020AA AC 82            [24]  673 	mov	r4,dpl
      0020AC AD 83            [24]  674 	mov	r5,dph
      0020AE AE F0            [24]  675 	mov	r6,b
      0020B0 FF               [12]  676 	mov	r7,a
                                    677 ;	main.c:54: while(t--){
      0020B1                        678 00101$:
      0020B1 8C 00            [24]  679 	mov	ar0,r4
      0020B3 8D 01            [24]  680 	mov	ar1,r5
      0020B5 8E 02            [24]  681 	mov	ar2,r6
      0020B7 8F 03            [24]  682 	mov	ar3,r7
      0020B9 1C               [12]  683 	dec	r4
      0020BA BC FF 09         [24]  684 	cjne	r4,#0xff,00115$
      0020BD 1D               [12]  685 	dec	r5
      0020BE BD FF 05         [24]  686 	cjne	r5,#0xff,00115$
      0020C1 1E               [12]  687 	dec	r6
      0020C2 BE FF 01         [24]  688 	cjne	r6,#0xff,00115$
      0020C5 1F               [12]  689 	dec	r7
      0020C6                        690 00115$:
      0020C6 E8               [12]  691 	mov	a,r0
      0020C7 49               [12]  692 	orl	a,r1
      0020C8 4A               [12]  693 	orl	a,r2
      0020C9 4B               [12]  694 	orl	a,r3
      0020CA 60 03            [24]  695 	jz	00104$
                                    696 ;	main.c:55: NOP;  // Assembly NOP instruction for delaying program execution.
      0020CC 00               [12]  697 	nop	
      0020CD 80 E2            [24]  698 	sjmp	00101$
      0020CF                        699 00104$:
                                    700 ;	main.c:57: }
      0020CF 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'lcd_command'
                                    704 ;------------------------------------------------------------
                                    705 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    706 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    707 ;rs                        Allocated to registers r7 
                                    708 ;------------------------------------------------------------
                                    709 ;	main.c:59: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data){
                                    710 ;	-----------------------------------------
                                    711 ;	 function lcd_command
                                    712 ;	-----------------------------------------
      0020D0                        713 _lcd_command:
                                    714 ;	main.c:60: RS = rs;
                                    715 ;	assignBit
      0020D0 E5 82            [12]  716 	mov	a,dpl
      0020D2 24 FF            [12]  717 	add	a,#0xff
      0020D4 92 96            [24]  718 	mov	_P1_6,c
                                    719 ;	main.c:61: R_W = r_w;
                                    720 ;	assignBit
      0020D6 E5 22            [12]  721 	mov	a,_lcd_command_PARM_2
      0020D8 24 FF            [12]  722 	add	a,#0xff
      0020DA 92 97            [24]  723 	mov	_P1_7,c
                                    724 ;	main.c:62: *ptr = data;
      0020DC 85 08 82         [24]  725 	mov	dpl,_ptr
      0020DF 85 09 83         [24]  726 	mov	dph,(_ptr + 1)
      0020E2 E5 23            [12]  727 	mov	a,_lcd_command_PARM_3
      0020E4 F0               [24]  728 	movx	@dptr,a
                                    729 ;	main.c:63: }
      0020E5 22               [24]  730 	ret
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'lcdbusywait'
                                    733 ;------------------------------------------------------------
                                    734 ;	main.c:65: void lcdbusywait(){
                                    735 ;	-----------------------------------------
                                    736 ;	 function lcdbusywait
                                    737 ;	-----------------------------------------
      0020E6                        738 _lcdbusywait:
                                    739 ;	main.c:66: RS = PULSE_LOW;
                                    740 ;	assignBit
      0020E6 C2 96            [12]  741 	clr	_P1_6
                                    742 ;	main.c:67: R_W = PULSE_HIGH;
                                    743 ;	assignBit
      0020E8 D2 97            [12]  744 	setb	_P1_7
                                    745 ;	main.c:68: while(*ptr & (0b10000000)){
      0020EA                        746 00101$:
      0020EA 85 08 82         [24]  747 	mov	dpl,_ptr
      0020ED 85 09 83         [24]  748 	mov	dph,(_ptr + 1)
      0020F0 E0               [24]  749 	movx	a,@dptr
      0020F1 20 E7 F6         [24]  750 	jb	acc.7,00101$
                                    751 ;	main.c:71: }
      0020F4 22               [24]  752 	ret
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    755 ;------------------------------------------------------------
                                    756 ;addr                      Allocated to registers r7 
                                    757 ;------------------------------------------------------------
                                    758 ;	main.c:72: void lcdgotoaddr(uint8_t addr){
                                    759 ;	-----------------------------------------
                                    760 ;	 function lcdgotoaddr
                                    761 ;	-----------------------------------------
      0020F5                        762 _lcdgotoaddr:
      0020F5 AF 82            [24]  763 	mov	r7,dpl
                                    764 ;	main.c:73: RS = PULSE_LOW;
                                    765 ;	assignBit
      0020F7 C2 96            [12]  766 	clr	_P1_6
                                    767 ;	main.c:74: R_W = PULSE_LOW;
                                    768 ;	assignBit
      0020F9 C2 97            [12]  769 	clr	_P1_7
                                    770 ;	main.c:75: *ptr = addr | (0x80);
      0020FB 85 08 82         [24]  771 	mov	dpl,_ptr
      0020FE 85 09 83         [24]  772 	mov	dph,(_ptr + 1)
      002101 43 07 80         [24]  773 	orl	ar7,#0x80
      002104 EF               [12]  774 	mov	a,r7
      002105 F0               [24]  775 	movx	@dptr,a
                                    776 ;	main.c:76: lcdbusywait();
                                    777 ;	main.c:77: }
      002106 02 20 E6         [24]  778 	ljmp	_lcdbusywait
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'lcdgotoxy'
                                    781 ;------------------------------------------------------------
                                    782 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    783 ;row                       Allocated to registers r7 
                                    784 ;------------------------------------------------------------
                                    785 ;	main.c:79: void lcdgotoxy(uint8_t row, uint8_t column){
                                    786 ;	-----------------------------------------
                                    787 ;	 function lcdgotoxy
                                    788 ;	-----------------------------------------
      002109                        789 _lcdgotoxy:
                                    790 ;	main.c:80: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      002109 AE 82            [24]  791 	mov	r6,dpl
      00210B 7F 00            [12]  792 	mov	r7,#0x00
      00210D EE               [12]  793 	mov	a,r6
      00210E 30 E0 23         [24]  794 	jnb	acc.0,00103$
      002111 75 22 03         [24]  795 	mov	__modsint_PARM_2,#0x03
      002114 75 23 00         [24]  796 	mov	(__modsint_PARM_2 + 1),#0x00
      002117 8E 82            [24]  797 	mov	dpl,r6
      002119 8F 83            [24]  798 	mov	dph,r7
      00211B 12 29 14         [24]  799 	lcall	__modsint
      00211E AC 82            [24]  800 	mov	r4,dpl
      002120 AD 83            [24]  801 	mov	r5,dph
      002122 EC               [12]  802 	mov	a,r4
      002123 4D               [12]  803 	orl	a,r5
      002124 B4 01 00         [24]  804 	cjne	a,#0x01,00110$
      002127                        805 00110$:
      002127 92 00            [24]  806 	mov  _lcdgotoxy_sloc0_1_0,c
      002129 E4               [12]  807 	clr	a
      00212A 33               [12]  808 	rlc	a
      00212B C4               [12]  809 	swap	a
      00212C 54 F0            [12]  810 	anl	a,#0xf0
      00212E AC 16            [24]  811 	mov	r4,_lcdgotoxy_PARM_2
      002130 2C               [12]  812 	add	a,r4
      002131 FD               [12]  813 	mov	r5,a
      002132 80 1A            [24]  814 	sjmp	00104$
      002134                        815 00103$:
      002134 AC 16            [24]  816 	mov	r4,_lcdgotoxy_PARM_2
      002136 74 40            [12]  817 	mov	a,#0x40
      002138 2C               [12]  818 	add	a,r4
      002139 FC               [12]  819 	mov	r4,a
      00213A 53 06 03         [24]  820 	anl	ar6,#0x03
      00213D 7F 00            [12]  821 	mov	r7,#0x00
      00213F EE               [12]  822 	mov	a,r6
      002140 4F               [12]  823 	orl	a,r7
      002141 B4 01 00         [24]  824 	cjne	a,#0x01,00111$
      002144                        825 00111$:
      002144 92 00            [24]  826 	mov  _lcdgotoxy_sloc0_1_0,c
      002146 E4               [12]  827 	clr	a
      002147 33               [12]  828 	rlc	a
      002148 C4               [12]  829 	swap	a
      002149 54 F0            [12]  830 	anl	a,#0xf0
      00214B FF               [12]  831 	mov	r7,a
      00214C 2C               [12]  832 	add	a,r4
      00214D FD               [12]  833 	mov	r5,a
      00214E                        834 00104$:
      00214E ED               [12]  835 	mov	a,r5
      00214F 14               [12]  836 	dec	a
      002150 F5 82            [12]  837 	mov	dpl,a
                                    838 ;	main.c:81: }
      002152 02 20 F5         [24]  839 	ljmp	_lcdgotoaddr
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'lcdputch'
                                    842 ;------------------------------------------------------------
                                    843 ;cc                        Allocated to registers r7 
                                    844 ;------------------------------------------------------------
                                    845 ;	main.c:82: void lcdputch(uint8_t cc){
                                    846 ;	-----------------------------------------
                                    847 ;	 function lcdputch
                                    848 ;	-----------------------------------------
      002155                        849 _lcdputch:
      002155 AF 82            [24]  850 	mov	r7,dpl
                                    851 ;	main.c:83: RS = PULSE_HIGH;
                                    852 ;	assignBit
      002157 D2 96            [12]  853 	setb	_P1_6
                                    854 ;	main.c:84: R_W = PULSE_LOW;
                                    855 ;	assignBit
      002159 C2 97            [12]  856 	clr	_P1_7
                                    857 ;	main.c:85: *ptr = cc;
      00215B 85 08 82         [24]  858 	mov	dpl,_ptr
      00215E 85 09 83         [24]  859 	mov	dph,(_ptr + 1)
      002161 EF               [12]  860 	mov	a,r7
      002162 F0               [24]  861 	movx	@dptr,a
                                    862 ;	main.c:86: lcdbusywait();
                                    863 ;	main.c:87: }
      002163 02 20 E6         [24]  864 	ljmp	_lcdbusywait
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'lcdputstr'
                                    867 ;------------------------------------------------------------
                                    868 ;ss                        Allocated to registers 
                                    869 ;lcd_ptr_addr              Allocated to registers r4 
                                    870 ;------------------------------------------------------------
                                    871 ;	main.c:89: void lcdputstr(uint8_t *ss){
                                    872 ;	-----------------------------------------
                                    873 ;	 function lcdputstr
                                    874 ;	-----------------------------------------
      002166                        875 _lcdputstr:
      002166 AD 82            [24]  876 	mov	r5,dpl
      002168 AE 83            [24]  877 	mov	r6,dph
      00216A AF F0            [24]  878 	mov	r7,b
                                    879 ;	main.c:91: while(*ss != '\0'){
      00216C                        880 00107$:
      00216C 8D 82            [24]  881 	mov	dpl,r5
      00216E 8E 83            [24]  882 	mov	dph,r6
      002170 8F F0            [24]  883 	mov	b,r7
      002172 12 28 F8         [24]  884 	lcall	__gptrget
      002175 70 01            [24]  885 	jnz	00137$
      002177 22               [24]  886 	ret
      002178                        887 00137$:
                                    888 ;	main.c:92: RS = PULSE_LOW;
                                    889 ;	assignBit
      002178 C2 96            [12]  890 	clr	_P1_6
                                    891 ;	main.c:93: R_W = PULSE_HIGH;
                                    892 ;	assignBit
      00217A D2 97            [12]  893 	setb	_P1_7
                                    894 ;	main.c:94: lcdputch(*ss);
      00217C 8D 82            [24]  895 	mov	dpl,r5
      00217E 8E 83            [24]  896 	mov	dph,r6
      002180 8F F0            [24]  897 	mov	b,r7
      002182 12 28 F8         [24]  898 	lcall	__gptrget
      002185 F5 82            [12]  899 	mov	dpl,a
      002187 C0 07            [24]  900 	push	ar7
      002189 C0 06            [24]  901 	push	ar6
      00218B C0 05            [24]  902 	push	ar5
      00218D 12 21 55         [24]  903 	lcall	_lcdputch
      002190 D0 05            [24]  904 	pop	ar5
      002192 D0 06            [24]  905 	pop	ar6
      002194 D0 07            [24]  906 	pop	ar7
                                    907 ;	main.c:95: lcd_ptr_addr = *ptr & (0b01111111);
      002196 85 08 82         [24]  908 	mov	dpl,_ptr
      002199 85 09 83         [24]  909 	mov	dph,(_ptr + 1)
      00219C E0               [24]  910 	movx	a,@dptr
      00219D FC               [12]  911 	mov	r4,a
      00219E 53 04 7F         [24]  912 	anl	ar4,#0x7f
                                    913 ;	main.c:96: switch(lcd_ptr_addr){
      0021A1 BC 10 02         [24]  914 	cjne	r4,#0x10,00138$
      0021A4 80 0F            [24]  915 	sjmp	00101$
      0021A6                        916 00138$:
      0021A6 BC 20 02         [24]  917 	cjne	r4,#0x20,00139$
      0021A9 80 32            [24]  918 	sjmp	00103$
      0021AB                        919 00139$:
      0021AB BC 50 02         [24]  920 	cjne	r4,#0x50,00140$
      0021AE 80 19            [24]  921 	sjmp	00102$
      0021B0                        922 00140$:
                                    923 ;	main.c:97: case 0x10:
      0021B0 BC 60 50         [24]  924 	cjne	r4,#0x60,00106$
      0021B3 80 3C            [24]  925 	sjmp	00104$
      0021B5                        926 00101$:
                                    927 ;	main.c:98: lcdgotoaddr(0x40);
      0021B5 75 82 40         [24]  928 	mov	dpl,#0x40
      0021B8 C0 07            [24]  929 	push	ar7
      0021BA C0 06            [24]  930 	push	ar6
      0021BC C0 05            [24]  931 	push	ar5
      0021BE 12 20 F5         [24]  932 	lcall	_lcdgotoaddr
      0021C1 D0 05            [24]  933 	pop	ar5
      0021C3 D0 06            [24]  934 	pop	ar6
      0021C5 D0 07            [24]  935 	pop	ar7
                                    936 ;	main.c:99: break;
                                    937 ;	main.c:100: case 0x50:
      0021C7 80 3A            [24]  938 	sjmp	00106$
      0021C9                        939 00102$:
                                    940 ;	main.c:101: lcdgotoaddr(0x10);
      0021C9 75 82 10         [24]  941 	mov	dpl,#0x10
      0021CC C0 07            [24]  942 	push	ar7
      0021CE C0 06            [24]  943 	push	ar6
      0021D0 C0 05            [24]  944 	push	ar5
      0021D2 12 20 F5         [24]  945 	lcall	_lcdgotoaddr
      0021D5 D0 05            [24]  946 	pop	ar5
      0021D7 D0 06            [24]  947 	pop	ar6
      0021D9 D0 07            [24]  948 	pop	ar7
                                    949 ;	main.c:102: break;
                                    950 ;	main.c:103: case 0x20:
      0021DB 80 26            [24]  951 	sjmp	00106$
      0021DD                        952 00103$:
                                    953 ;	main.c:104: lcdgotoaddr(0x50);
      0021DD 75 82 50         [24]  954 	mov	dpl,#0x50
      0021E0 C0 07            [24]  955 	push	ar7
      0021E2 C0 06            [24]  956 	push	ar6
      0021E4 C0 05            [24]  957 	push	ar5
      0021E6 12 20 F5         [24]  958 	lcall	_lcdgotoaddr
      0021E9 D0 05            [24]  959 	pop	ar5
      0021EB D0 06            [24]  960 	pop	ar6
      0021ED D0 07            [24]  961 	pop	ar7
                                    962 ;	main.c:105: break;
                                    963 ;	main.c:106: case 0x60:
      0021EF 80 12            [24]  964 	sjmp	00106$
      0021F1                        965 00104$:
                                    966 ;	main.c:107: lcdgotoaddr(0x00);
      0021F1 75 82 00         [24]  967 	mov	dpl,#0x00
      0021F4 C0 07            [24]  968 	push	ar7
      0021F6 C0 06            [24]  969 	push	ar6
      0021F8 C0 05            [24]  970 	push	ar5
      0021FA 12 20 F5         [24]  971 	lcall	_lcdgotoaddr
      0021FD D0 05            [24]  972 	pop	ar5
      0021FF D0 06            [24]  973 	pop	ar6
      002201 D0 07            [24]  974 	pop	ar7
                                    975 ;	main.c:111: }
      002203                        976 00106$:
                                    977 ;	main.c:112: ss++;
      002203 0D               [12]  978 	inc	r5
      002204 BD 00 01         [24]  979 	cjne	r5,#0x00,00142$
      002207 0E               [12]  980 	inc	r6
      002208                        981 00142$:
                                    982 ;	main.c:114: }
      002208 02 21 6C         [24]  983 	ljmp	00107$
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'lcdinit'
                                    986 ;------------------------------------------------------------
                                    987 ;	main.c:115: void lcdinit()
                                    988 ;	-----------------------------------------
                                    989 ;	 function lcdinit
                                    990 ;	-----------------------------------------
      00220B                        991 _lcdinit:
                                    992 ;	main.c:117: delay(14000); //waiting for 15ms (1.085us * 14000 ~= 15ms)
      00220B 90 36 B0         [24]  993 	mov	dptr,#0x36b0
      00220E E4               [12]  994 	clr	a
      00220F F5 F0            [12]  995 	mov	b,a
      002211 12 20 AA         [24]  996 	lcall	_delay
                                    997 ;	main.c:118: lcd_command(0,0,0x30); // system set
      002214 75 22 00         [24]  998 	mov	_lcd_command_PARM_2,#0x00
      002217 75 23 30         [24]  999 	mov	_lcd_command_PARM_3,#0x30
      00221A 75 82 00         [24] 1000 	mov	dpl,#0x00
      00221D 12 20 D0         [24] 1001 	lcall	_lcd_command
                                   1002 ;	main.c:119: delay(4000); //waiting for 4.1ms (1.085us * 4000 ~= 4.1ms)
      002220 90 0F A0         [24] 1003 	mov	dptr,#0x0fa0
      002223 E4               [12] 1004 	clr	a
      002224 F5 F0            [12] 1005 	mov	b,a
      002226 12 20 AA         [24] 1006 	lcall	_delay
                                   1007 ;	main.c:120: lcd_command(0,0,0x30); // system set
      002229 75 22 00         [24] 1008 	mov	_lcd_command_PARM_2,#0x00
      00222C 75 23 30         [24] 1009 	mov	_lcd_command_PARM_3,#0x30
      00222F 75 82 00         [24] 1010 	mov	dpl,#0x00
      002232 12 20 D0         [24] 1011 	lcall	_lcd_command
                                   1012 ;	main.c:121: delay(100); //waiting for 100us (1.085us * 100 ~= 100us)
      002235 90 00 64         [24] 1013 	mov	dptr,#(0x64&0x00ff)
      002238 E4               [12] 1014 	clr	a
      002239 F5 F0            [12] 1015 	mov	b,a
      00223B 12 20 AA         [24] 1016 	lcall	_delay
                                   1017 ;	main.c:122: lcd_command(0,0,0x30); // system set
      00223E 75 22 00         [24] 1018 	mov	_lcd_command_PARM_2,#0x00
      002241 75 23 30         [24] 1019 	mov	_lcd_command_PARM_3,#0x30
      002244 75 82 00         [24] 1020 	mov	dpl,#0x00
      002247 12 20 D0         [24] 1021 	lcall	_lcd_command
                                   1022 ;	main.c:123: lcdbusywait();
      00224A 12 20 E6         [24] 1023 	lcall	_lcdbusywait
                                   1024 ;	main.c:124: lcd_command(0,0,0x38); // function set
      00224D 75 22 00         [24] 1025 	mov	_lcd_command_PARM_2,#0x00
      002250 75 23 38         [24] 1026 	mov	_lcd_command_PARM_3,#0x38
      002253 75 82 00         [24] 1027 	mov	dpl,#0x00
      002256 12 20 D0         [24] 1028 	lcall	_lcd_command
                                   1029 ;	main.c:125: lcdbusywait();
      002259 12 20 E6         [24] 1030 	lcall	_lcdbusywait
                                   1031 ;	main.c:126: lcd_command(0,0,0x08); // turn off display
      00225C 75 22 00         [24] 1032 	mov	_lcd_command_PARM_2,#0x00
      00225F 75 23 08         [24] 1033 	mov	_lcd_command_PARM_3,#0x08
      002262 75 82 00         [24] 1034 	mov	dpl,#0x00
      002265 12 20 D0         [24] 1035 	lcall	_lcd_command
                                   1036 ;	main.c:127: lcdbusywait();
      002268 12 20 E6         [24] 1037 	lcall	_lcdbusywait
                                   1038 ;	main.c:128: lcd_command(0,0,0x0C); // turn on display
      00226B 75 22 00         [24] 1039 	mov	_lcd_command_PARM_2,#0x00
      00226E 75 23 0C         [24] 1040 	mov	_lcd_command_PARM_3,#0x0c
      002271 75 82 00         [24] 1041 	mov	dpl,#0x00
      002274 12 20 D0         [24] 1042 	lcall	_lcd_command
                                   1043 ;	main.c:129: lcdbusywait();
      002277 12 20 E6         [24] 1044 	lcall	_lcdbusywait
                                   1045 ;	main.c:130: lcd_command(0,0,0x06); // Entry mode set
      00227A 75 22 00         [24] 1046 	mov	_lcd_command_PARM_2,#0x00
      00227D 75 23 06         [24] 1047 	mov	_lcd_command_PARM_3,#0x06
      002280 75 82 00         [24] 1048 	mov	dpl,#0x00
      002283 12 20 D0         [24] 1049 	lcall	_lcd_command
                                   1050 ;	main.c:131: lcdbusywait();
      002286 12 20 E6         [24] 1051 	lcall	_lcdbusywait
                                   1052 ;	main.c:132: lcd_command(0,0,0x01); // clear screen and send the cursor home
      002289 75 22 00         [24] 1053 	mov	_lcd_command_PARM_2,#0x00
      00228C 75 23 01         [24] 1054 	mov	_lcd_command_PARM_3,#0x01
      00228F 75 82 00         [24] 1055 	mov	dpl,#0x00
                                   1056 ;	main.c:133: }
      002292 02 20 D0         [24] 1057 	ljmp	_lcd_command
                                   1058 ;------------------------------------------------------------
                                   1059 ;Allocation info for local variables in function 'lcdclear'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	main.c:135: void lcdclear(){
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function lcdclear
                                   1064 ;	-----------------------------------------
      002295                       1065 _lcdclear:
                                   1066 ;	main.c:136: RS = PULSE_LOW;
                                   1067 ;	assignBit
      002295 C2 96            [12] 1068 	clr	_P1_6
                                   1069 ;	main.c:137: R_W = PULSE_LOW;
                                   1070 ;	assignBit
      002297 C2 97            [12] 1071 	clr	_P1_7
                                   1072 ;	main.c:138: *ptr = 0b00000001;
      002299 85 08 82         [24] 1073 	mov	dpl,_ptr
      00229C 85 09 83         [24] 1074 	mov	dph,(_ptr + 1)
      00229F 74 01            [12] 1075 	mov	a,#0x01
      0022A1 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	main.c:139: lcdbusywait();
                                   1078 ;	main.c:140: }
      0022A2 02 20 E6         [24] 1079 	ljmp	_lcdbusywait
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'test_functionality'
                                   1082 ;------------------------------------------------------------
                                   1083 ;	main.c:142: void test_functionality(){
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function test_functionality
                                   1086 ;	-----------------------------------------
      0022A5                       1087 _test_functionality:
                                   1088 ;	main.c:143: printf_tiny("test_functionality start\n\r");
      0022A5 74 4A            [12] 1089 	mov	a,#___str_0
      0022A7 C0 E0            [24] 1090 	push	acc
      0022A9 74 29            [12] 1091 	mov	a,#(___str_0 >> 8)
      0022AB C0 E0            [24] 1092 	push	acc
      0022AD 12 27 A2         [24] 1093 	lcall	_printf_tiny
      0022B0 15 81            [12] 1094 	dec	sp
      0022B2 15 81            [12] 1095 	dec	sp
                                   1096 ;	main.c:145: lcdgotoaddr(0x01);
      0022B4 75 82 01         [24] 1097 	mov	dpl,#0x01
      0022B7 12 20 F5         [24] 1098 	lcall	_lcdgotoaddr
                                   1099 ;	main.c:146: lcdputch('E');
      0022BA 75 82 45         [24] 1100 	mov	dpl,#0x45
      0022BD 12 21 55         [24] 1101 	lcall	_lcdputch
                                   1102 ;	main.c:147: delay(100000);
      0022C0 90 86 A0         [24] 1103 	mov	dptr,#0x86a0
      0022C3 75 F0 01         [24] 1104 	mov	b,#0x01
      0022C6 E4               [12] 1105 	clr	a
      0022C7 12 20 AA         [24] 1106 	lcall	_delay
                                   1107 ;	main.c:149: lcdgotoxy(1, 1);
      0022CA 75 16 01         [24] 1108 	mov	_lcdgotoxy_PARM_2,#0x01
      0022CD 75 82 01         [24] 1109 	mov	dpl,#0x01
      0022D0 12 21 09         [24] 1110 	lcall	_lcdgotoxy
                                   1111 ;	main.c:150: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022D3 90 29 65         [24] 1112 	mov	dptr,#___str_1
      0022D6 75 F0 80         [24] 1113 	mov	b,#0x80
      0022D9 12 21 66         [24] 1114 	lcall	_lcdputstr
                                   1115 ;	main.c:151: delay(100000);
      0022DC 90 86 A0         [24] 1116 	mov	dptr,#0x86a0
      0022DF 75 F0 01         [24] 1117 	mov	b,#0x01
      0022E2 E4               [12] 1118 	clr	a
      0022E3 12 20 AA         [24] 1119 	lcall	_delay
                                   1120 ;	main.c:153: create_custom_character(custom_char_code);
      0022E6 85 13 82         [24] 1121 	mov	dpl,_custom_char_code
      0022E9 12 23 26         [24] 1122 	lcall	_create_custom_character
                                   1123 ;	main.c:154: lcdgotoaddr(0x0F);
      0022EC 75 82 0F         [24] 1124 	mov	dpl,#0x0f
      0022EF 12 20 F5         [24] 1125 	lcall	_lcdgotoaddr
                                   1126 ;	main.c:155: lcdputch(custom_char_code);
      0022F2 85 13 82         [24] 1127 	mov	dpl,_custom_char_code
      0022F5 12 21 55         [24] 1128 	lcall	_lcdputch
                                   1129 ;	main.c:156: delay(100000);
      0022F8 90 86 A0         [24] 1130 	mov	dptr,#0x86a0
      0022FB 75 F0 01         [24] 1131 	mov	b,#0x01
      0022FE E4               [12] 1132 	clr	a
      0022FF 12 20 AA         [24] 1133 	lcall	_delay
                                   1134 ;	main.c:158: lcdclear();
      002302 12 22 95         [24] 1135 	lcall	_lcdclear
                                   1136 ;	main.c:159: printf_tiny("test_functionality end\n\r");
      002305 74 A8            [12] 1137 	mov	a,#___str_2
      002307 C0 E0            [24] 1138 	push	acc
      002309 74 29            [12] 1139 	mov	a,#(___str_2 >> 8)
      00230B C0 E0            [24] 1140 	push	acc
      00230D 12 27 A2         [24] 1141 	lcall	_printf_tiny
      002310 15 81            [12] 1142 	dec	sp
      002312 15 81            [12] 1143 	dec	sp
                                   1144 ;	main.c:160: }
      002314 22               [24] 1145 	ret
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'set_cgram_address'
                                   1148 ;------------------------------------------------------------
                                   1149 ;cgram_address             Allocated to registers r7 
                                   1150 ;------------------------------------------------------------
                                   1151 ;	main.c:162: void set_cgram_address(uint8_t cgram_address){
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function set_cgram_address
                                   1154 ;	-----------------------------------------
      002315                       1155 _set_cgram_address:
      002315 AF 82            [24] 1156 	mov	r7,dpl
                                   1157 ;	main.c:163: RS = PULSE_LOW;
                                   1158 ;	assignBit
      002317 C2 96            [12] 1159 	clr	_P1_6
                                   1160 ;	main.c:164: R_W = PULSE_LOW;
                                   1161 ;	assignBit
      002319 C2 97            [12] 1162 	clr	_P1_7
                                   1163 ;	main.c:165: *ptr = cgram_address;
      00231B 85 08 82         [24] 1164 	mov	dpl,_ptr
      00231E 85 09 83         [24] 1165 	mov	dph,(_ptr + 1)
      002321 EF               [12] 1166 	mov	a,r7
      002322 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	main.c:166: lcdbusywait();
                                   1169 ;	main.c:167: }
      002323 02 20 E6         [24] 1170 	ljmp	_lcdbusywait
                                   1171 ;------------------------------------------------------------
                                   1172 ;Allocation info for local variables in function 'create_custom_character'
                                   1173 ;------------------------------------------------------------
                                   1174 ;char_num                  Allocated to registers r7 
                                   1175 ;c                         Allocated with name '_create_custom_character_c_65536_69'
                                   1176 ;i                         Allocated to registers r5 r6 
                                   1177 ;cgram_address             Allocated to registers 
                                   1178 ;------------------------------------------------------------
                                   1179 ;	main.c:168: void create_custom_character(uint8_t char_num){
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function create_custom_character
                                   1182 ;	-----------------------------------------
      002326                       1183 _create_custom_character:
      002326 AF 82            [24] 1184 	mov	r7,dpl
                                   1185 ;	main.c:169: uint8_t c[8] =
      002328 75 17 04         [24] 1186 	mov	_create_custom_character_c_65536_69,#0x04
      00232B 75 18 0E         [24] 1187 	mov	(_create_custom_character_c_65536_69 + 0x0001),#0x0e
      00232E 75 19 04         [24] 1188 	mov	(_create_custom_character_c_65536_69 + 0x0002),#0x04
      002331 75 1A 04         [24] 1189 	mov	(_create_custom_character_c_65536_69 + 0x0003),#0x04
      002334 75 1B 04         [24] 1190 	mov	(_create_custom_character_c_65536_69 + 0x0004),#0x04
      002337 75 1C 04         [24] 1191 	mov	(_create_custom_character_c_65536_69 + 0x0005),#0x04
      00233A 75 1D 04         [24] 1192 	mov	(_create_custom_character_c_65536_69 + 0x0006),#0x04
      00233D 75 1E 0A         [24] 1193 	mov	(_create_custom_character_c_65536_69 + 0x0007),#0x0a
                                   1194 ;	main.c:179: for(int i = 0; i < BYTE_LENGTH; i++){
      002340 7D 00            [12] 1195 	mov	r5,#0x00
      002342 7E 00            [12] 1196 	mov	r6,#0x00
      002344                       1197 00103$:
      002344 C3               [12] 1198 	clr	c
      002345 ED               [12] 1199 	mov	a,r5
      002346 94 08            [12] 1200 	subb	a,#0x08
      002348 EE               [12] 1201 	mov	a,r6
      002349 64 80            [12] 1202 	xrl	a,#0x80
      00234B 94 80            [12] 1203 	subb	a,#0x80
      00234D 50 34            [24] 1204 	jnc	00105$
                                   1205 ;	main.c:180: uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
      00234F 8F 04            [24] 1206 	mov	ar4,r7
      002351 EC               [12] 1207 	mov	a,r4
      002352 C4               [12] 1208 	swap	a
      002353 03               [12] 1209 	rr	a
      002354 54 F8            [12] 1210 	anl	a,#0xf8
      002356 FC               [12] 1211 	mov	r4,a
      002357 43 04 40         [24] 1212 	orl	ar4,#0x40
      00235A 8D 03            [24] 1213 	mov	ar3,r5
      00235C EB               [12] 1214 	mov	a,r3
      00235D 4C               [12] 1215 	orl	a,r4
      00235E F5 82            [12] 1216 	mov	dpl,a
                                   1217 ;	main.c:181: set_cgram_address(cgram_address);
      002360 C0 07            [24] 1218 	push	ar7
      002362 C0 06            [24] 1219 	push	ar6
      002364 C0 05            [24] 1220 	push	ar5
      002366 12 23 15         [24] 1221 	lcall	_set_cgram_address
      002369 D0 05            [24] 1222 	pop	ar5
                                   1223 ;	main.c:182: lcdputch(c[i]);
      00236B ED               [12] 1224 	mov	a,r5
      00236C 24 17            [12] 1225 	add	a,#_create_custom_character_c_65536_69
      00236E F9               [12] 1226 	mov	r1,a
      00236F 87 82            [24] 1227 	mov	dpl,@r1
      002371 C0 05            [24] 1228 	push	ar5
      002373 12 21 55         [24] 1229 	lcall	_lcdputch
      002376 D0 05            [24] 1230 	pop	ar5
      002378 D0 06            [24] 1231 	pop	ar6
      00237A D0 07            [24] 1232 	pop	ar7
                                   1233 ;	main.c:179: for(int i = 0; i < BYTE_LENGTH; i++){
      00237C 0D               [12] 1234 	inc	r5
      00237D BD 00 C4         [24] 1235 	cjne	r5,#0x00,00103$
      002380 0E               [12] 1236 	inc	r6
      002381 80 C1            [24] 1237 	sjmp	00103$
      002383                       1238 00105$:
                                   1239 ;	main.c:184: }
      002383 22               [24] 1240 	ret
                                   1241 ;------------------------------------------------------------
                                   1242 ;Allocation info for local variables in function 'timer2_init'
                                   1243 ;------------------------------------------------------------
                                   1244 ;	main.c:186: void timer2_init(){
                                   1245 ;	-----------------------------------------
                                   1246 ;	 function timer2_init
                                   1247 ;	-----------------------------------------
      002384                       1248 _timer2_init:
                                   1249 ;	main.c:187: T2MOD = 0b00000001;
      002384 75 C9 01         [24] 1250 	mov	_T2MOD,#0x01
                                   1251 ;	main.c:188: RCAP2L = 0xFC;
      002387 75 CA FC         [24] 1252 	mov	_RCAP2L,#0xfc
                                   1253 ;	main.c:189: RCAP2H = 0x4B; // interrupting for every 50msec
      00238A 75 CB 4B         [24] 1254 	mov	_RCAP2H,#0x4b
                                   1255 ;	main.c:191: TL2 = RCAP2L;
      00238D 85 CA CC         [24] 1256 	mov	_TL2,_RCAP2L
                                   1257 ;	main.c:192: TH2 = RCAP2H;
      002390 85 CB CD         [24] 1258 	mov	_TH2,_RCAP2H
                                   1259 ;	main.c:193: TR2 = 1;
                                   1260 ;	assignBit
      002393 D2 CA            [12] 1261 	setb	_TR2
                                   1262 ;	main.c:194: }
      002395 22               [24] 1263 	ret
                                   1264 ;------------------------------------------------------------
                                   1265 ;Allocation info for local variables in function 'timer2_interrupt_Init'
                                   1266 ;------------------------------------------------------------
                                   1267 ;	main.c:195: void timer2_interrupt_Init(){
                                   1268 ;	-----------------------------------------
                                   1269 ;	 function timer2_interrupt_Init
                                   1270 ;	-----------------------------------------
      002396                       1271 _timer2_interrupt_Init:
                                   1272 ;	main.c:196: timer2_init();
      002396 12 23 84         [24] 1273 	lcall	_timer2_init
                                   1274 ;	main.c:197: ET2 = 1;
                                   1275 ;	assignBit
      002399 D2 AD            [12] 1276 	setb	_ET2
                                   1277 ;	main.c:198: EA = 1;
                                   1278 ;	assignBit
      00239B D2 AF            [12] 1279 	setb	_EA
                                   1280 ;	main.c:199: }
      00239D 22               [24] 1281 	ret
                                   1282 ;------------------------------------------------------------
                                   1283 ;Allocation info for local variables in function 'isr_timer2'
                                   1284 ;------------------------------------------------------------
                                   1285 ;	main.c:201: void isr_timer2(void) __interrupt (5)
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function isr_timer2
                                   1288 ;	-----------------------------------------
      00239E                       1289 _isr_timer2:
      00239E C0 21            [24] 1290 	push	bits
      0023A0 C0 E0            [24] 1291 	push	acc
      0023A2 C0 F0            [24] 1292 	push	b
      0023A4 C0 82            [24] 1293 	push	dpl
      0023A6 C0 83            [24] 1294 	push	dph
      0023A8 C0 07            [24] 1295 	push	(0+7)
      0023AA C0 06            [24] 1296 	push	(0+6)
      0023AC C0 05            [24] 1297 	push	(0+5)
      0023AE C0 04            [24] 1298 	push	(0+4)
      0023B0 C0 03            [24] 1299 	push	(0+3)
      0023B2 C0 02            [24] 1300 	push	(0+2)
      0023B4 C0 01            [24] 1301 	push	(0+1)
      0023B6 C0 00            [24] 1302 	push	(0+0)
      0023B8 C0 D0            [24] 1303 	push	psw
      0023BA 75 D0 00         [24] 1304 	mov	psw,#0x00
                                   1305 ;	main.c:205: }
      0023BD D2 01            [12] 1306 	setb	_isr_timer2_sloc0_1_0
      0023BF 10 AF 02         [24] 1307 	jbc	ea,00103$
      0023C2 C2 01            [12] 1308 	clr	_isr_timer2_sloc0_1_0
      0023C4                       1309 00103$:
                                   1310 ;	main.c:204: tick++;
      0023C4 AE 0A            [24] 1311 	mov	r6,_tick
      0023C6 AF 0B            [24] 1312 	mov	r7,(_tick + 1)
      0023C8 74 01            [12] 1313 	mov	a,#0x01
      0023CA 2E               [12] 1314 	add	a,r6
      0023CB F5 0A            [12] 1315 	mov	_tick,a
      0023CD E4               [12] 1316 	clr	a
      0023CE 3F               [12] 1317 	addc	a,r7
      0023CF F5 0B            [12] 1318 	mov	(_tick + 1),a
      0023D1 A2 01            [12] 1319 	mov	c,_isr_timer2_sloc0_1_0
      0023D3 92 AF            [24] 1320 	mov	ea,c
                                   1321 ;	main.c:206: clock_run();
      0023D5 12 24 36         [24] 1322 	lcall	_clock_run
                                   1323 ;	main.c:207: TF2 = 0;
                                   1324 ;	assignBit
      0023D8 C2 CF            [12] 1325 	clr	_TF2
                                   1326 ;	main.c:208: }
      0023DA D0 D0            [24] 1327 	pop	psw
      0023DC D0 00            [24] 1328 	pop	(0+0)
      0023DE D0 01            [24] 1329 	pop	(0+1)
      0023E0 D0 02            [24] 1330 	pop	(0+2)
      0023E2 D0 03            [24] 1331 	pop	(0+3)
      0023E4 D0 04            [24] 1332 	pop	(0+4)
      0023E6 D0 05            [24] 1333 	pop	(0+5)
      0023E8 D0 06            [24] 1334 	pop	(0+6)
      0023EA D0 07            [24] 1335 	pop	(0+7)
      0023EC D0 83            [24] 1336 	pop	dph
      0023EE D0 82            [24] 1337 	pop	dpl
      0023F0 D0 F0            [24] 1338 	pop	b
      0023F2 D0 E0            [24] 1339 	pop	acc
      0023F4 D0 21            [24] 1340 	pop	bits
      0023F6 32               [24] 1341 	reti
                                   1342 ;------------------------------------------------------------
                                   1343 ;Allocation info for local variables in function 'reset_clock'
                                   1344 ;------------------------------------------------------------
                                   1345 ;	main.c:210: void reset_clock(){
                                   1346 ;	-----------------------------------------
                                   1347 ;	 function reset_clock
                                   1348 ;	-----------------------------------------
      0023F7                       1349 _reset_clock:
                                   1350 ;	main.c:211: min_high = '0';
      0023F7 75 0E 30         [24] 1351 	mov	_min_high,#0x30
                                   1352 ;	main.c:212: min_low = '0';
      0023FA 75 0F 30         [24] 1353 	mov	_min_low,#0x30
                                   1354 ;	main.c:213: sec_high = '0';
      0023FD 75 10 30         [24] 1355 	mov	_sec_high,#0x30
                                   1356 ;	main.c:214: sec_low = '0';
      002400 75 11 30         [24] 1357 	mov	_sec_low,#0x30
                                   1358 ;	main.c:215: mili_sec = '0';
      002403 75 12 30         [24] 1359 	mov	_mili_sec,#0x30
                                   1360 ;	main.c:217: lcdgotoaddr(0x59);
      002406 75 82 59         [24] 1361 	mov	dpl,#0x59
      002409 12 20 F5         [24] 1362 	lcall	_lcdgotoaddr
                                   1363 ;	main.c:218: lcdputch(min_high);
      00240C 85 0E 82         [24] 1364 	mov	dpl,_min_high
      00240F 12 21 55         [24] 1365 	lcall	_lcdputch
                                   1366 ;	main.c:219: lcdputch(min_low);
      002412 85 0F 82         [24] 1367 	mov	dpl,_min_low
      002415 12 21 55         [24] 1368 	lcall	_lcdputch
                                   1369 ;	main.c:220: lcdputch(':');
      002418 75 82 3A         [24] 1370 	mov	dpl,#0x3a
      00241B 12 21 55         [24] 1371 	lcall	_lcdputch
                                   1372 ;	main.c:221: lcdputch(sec_high);
      00241E 85 10 82         [24] 1373 	mov	dpl,_sec_high
      002421 12 21 55         [24] 1374 	lcall	_lcdputch
                                   1375 ;	main.c:222: lcdputch(sec_low);
      002424 85 11 82         [24] 1376 	mov	dpl,_sec_low
      002427 12 21 55         [24] 1377 	lcall	_lcdputch
                                   1378 ;	main.c:223: lcdputch('.');
      00242A 75 82 2E         [24] 1379 	mov	dpl,#0x2e
      00242D 12 21 55         [24] 1380 	lcall	_lcdputch
                                   1381 ;	main.c:224: lcdputch(mili_sec);
      002430 85 12 82         [24] 1382 	mov	dpl,_mili_sec
                                   1383 ;	main.c:225: }
      002433 02 21 55         [24] 1384 	ljmp	_lcdputch
                                   1385 ;------------------------------------------------------------
                                   1386 ;Allocation info for local variables in function 'clock_run'
                                   1387 ;------------------------------------------------------------
                                   1388 ;	main.c:226: void clock_run(){
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function clock_run
                                   1391 ;	-----------------------------------------
      002436                       1392 _clock_run:
                                   1393 ;	main.c:227: if(clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)){
      002436 E5 14            [12] 1394 	mov	a,_clockrun_flag
      002438 45 15            [12] 1395 	orl	a,(_clockrun_flag + 1)
      00243A 70 01            [24] 1396 	jnz	00149$
      00243C 22               [24] 1397 	ret
      00243D                       1398 00149$:
      00243D E5 0A            [12] 1399 	mov	a,_tick
      00243F 30 E0 01         [24] 1400 	jnb	acc.0,00150$
      002442 22               [24] 1401 	ret
      002443                       1402 00150$:
      002443 C3               [12] 1403 	clr	c
      002444 E5 0C            [12] 1404 	mov	a,_elapsed_tick
      002446 95 0A            [12] 1405 	subb	a,_tick
      002448 E5 0D            [12] 1406 	mov	a,(_elapsed_tick + 1)
      00244A 95 0B            [12] 1407 	subb	a,(_tick + 1)
      00244C 40 01            [24] 1408 	jc	00151$
      00244E 22               [24] 1409 	ret
      00244F                       1410 00151$:
                                   1411 ;	main.c:228: elapsed_tick = tick;
      00244F 85 0A 0C         [24] 1412 	mov	_elapsed_tick,_tick
      002452 85 0B 0D         [24] 1413 	mov	(_elapsed_tick + 1),(_tick + 1)
                                   1414 ;	main.c:229: mili_sec++;
      002455 E5 12            [12] 1415 	mov	a,_mili_sec
      002457 04               [12] 1416 	inc	a
      002458 F5 12            [12] 1417 	mov	_mili_sec,a
                                   1418 ;	main.c:230: if(mili_sec > '9'){
      00245A E5 12            [12] 1419 	mov	a,_mili_sec
      00245C 24 C6            [12] 1420 	add	a,#0xff - 0x39
      00245E 50 20            [24] 1421 	jnc	00102$
                                   1422 ;	main.c:231: mili_sec = '0';
      002460 75 12 30         [24] 1423 	mov	_mili_sec,#0x30
                                   1424 ;	main.c:232: lcdgotoaddr(0x5F);
      002463 75 82 5F         [24] 1425 	mov	dpl,#0x5f
      002466 12 20 F5         [24] 1426 	lcall	_lcdgotoaddr
                                   1427 ;	main.c:233: lcdputch(mili_sec);
      002469 85 12 82         [24] 1428 	mov	dpl,_mili_sec
      00246C 12 21 55         [24] 1429 	lcall	_lcdputch
                                   1430 ;	main.c:234: sec_low++;
      00246F E5 11            [12] 1431 	mov	a,_sec_low
      002471 04               [12] 1432 	inc	a
      002472 F5 11            [12] 1433 	mov	_sec_low,a
                                   1434 ;	main.c:235: lcdgotoaddr(0x5D);
      002474 75 82 5D         [24] 1435 	mov	dpl,#0x5d
      002477 12 20 F5         [24] 1436 	lcall	_lcdgotoaddr
                                   1437 ;	main.c:236: lcdputch(sec_low);
      00247A 85 11 82         [24] 1438 	mov	dpl,_sec_low
      00247D 12 21 55         [24] 1439 	lcall	_lcdputch
      002480                       1440 00102$:
                                   1441 ;	main.c:238: if(sec_low > '9'){
      002480 E5 11            [12] 1442 	mov	a,_sec_low
      002482 24 C6            [12] 1443 	add	a,#0xff - 0x39
      002484 50 20            [24] 1444 	jnc	00104$
                                   1445 ;	main.c:239: sec_low = '0';
      002486 75 11 30         [24] 1446 	mov	_sec_low,#0x30
                                   1447 ;	main.c:240: lcdgotoaddr(0x5D);
      002489 75 82 5D         [24] 1448 	mov	dpl,#0x5d
      00248C 12 20 F5         [24] 1449 	lcall	_lcdgotoaddr
                                   1450 ;	main.c:241: lcdputch(sec_low);
      00248F 85 11 82         [24] 1451 	mov	dpl,_sec_low
      002492 12 21 55         [24] 1452 	lcall	_lcdputch
                                   1453 ;	main.c:242: sec_high++;
      002495 E5 10            [12] 1454 	mov	a,_sec_high
      002497 04               [12] 1455 	inc	a
      002498 F5 10            [12] 1456 	mov	_sec_high,a
                                   1457 ;	main.c:243: lcdgotoaddr(0x5C);
      00249A 75 82 5C         [24] 1458 	mov	dpl,#0x5c
      00249D 12 20 F5         [24] 1459 	lcall	_lcdgotoaddr
                                   1460 ;	main.c:244: lcdputch(sec_high);
      0024A0 85 10 82         [24] 1461 	mov	dpl,_sec_high
      0024A3 12 21 55         [24] 1462 	lcall	_lcdputch
      0024A6                       1463 00104$:
                                   1464 ;	main.c:246: if(sec_high > '5'){
      0024A6 E5 10            [12] 1465 	mov	a,_sec_high
      0024A8 24 CA            [12] 1466 	add	a,#0xff - 0x35
      0024AA 50 20            [24] 1467 	jnc	00106$
                                   1468 ;	main.c:247: sec_high = '0';
      0024AC 75 10 30         [24] 1469 	mov	_sec_high,#0x30
                                   1470 ;	main.c:248: lcdgotoaddr(0x5C);
      0024AF 75 82 5C         [24] 1471 	mov	dpl,#0x5c
      0024B2 12 20 F5         [24] 1472 	lcall	_lcdgotoaddr
                                   1473 ;	main.c:249: lcdputch(sec_high);
      0024B5 85 10 82         [24] 1474 	mov	dpl,_sec_high
      0024B8 12 21 55         [24] 1475 	lcall	_lcdputch
                                   1476 ;	main.c:250: min_low++;
      0024BB E5 0F            [12] 1477 	mov	a,_min_low
      0024BD 04               [12] 1478 	inc	a
      0024BE F5 0F            [12] 1479 	mov	_min_low,a
                                   1480 ;	main.c:251: lcdgotoaddr(0x5A);
      0024C0 75 82 5A         [24] 1481 	mov	dpl,#0x5a
      0024C3 12 20 F5         [24] 1482 	lcall	_lcdgotoaddr
                                   1483 ;	main.c:252: lcdputch(min_low);
      0024C6 85 0F 82         [24] 1484 	mov	dpl,_min_low
      0024C9 12 21 55         [24] 1485 	lcall	_lcdputch
      0024CC                       1486 00106$:
                                   1487 ;	main.c:254: if(min_low > '9'){
      0024CC E5 0F            [12] 1488 	mov	a,_min_low
      0024CE 24 C6            [12] 1489 	add	a,#0xff - 0x39
      0024D0 50 20            [24] 1490 	jnc	00108$
                                   1491 ;	main.c:255: min_low = '0';
      0024D2 75 0F 30         [24] 1492 	mov	_min_low,#0x30
                                   1493 ;	main.c:256: lcdgotoaddr(0x5A);
      0024D5 75 82 5A         [24] 1494 	mov	dpl,#0x5a
      0024D8 12 20 F5         [24] 1495 	lcall	_lcdgotoaddr
                                   1496 ;	main.c:257: lcdputch(min_low);
      0024DB 85 0F 82         [24] 1497 	mov	dpl,_min_low
      0024DE 12 21 55         [24] 1498 	lcall	_lcdputch
                                   1499 ;	main.c:258: min_high++;
      0024E1 E5 0E            [12] 1500 	mov	a,_min_high
      0024E3 04               [12] 1501 	inc	a
      0024E4 F5 0E            [12] 1502 	mov	_min_high,a
                                   1503 ;	main.c:259: lcdgotoaddr(0x59);
      0024E6 75 82 59         [24] 1504 	mov	dpl,#0x59
      0024E9 12 20 F5         [24] 1505 	lcall	_lcdgotoaddr
                                   1506 ;	main.c:260: lcdputch(min_high);
      0024EC 85 0E 82         [24] 1507 	mov	dpl,_min_high
      0024EF 12 21 55         [24] 1508 	lcall	_lcdputch
      0024F2                       1509 00108$:
                                   1510 ;	main.c:262: if(min_high > '5'){
      0024F2 E5 0E            [12] 1511 	mov	a,_min_high
      0024F4 24 CA            [12] 1512 	add	a,#0xff - 0x35
      0024F6 50 0F            [24] 1513 	jnc	00110$
                                   1514 ;	main.c:263: min_high = '0';
      0024F8 75 0E 30         [24] 1515 	mov	_min_high,#0x30
                                   1516 ;	main.c:264: lcdgotoaddr(0x59);
      0024FB 75 82 59         [24] 1517 	mov	dpl,#0x59
      0024FE 12 20 F5         [24] 1518 	lcall	_lcdgotoaddr
                                   1519 ;	main.c:265: lcdputch(min_high);
      002501 85 0E 82         [24] 1520 	mov	dpl,_min_high
      002504 12 21 55         [24] 1521 	lcall	_lcdputch
      002507                       1522 00110$:
                                   1523 ;	main.c:267: lcdgotoaddr(0x5F);
      002507 75 82 5F         [24] 1524 	mov	dpl,#0x5f
      00250A 12 20 F5         [24] 1525 	lcall	_lcdgotoaddr
                                   1526 ;	main.c:268: lcdputch(mili_sec);
      00250D 85 12 82         [24] 1527 	mov	dpl,_mili_sec
                                   1528 ;	main.c:270: }
      002510 02 21 55         [24] 1529 	ljmp	_lcdputch
                                   1530 ;------------------------------------------------------------
                                   1531 ;Allocation info for local variables in function 'main'
                                   1532 ;------------------------------------------------------------
                                   1533 ;indicator                 Allocated to registers 
                                   1534 ;user_input                Allocated to registers r7 
                                   1535 ;------------------------------------------------------------
                                   1536 ;	main.c:271: void main(void)
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function main
                                   1539 ;	-----------------------------------------
      002513                       1540 _main:
                                   1541 ;	main.c:274: lcdinit();
      002513 12 22 0B         [24] 1542 	lcall	_lcdinit
                                   1543 ;	main.c:275: test_functionality();
      002516 12 22 A5         [24] 1544 	lcall	_test_functionality
                                   1545 ;	main.c:276: timer2_interrupt_Init();
      002519 12 23 96         [24] 1546 	lcall	_timer2_interrupt_Init
                                   1547 ;	main.c:278: printf_tiny("*************************************************************************\n\r");
      00251C 74 C1            [12] 1548 	mov	a,#___str_3
      00251E C0 E0            [24] 1549 	push	acc
      002520 74 29            [12] 1550 	mov	a,#(___str_3 >> 8)
      002522 C0 E0            [24] 1551 	push	acc
      002524 12 27 A2         [24] 1552 	lcall	_printf_tiny
      002527 15 81            [12] 1553 	dec	sp
      002529 15 81            [12] 1554 	dec	sp
                                   1555 ;	main.c:279: printf_tiny("CLOCK MENU:\n\r");
      00252B 74 0D            [12] 1556 	mov	a,#___str_4
      00252D C0 E0            [24] 1557 	push	acc
      00252F 74 2A            [12] 1558 	mov	a,#(___str_4 >> 8)
      002531 C0 E0            [24] 1559 	push	acc
      002533 12 27 A2         [24] 1560 	lcall	_printf_tiny
      002536 15 81            [12] 1561 	dec	sp
      002538 15 81            [12] 1562 	dec	sp
                                   1563 ;	main.c:280: printf_tiny("[a]. Clock restart\n\r");
      00253A 74 1B            [12] 1564 	mov	a,#___str_5
      00253C C0 E0            [24] 1565 	push	acc
      00253E 74 2A            [12] 1566 	mov	a,#(___str_5 >> 8)
      002540 C0 E0            [24] 1567 	push	acc
      002542 12 27 A2         [24] 1568 	lcall	_printf_tiny
      002545 15 81            [12] 1569 	dec	sp
      002547 15 81            [12] 1570 	dec	sp
                                   1571 ;	main.c:281: printf_tiny("[b]. Clock stop\n\r");
      002549 74 30            [12] 1572 	mov	a,#___str_6
      00254B C0 E0            [24] 1573 	push	acc
      00254D 74 2A            [12] 1574 	mov	a,#(___str_6 >> 8)
      00254F C0 E0            [24] 1575 	push	acc
      002551 12 27 A2         [24] 1576 	lcall	_printf_tiny
      002554 15 81            [12] 1577 	dec	sp
      002556 15 81            [12] 1578 	dec	sp
                                   1579 ;	main.c:282: printf_tiny("[c]. Clock reset\n\r");
      002558 74 42            [12] 1580 	mov	a,#___str_7
      00255A C0 E0            [24] 1581 	push	acc
      00255C 74 2A            [12] 1582 	mov	a,#(___str_7 >> 8)
      00255E C0 E0            [24] 1583 	push	acc
      002560 12 27 A2         [24] 1584 	lcall	_printf_tiny
      002563 15 81            [12] 1585 	dec	sp
      002565 15 81            [12] 1586 	dec	sp
                                   1587 ;	main.c:283: printf_tiny("*************************************************************************\n\r");
      002567 74 C1            [12] 1588 	mov	a,#___str_3
      002569 C0 E0            [24] 1589 	push	acc
      00256B 74 29            [12] 1590 	mov	a,#(___str_3 >> 8)
      00256D C0 E0            [24] 1591 	push	acc
      00256F 12 27 A2         [24] 1592 	lcall	_printf_tiny
      002572 15 81            [12] 1593 	dec	sp
      002574 15 81            [12] 1594 	dec	sp
                                   1595 ;	main.c:284: reset_clock();
      002576 12 23 F7         [24] 1596 	lcall	_reset_clock
                                   1597 ;	main.c:285: lcdgotoxy(1,1);
      002579 75 16 01         [24] 1598 	mov	_lcdgotoxy_PARM_2,#0x01
      00257C 75 82 01         [24] 1599 	mov	dpl,#0x01
      00257F 12 21 09         [24] 1600 	lcall	_lcdgotoxy
                                   1601 ;	main.c:286: lcdputstr("Clock status:");
      002582 90 2A 55         [24] 1602 	mov	dptr,#___str_8
      002585 75 F0 80         [24] 1603 	mov	b,#0x80
      002588 12 21 66         [24] 1604 	lcall	_lcdputstr
                                   1605 ;	main.c:287: lcdgotoxy(2,1);
      00258B 75 16 01         [24] 1606 	mov	_lcdgotoxy_PARM_2,#0x01
      00258E 75 82 02         [24] 1607 	mov	dpl,#0x02
      002591 12 21 09         [24] 1608 	lcall	_lcdgotoxy
                                   1609 ;	main.c:288: lcdputstr("Running");
      002594 90 2A 63         [24] 1610 	mov	dptr,#___str_9
      002597 75 F0 80         [24] 1611 	mov	b,#0x80
      00259A 12 21 66         [24] 1612 	lcall	_lcdputstr
                                   1613 ;	main.c:289: lcdgotoxy(3,1);
      00259D 75 16 01         [24] 1614 	mov	_lcdgotoxy_PARM_2,#0x01
      0025A0 75 82 03         [24] 1615 	mov	dpl,#0x03
      0025A3 12 21 09         [24] 1616 	lcall	_lcdgotoxy
                                   1617 ;	main.c:290: lcdputstr("Stopped");
      0025A6 90 2A 6B         [24] 1618 	mov	dptr,#___str_10
      0025A9 75 F0 80         [24] 1619 	mov	b,#0x80
      0025AC 12 21 66         [24] 1620 	lcall	_lcdputstr
                                   1621 ;	main.c:291: lcdgotoxy(4,1);
      0025AF 75 16 01         [24] 1622 	mov	_lcdgotoxy_PARM_2,#0x01
      0025B2 75 82 04         [24] 1623 	mov	dpl,#0x04
      0025B5 12 21 09         [24] 1624 	lcall	_lcdgotoxy
                                   1625 ;	main.c:292: lcdputstr("Reset");
      0025B8 90 2A 73         [24] 1626 	mov	dptr,#___str_11
      0025BB 75 F0 80         [24] 1627 	mov	b,#0x80
      0025BE 12 21 66         [24] 1628 	lcall	_lcdputstr
                                   1629 ;	main.c:293: while(1){
      0025C1                       1630 00116$:
                                   1631 ;	main.c:294: int8_t user_input = echo(); // Read user input from UART
      0025C1 12 27 7D         [24] 1632 	lcall	_echo
      0025C4 AF 82            [24] 1633 	mov	r7,dpl
                                   1634 ;	main.c:295: if (((user_input >= '0') && (user_input <= '9')) || ((user_input >= 'A') && (user_input <= 'Z')))
      0025C6 C3               [12] 1635 	clr	c
      0025C7 EF               [12] 1636 	mov	a,r7
      0025C8 64 80            [12] 1637 	xrl	a,#0x80
      0025CA 94 B0            [12] 1638 	subb	a,#0xb0
      0025CC 40 0B            [24] 1639 	jc	00106$
      0025CE 74 B9            [12] 1640 	mov	a,#(0x39 ^ 0x80)
      0025D0 8F F0            [24] 1641 	mov	b,r7
      0025D2 63 F0 80         [24] 1642 	xrl	b,#0x80
      0025D5 95 F0            [12] 1643 	subb	a,b
      0025D7 50 13            [24] 1644 	jnc	00101$
      0025D9                       1645 00106$:
      0025D9 C3               [12] 1646 	clr	c
      0025DA EF               [12] 1647 	mov	a,r7
      0025DB 64 80            [12] 1648 	xrl	a,#0x80
      0025DD 94 C1            [12] 1649 	subb	a,#0xc1
      0025DF 40 20            [24] 1650 	jc	00102$
      0025E1 74 DA            [12] 1651 	mov	a,#(0x5a ^ 0x80)
      0025E3 8F F0            [24] 1652 	mov	b,r7
      0025E5 63 F0 80         [24] 1653 	xrl	b,#0x80
      0025E8 95 F0            [12] 1654 	subb	a,b
      0025EA 40 15            [24] 1655 	jc	00102$
      0025EC                       1656 00101$:
                                   1657 ;	main.c:298: printf_tiny("Please enter commands in small cases\n\r");
      0025EC C0 07            [24] 1658 	push	ar7
      0025EE 74 79            [12] 1659 	mov	a,#___str_12
      0025F0 C0 E0            [24] 1660 	push	acc
      0025F2 74 2A            [12] 1661 	mov	a,#(___str_12 >> 8)
      0025F4 C0 E0            [24] 1662 	push	acc
      0025F6 12 27 A2         [24] 1663 	lcall	_printf_tiny
      0025F9 15 81            [12] 1664 	dec	sp
      0025FB 15 81            [12] 1665 	dec	sp
      0025FD D0 07            [24] 1666 	pop	ar7
      0025FF 80 13            [24] 1667 	sjmp	00103$
      002601                       1668 00102$:
                                   1669 ;	main.c:302: printf_tiny("\n\r"); // Print newline for better output formatting
      002601 C0 07            [24] 1670 	push	ar7
      002603 74 A0            [12] 1671 	mov	a,#___str_13
      002605 C0 E0            [24] 1672 	push	acc
      002607 74 2A            [12] 1673 	mov	a,#(___str_13 >> 8)
      002609 C0 E0            [24] 1674 	push	acc
      00260B 12 27 A2         [24] 1675 	lcall	_printf_tiny
      00260E 15 81            [12] 1676 	dec	sp
      002610 15 81            [12] 1677 	dec	sp
      002612 D0 07            [24] 1678 	pop	ar7
      002614                       1679 00103$:
                                   1680 ;	main.c:304: switch(user_input)
      002614 BF 61 02         [24] 1681 	cjne	r7,#0x61,00152$
      002617 80 0D            [24] 1682 	sjmp	00107$
      002619                       1683 00152$:
      002619 BF 62 02         [24] 1684 	cjne	r7,#0x62,00153$
      00261C 80 4D            [24] 1685 	sjmp	00108$
      00261E                       1686 00153$:
      00261E BF 63 03         [24] 1687 	cjne	r7,#0x63,00154$
      002621 02 26 AF         [24] 1688 	ljmp	00109$
      002624                       1689 00154$:
                                   1690 ;	main.c:306: case 'a' :
      002624 80 9B            [24] 1691 	sjmp	00116$
      002626                       1692 00107$:
                                   1693 ;	main.c:307: printf_tiny("Restarting clock\n\r");
      002626 74 A3            [12] 1694 	mov	a,#___str_14
      002628 C0 E0            [24] 1695 	push	acc
      00262A 74 2A            [12] 1696 	mov	a,#(___str_14 >> 8)
      00262C C0 E0            [24] 1697 	push	acc
      00262E 12 27 A2         [24] 1698 	lcall	_printf_tiny
      002631 15 81            [12] 1699 	dec	sp
      002633 15 81            [12] 1700 	dec	sp
                                   1701 ;	main.c:308: clockrun_flag = 1;
      002635 75 14 01         [24] 1702 	mov	_clockrun_flag,#0x01
      002638 75 15 00         [24] 1703 	mov	(_clockrun_flag + 1),#0x00
                                   1704 ;	main.c:309: lcdgotoxy(2,8);
      00263B 75 16 08         [24] 1705 	mov	_lcdgotoxy_PARM_2,#0x08
      00263E 75 82 02         [24] 1706 	mov	dpl,#0x02
      002641 12 21 09         [24] 1707 	lcall	_lcdgotoxy
                                   1708 ;	main.c:310: lcdputch(indicator);
      002644 75 82 3C         [24] 1709 	mov	dpl,#0x3c
      002647 12 21 55         [24] 1710 	lcall	_lcdputch
                                   1711 ;	main.c:311: lcdgotoxy(3,8);
      00264A 75 16 08         [24] 1712 	mov	_lcdgotoxy_PARM_2,#0x08
      00264D 75 82 03         [24] 1713 	mov	dpl,#0x03
      002650 12 21 09         [24] 1714 	lcall	_lcdgotoxy
                                   1715 ;	main.c:312: lcdputch(' ');
      002653 75 82 20         [24] 1716 	mov	dpl,#0x20
      002656 12 21 55         [24] 1717 	lcall	_lcdputch
                                   1718 ;	main.c:313: lcdgotoxy(4,6);
      002659 75 16 06         [24] 1719 	mov	_lcdgotoxy_PARM_2,#0x06
      00265C 75 82 04         [24] 1720 	mov	dpl,#0x04
      00265F 12 21 09         [24] 1721 	lcall	_lcdgotoxy
                                   1722 ;	main.c:314: lcdputch(' ');
      002662 75 82 20         [24] 1723 	mov	dpl,#0x20
      002665 12 21 55         [24] 1724 	lcall	_lcdputch
                                   1725 ;	main.c:315: break;
      002668 02 25 C1         [24] 1726 	ljmp	00116$
                                   1727 ;	main.c:317: case 'b' :
      00266B                       1728 00108$:
                                   1729 ;	main.c:318: printf_tiny("Stopping clock\n\r");
      00266B 74 B6            [12] 1730 	mov	a,#___str_15
      00266D C0 E0            [24] 1731 	push	acc
      00266F 74 2A            [12] 1732 	mov	a,#(___str_15 >> 8)
      002671 C0 E0            [24] 1733 	push	acc
      002673 12 27 A2         [24] 1734 	lcall	_printf_tiny
      002676 15 81            [12] 1735 	dec	sp
      002678 15 81            [12] 1736 	dec	sp
                                   1737 ;	main.c:319: clockrun_flag = 0;
      00267A E4               [12] 1738 	clr	a
      00267B F5 14            [12] 1739 	mov	_clockrun_flag,a
      00267D F5 15            [12] 1740 	mov	(_clockrun_flag + 1),a
                                   1741 ;	main.c:320: lcdgotoxy(2,8);
      00267F 75 16 08         [24] 1742 	mov	_lcdgotoxy_PARM_2,#0x08
      002682 75 82 02         [24] 1743 	mov	dpl,#0x02
      002685 12 21 09         [24] 1744 	lcall	_lcdgotoxy
                                   1745 ;	main.c:321: lcdputch(' ');
      002688 75 82 20         [24] 1746 	mov	dpl,#0x20
      00268B 12 21 55         [24] 1747 	lcall	_lcdputch
                                   1748 ;	main.c:322: lcdgotoxy(3,8);
      00268E 75 16 08         [24] 1749 	mov	_lcdgotoxy_PARM_2,#0x08
      002691 75 82 03         [24] 1750 	mov	dpl,#0x03
      002694 12 21 09         [24] 1751 	lcall	_lcdgotoxy
                                   1752 ;	main.c:323: lcdputch(indicator);
      002697 75 82 3C         [24] 1753 	mov	dpl,#0x3c
      00269A 12 21 55         [24] 1754 	lcall	_lcdputch
                                   1755 ;	main.c:324: lcdgotoxy(4,6);
      00269D 75 16 06         [24] 1756 	mov	_lcdgotoxy_PARM_2,#0x06
      0026A0 75 82 04         [24] 1757 	mov	dpl,#0x04
      0026A3 12 21 09         [24] 1758 	lcall	_lcdgotoxy
                                   1759 ;	main.c:325: lcdputch(' ');
      0026A6 75 82 20         [24] 1760 	mov	dpl,#0x20
      0026A9 12 21 55         [24] 1761 	lcall	_lcdputch
                                   1762 ;	main.c:326: break;
      0026AC 02 25 C1         [24] 1763 	ljmp	00116$
                                   1764 ;	main.c:327: case 'c' :
      0026AF                       1765 00109$:
                                   1766 ;	main.c:328: printf_tiny("Resetting clock\n\r");
      0026AF 74 C7            [12] 1767 	mov	a,#___str_16
      0026B1 C0 E0            [24] 1768 	push	acc
      0026B3 74 2A            [12] 1769 	mov	a,#(___str_16 >> 8)
      0026B5 C0 E0            [24] 1770 	push	acc
      0026B7 12 27 A2         [24] 1771 	lcall	_printf_tiny
      0026BA 15 81            [12] 1772 	dec	sp
      0026BC 15 81            [12] 1773 	dec	sp
                                   1774 ;	main.c:329: reset_clock();
      0026BE 12 23 F7         [24] 1775 	lcall	_reset_clock
                                   1776 ;	main.c:330: lcdgotoxy(2,8);
      0026C1 75 16 08         [24] 1777 	mov	_lcdgotoxy_PARM_2,#0x08
      0026C4 75 82 02         [24] 1778 	mov	dpl,#0x02
      0026C7 12 21 09         [24] 1779 	lcall	_lcdgotoxy
                                   1780 ;	main.c:331: lcdputch(' ');
      0026CA 75 82 20         [24] 1781 	mov	dpl,#0x20
      0026CD 12 21 55         [24] 1782 	lcall	_lcdputch
                                   1783 ;	main.c:332: lcdgotoxy(3,8);
      0026D0 75 16 08         [24] 1784 	mov	_lcdgotoxy_PARM_2,#0x08
      0026D3 75 82 03         [24] 1785 	mov	dpl,#0x03
      0026D6 12 21 09         [24] 1786 	lcall	_lcdgotoxy
                                   1787 ;	main.c:333: lcdputch(' ');
      0026D9 75 82 20         [24] 1788 	mov	dpl,#0x20
      0026DC 12 21 55         [24] 1789 	lcall	_lcdputch
                                   1790 ;	main.c:334: lcdgotoxy(4,6);
      0026DF 75 16 06         [24] 1791 	mov	_lcdgotoxy_PARM_2,#0x06
      0026E2 75 82 04         [24] 1792 	mov	dpl,#0x04
      0026E5 12 21 09         [24] 1793 	lcall	_lcdgotoxy
                                   1794 ;	main.c:335: lcdputch(indicator);
      0026E8 75 82 3C         [24] 1795 	mov	dpl,#0x3c
      0026EB 12 21 55         [24] 1796 	lcall	_lcdputch
                                   1797 ;	main.c:336: if(clockrun_flag){
      0026EE E5 14            [12] 1798 	mov	a,_clockrun_flag
      0026F0 45 15            [12] 1799 	orl	a,(_clockrun_flag + 1)
      0026F2 60 12            [24] 1800 	jz	00111$
                                   1801 ;	main.c:337: lcdgotoxy(2,8);
      0026F4 75 16 08         [24] 1802 	mov	_lcdgotoxy_PARM_2,#0x08
      0026F7 75 82 02         [24] 1803 	mov	dpl,#0x02
      0026FA 12 21 09         [24] 1804 	lcall	_lcdgotoxy
                                   1805 ;	main.c:338: lcdputch(indicator);
      0026FD 75 82 3C         [24] 1806 	mov	dpl,#0x3c
      002700 12 21 55         [24] 1807 	lcall	_lcdputch
      002703 02 25 C1         [24] 1808 	ljmp	00116$
      002706                       1809 00111$:
                                   1810 ;	main.c:340: lcdgotoxy(3,8);
      002706 75 16 08         [24] 1811 	mov	_lcdgotoxy_PARM_2,#0x08
      002709 75 82 03         [24] 1812 	mov	dpl,#0x03
      00270C 12 21 09         [24] 1813 	lcall	_lcdgotoxy
                                   1814 ;	main.c:341: lcdputch(indicator);
      00270F 75 82 3C         [24] 1815 	mov	dpl,#0x3c
      002712 12 21 55         [24] 1816 	lcall	_lcdputch
                                   1817 ;	main.c:343: break;
                                   1818 ;	main.c:346: }
                                   1819 ;	main.c:348: }
      002715 02 25 C1         [24] 1820 	ljmp	00116$
                                   1821 	.area CSEG    (CODE)
                                   1822 	.area CONST   (CODE)
                                   1823 	.area CONST   (CODE)
      00294A                       1824 ___str_0:
      00294A 74 65 73 74 5F 66 75  1825 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      002962 0A                    1826 	.db 0x0a
      002963 0D                    1827 	.db 0x0d
      002964 00                    1828 	.db 0x00
                                   1829 	.area CSEG    (CODE)
                                   1830 	.area CONST   (CODE)
      002965                       1831 ___str_1:
      002965 41 42 43 44 45 46 47  1832 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      0029A1 7A 4A 49 54 48 55     1833 	.ascii "zJITHU"
      0029A7 00                    1834 	.db 0x00
                                   1835 	.area CSEG    (CODE)
                                   1836 	.area CONST   (CODE)
      0029A8                       1837 ___str_2:
      0029A8 74 65 73 74 5F 66 75  1838 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      0029BE 0A                    1839 	.db 0x0a
      0029BF 0D                    1840 	.db 0x0d
      0029C0 00                    1841 	.db 0x00
                                   1842 	.area CSEG    (CODE)
                                   1843 	.area CONST   (CODE)
      0029C1                       1844 ___str_3:
      0029C1 2A 2A 2A 2A 2A 2A 2A  1845 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0029FD 2A 2A 2A 2A 2A 2A 2A  1846 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      002A0A 0A                    1847 	.db 0x0a
      002A0B 0D                    1848 	.db 0x0d
      002A0C 00                    1849 	.db 0x00
                                   1850 	.area CSEG    (CODE)
                                   1851 	.area CONST   (CODE)
      002A0D                       1852 ___str_4:
      002A0D 43 4C 4F 43 4B 20 4D  1853 	.ascii "CLOCK MENU:"
             45 4E 55 3A
      002A18 0A                    1854 	.db 0x0a
      002A19 0D                    1855 	.db 0x0d
      002A1A 00                    1856 	.db 0x00
                                   1857 	.area CSEG    (CODE)
                                   1858 	.area CONST   (CODE)
      002A1B                       1859 ___str_5:
      002A1B 5B 61 5D 2E 20 43 6C  1860 	.ascii "[a]. Clock restart"
             6F 63 6B 20 72 65 73
             74 61 72 74
      002A2D 0A                    1861 	.db 0x0a
      002A2E 0D                    1862 	.db 0x0d
      002A2F 00                    1863 	.db 0x00
                                   1864 	.area CSEG    (CODE)
                                   1865 	.area CONST   (CODE)
      002A30                       1866 ___str_6:
      002A30 5B 62 5D 2E 20 43 6C  1867 	.ascii "[b]. Clock stop"
             6F 63 6B 20 73 74 6F
             70
      002A3F 0A                    1868 	.db 0x0a
      002A40 0D                    1869 	.db 0x0d
      002A41 00                    1870 	.db 0x00
                                   1871 	.area CSEG    (CODE)
                                   1872 	.area CONST   (CODE)
      002A42                       1873 ___str_7:
      002A42 5B 63 5D 2E 20 43 6C  1874 	.ascii "[c]. Clock reset"
             6F 63 6B 20 72 65 73
             65 74
      002A52 0A                    1875 	.db 0x0a
      002A53 0D                    1876 	.db 0x0d
      002A54 00                    1877 	.db 0x00
                                   1878 	.area CSEG    (CODE)
                                   1879 	.area CONST   (CODE)
      002A55                       1880 ___str_8:
      002A55 43 6C 6F 63 6B 20 73  1881 	.ascii "Clock status:"
             74 61 74 75 73 3A
      002A62 00                    1882 	.db 0x00
                                   1883 	.area CSEG    (CODE)
                                   1884 	.area CONST   (CODE)
      002A63                       1885 ___str_9:
      002A63 52 75 6E 6E 69 6E 67  1886 	.ascii "Running"
      002A6A 00                    1887 	.db 0x00
                                   1888 	.area CSEG    (CODE)
                                   1889 	.area CONST   (CODE)
      002A6B                       1890 ___str_10:
      002A6B 53 74 6F 70 70 65 64  1891 	.ascii "Stopped"
      002A72 00                    1892 	.db 0x00
                                   1893 	.area CSEG    (CODE)
                                   1894 	.area CONST   (CODE)
      002A73                       1895 ___str_11:
      002A73 52 65 73 65 74        1896 	.ascii "Reset"
      002A78 00                    1897 	.db 0x00
                                   1898 	.area CSEG    (CODE)
                                   1899 	.area CONST   (CODE)
      002A79                       1900 ___str_12:
      002A79 50 6C 65 61 73 65 20  1901 	.ascii "Please enter commands in small cases"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 73 6D 61
             6C 6C 20 63 61 73 65
             73
      002A9D 0A                    1902 	.db 0x0a
      002A9E 0D                    1903 	.db 0x0d
      002A9F 00                    1904 	.db 0x00
                                   1905 	.area CSEG    (CODE)
                                   1906 	.area CONST   (CODE)
      002AA0                       1907 ___str_13:
      002AA0 0A                    1908 	.db 0x0a
      002AA1 0D                    1909 	.db 0x0d
      002AA2 00                    1910 	.db 0x00
                                   1911 	.area CSEG    (CODE)
                                   1912 	.area CONST   (CODE)
      002AA3                       1913 ___str_14:
      002AA3 52 65 73 74 61 72 74  1914 	.ascii "Restarting clock"
             69 6E 67 20 63 6C 6F
             63 6B
      002AB3 0A                    1915 	.db 0x0a
      002AB4 0D                    1916 	.db 0x0d
      002AB5 00                    1917 	.db 0x00
                                   1918 	.area CSEG    (CODE)
                                   1919 	.area CONST   (CODE)
      002AB6                       1920 ___str_15:
      002AB6 53 74 6F 70 70 69 6E  1921 	.ascii "Stopping clock"
             67 20 63 6C 6F 63 6B
      002AC4 0A                    1922 	.db 0x0a
      002AC5 0D                    1923 	.db 0x0d
      002AC6 00                    1924 	.db 0x00
                                   1925 	.area CSEG    (CODE)
                                   1926 	.area CONST   (CODE)
      002AC7                       1927 ___str_16:
      002AC7 52 65 73 65 74 74 69  1928 	.ascii "Resetting clock"
             6E 67 20 63 6C 6F 63
             6B
      002AD6 0A                    1929 	.db 0x0a
      002AD7 0D                    1930 	.db 0x0d
      002AD8 00                    1931 	.db 0x00
                                   1932 	.area CSEG    (CODE)
                                   1933 	.area XINIT   (CODE)
      002AD9                       1934 __xinit__db:
      002AD9 00                    1935 	.db #0x00	; 0
                                   1936 	.area CABS    (ABS,CODE)
