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
                                     18 	.globl _create_custom_character
                                     19 	.globl _set_cgram_address
                                     20 	.globl _test_functionality
                                     21 	.globl _lcdclear
                                     22 	.globl _lcdinit
                                     23 	.globl _lcdputstr
                                     24 	.globl _lcdputch
                                     25 	.globl _lcdgotoxy
                                     26 	.globl _lcdgotoaddr
                                     27 	.globl _lcdbusywait
                                     28 	.globl _lcd_command
                                     29 	.globl _delay
                                     30 	.globl __sdcc_external_startup
                                     31 	.globl _echo
                                     32 	.globl _printf_tiny
                                     33 	.globl _TF1
                                     34 	.globl _TR1
                                     35 	.globl _TF0
                                     36 	.globl _TR0
                                     37 	.globl _IE1
                                     38 	.globl _IT1
                                     39 	.globl _IE0
                                     40 	.globl _IT0
                                     41 	.globl _SM0
                                     42 	.globl _SM1
                                     43 	.globl _SM2
                                     44 	.globl _REN
                                     45 	.globl _TB8
                                     46 	.globl _RB8
                                     47 	.globl _TI
                                     48 	.globl _RI
                                     49 	.globl _CY
                                     50 	.globl _AC
                                     51 	.globl _F0
                                     52 	.globl _RS1
                                     53 	.globl _RS0
                                     54 	.globl _OV
                                     55 	.globl _F1
                                     56 	.globl _P
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD0
                                     64 	.globl _TXD
                                     65 	.globl _RXD0
                                     66 	.globl _RXD
                                     67 	.globl _P3_7
                                     68 	.globl _P3_6
                                     69 	.globl _P3_5
                                     70 	.globl _P3_4
                                     71 	.globl _P3_3
                                     72 	.globl _P3_2
                                     73 	.globl _P3_1
                                     74 	.globl _P3_0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _PS
                                    100 	.globl _PT1
                                    101 	.globl _PX1
                                    102 	.globl _PT0
                                    103 	.globl _PX0
                                    104 	.globl _EA
                                    105 	.globl _ES
                                    106 	.globl _ET1
                                    107 	.globl _EX1
                                    108 	.globl _ET0
                                    109 	.globl _EX0
                                    110 	.globl _BREG_F7
                                    111 	.globl _BREG_F6
                                    112 	.globl _BREG_F5
                                    113 	.globl _BREG_F4
                                    114 	.globl _BREG_F3
                                    115 	.globl _BREG_F2
                                    116 	.globl _BREG_F1
                                    117 	.globl _BREG_F0
                                    118 	.globl _P5_7
                                    119 	.globl _P5_6
                                    120 	.globl _P5_5
                                    121 	.globl _P5_4
                                    122 	.globl _P5_3
                                    123 	.globl _P5_2
                                    124 	.globl _P5_1
                                    125 	.globl _P5_0
                                    126 	.globl _P4_7
                                    127 	.globl _P4_6
                                    128 	.globl _P4_5
                                    129 	.globl _P4_4
                                    130 	.globl _P4_3
                                    131 	.globl _P4_2
                                    132 	.globl _P4_1
                                    133 	.globl _P4_0
                                    134 	.globl _PX0L
                                    135 	.globl _PT0L
                                    136 	.globl _PX1L
                                    137 	.globl _PT1L
                                    138 	.globl _PSL
                                    139 	.globl _PT2L
                                    140 	.globl _PPCL
                                    141 	.globl _EC
                                    142 	.globl _CCF0
                                    143 	.globl _CCF1
                                    144 	.globl _CCF2
                                    145 	.globl _CCF3
                                    146 	.globl _CCF4
                                    147 	.globl _CR
                                    148 	.globl _CF
                                    149 	.globl _TF2
                                    150 	.globl _EXF2
                                    151 	.globl _RCLK
                                    152 	.globl _TCLK
                                    153 	.globl _EXEN2
                                    154 	.globl _TR2
                                    155 	.globl _C_T2
                                    156 	.globl _CP_RL2
                                    157 	.globl _T2CON_7
                                    158 	.globl _T2CON_6
                                    159 	.globl _T2CON_5
                                    160 	.globl _T2CON_4
                                    161 	.globl _T2CON_3
                                    162 	.globl _T2CON_2
                                    163 	.globl _T2CON_1
                                    164 	.globl _T2CON_0
                                    165 	.globl _PT2
                                    166 	.globl _ET2
                                    167 	.globl _TMOD
                                    168 	.globl _TL1
                                    169 	.globl _TL0
                                    170 	.globl _TH1
                                    171 	.globl _TH0
                                    172 	.globl _TCON
                                    173 	.globl _SP
                                    174 	.globl _SCON
                                    175 	.globl _SBUF0
                                    176 	.globl _SBUF
                                    177 	.globl _PSW
                                    178 	.globl _PCON
                                    179 	.globl _P3
                                    180 	.globl _P2
                                    181 	.globl _P1
                                    182 	.globl _P0
                                    183 	.globl _IP
                                    184 	.globl _IE
                                    185 	.globl _DP0L
                                    186 	.globl _DPL
                                    187 	.globl _DP0H
                                    188 	.globl _DPH
                                    189 	.globl _B
                                    190 	.globl _ACC
                                    191 	.globl _EECON
                                    192 	.globl _KBF
                                    193 	.globl _KBE
                                    194 	.globl _KBLS
                                    195 	.globl _BRL
                                    196 	.globl _BDRCON
                                    197 	.globl _T2MOD
                                    198 	.globl _SPDAT
                                    199 	.globl _SPSTA
                                    200 	.globl _SPCON
                                    201 	.globl _SADEN
                                    202 	.globl _SADDR
                                    203 	.globl _WDTPRG
                                    204 	.globl _WDTRST
                                    205 	.globl _P5
                                    206 	.globl _P4
                                    207 	.globl _IPH1
                                    208 	.globl _IPL1
                                    209 	.globl _IPH0
                                    210 	.globl _IPL0
                                    211 	.globl _IEN1
                                    212 	.globl _IEN0
                                    213 	.globl _CMOD
                                    214 	.globl _CL
                                    215 	.globl _CH
                                    216 	.globl _CCON
                                    217 	.globl _CCAPM4
                                    218 	.globl _CCAPM3
                                    219 	.globl _CCAPM2
                                    220 	.globl _CCAPM1
                                    221 	.globl _CCAPM0
                                    222 	.globl _CCAP4L
                                    223 	.globl _CCAP3L
                                    224 	.globl _CCAP2L
                                    225 	.globl _CCAP1L
                                    226 	.globl _CCAP0L
                                    227 	.globl _CCAP4H
                                    228 	.globl _CCAP3H
                                    229 	.globl _CCAP2H
                                    230 	.globl _CCAP1H
                                    231 	.globl _CCAP0H
                                    232 	.globl _CKCON1
                                    233 	.globl _CKCON0
                                    234 	.globl _CKRL
                                    235 	.globl _AUXR1
                                    236 	.globl _AUXR
                                    237 	.globl _TH2
                                    238 	.globl _TL2
                                    239 	.globl _RCAP2H
                                    240 	.globl _RCAP2L
                                    241 	.globl _T2CON
                                    242 	.globl _db
                                    243 	.globl _lcdgotoxy_PARM_2
                                    244 	.globl _clockrun_flag
                                    245 	.globl _mili_sec
                                    246 	.globl _sec_low
                                    247 	.globl _sec_high
                                    248 	.globl _min_low
                                    249 	.globl _min_high
                                    250 	.globl _elapsed_tick
                                    251 	.globl _tick
                                    252 	.globl _ptr
                                    253 	.globl _clock_run
                                    254 ;--------------------------------------------------------
                                    255 ; special function registers
                                    256 ;--------------------------------------------------------
                                    257 	.area RSEG    (ABS,DATA)
      000000                        258 	.org 0x0000
                           0000C8   259 _T2CON	=	0x00c8
                           0000CA   260 _RCAP2L	=	0x00ca
                           0000CB   261 _RCAP2H	=	0x00cb
                           0000CC   262 _TL2	=	0x00cc
                           0000CD   263 _TH2	=	0x00cd
                           00008E   264 _AUXR	=	0x008e
                           0000A2   265 _AUXR1	=	0x00a2
                           000097   266 _CKRL	=	0x0097
                           00008F   267 _CKCON0	=	0x008f
                           0000AF   268 _CKCON1	=	0x00af
                           0000FA   269 _CCAP0H	=	0x00fa
                           0000FB   270 _CCAP1H	=	0x00fb
                           0000FC   271 _CCAP2H	=	0x00fc
                           0000FD   272 _CCAP3H	=	0x00fd
                           0000FE   273 _CCAP4H	=	0x00fe
                           0000EA   274 _CCAP0L	=	0x00ea
                           0000EB   275 _CCAP1L	=	0x00eb
                           0000EC   276 _CCAP2L	=	0x00ec
                           0000ED   277 _CCAP3L	=	0x00ed
                           0000EE   278 _CCAP4L	=	0x00ee
                           0000DA   279 _CCAPM0	=	0x00da
                           0000DB   280 _CCAPM1	=	0x00db
                           0000DC   281 _CCAPM2	=	0x00dc
                           0000DD   282 _CCAPM3	=	0x00dd
                           0000DE   283 _CCAPM4	=	0x00de
                           0000D8   284 _CCON	=	0x00d8
                           0000F9   285 _CH	=	0x00f9
                           0000E9   286 _CL	=	0x00e9
                           0000D9   287 _CMOD	=	0x00d9
                           0000A8   288 _IEN0	=	0x00a8
                           0000B1   289 _IEN1	=	0x00b1
                           0000B8   290 _IPL0	=	0x00b8
                           0000B7   291 _IPH0	=	0x00b7
                           0000B2   292 _IPL1	=	0x00b2
                           0000B3   293 _IPH1	=	0x00b3
                           0000C0   294 _P4	=	0x00c0
                           0000E8   295 _P5	=	0x00e8
                           0000A6   296 _WDTRST	=	0x00a6
                           0000A7   297 _WDTPRG	=	0x00a7
                           0000A9   298 _SADDR	=	0x00a9
                           0000B9   299 _SADEN	=	0x00b9
                           0000C3   300 _SPCON	=	0x00c3
                           0000C4   301 _SPSTA	=	0x00c4
                           0000C5   302 _SPDAT	=	0x00c5
                           0000C9   303 _T2MOD	=	0x00c9
                           00009B   304 _BDRCON	=	0x009b
                           00009A   305 _BRL	=	0x009a
                           00009C   306 _KBLS	=	0x009c
                           00009D   307 _KBE	=	0x009d
                           00009E   308 _KBF	=	0x009e
                           0000D2   309 _EECON	=	0x00d2
                           0000E0   310 _ACC	=	0x00e0
                           0000F0   311 _B	=	0x00f0
                           000083   312 _DPH	=	0x0083
                           000083   313 _DP0H	=	0x0083
                           000082   314 _DPL	=	0x0082
                           000082   315 _DP0L	=	0x0082
                           0000A8   316 _IE	=	0x00a8
                           0000B8   317 _IP	=	0x00b8
                           000080   318 _P0	=	0x0080
                           000090   319 _P1	=	0x0090
                           0000A0   320 _P2	=	0x00a0
                           0000B0   321 _P3	=	0x00b0
                           000087   322 _PCON	=	0x0087
                           0000D0   323 _PSW	=	0x00d0
                           000099   324 _SBUF	=	0x0099
                           000099   325 _SBUF0	=	0x0099
                           000098   326 _SCON	=	0x0098
                           000081   327 _SP	=	0x0081
                           000088   328 _TCON	=	0x0088
                           00008C   329 _TH0	=	0x008c
                           00008D   330 _TH1	=	0x008d
                           00008A   331 _TL0	=	0x008a
                           00008B   332 _TL1	=	0x008b
                           000089   333 _TMOD	=	0x0089
                                    334 ;--------------------------------------------------------
                                    335 ; special function bits
                                    336 ;--------------------------------------------------------
                                    337 	.area RSEG    (ABS,DATA)
      000000                        338 	.org 0x0000
                           0000AD   339 _ET2	=	0x00ad
                           0000BD   340 _PT2	=	0x00bd
                           0000C8   341 _T2CON_0	=	0x00c8
                           0000C9   342 _T2CON_1	=	0x00c9
                           0000CA   343 _T2CON_2	=	0x00ca
                           0000CB   344 _T2CON_3	=	0x00cb
                           0000CC   345 _T2CON_4	=	0x00cc
                           0000CD   346 _T2CON_5	=	0x00cd
                           0000CE   347 _T2CON_6	=	0x00ce
                           0000CF   348 _T2CON_7	=	0x00cf
                           0000C8   349 _CP_RL2	=	0x00c8
                           0000C9   350 _C_T2	=	0x00c9
                           0000CA   351 _TR2	=	0x00ca
                           0000CB   352 _EXEN2	=	0x00cb
                           0000CC   353 _TCLK	=	0x00cc
                           0000CD   354 _RCLK	=	0x00cd
                           0000CE   355 _EXF2	=	0x00ce
                           0000CF   356 _TF2	=	0x00cf
                           0000DF   357 _CF	=	0x00df
                           0000DE   358 _CR	=	0x00de
                           0000DC   359 _CCF4	=	0x00dc
                           0000DB   360 _CCF3	=	0x00db
                           0000DA   361 _CCF2	=	0x00da
                           0000D9   362 _CCF1	=	0x00d9
                           0000D8   363 _CCF0	=	0x00d8
                           0000AE   364 _EC	=	0x00ae
                           0000BE   365 _PPCL	=	0x00be
                           0000BD   366 _PT2L	=	0x00bd
                           0000BC   367 _PSL	=	0x00bc
                           0000BB   368 _PT1L	=	0x00bb
                           0000BA   369 _PX1L	=	0x00ba
                           0000B9   370 _PT0L	=	0x00b9
                           0000B8   371 _PX0L	=	0x00b8
                           0000C0   372 _P4_0	=	0x00c0
                           0000C1   373 _P4_1	=	0x00c1
                           0000C2   374 _P4_2	=	0x00c2
                           0000C3   375 _P4_3	=	0x00c3
                           0000C4   376 _P4_4	=	0x00c4
                           0000C5   377 _P4_5	=	0x00c5
                           0000C6   378 _P4_6	=	0x00c6
                           0000C7   379 _P4_7	=	0x00c7
                           0000E8   380 _P5_0	=	0x00e8
                           0000E9   381 _P5_1	=	0x00e9
                           0000EA   382 _P5_2	=	0x00ea
                           0000EB   383 _P5_3	=	0x00eb
                           0000EC   384 _P5_4	=	0x00ec
                           0000ED   385 _P5_5	=	0x00ed
                           0000EE   386 _P5_6	=	0x00ee
                           0000EF   387 _P5_7	=	0x00ef
                           0000F0   388 _BREG_F0	=	0x00f0
                           0000F1   389 _BREG_F1	=	0x00f1
                           0000F2   390 _BREG_F2	=	0x00f2
                           0000F3   391 _BREG_F3	=	0x00f3
                           0000F4   392 _BREG_F4	=	0x00f4
                           0000F5   393 _BREG_F5	=	0x00f5
                           0000F6   394 _BREG_F6	=	0x00f6
                           0000F7   395 _BREG_F7	=	0x00f7
                           0000A8   396 _EX0	=	0x00a8
                           0000A9   397 _ET0	=	0x00a9
                           0000AA   398 _EX1	=	0x00aa
                           0000AB   399 _ET1	=	0x00ab
                           0000AC   400 _ES	=	0x00ac
                           0000AF   401 _EA	=	0x00af
                           0000B8   402 _PX0	=	0x00b8
                           0000B9   403 _PT0	=	0x00b9
                           0000BA   404 _PX1	=	0x00ba
                           0000BB   405 _PT1	=	0x00bb
                           0000BC   406 _PS	=	0x00bc
                           000080   407 _P0_0	=	0x0080
                           000081   408 _P0_1	=	0x0081
                           000082   409 _P0_2	=	0x0082
                           000083   410 _P0_3	=	0x0083
                           000084   411 _P0_4	=	0x0084
                           000085   412 _P0_5	=	0x0085
                           000086   413 _P0_6	=	0x0086
                           000087   414 _P0_7	=	0x0087
                           000090   415 _P1_0	=	0x0090
                           000091   416 _P1_1	=	0x0091
                           000092   417 _P1_2	=	0x0092
                           000093   418 _P1_3	=	0x0093
                           000094   419 _P1_4	=	0x0094
                           000095   420 _P1_5	=	0x0095
                           000096   421 _P1_6	=	0x0096
                           000097   422 _P1_7	=	0x0097
                           0000A0   423 _P2_0	=	0x00a0
                           0000A1   424 _P2_1	=	0x00a1
                           0000A2   425 _P2_2	=	0x00a2
                           0000A3   426 _P2_3	=	0x00a3
                           0000A4   427 _P2_4	=	0x00a4
                           0000A5   428 _P2_5	=	0x00a5
                           0000A6   429 _P2_6	=	0x00a6
                           0000A7   430 _P2_7	=	0x00a7
                           0000B0   431 _P3_0	=	0x00b0
                           0000B1   432 _P3_1	=	0x00b1
                           0000B2   433 _P3_2	=	0x00b2
                           0000B3   434 _P3_3	=	0x00b3
                           0000B4   435 _P3_4	=	0x00b4
                           0000B5   436 _P3_5	=	0x00b5
                           0000B6   437 _P3_6	=	0x00b6
                           0000B7   438 _P3_7	=	0x00b7
                           0000B0   439 _RXD	=	0x00b0
                           0000B0   440 _RXD0	=	0x00b0
                           0000B1   441 _TXD	=	0x00b1
                           0000B1   442 _TXD0	=	0x00b1
                           0000B2   443 _INT0	=	0x00b2
                           0000B3   444 _INT1	=	0x00b3
                           0000B4   445 _T0	=	0x00b4
                           0000B5   446 _T1	=	0x00b5
                           0000B6   447 _WR	=	0x00b6
                           0000B7   448 _RD	=	0x00b7
                           0000D0   449 _P	=	0x00d0
                           0000D1   450 _F1	=	0x00d1
                           0000D2   451 _OV	=	0x00d2
                           0000D3   452 _RS0	=	0x00d3
                           0000D4   453 _RS1	=	0x00d4
                           0000D5   454 _F0	=	0x00d5
                           0000D6   455 _AC	=	0x00d6
                           0000D7   456 _CY	=	0x00d7
                           000098   457 _RI	=	0x0098
                           000099   458 _TI	=	0x0099
                           00009A   459 _RB8	=	0x009a
                           00009B   460 _TB8	=	0x009b
                           00009C   461 _REN	=	0x009c
                           00009D   462 _SM2	=	0x009d
                           00009E   463 _SM1	=	0x009e
                           00009F   464 _SM0	=	0x009f
                           000088   465 _IT0	=	0x0088
                           000089   466 _IE0	=	0x0089
                           00008A   467 _IT1	=	0x008a
                           00008B   468 _IE1	=	0x008b
                           00008C   469 _TR0	=	0x008c
                           00008D   470 _TF0	=	0x008d
                           00008E   471 _TR1	=	0x008e
                           00008F   472 _TF1	=	0x008f
                                    473 ;--------------------------------------------------------
                                    474 ; overlayable register banks
                                    475 ;--------------------------------------------------------
                                    476 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        477 	.ds 8
                                    478 ;--------------------------------------------------------
                                    479 ; overlayable bit register bank
                                    480 ;--------------------------------------------------------
                                    481 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        482 bits:
      000021                        483 	.ds 1
                           008000   484 	b0 = bits[0]
                           008100   485 	b1 = bits[1]
                           008200   486 	b2 = bits[2]
                           008300   487 	b3 = bits[3]
                           008400   488 	b4 = bits[4]
                           008500   489 	b5 = bits[5]
                           008600   490 	b6 = bits[6]
                           008700   491 	b7 = bits[7]
                                    492 ;--------------------------------------------------------
                                    493 ; internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area DSEG    (DATA)
      000008                        496 _ptr::
      000008                        497 	.ds 2
      00000A                        498 _tick::
      00000A                        499 	.ds 2
      00000C                        500 _elapsed_tick::
      00000C                        501 	.ds 2
      00000E                        502 _min_high::
      00000E                        503 	.ds 1
      00000F                        504 _min_low::
      00000F                        505 	.ds 1
      000010                        506 _sec_high::
      000010                        507 	.ds 1
      000011                        508 _sec_low::
      000011                        509 	.ds 1
      000012                        510 _mili_sec::
      000012                        511 	.ds 1
      000013                        512 _clockrun_flag::
      000013                        513 	.ds 2
      000015                        514 _lcdgotoxy_PARM_2:
      000015                        515 	.ds 1
      000016                        516 _create_custom_character_c_65536_68:
      000016                        517 	.ds 8
                                    518 ;--------------------------------------------------------
                                    519 ; overlayable items in internal ram
                                    520 ;--------------------------------------------------------
                                    521 	.area	OSEG    (OVR,DATA)
                                    522 	.area	OSEG    (OVR,DATA)
      000022                        523 _lcd_command_PARM_2:
      000022                        524 	.ds 1
      000023                        525 _lcd_command_PARM_3:
      000023                        526 	.ds 1
                                    527 ;--------------------------------------------------------
                                    528 ; Stack segment in internal ram
                                    529 ;--------------------------------------------------------
                                    530 	.area	SSEG
      000024                        531 __start__stack:
      000024                        532 	.ds	1
                                    533 
                                    534 ;--------------------------------------------------------
                                    535 ; indirectly addressable internal ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area ISEG    (DATA)
                                    538 ;--------------------------------------------------------
                                    539 ; absolute internal ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area IABS    (ABS,DATA)
                                    542 	.area IABS    (ABS,DATA)
                                    543 ;--------------------------------------------------------
                                    544 ; bit data
                                    545 ;--------------------------------------------------------
                                    546 	.area BSEG    (BIT)
      000000                        547 _lcdgotoxy_sloc0_1_0:
      000000                        548 	.ds 1
      000001                        549 _isr_timer2_sloc0_1_0:
      000001                        550 	.ds 1
                                    551 ;--------------------------------------------------------
                                    552 ; paged external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area PSEG    (PAG,XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XSEG    (XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; absolute external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XABS    (ABS,XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; external initialized ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XISEG   (XDATA)
      00FC00                        567 _db::
      00FC00                        568 	.ds 1
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT0 (CODE)
                                    571 	.area GSINIT1 (CODE)
                                    572 	.area GSINIT2 (CODE)
                                    573 	.area GSINIT3 (CODE)
                                    574 	.area GSINIT4 (CODE)
                                    575 	.area GSINIT5 (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area CSEG    (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; interrupt vector
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
      002000                        583 __interrupt_vect:
      002000 02 20 31         [24]  584 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  585 	reti
      002004                        586 	.ds	7
      00200B 32               [24]  587 	reti
      00200C                        588 	.ds	7
      002013 32               [24]  589 	reti
      002014                        590 	.ds	7
      00201B 32               [24]  591 	reti
      00201C                        592 	.ds	7
      002023 32               [24]  593 	reti
      002024                        594 	.ds	7
      00202B 02 23 7F         [24]  595 	ljmp	_isr_timer2
                                    596 ;--------------------------------------------------------
                                    597 ; global & static initialisations
                                    598 ;--------------------------------------------------------
                                    599 	.area HOME    (CODE)
                                    600 	.area GSINIT  (CODE)
                                    601 	.area GSFINAL (CODE)
                                    602 	.area GSINIT  (CODE)
                                    603 	.globl __sdcc_gsinit_startup
                                    604 	.globl __sdcc_program_startup
                                    605 	.globl __start__stack
                                    606 	.globl __mcs51_genXINIT
                                    607 	.globl __mcs51_genXRAMCLEAR
                                    608 	.globl __mcs51_genRAMCLEAR
                                    609 ;	main.c:18: __xdata uint8_t * ptr = &db;
      00208A 75 08 00         [24]  610 	mov	_ptr,#_db
      00208D 75 09 FC         [24]  611 	mov	(_ptr + 1),#(_db >> 8)
                                    612 ;	main.c:19: volatile unsigned int tick = 0;
      002090 E4               [12]  613 	clr	a
      002091 F5 0A            [12]  614 	mov	_tick,a
      002093 F5 0B            [12]  615 	mov	(_tick + 1),a
                                    616 ;	main.c:20: volatile unsigned int  elapsed_tick = 0;
      002095 F5 0C            [12]  617 	mov	_elapsed_tick,a
      002097 F5 0D            [12]  618 	mov	(_elapsed_tick + 1),a
                                    619 ;	main.c:28: volatile unsigned int clockrun_flag = 0;
      002099 F5 13            [12]  620 	mov	_clockrun_flag,a
      00209B F5 14            [12]  621 	mov	(_clockrun_flag + 1),a
                                    622 	.area GSFINAL (CODE)
      00209D 02 20 2E         [24]  623 	ljmp	__sdcc_program_startup
                                    624 ;--------------------------------------------------------
                                    625 ; Home
                                    626 ;--------------------------------------------------------
                                    627 	.area HOME    (CODE)
                                    628 	.area HOME    (CODE)
      00202E                        629 __sdcc_program_startup:
      00202E 02 24 F4         [24]  630 	ljmp	_main
                                    631 ;	return from main will return to caller
                                    632 ;--------------------------------------------------------
                                    633 ; code
                                    634 ;--------------------------------------------------------
                                    635 	.area CSEG    (CODE)
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    638 ;------------------------------------------------------------
                                    639 ;	main.c:34: _sdcc_external_startup()
                                    640 ;	-----------------------------------------
                                    641 ;	 function _sdcc_external_startup
                                    642 ;	-----------------------------------------
      0020A0                        643 __sdcc_external_startup:
                           000007   644 	ar7 = 0x07
                           000006   645 	ar6 = 0x06
                           000005   646 	ar5 = 0x05
                           000004   647 	ar4 = 0x04
                           000003   648 	ar3 = 0x03
                           000002   649 	ar2 = 0x02
                           000001   650 	ar1 = 0x01
                           000000   651 	ar0 = 0x00
                                    652 ;	main.c:36: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      0020A0 43 8E 0C         [24]  653 	orl	_AUXR,#0x0c
                                    654 ;	main.c:37: return 0;               // Return 0 to indicate successful startup
      0020A3 90 00 00         [24]  655 	mov	dptr,#0x0000
                                    656 ;	main.c:38: }
      0020A6 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'delay'
                                    660 ;------------------------------------------------------------
                                    661 ;t                         Allocated to registers 
                                    662 ;------------------------------------------------------------
                                    663 ;	main.c:49: void delay(uint32_t t)
                                    664 ;	-----------------------------------------
                                    665 ;	 function delay
                                    666 ;	-----------------------------------------
      0020A7                        667 _delay:
      0020A7 AC 82            [24]  668 	mov	r4,dpl
      0020A9 AD 83            [24]  669 	mov	r5,dph
      0020AB AE F0            [24]  670 	mov	r6,b
      0020AD FF               [12]  671 	mov	r7,a
                                    672 ;	main.c:51: while(t--){
      0020AE                        673 00101$:
      0020AE 8C 00            [24]  674 	mov	ar0,r4
      0020B0 8D 01            [24]  675 	mov	ar1,r5
      0020B2 8E 02            [24]  676 	mov	ar2,r6
      0020B4 8F 03            [24]  677 	mov	ar3,r7
      0020B6 1C               [12]  678 	dec	r4
      0020B7 BC FF 09         [24]  679 	cjne	r4,#0xff,00115$
      0020BA 1D               [12]  680 	dec	r5
      0020BB BD FF 05         [24]  681 	cjne	r5,#0xff,00115$
      0020BE 1E               [12]  682 	dec	r6
      0020BF BE FF 01         [24]  683 	cjne	r6,#0xff,00115$
      0020C2 1F               [12]  684 	dec	r7
      0020C3                        685 00115$:
      0020C3 E8               [12]  686 	mov	a,r0
      0020C4 49               [12]  687 	orl	a,r1
      0020C5 4A               [12]  688 	orl	a,r2
      0020C6 4B               [12]  689 	orl	a,r3
      0020C7 60 03            [24]  690 	jz	00104$
                                    691 ;	main.c:52: NOP;  // Assembly NOP instruction for delaying program execution.
      0020C9 00               [12]  692 	nop	
      0020CA 80 E2            [24]  693 	sjmp	00101$
      0020CC                        694 00104$:
                                    695 ;	main.c:54: }
      0020CC 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'lcd_command'
                                    699 ;------------------------------------------------------------
                                    700 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    701 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    702 ;rs                        Allocated to registers r7 
                                    703 ;------------------------------------------------------------
                                    704 ;	main.c:56: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data){
                                    705 ;	-----------------------------------------
                                    706 ;	 function lcd_command
                                    707 ;	-----------------------------------------
      0020CD                        708 _lcd_command:
                                    709 ;	main.c:57: RS = rs;
                                    710 ;	assignBit
      0020CD E5 82            [12]  711 	mov	a,dpl
      0020CF 24 FF            [12]  712 	add	a,#0xff
      0020D1 92 96            [24]  713 	mov	_P1_6,c
                                    714 ;	main.c:58: R_W = r_w;
                                    715 ;	assignBit
      0020D3 E5 22            [12]  716 	mov	a,_lcd_command_PARM_2
      0020D5 24 FF            [12]  717 	add	a,#0xff
      0020D7 92 97            [24]  718 	mov	_P1_7,c
                                    719 ;	main.c:59: *ptr = data;
      0020D9 85 08 82         [24]  720 	mov	dpl,_ptr
      0020DC 85 09 83         [24]  721 	mov	dph,(_ptr + 1)
      0020DF E5 23            [12]  722 	mov	a,_lcd_command_PARM_3
      0020E1 F0               [24]  723 	movx	@dptr,a
                                    724 ;	main.c:60: }
      0020E2 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'lcdbusywait'
                                    728 ;------------------------------------------------------------
                                    729 ;	main.c:62: void lcdbusywait(){
                                    730 ;	-----------------------------------------
                                    731 ;	 function lcdbusywait
                                    732 ;	-----------------------------------------
      0020E3                        733 _lcdbusywait:
                                    734 ;	main.c:63: RS = PULSE_LOW;
                                    735 ;	assignBit
      0020E3 C2 96            [12]  736 	clr	_P1_6
                                    737 ;	main.c:64: R_W = PULSE_HIGH;
                                    738 ;	assignBit
      0020E5 D2 97            [12]  739 	setb	_P1_7
                                    740 ;	main.c:65: while(*ptr & (0b10000000)){
      0020E7                        741 00101$:
      0020E7 85 08 82         [24]  742 	mov	dpl,_ptr
      0020EA 85 09 83         [24]  743 	mov	dph,(_ptr + 1)
      0020ED E0               [24]  744 	movx	a,@dptr
      0020EE 20 E7 F6         [24]  745 	jb	acc.7,00101$
                                    746 ;	main.c:68: }
      0020F1 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    750 ;------------------------------------------------------------
                                    751 ;addr                      Allocated to registers r7 
                                    752 ;------------------------------------------------------------
                                    753 ;	main.c:69: void lcdgotoaddr(uint8_t addr){
                                    754 ;	-----------------------------------------
                                    755 ;	 function lcdgotoaddr
                                    756 ;	-----------------------------------------
      0020F2                        757 _lcdgotoaddr:
      0020F2 AF 82            [24]  758 	mov	r7,dpl
                                    759 ;	main.c:70: RS = PULSE_LOW;
                                    760 ;	assignBit
      0020F4 C2 96            [12]  761 	clr	_P1_6
                                    762 ;	main.c:71: R_W = PULSE_LOW;
                                    763 ;	assignBit
      0020F6 C2 97            [12]  764 	clr	_P1_7
                                    765 ;	main.c:72: *ptr = addr | (0x80);
      0020F8 85 08 82         [24]  766 	mov	dpl,_ptr
      0020FB 85 09 83         [24]  767 	mov	dph,(_ptr + 1)
      0020FE 43 07 80         [24]  768 	orl	ar7,#0x80
      002101 EF               [12]  769 	mov	a,r7
      002102 F0               [24]  770 	movx	@dptr,a
                                    771 ;	main.c:73: lcdbusywait();
                                    772 ;	main.c:74: }
      002103 02 20 E3         [24]  773 	ljmp	_lcdbusywait
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'lcdgotoxy'
                                    776 ;------------------------------------------------------------
                                    777 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    778 ;row                       Allocated to registers r7 
                                    779 ;------------------------------------------------------------
                                    780 ;	main.c:76: void lcdgotoxy(uint8_t row, uint8_t column){
                                    781 ;	-----------------------------------------
                                    782 ;	 function lcdgotoxy
                                    783 ;	-----------------------------------------
      002106                        784 _lcdgotoxy:
                                    785 ;	main.c:77: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      002106 AE 82            [24]  786 	mov	r6,dpl
      002108 7F 00            [12]  787 	mov	r7,#0x00
      00210A EE               [12]  788 	mov	a,r6
      00210B 30 E0 23         [24]  789 	jnb	acc.0,00103$
      00210E 75 22 03         [24]  790 	mov	__modsint_PARM_2,#0x03
      002111 75 23 00         [24]  791 	mov	(__modsint_PARM_2 + 1),#0x00
      002114 8E 82            [24]  792 	mov	dpl,r6
      002116 8F 83            [24]  793 	mov	dph,r7
      002118 12 27 E0         [24]  794 	lcall	__modsint
      00211B AC 82            [24]  795 	mov	r4,dpl
      00211D AD 83            [24]  796 	mov	r5,dph
      00211F EC               [12]  797 	mov	a,r4
      002120 4D               [12]  798 	orl	a,r5
      002121 B4 01 00         [24]  799 	cjne	a,#0x01,00110$
      002124                        800 00110$:
      002124 92 00            [24]  801 	mov  _lcdgotoxy_sloc0_1_0,c
      002126 E4               [12]  802 	clr	a
      002127 33               [12]  803 	rlc	a
      002128 C4               [12]  804 	swap	a
      002129 54 F0            [12]  805 	anl	a,#0xf0
      00212B AC 15            [24]  806 	mov	r4,_lcdgotoxy_PARM_2
      00212D 2C               [12]  807 	add	a,r4
      00212E FD               [12]  808 	mov	r5,a
      00212F 80 1A            [24]  809 	sjmp	00104$
      002131                        810 00103$:
      002131 AC 15            [24]  811 	mov	r4,_lcdgotoxy_PARM_2
      002133 74 40            [12]  812 	mov	a,#0x40
      002135 2C               [12]  813 	add	a,r4
      002136 FC               [12]  814 	mov	r4,a
      002137 53 06 03         [24]  815 	anl	ar6,#0x03
      00213A 7F 00            [12]  816 	mov	r7,#0x00
      00213C EE               [12]  817 	mov	a,r6
      00213D 4F               [12]  818 	orl	a,r7
      00213E B4 01 00         [24]  819 	cjne	a,#0x01,00111$
      002141                        820 00111$:
      002141 92 00            [24]  821 	mov  _lcdgotoxy_sloc0_1_0,c
      002143 E4               [12]  822 	clr	a
      002144 33               [12]  823 	rlc	a
      002145 C4               [12]  824 	swap	a
      002146 54 F0            [12]  825 	anl	a,#0xf0
      002148 FF               [12]  826 	mov	r7,a
      002149 2C               [12]  827 	add	a,r4
      00214A FD               [12]  828 	mov	r5,a
      00214B                        829 00104$:
      00214B ED               [12]  830 	mov	a,r5
      00214C 14               [12]  831 	dec	a
      00214D F5 82            [12]  832 	mov	dpl,a
                                    833 ;	main.c:78: }
      00214F 02 20 F2         [24]  834 	ljmp	_lcdgotoaddr
                                    835 ;------------------------------------------------------------
                                    836 ;Allocation info for local variables in function 'lcdputch'
                                    837 ;------------------------------------------------------------
                                    838 ;cc                        Allocated to registers r7 
                                    839 ;------------------------------------------------------------
                                    840 ;	main.c:79: void lcdputch(uint8_t cc){
                                    841 ;	-----------------------------------------
                                    842 ;	 function lcdputch
                                    843 ;	-----------------------------------------
      002152                        844 _lcdputch:
      002152 AF 82            [24]  845 	mov	r7,dpl
                                    846 ;	main.c:80: RS = PULSE_HIGH;
                                    847 ;	assignBit
      002154 D2 96            [12]  848 	setb	_P1_6
                                    849 ;	main.c:81: R_W = PULSE_LOW;
                                    850 ;	assignBit
      002156 C2 97            [12]  851 	clr	_P1_7
                                    852 ;	main.c:82: *ptr = cc;
      002158 85 08 82         [24]  853 	mov	dpl,_ptr
      00215B 85 09 83         [24]  854 	mov	dph,(_ptr + 1)
      00215E EF               [12]  855 	mov	a,r7
      00215F F0               [24]  856 	movx	@dptr,a
                                    857 ;	main.c:83: lcdbusywait();
                                    858 ;	main.c:84: }
      002160 02 20 E3         [24]  859 	ljmp	_lcdbusywait
                                    860 ;------------------------------------------------------------
                                    861 ;Allocation info for local variables in function 'lcdputstr'
                                    862 ;------------------------------------------------------------
                                    863 ;ss                        Allocated to registers 
                                    864 ;lcd_ptr_addr              Allocated to registers r4 
                                    865 ;------------------------------------------------------------
                                    866 ;	main.c:86: void lcdputstr(uint8_t *ss){
                                    867 ;	-----------------------------------------
                                    868 ;	 function lcdputstr
                                    869 ;	-----------------------------------------
      002163                        870 _lcdputstr:
      002163 AD 82            [24]  871 	mov	r5,dpl
      002165 AE 83            [24]  872 	mov	r6,dph
      002167 AF F0            [24]  873 	mov	r7,b
                                    874 ;	main.c:88: while(*ss != '\0'){
      002169                        875 00107$:
      002169 8D 82            [24]  876 	mov	dpl,r5
      00216B 8E 83            [24]  877 	mov	dph,r6
      00216D 8F F0            [24]  878 	mov	b,r7
      00216F 12 27 C4         [24]  879 	lcall	__gptrget
      002172 70 01            [24]  880 	jnz	00137$
      002174 22               [24]  881 	ret
      002175                        882 00137$:
                                    883 ;	main.c:89: RS = PULSE_LOW;
                                    884 ;	assignBit
      002175 C2 96            [12]  885 	clr	_P1_6
                                    886 ;	main.c:90: R_W = PULSE_HIGH;
                                    887 ;	assignBit
      002177 D2 97            [12]  888 	setb	_P1_7
                                    889 ;	main.c:91: lcdputch(*ss);
      002179 8D 82            [24]  890 	mov	dpl,r5
      00217B 8E 83            [24]  891 	mov	dph,r6
      00217D 8F F0            [24]  892 	mov	b,r7
      00217F 12 27 C4         [24]  893 	lcall	__gptrget
      002182 F5 82            [12]  894 	mov	dpl,a
      002184 C0 07            [24]  895 	push	ar7
      002186 C0 06            [24]  896 	push	ar6
      002188 C0 05            [24]  897 	push	ar5
      00218A 12 21 52         [24]  898 	lcall	_lcdputch
      00218D D0 05            [24]  899 	pop	ar5
      00218F D0 06            [24]  900 	pop	ar6
      002191 D0 07            [24]  901 	pop	ar7
                                    902 ;	main.c:92: lcd_ptr_addr = *ptr & (0b01111111);
      002193 85 08 82         [24]  903 	mov	dpl,_ptr
      002196 85 09 83         [24]  904 	mov	dph,(_ptr + 1)
      002199 E0               [24]  905 	movx	a,@dptr
      00219A FC               [12]  906 	mov	r4,a
      00219B 53 04 7F         [24]  907 	anl	ar4,#0x7f
                                    908 ;	main.c:93: switch(lcd_ptr_addr){
      00219E BC 10 02         [24]  909 	cjne	r4,#0x10,00138$
      0021A1 80 0F            [24]  910 	sjmp	00101$
      0021A3                        911 00138$:
      0021A3 BC 20 02         [24]  912 	cjne	r4,#0x20,00139$
      0021A6 80 32            [24]  913 	sjmp	00103$
      0021A8                        914 00139$:
      0021A8 BC 50 02         [24]  915 	cjne	r4,#0x50,00140$
      0021AB 80 19            [24]  916 	sjmp	00102$
      0021AD                        917 00140$:
                                    918 ;	main.c:94: case 0x10:
      0021AD BC 60 50         [24]  919 	cjne	r4,#0x60,00106$
      0021B0 80 3C            [24]  920 	sjmp	00104$
      0021B2                        921 00101$:
                                    922 ;	main.c:95: lcdgotoaddr(0x40);
      0021B2 75 82 40         [24]  923 	mov	dpl,#0x40
      0021B5 C0 07            [24]  924 	push	ar7
      0021B7 C0 06            [24]  925 	push	ar6
      0021B9 C0 05            [24]  926 	push	ar5
      0021BB 12 20 F2         [24]  927 	lcall	_lcdgotoaddr
      0021BE D0 05            [24]  928 	pop	ar5
      0021C0 D0 06            [24]  929 	pop	ar6
      0021C2 D0 07            [24]  930 	pop	ar7
                                    931 ;	main.c:96: break;
                                    932 ;	main.c:97: case 0x50:
      0021C4 80 3A            [24]  933 	sjmp	00106$
      0021C6                        934 00102$:
                                    935 ;	main.c:98: lcdgotoaddr(0x10);
      0021C6 75 82 10         [24]  936 	mov	dpl,#0x10
      0021C9 C0 07            [24]  937 	push	ar7
      0021CB C0 06            [24]  938 	push	ar6
      0021CD C0 05            [24]  939 	push	ar5
      0021CF 12 20 F2         [24]  940 	lcall	_lcdgotoaddr
      0021D2 D0 05            [24]  941 	pop	ar5
      0021D4 D0 06            [24]  942 	pop	ar6
      0021D6 D0 07            [24]  943 	pop	ar7
                                    944 ;	main.c:99: break;
                                    945 ;	main.c:100: case 0x20:
      0021D8 80 26            [24]  946 	sjmp	00106$
      0021DA                        947 00103$:
                                    948 ;	main.c:101: lcdgotoaddr(0x50);
      0021DA 75 82 50         [24]  949 	mov	dpl,#0x50
      0021DD C0 07            [24]  950 	push	ar7
      0021DF C0 06            [24]  951 	push	ar6
      0021E1 C0 05            [24]  952 	push	ar5
      0021E3 12 20 F2         [24]  953 	lcall	_lcdgotoaddr
      0021E6 D0 05            [24]  954 	pop	ar5
      0021E8 D0 06            [24]  955 	pop	ar6
      0021EA D0 07            [24]  956 	pop	ar7
                                    957 ;	main.c:102: break;
                                    958 ;	main.c:103: case 0x60:
      0021EC 80 12            [24]  959 	sjmp	00106$
      0021EE                        960 00104$:
                                    961 ;	main.c:104: lcdgotoaddr(0x00);
      0021EE 75 82 00         [24]  962 	mov	dpl,#0x00
      0021F1 C0 07            [24]  963 	push	ar7
      0021F3 C0 06            [24]  964 	push	ar6
      0021F5 C0 05            [24]  965 	push	ar5
      0021F7 12 20 F2         [24]  966 	lcall	_lcdgotoaddr
      0021FA D0 05            [24]  967 	pop	ar5
      0021FC D0 06            [24]  968 	pop	ar6
      0021FE D0 07            [24]  969 	pop	ar7
                                    970 ;	main.c:108: }
      002200                        971 00106$:
                                    972 ;	main.c:109: ss++;
      002200 0D               [12]  973 	inc	r5
      002201 BD 00 01         [24]  974 	cjne	r5,#0x00,00142$
      002204 0E               [12]  975 	inc	r6
      002205                        976 00142$:
                                    977 ;	main.c:111: }
      002205 02 21 69         [24]  978 	ljmp	00107$
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'lcdinit'
                                    981 ;------------------------------------------------------------
                                    982 ;	main.c:112: void lcdinit()
                                    983 ;	-----------------------------------------
                                    984 ;	 function lcdinit
                                    985 ;	-----------------------------------------
      002208                        986 _lcdinit:
                                    987 ;	main.c:114: delay(14000); //waiting for 15ms (1.085us * 14000 ~= 15ms)
      002208 90 36 B0         [24]  988 	mov	dptr,#0x36b0
      00220B E4               [12]  989 	clr	a
      00220C F5 F0            [12]  990 	mov	b,a
      00220E 12 20 A7         [24]  991 	lcall	_delay
                                    992 ;	main.c:115: lcd_command(0,0,0x30); // system set
      002211 75 22 00         [24]  993 	mov	_lcd_command_PARM_2,#0x00
      002214 75 23 30         [24]  994 	mov	_lcd_command_PARM_3,#0x30
      002217 75 82 00         [24]  995 	mov	dpl,#0x00
      00221A 12 20 CD         [24]  996 	lcall	_lcd_command
                                    997 ;	main.c:116: delay(4000); //waiting for 4.1ms (1.085us * 4000 ~= 4.1ms)
      00221D 90 0F A0         [24]  998 	mov	dptr,#0x0fa0
      002220 E4               [12]  999 	clr	a
      002221 F5 F0            [12] 1000 	mov	b,a
      002223 12 20 A7         [24] 1001 	lcall	_delay
                                   1002 ;	main.c:117: lcd_command(0,0,0x30); // system set
      002226 75 22 00         [24] 1003 	mov	_lcd_command_PARM_2,#0x00
      002229 75 23 30         [24] 1004 	mov	_lcd_command_PARM_3,#0x30
      00222C 75 82 00         [24] 1005 	mov	dpl,#0x00
      00222F 12 20 CD         [24] 1006 	lcall	_lcd_command
                                   1007 ;	main.c:118: delay(100); //waiting for 100us (1.085us * 100 ~= 100us)
      002232 90 00 64         [24] 1008 	mov	dptr,#(0x64&0x00ff)
      002235 E4               [12] 1009 	clr	a
      002236 F5 F0            [12] 1010 	mov	b,a
      002238 12 20 A7         [24] 1011 	lcall	_delay
                                   1012 ;	main.c:119: lcd_command(0,0,0x30); // system set
      00223B 75 22 00         [24] 1013 	mov	_lcd_command_PARM_2,#0x00
      00223E 75 23 30         [24] 1014 	mov	_lcd_command_PARM_3,#0x30
      002241 75 82 00         [24] 1015 	mov	dpl,#0x00
      002244 12 20 CD         [24] 1016 	lcall	_lcd_command
                                   1017 ;	main.c:120: lcdbusywait();
      002247 12 20 E3         [24] 1018 	lcall	_lcdbusywait
                                   1019 ;	main.c:121: lcd_command(0,0,0x38); // function set
      00224A 75 22 00         [24] 1020 	mov	_lcd_command_PARM_2,#0x00
      00224D 75 23 38         [24] 1021 	mov	_lcd_command_PARM_3,#0x38
      002250 75 82 00         [24] 1022 	mov	dpl,#0x00
      002253 12 20 CD         [24] 1023 	lcall	_lcd_command
                                   1024 ;	main.c:122: lcdbusywait();
      002256 12 20 E3         [24] 1025 	lcall	_lcdbusywait
                                   1026 ;	main.c:123: lcd_command(0,0,0x08); // turn off display
      002259 75 22 00         [24] 1027 	mov	_lcd_command_PARM_2,#0x00
      00225C 75 23 08         [24] 1028 	mov	_lcd_command_PARM_3,#0x08
      00225F 75 82 00         [24] 1029 	mov	dpl,#0x00
      002262 12 20 CD         [24] 1030 	lcall	_lcd_command
                                   1031 ;	main.c:124: lcdbusywait();
      002265 12 20 E3         [24] 1032 	lcall	_lcdbusywait
                                   1033 ;	main.c:125: lcd_command(0,0,0x0C); // turn on display
      002268 75 22 00         [24] 1034 	mov	_lcd_command_PARM_2,#0x00
      00226B 75 23 0C         [24] 1035 	mov	_lcd_command_PARM_3,#0x0c
      00226E 75 82 00         [24] 1036 	mov	dpl,#0x00
      002271 12 20 CD         [24] 1037 	lcall	_lcd_command
                                   1038 ;	main.c:126: lcdbusywait();
      002274 12 20 E3         [24] 1039 	lcall	_lcdbusywait
                                   1040 ;	main.c:127: lcd_command(0,0,0x06); // Entry mode set
      002277 75 22 00         [24] 1041 	mov	_lcd_command_PARM_2,#0x00
      00227A 75 23 06         [24] 1042 	mov	_lcd_command_PARM_3,#0x06
      00227D 75 82 00         [24] 1043 	mov	dpl,#0x00
      002280 12 20 CD         [24] 1044 	lcall	_lcd_command
                                   1045 ;	main.c:128: lcdbusywait();
      002283 12 20 E3         [24] 1046 	lcall	_lcdbusywait
                                   1047 ;	main.c:129: lcd_command(0,0,0x01); // clear screen and send the cursor home
      002286 75 22 00         [24] 1048 	mov	_lcd_command_PARM_2,#0x00
      002289 75 23 01         [24] 1049 	mov	_lcd_command_PARM_3,#0x01
      00228C 75 82 00         [24] 1050 	mov	dpl,#0x00
                                   1051 ;	main.c:130: }
      00228F 02 20 CD         [24] 1052 	ljmp	_lcd_command
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'lcdclear'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	main.c:132: void lcdclear(){
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function lcdclear
                                   1059 ;	-----------------------------------------
      002292                       1060 _lcdclear:
                                   1061 ;	main.c:133: RS = PULSE_LOW;
                                   1062 ;	assignBit
      002292 C2 96            [12] 1063 	clr	_P1_6
                                   1064 ;	main.c:134: R_W = PULSE_LOW;
                                   1065 ;	assignBit
      002294 C2 97            [12] 1066 	clr	_P1_7
                                   1067 ;	main.c:135: *ptr = 0b00000001;
      002296 85 08 82         [24] 1068 	mov	dpl,_ptr
      002299 85 09 83         [24] 1069 	mov	dph,(_ptr + 1)
      00229C 74 01            [12] 1070 	mov	a,#0x01
      00229E F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	main.c:136: lcdbusywait();
                                   1073 ;	main.c:137: }
      00229F 02 20 E3         [24] 1074 	ljmp	_lcdbusywait
                                   1075 ;------------------------------------------------------------
                                   1076 ;Allocation info for local variables in function 'test_functionality'
                                   1077 ;------------------------------------------------------------
                                   1078 ;	main.c:139: void test_functionality(){
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function test_functionality
                                   1081 ;	-----------------------------------------
      0022A2                       1082 _test_functionality:
                                   1083 ;	main.c:140: printf_tiny("test_functionality start\n\r");
      0022A2 74 16            [12] 1084 	mov	a,#___str_0
      0022A4 C0 E0            [24] 1085 	push	acc
      0022A6 74 28            [12] 1086 	mov	a,#(___str_0 >> 8)
      0022A8 C0 E0            [24] 1087 	push	acc
      0022AA 12 26 6E         [24] 1088 	lcall	_printf_tiny
      0022AD 15 81            [12] 1089 	dec	sp
      0022AF 15 81            [12] 1090 	dec	sp
                                   1091 ;	main.c:142: lcdgotoaddr(0x01);
      0022B1 75 82 01         [24] 1092 	mov	dpl,#0x01
      0022B4 12 20 F2         [24] 1093 	lcall	_lcdgotoaddr
                                   1094 ;	main.c:143: lcdputch('E');
      0022B7 75 82 45         [24] 1095 	mov	dpl,#0x45
      0022BA 12 21 52         [24] 1096 	lcall	_lcdputch
                                   1097 ;	main.c:144: delay(100000);
      0022BD 90 86 A0         [24] 1098 	mov	dptr,#0x86a0
      0022C0 75 F0 01         [24] 1099 	mov	b,#0x01
      0022C3 E4               [12] 1100 	clr	a
      0022C4 12 20 A7         [24] 1101 	lcall	_delay
                                   1102 ;	main.c:146: lcdgotoxy(1, 1);
      0022C7 75 15 01         [24] 1103 	mov	_lcdgotoxy_PARM_2,#0x01
      0022CA 75 82 01         [24] 1104 	mov	dpl,#0x01
      0022CD 12 21 06         [24] 1105 	lcall	_lcdgotoxy
                                   1106 ;	main.c:147: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022D0 90 28 31         [24] 1107 	mov	dptr,#___str_1
      0022D3 75 F0 80         [24] 1108 	mov	b,#0x80
      0022D6 12 21 63         [24] 1109 	lcall	_lcdputstr
                                   1110 ;	main.c:148: delay(100000);
      0022D9 90 86 A0         [24] 1111 	mov	dptr,#0x86a0
      0022DC 75 F0 01         [24] 1112 	mov	b,#0x01
      0022DF E4               [12] 1113 	clr	a
      0022E0 12 20 A7         [24] 1114 	lcall	_delay
                                   1115 ;	main.c:150: lcdclear();
      0022E3 12 22 92         [24] 1116 	lcall	_lcdclear
                                   1117 ;	main.c:151: printf_tiny("test_functionality end\n\r");
      0022E6 74 74            [12] 1118 	mov	a,#___str_2
      0022E8 C0 E0            [24] 1119 	push	acc
      0022EA 74 28            [12] 1120 	mov	a,#(___str_2 >> 8)
      0022EC C0 E0            [24] 1121 	push	acc
      0022EE 12 26 6E         [24] 1122 	lcall	_printf_tiny
      0022F1 15 81            [12] 1123 	dec	sp
      0022F3 15 81            [12] 1124 	dec	sp
                                   1125 ;	main.c:152: }
      0022F5 22               [24] 1126 	ret
                                   1127 ;------------------------------------------------------------
                                   1128 ;Allocation info for local variables in function 'set_cgram_address'
                                   1129 ;------------------------------------------------------------
                                   1130 ;cgram_address             Allocated to registers r7 
                                   1131 ;------------------------------------------------------------
                                   1132 ;	main.c:154: void set_cgram_address(uint8_t cgram_address){
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function set_cgram_address
                                   1135 ;	-----------------------------------------
      0022F6                       1136 _set_cgram_address:
      0022F6 AF 82            [24] 1137 	mov	r7,dpl
                                   1138 ;	main.c:155: RS = PULSE_LOW;
                                   1139 ;	assignBit
      0022F8 C2 96            [12] 1140 	clr	_P1_6
                                   1141 ;	main.c:156: R_W = PULSE_LOW;
                                   1142 ;	assignBit
      0022FA C2 97            [12] 1143 	clr	_P1_7
                                   1144 ;	main.c:157: *ptr = cgram_address;
      0022FC 85 08 82         [24] 1145 	mov	dpl,_ptr
      0022FF 85 09 83         [24] 1146 	mov	dph,(_ptr + 1)
      002302 EF               [12] 1147 	mov	a,r7
      002303 F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	main.c:158: lcdbusywait();
                                   1150 ;	main.c:159: }
      002304 02 20 E3         [24] 1151 	ljmp	_lcdbusywait
                                   1152 ;------------------------------------------------------------
                                   1153 ;Allocation info for local variables in function 'create_custom_character'
                                   1154 ;------------------------------------------------------------
                                   1155 ;char_num                  Allocated to registers r7 
                                   1156 ;c                         Allocated with name '_create_custom_character_c_65536_68'
                                   1157 ;i                         Allocated to registers r5 r6 
                                   1158 ;cgram_address             Allocated to registers 
                                   1159 ;------------------------------------------------------------
                                   1160 ;	main.c:160: void create_custom_character(uint8_t char_num){
                                   1161 ;	-----------------------------------------
                                   1162 ;	 function create_custom_character
                                   1163 ;	-----------------------------------------
      002307                       1164 _create_custom_character:
      002307 AF 82            [24] 1165 	mov	r7,dpl
                                   1166 ;	main.c:161: uint8_t c[8] =
      002309 75 16 04         [24] 1167 	mov	_create_custom_character_c_65536_68,#0x04
      00230C 75 17 0E         [24] 1168 	mov	(_create_custom_character_c_65536_68 + 0x0001),#0x0e
      00230F 75 18 04         [24] 1169 	mov	(_create_custom_character_c_65536_68 + 0x0002),#0x04
      002312 75 19 04         [24] 1170 	mov	(_create_custom_character_c_65536_68 + 0x0003),#0x04
      002315 75 1A 04         [24] 1171 	mov	(_create_custom_character_c_65536_68 + 0x0004),#0x04
      002318 75 1B 04         [24] 1172 	mov	(_create_custom_character_c_65536_68 + 0x0005),#0x04
      00231B 75 1C 04         [24] 1173 	mov	(_create_custom_character_c_65536_68 + 0x0006),#0x04
      00231E 75 1D 0A         [24] 1174 	mov	(_create_custom_character_c_65536_68 + 0x0007),#0x0a
                                   1175 ;	main.c:171: for(int i = 0; i < BYTE_LENGTH; i++){
      002321 7D 00            [12] 1176 	mov	r5,#0x00
      002323 7E 00            [12] 1177 	mov	r6,#0x00
      002325                       1178 00103$:
      002325 C3               [12] 1179 	clr	c
      002326 ED               [12] 1180 	mov	a,r5
      002327 94 08            [12] 1181 	subb	a,#0x08
      002329 EE               [12] 1182 	mov	a,r6
      00232A 64 80            [12] 1183 	xrl	a,#0x80
      00232C 94 80            [12] 1184 	subb	a,#0x80
      00232E 50 34            [24] 1185 	jnc	00105$
                                   1186 ;	main.c:172: uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
      002330 8F 04            [24] 1187 	mov	ar4,r7
      002332 EC               [12] 1188 	mov	a,r4
      002333 C4               [12] 1189 	swap	a
      002334 03               [12] 1190 	rr	a
      002335 54 F8            [12] 1191 	anl	a,#0xf8
      002337 FC               [12] 1192 	mov	r4,a
      002338 43 04 40         [24] 1193 	orl	ar4,#0x40
      00233B 8D 03            [24] 1194 	mov	ar3,r5
      00233D EB               [12] 1195 	mov	a,r3
      00233E 4C               [12] 1196 	orl	a,r4
      00233F F5 82            [12] 1197 	mov	dpl,a
                                   1198 ;	main.c:173: set_cgram_address(cgram_address);
      002341 C0 07            [24] 1199 	push	ar7
      002343 C0 06            [24] 1200 	push	ar6
      002345 C0 05            [24] 1201 	push	ar5
      002347 12 22 F6         [24] 1202 	lcall	_set_cgram_address
      00234A D0 05            [24] 1203 	pop	ar5
                                   1204 ;	main.c:174: lcdputch(c[i]);
      00234C ED               [12] 1205 	mov	a,r5
      00234D 24 16            [12] 1206 	add	a,#_create_custom_character_c_65536_68
      00234F F9               [12] 1207 	mov	r1,a
      002350 87 82            [24] 1208 	mov	dpl,@r1
      002352 C0 05            [24] 1209 	push	ar5
      002354 12 21 52         [24] 1210 	lcall	_lcdputch
      002357 D0 05            [24] 1211 	pop	ar5
      002359 D0 06            [24] 1212 	pop	ar6
      00235B D0 07            [24] 1213 	pop	ar7
                                   1214 ;	main.c:171: for(int i = 0; i < BYTE_LENGTH; i++){
      00235D 0D               [12] 1215 	inc	r5
      00235E BD 00 C4         [24] 1216 	cjne	r5,#0x00,00103$
      002361 0E               [12] 1217 	inc	r6
      002362 80 C1            [24] 1218 	sjmp	00103$
      002364                       1219 00105$:
                                   1220 ;	main.c:176: }
      002364 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'timer2_init'
                                   1224 ;------------------------------------------------------------
                                   1225 ;	main.c:178: void timer2_init(){
                                   1226 ;	-----------------------------------------
                                   1227 ;	 function timer2_init
                                   1228 ;	-----------------------------------------
      002365                       1229 _timer2_init:
                                   1230 ;	main.c:179: T2MOD = 0b00000001;
      002365 75 C9 01         [24] 1231 	mov	_T2MOD,#0x01
                                   1232 ;	main.c:180: RCAP2L = 0x00;
      002368 75 CA 00         [24] 1233 	mov	_RCAP2L,#0x00
                                   1234 ;	main.c:181: RCAP2H = 0x00;
      00236B 75 CB 00         [24] 1235 	mov	_RCAP2H,#0x00
                                   1236 ;	main.c:183: TL2 = RCAP2L;
      00236E 85 CA CC         [24] 1237 	mov	_TL2,_RCAP2L
                                   1238 ;	main.c:184: TH2 = RCAP2H;
      002371 85 CB CD         [24] 1239 	mov	_TH2,_RCAP2H
                                   1240 ;	main.c:185: TR2 = 1;
                                   1241 ;	assignBit
      002374 D2 CA            [12] 1242 	setb	_TR2
                                   1243 ;	main.c:186: }
      002376 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'timer2_interrupt_Init'
                                   1247 ;------------------------------------------------------------
                                   1248 ;	main.c:187: void timer2_interrupt_Init(){
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function timer2_interrupt_Init
                                   1251 ;	-----------------------------------------
      002377                       1252 _timer2_interrupt_Init:
                                   1253 ;	main.c:188: timer2_init();
      002377 12 23 65         [24] 1254 	lcall	_timer2_init
                                   1255 ;	main.c:189: ET2 = 1;
                                   1256 ;	assignBit
      00237A D2 AD            [12] 1257 	setb	_ET2
                                   1258 ;	main.c:190: EA = 1;
                                   1259 ;	assignBit
      00237C D2 AF            [12] 1260 	setb	_EA
                                   1261 ;	main.c:191: }
      00237E 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'isr_timer2'
                                   1265 ;------------------------------------------------------------
                                   1266 ;	main.c:193: void isr_timer2(void) __interrupt (5)
                                   1267 ;	-----------------------------------------
                                   1268 ;	 function isr_timer2
                                   1269 ;	-----------------------------------------
      00237F                       1270 _isr_timer2:
      00237F C0 21            [24] 1271 	push	bits
      002381 C0 E0            [24] 1272 	push	acc
      002383 C0 F0            [24] 1273 	push	b
      002385 C0 82            [24] 1274 	push	dpl
      002387 C0 83            [24] 1275 	push	dph
      002389 C0 07            [24] 1276 	push	(0+7)
      00238B C0 06            [24] 1277 	push	(0+6)
      00238D C0 05            [24] 1278 	push	(0+5)
      00238F C0 04            [24] 1279 	push	(0+4)
      002391 C0 03            [24] 1280 	push	(0+3)
      002393 C0 02            [24] 1281 	push	(0+2)
      002395 C0 01            [24] 1282 	push	(0+1)
      002397 C0 00            [24] 1283 	push	(0+0)
      002399 C0 D0            [24] 1284 	push	psw
      00239B 75 D0 00         [24] 1285 	mov	psw,#0x00
                                   1286 ;	main.c:197: }
      00239E D2 01            [12] 1287 	setb	_isr_timer2_sloc0_1_0
      0023A0 10 AF 02         [24] 1288 	jbc	ea,00103$
      0023A3 C2 01            [12] 1289 	clr	_isr_timer2_sloc0_1_0
      0023A5                       1290 00103$:
                                   1291 ;	main.c:196: tick++;
      0023A5 AE 0A            [24] 1292 	mov	r6,_tick
      0023A7 AF 0B            [24] 1293 	mov	r7,(_tick + 1)
      0023A9 74 01            [12] 1294 	mov	a,#0x01
      0023AB 2E               [12] 1295 	add	a,r6
      0023AC F5 0A            [12] 1296 	mov	_tick,a
      0023AE E4               [12] 1297 	clr	a
      0023AF 3F               [12] 1298 	addc	a,r7
      0023B0 F5 0B            [12] 1299 	mov	(_tick + 1),a
      0023B2 A2 01            [12] 1300 	mov	c,_isr_timer2_sloc0_1_0
      0023B4 92 AF            [24] 1301 	mov	ea,c
                                   1302 ;	main.c:198: clock_run();
      0023B6 12 24 17         [24] 1303 	lcall	_clock_run
                                   1304 ;	main.c:199: TF2 = 0;
                                   1305 ;	assignBit
      0023B9 C2 CF            [12] 1306 	clr	_TF2
                                   1307 ;	main.c:200: }
      0023BB D0 D0            [24] 1308 	pop	psw
      0023BD D0 00            [24] 1309 	pop	(0+0)
      0023BF D0 01            [24] 1310 	pop	(0+1)
      0023C1 D0 02            [24] 1311 	pop	(0+2)
      0023C3 D0 03            [24] 1312 	pop	(0+3)
      0023C5 D0 04            [24] 1313 	pop	(0+4)
      0023C7 D0 05            [24] 1314 	pop	(0+5)
      0023C9 D0 06            [24] 1315 	pop	(0+6)
      0023CB D0 07            [24] 1316 	pop	(0+7)
      0023CD D0 83            [24] 1317 	pop	dph
      0023CF D0 82            [24] 1318 	pop	dpl
      0023D1 D0 F0            [24] 1319 	pop	b
      0023D3 D0 E0            [24] 1320 	pop	acc
      0023D5 D0 21            [24] 1321 	pop	bits
      0023D7 32               [24] 1322 	reti
                                   1323 ;------------------------------------------------------------
                                   1324 ;Allocation info for local variables in function 'reset_clock'
                                   1325 ;------------------------------------------------------------
                                   1326 ;	main.c:202: void reset_clock(){
                                   1327 ;	-----------------------------------------
                                   1328 ;	 function reset_clock
                                   1329 ;	-----------------------------------------
      0023D8                       1330 _reset_clock:
                                   1331 ;	main.c:203: min_high = '0';
      0023D8 75 0E 30         [24] 1332 	mov	_min_high,#0x30
                                   1333 ;	main.c:204: min_low = '0';
      0023DB 75 0F 30         [24] 1334 	mov	_min_low,#0x30
                                   1335 ;	main.c:205: sec_high = '0';
      0023DE 75 10 30         [24] 1336 	mov	_sec_high,#0x30
                                   1337 ;	main.c:206: sec_low = '0';
      0023E1 75 11 30         [24] 1338 	mov	_sec_low,#0x30
                                   1339 ;	main.c:207: mili_sec = '0';
      0023E4 75 12 30         [24] 1340 	mov	_mili_sec,#0x30
                                   1341 ;	main.c:209: lcdgotoaddr(0x59);
      0023E7 75 82 59         [24] 1342 	mov	dpl,#0x59
      0023EA 12 20 F2         [24] 1343 	lcall	_lcdgotoaddr
                                   1344 ;	main.c:210: lcdputch(min_high);
      0023ED 85 0E 82         [24] 1345 	mov	dpl,_min_high
      0023F0 12 21 52         [24] 1346 	lcall	_lcdputch
                                   1347 ;	main.c:211: lcdputch(min_low);
      0023F3 85 0F 82         [24] 1348 	mov	dpl,_min_low
      0023F6 12 21 52         [24] 1349 	lcall	_lcdputch
                                   1350 ;	main.c:212: lcdputch(':');
      0023F9 75 82 3A         [24] 1351 	mov	dpl,#0x3a
      0023FC 12 21 52         [24] 1352 	lcall	_lcdputch
                                   1353 ;	main.c:213: lcdputch(sec_high);
      0023FF 85 10 82         [24] 1354 	mov	dpl,_sec_high
      002402 12 21 52         [24] 1355 	lcall	_lcdputch
                                   1356 ;	main.c:214: lcdputch(sec_low);
      002405 85 11 82         [24] 1357 	mov	dpl,_sec_low
      002408 12 21 52         [24] 1358 	lcall	_lcdputch
                                   1359 ;	main.c:215: lcdputch('.');
      00240B 75 82 2E         [24] 1360 	mov	dpl,#0x2e
      00240E 12 21 52         [24] 1361 	lcall	_lcdputch
                                   1362 ;	main.c:216: lcdputch(mili_sec);
      002411 85 12 82         [24] 1363 	mov	dpl,_mili_sec
                                   1364 ;	main.c:217: }
      002414 02 21 52         [24] 1365 	ljmp	_lcdputch
                                   1366 ;------------------------------------------------------------
                                   1367 ;Allocation info for local variables in function 'clock_run'
                                   1368 ;------------------------------------------------------------
                                   1369 ;	main.c:218: void clock_run(){
                                   1370 ;	-----------------------------------------
                                   1371 ;	 function clock_run
                                   1372 ;	-----------------------------------------
      002417                       1373 _clock_run:
                                   1374 ;	main.c:219: if(clockrun_flag && ((tick % 2) == 0) && (tick > elapsed_tick)){
      002417 E5 13            [12] 1375 	mov	a,_clockrun_flag
      002419 45 14            [12] 1376 	orl	a,(_clockrun_flag + 1)
      00241B 70 01            [24] 1377 	jnz	00149$
      00241D 22               [24] 1378 	ret
      00241E                       1379 00149$:
      00241E E5 0A            [12] 1380 	mov	a,_tick
      002420 30 E0 01         [24] 1381 	jnb	acc.0,00150$
      002423 22               [24] 1382 	ret
      002424                       1383 00150$:
      002424 C3               [12] 1384 	clr	c
      002425 E5 0C            [12] 1385 	mov	a,_elapsed_tick
      002427 95 0A            [12] 1386 	subb	a,_tick
      002429 E5 0D            [12] 1387 	mov	a,(_elapsed_tick + 1)
      00242B 95 0B            [12] 1388 	subb	a,(_tick + 1)
      00242D 40 01            [24] 1389 	jc	00151$
      00242F 22               [24] 1390 	ret
      002430                       1391 00151$:
                                   1392 ;	main.c:220: elapsed_tick = tick;
      002430 85 0A 0C         [24] 1393 	mov	_elapsed_tick,_tick
      002433 85 0B 0D         [24] 1394 	mov	(_elapsed_tick + 1),(_tick + 1)
                                   1395 ;	main.c:221: mili_sec++;
      002436 E5 12            [12] 1396 	mov	a,_mili_sec
      002438 04               [12] 1397 	inc	a
      002439 F5 12            [12] 1398 	mov	_mili_sec,a
                                   1399 ;	main.c:222: if(mili_sec > '9'){
      00243B E5 12            [12] 1400 	mov	a,_mili_sec
      00243D 24 C6            [12] 1401 	add	a,#0xff - 0x39
      00243F 50 20            [24] 1402 	jnc	00102$
                                   1403 ;	main.c:223: mili_sec = '0';
      002441 75 12 30         [24] 1404 	mov	_mili_sec,#0x30
                                   1405 ;	main.c:224: lcdgotoaddr(0x5F);
      002444 75 82 5F         [24] 1406 	mov	dpl,#0x5f
      002447 12 20 F2         [24] 1407 	lcall	_lcdgotoaddr
                                   1408 ;	main.c:225: lcdputch(mili_sec);
      00244A 85 12 82         [24] 1409 	mov	dpl,_mili_sec
      00244D 12 21 52         [24] 1410 	lcall	_lcdputch
                                   1411 ;	main.c:226: sec_low++;
      002450 E5 11            [12] 1412 	mov	a,_sec_low
      002452 04               [12] 1413 	inc	a
      002453 F5 11            [12] 1414 	mov	_sec_low,a
                                   1415 ;	main.c:227: lcdgotoaddr(0x5D);
      002455 75 82 5D         [24] 1416 	mov	dpl,#0x5d
      002458 12 20 F2         [24] 1417 	lcall	_lcdgotoaddr
                                   1418 ;	main.c:228: lcdputch(sec_low);
      00245B 85 11 82         [24] 1419 	mov	dpl,_sec_low
      00245E 12 21 52         [24] 1420 	lcall	_lcdputch
      002461                       1421 00102$:
                                   1422 ;	main.c:230: if(sec_low > '9'){
      002461 E5 11            [12] 1423 	mov	a,_sec_low
      002463 24 C6            [12] 1424 	add	a,#0xff - 0x39
      002465 50 20            [24] 1425 	jnc	00104$
                                   1426 ;	main.c:231: sec_low = '0';
      002467 75 11 30         [24] 1427 	mov	_sec_low,#0x30
                                   1428 ;	main.c:232: lcdgotoaddr(0x5D);
      00246A 75 82 5D         [24] 1429 	mov	dpl,#0x5d
      00246D 12 20 F2         [24] 1430 	lcall	_lcdgotoaddr
                                   1431 ;	main.c:233: lcdputch(sec_low);
      002470 85 11 82         [24] 1432 	mov	dpl,_sec_low
      002473 12 21 52         [24] 1433 	lcall	_lcdputch
                                   1434 ;	main.c:234: sec_high++;
      002476 E5 10            [12] 1435 	mov	a,_sec_high
      002478 04               [12] 1436 	inc	a
      002479 F5 10            [12] 1437 	mov	_sec_high,a
                                   1438 ;	main.c:235: lcdgotoaddr(0x5C);
      00247B 75 82 5C         [24] 1439 	mov	dpl,#0x5c
      00247E 12 20 F2         [24] 1440 	lcall	_lcdgotoaddr
                                   1441 ;	main.c:236: lcdputch(sec_high);
      002481 85 10 82         [24] 1442 	mov	dpl,_sec_high
      002484 12 21 52         [24] 1443 	lcall	_lcdputch
      002487                       1444 00104$:
                                   1445 ;	main.c:238: if(sec_high > '5'){
      002487 E5 10            [12] 1446 	mov	a,_sec_high
      002489 24 CA            [12] 1447 	add	a,#0xff - 0x35
      00248B 50 20            [24] 1448 	jnc	00106$
                                   1449 ;	main.c:239: sec_high = '0';
      00248D 75 10 30         [24] 1450 	mov	_sec_high,#0x30
                                   1451 ;	main.c:240: lcdgotoaddr(0x5C);
      002490 75 82 5C         [24] 1452 	mov	dpl,#0x5c
      002493 12 20 F2         [24] 1453 	lcall	_lcdgotoaddr
                                   1454 ;	main.c:241: lcdputch(sec_high);
      002496 85 10 82         [24] 1455 	mov	dpl,_sec_high
      002499 12 21 52         [24] 1456 	lcall	_lcdputch
                                   1457 ;	main.c:242: min_low++;
      00249C E5 0F            [12] 1458 	mov	a,_min_low
      00249E 04               [12] 1459 	inc	a
      00249F F5 0F            [12] 1460 	mov	_min_low,a
                                   1461 ;	main.c:243: lcdgotoaddr(0x5A);
      0024A1 75 82 5A         [24] 1462 	mov	dpl,#0x5a
      0024A4 12 20 F2         [24] 1463 	lcall	_lcdgotoaddr
                                   1464 ;	main.c:244: lcdputch(min_low);
      0024A7 85 0F 82         [24] 1465 	mov	dpl,_min_low
      0024AA 12 21 52         [24] 1466 	lcall	_lcdputch
      0024AD                       1467 00106$:
                                   1468 ;	main.c:246: if(min_low > '9'){
      0024AD E5 0F            [12] 1469 	mov	a,_min_low
      0024AF 24 C6            [12] 1470 	add	a,#0xff - 0x39
      0024B1 50 20            [24] 1471 	jnc	00108$
                                   1472 ;	main.c:247: min_low = '0';
      0024B3 75 0F 30         [24] 1473 	mov	_min_low,#0x30
                                   1474 ;	main.c:248: lcdgotoaddr(0x5A);
      0024B6 75 82 5A         [24] 1475 	mov	dpl,#0x5a
      0024B9 12 20 F2         [24] 1476 	lcall	_lcdgotoaddr
                                   1477 ;	main.c:249: lcdputch(min_low);
      0024BC 85 0F 82         [24] 1478 	mov	dpl,_min_low
      0024BF 12 21 52         [24] 1479 	lcall	_lcdputch
                                   1480 ;	main.c:250: min_high++;
      0024C2 E5 0E            [12] 1481 	mov	a,_min_high
      0024C4 04               [12] 1482 	inc	a
      0024C5 F5 0E            [12] 1483 	mov	_min_high,a
                                   1484 ;	main.c:251: lcdgotoaddr(0x59);
      0024C7 75 82 59         [24] 1485 	mov	dpl,#0x59
      0024CA 12 20 F2         [24] 1486 	lcall	_lcdgotoaddr
                                   1487 ;	main.c:252: lcdputch(min_high);
      0024CD 85 0E 82         [24] 1488 	mov	dpl,_min_high
      0024D0 12 21 52         [24] 1489 	lcall	_lcdputch
      0024D3                       1490 00108$:
                                   1491 ;	main.c:254: if(min_high > '5'){
      0024D3 E5 0E            [12] 1492 	mov	a,_min_high
      0024D5 24 CA            [12] 1493 	add	a,#0xff - 0x35
      0024D7 50 0F            [24] 1494 	jnc	00110$
                                   1495 ;	main.c:255: min_high = '0';
      0024D9 75 0E 30         [24] 1496 	mov	_min_high,#0x30
                                   1497 ;	main.c:256: lcdgotoaddr(0x59);
      0024DC 75 82 59         [24] 1498 	mov	dpl,#0x59
      0024DF 12 20 F2         [24] 1499 	lcall	_lcdgotoaddr
                                   1500 ;	main.c:257: lcdputch(min_high);
      0024E2 85 0E 82         [24] 1501 	mov	dpl,_min_high
      0024E5 12 21 52         [24] 1502 	lcall	_lcdputch
      0024E8                       1503 00110$:
                                   1504 ;	main.c:259: lcdgotoaddr(0x5F);
      0024E8 75 82 5F         [24] 1505 	mov	dpl,#0x5f
      0024EB 12 20 F2         [24] 1506 	lcall	_lcdgotoaddr
                                   1507 ;	main.c:260: lcdputch(mili_sec);
      0024EE 85 12 82         [24] 1508 	mov	dpl,_mili_sec
                                   1509 ;	main.c:262: }
      0024F1 02 21 52         [24] 1510 	ljmp	_lcdputch
                                   1511 ;------------------------------------------------------------
                                   1512 ;Allocation info for local variables in function 'main'
                                   1513 ;------------------------------------------------------------
                                   1514 ;custom_char_code          Allocated to registers 
                                   1515 ;user_input                Allocated to registers r7 
                                   1516 ;------------------------------------------------------------
                                   1517 ;	main.c:263: void main(void)
                                   1518 ;	-----------------------------------------
                                   1519 ;	 function main
                                   1520 ;	-----------------------------------------
      0024F4                       1521 _main:
                                   1522 ;	main.c:266: lcdinit();
      0024F4 12 22 08         [24] 1523 	lcall	_lcdinit
                                   1524 ;	main.c:267: test_functionality();
      0024F7 12 22 A2         [24] 1525 	lcall	_test_functionality
                                   1526 ;	main.c:269: create_custom_character(custom_char_code);
      0024FA 75 82 01         [24] 1527 	mov	dpl,#0x01
      0024FD 12 23 07         [24] 1528 	lcall	_create_custom_character
                                   1529 ;	main.c:270: lcdgotoaddr(0x0F);
      002500 75 82 0F         [24] 1530 	mov	dpl,#0x0f
      002503 12 20 F2         [24] 1531 	lcall	_lcdgotoaddr
                                   1532 ;	main.c:271: lcdputch(custom_char_code);
      002506 75 82 01         [24] 1533 	mov	dpl,#0x01
      002509 12 21 52         [24] 1534 	lcall	_lcdputch
                                   1535 ;	main.c:272: timer2_interrupt_Init();
      00250C 12 23 77         [24] 1536 	lcall	_timer2_interrupt_Init
                                   1537 ;	main.c:274: printf_tiny("*************************************************************************\n\r");
      00250F 74 8D            [12] 1538 	mov	a,#___str_3
      002511 C0 E0            [24] 1539 	push	acc
      002513 74 28            [12] 1540 	mov	a,#(___str_3 >> 8)
      002515 C0 E0            [24] 1541 	push	acc
      002517 12 26 6E         [24] 1542 	lcall	_printf_tiny
      00251A 15 81            [12] 1543 	dec	sp
      00251C 15 81            [12] 1544 	dec	sp
                                   1545 ;	main.c:275: printf_tiny("CLOCK MENU:\n\r");
      00251E 74 D9            [12] 1546 	mov	a,#___str_4
      002520 C0 E0            [24] 1547 	push	acc
      002522 74 28            [12] 1548 	mov	a,#(___str_4 >> 8)
      002524 C0 E0            [24] 1549 	push	acc
      002526 12 26 6E         [24] 1550 	lcall	_printf_tiny
      002529 15 81            [12] 1551 	dec	sp
      00252B 15 81            [12] 1552 	dec	sp
                                   1553 ;	main.c:276: printf_tiny("[a]. Clock restart\n\r");
      00252D 74 E7            [12] 1554 	mov	a,#___str_5
      00252F C0 E0            [24] 1555 	push	acc
      002531 74 28            [12] 1556 	mov	a,#(___str_5 >> 8)
      002533 C0 E0            [24] 1557 	push	acc
      002535 12 26 6E         [24] 1558 	lcall	_printf_tiny
      002538 15 81            [12] 1559 	dec	sp
      00253A 15 81            [12] 1560 	dec	sp
                                   1561 ;	main.c:277: printf_tiny("[b]. Clock stop\n\r");
      00253C 74 FC            [12] 1562 	mov	a,#___str_6
      00253E C0 E0            [24] 1563 	push	acc
      002540 74 28            [12] 1564 	mov	a,#(___str_6 >> 8)
      002542 C0 E0            [24] 1565 	push	acc
      002544 12 26 6E         [24] 1566 	lcall	_printf_tiny
      002547 15 81            [12] 1567 	dec	sp
      002549 15 81            [12] 1568 	dec	sp
                                   1569 ;	main.c:278: printf_tiny("[c]. Clock reset\n\r");
      00254B 74 0E            [12] 1570 	mov	a,#___str_7
      00254D C0 E0            [24] 1571 	push	acc
      00254F 74 29            [12] 1572 	mov	a,#(___str_7 >> 8)
      002551 C0 E0            [24] 1573 	push	acc
      002553 12 26 6E         [24] 1574 	lcall	_printf_tiny
      002556 15 81            [12] 1575 	dec	sp
      002558 15 81            [12] 1576 	dec	sp
                                   1577 ;	main.c:279: printf_tiny("*************************************************************************\n\r");
      00255A 74 8D            [12] 1578 	mov	a,#___str_3
      00255C C0 E0            [24] 1579 	push	acc
      00255E 74 28            [12] 1580 	mov	a,#(___str_3 >> 8)
      002560 C0 E0            [24] 1581 	push	acc
      002562 12 26 6E         [24] 1582 	lcall	_printf_tiny
      002565 15 81            [12] 1583 	dec	sp
      002567 15 81            [12] 1584 	dec	sp
                                   1585 ;	main.c:280: reset_clock();
      002569 12 23 D8         [24] 1586 	lcall	_reset_clock
                                   1587 ;	main.c:281: while(1){
      00256C                       1588 00113$:
                                   1589 ;	main.c:282: int8_t user_input = echo(); // Read user input from UART
      00256C 12 26 49         [24] 1590 	lcall	_echo
      00256F AF 82            [24] 1591 	mov	r7,dpl
                                   1592 ;	main.c:283: if (((user_input >= '0') && (user_input <= '9')) || ((user_input >= 'A') && (user_input <= 'Z')))
      002571 C3               [12] 1593 	clr	c
      002572 EF               [12] 1594 	mov	a,r7
      002573 64 80            [12] 1595 	xrl	a,#0x80
      002575 94 B0            [12] 1596 	subb	a,#0xb0
      002577 40 0B            [24] 1597 	jc	00106$
      002579 74 B9            [12] 1598 	mov	a,#(0x39 ^ 0x80)
      00257B 8F F0            [24] 1599 	mov	b,r7
      00257D 63 F0 80         [24] 1600 	xrl	b,#0x80
      002580 95 F0            [12] 1601 	subb	a,b
      002582 50 13            [24] 1602 	jnc	00101$
      002584                       1603 00106$:
      002584 C3               [12] 1604 	clr	c
      002585 EF               [12] 1605 	mov	a,r7
      002586 64 80            [12] 1606 	xrl	a,#0x80
      002588 94 C1            [12] 1607 	subb	a,#0xc1
      00258A 40 20            [24] 1608 	jc	00102$
      00258C 74 DA            [12] 1609 	mov	a,#(0x5a ^ 0x80)
      00258E 8F F0            [24] 1610 	mov	b,r7
      002590 63 F0 80         [24] 1611 	xrl	b,#0x80
      002593 95 F0            [12] 1612 	subb	a,b
      002595 40 15            [24] 1613 	jc	00102$
      002597                       1614 00101$:
                                   1615 ;	main.c:286: printf_tiny("Please enter commands in small cases\n\r");
      002597 C0 07            [24] 1616 	push	ar7
      002599 74 21            [12] 1617 	mov	a,#___str_8
      00259B C0 E0            [24] 1618 	push	acc
      00259D 74 29            [12] 1619 	mov	a,#(___str_8 >> 8)
      00259F C0 E0            [24] 1620 	push	acc
      0025A1 12 26 6E         [24] 1621 	lcall	_printf_tiny
      0025A4 15 81            [12] 1622 	dec	sp
      0025A6 15 81            [12] 1623 	dec	sp
      0025A8 D0 07            [24] 1624 	pop	ar7
      0025AA 80 13            [24] 1625 	sjmp	00103$
      0025AC                       1626 00102$:
                                   1627 ;	main.c:290: printf_tiny("\n\r"); // Print newline for better output formatting
      0025AC C0 07            [24] 1628 	push	ar7
      0025AE 74 48            [12] 1629 	mov	a,#___str_9
      0025B0 C0 E0            [24] 1630 	push	acc
      0025B2 74 29            [12] 1631 	mov	a,#(___str_9 >> 8)
      0025B4 C0 E0            [24] 1632 	push	acc
      0025B6 12 26 6E         [24] 1633 	lcall	_printf_tiny
      0025B9 15 81            [12] 1634 	dec	sp
      0025BB 15 81            [12] 1635 	dec	sp
      0025BD D0 07            [24] 1636 	pop	ar7
      0025BF                       1637 00103$:
                                   1638 ;	main.c:292: switch(user_input)
      0025BF BF 61 02         [24] 1639 	cjne	r7,#0x61,00145$
      0025C2 80 0A            [24] 1640 	sjmp	00107$
      0025C4                       1641 00145$:
      0025C4 BF 62 02         [24] 1642 	cjne	r7,#0x62,00146$
      0025C7 80 0D            [24] 1643 	sjmp	00108$
      0025C9                       1644 00146$:
                                   1645 ;	main.c:294: case 'a' :
      0025C9 BF 63 A0         [24] 1646 	cjne	r7,#0x63,00113$
      0025CC 80 10            [24] 1647 	sjmp	00109$
      0025CE                       1648 00107$:
                                   1649 ;	main.c:295: clockrun_flag = 1;
      0025CE 75 13 01         [24] 1650 	mov	_clockrun_flag,#0x01
      0025D1 75 14 00         [24] 1651 	mov	(_clockrun_flag + 1),#0x00
                                   1652 ;	main.c:296: break;
                                   1653 ;	main.c:297: case 'b' :
      0025D4 80 96            [24] 1654 	sjmp	00113$
      0025D6                       1655 00108$:
                                   1656 ;	main.c:298: clockrun_flag = 0;
      0025D6 E4               [12] 1657 	clr	a
      0025D7 F5 13            [12] 1658 	mov	_clockrun_flag,a
      0025D9 F5 14            [12] 1659 	mov	(_clockrun_flag + 1),a
                                   1660 ;	main.c:299: break;
      0025DB 02 25 6C         [24] 1661 	ljmp	00113$
                                   1662 ;	main.c:300: case 'c' :
      0025DE                       1663 00109$:
                                   1664 ;	main.c:301: reset_clock();
      0025DE 12 23 D8         [24] 1665 	lcall	_reset_clock
                                   1666 ;	main.c:302: break;
                                   1667 ;	main.c:305: }
                                   1668 ;	main.c:307: }
      0025E1 02 25 6C         [24] 1669 	ljmp	00113$
                                   1670 	.area CSEG    (CODE)
                                   1671 	.area CONST   (CODE)
                                   1672 	.area CONST   (CODE)
      002816                       1673 ___str_0:
      002816 74 65 73 74 5F 66 75  1674 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      00282E 0A                    1675 	.db 0x0a
      00282F 0D                    1676 	.db 0x0d
      002830 00                    1677 	.db 0x00
                                   1678 	.area CSEG    (CODE)
                                   1679 	.area CONST   (CODE)
      002831                       1680 ___str_1:
      002831 41 42 43 44 45 46 47  1681 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      00286D 7A 4A 49 54 48 55     1682 	.ascii "zJITHU"
      002873 00                    1683 	.db 0x00
                                   1684 	.area CSEG    (CODE)
                                   1685 	.area CONST   (CODE)
      002874                       1686 ___str_2:
      002874 74 65 73 74 5F 66 75  1687 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      00288A 0A                    1688 	.db 0x0a
      00288B 0D                    1689 	.db 0x0d
      00288C 00                    1690 	.db 0x00
                                   1691 	.area CSEG    (CODE)
                                   1692 	.area CONST   (CODE)
      00288D                       1693 ___str_3:
      00288D 2A 2A 2A 2A 2A 2A 2A  1694 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0028C9 2A 2A 2A 2A 2A 2A 2A  1695 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      0028D6 0A                    1696 	.db 0x0a
      0028D7 0D                    1697 	.db 0x0d
      0028D8 00                    1698 	.db 0x00
                                   1699 	.area CSEG    (CODE)
                                   1700 	.area CONST   (CODE)
      0028D9                       1701 ___str_4:
      0028D9 43 4C 4F 43 4B 20 4D  1702 	.ascii "CLOCK MENU:"
             45 4E 55 3A
      0028E4 0A                    1703 	.db 0x0a
      0028E5 0D                    1704 	.db 0x0d
      0028E6 00                    1705 	.db 0x00
                                   1706 	.area CSEG    (CODE)
                                   1707 	.area CONST   (CODE)
      0028E7                       1708 ___str_5:
      0028E7 5B 61 5D 2E 20 43 6C  1709 	.ascii "[a]. Clock restart"
             6F 63 6B 20 72 65 73
             74 61 72 74
      0028F9 0A                    1710 	.db 0x0a
      0028FA 0D                    1711 	.db 0x0d
      0028FB 00                    1712 	.db 0x00
                                   1713 	.area CSEG    (CODE)
                                   1714 	.area CONST   (CODE)
      0028FC                       1715 ___str_6:
      0028FC 5B 62 5D 2E 20 43 6C  1716 	.ascii "[b]. Clock stop"
             6F 63 6B 20 73 74 6F
             70
      00290B 0A                    1717 	.db 0x0a
      00290C 0D                    1718 	.db 0x0d
      00290D 00                    1719 	.db 0x00
                                   1720 	.area CSEG    (CODE)
                                   1721 	.area CONST   (CODE)
      00290E                       1722 ___str_7:
      00290E 5B 63 5D 2E 20 43 6C  1723 	.ascii "[c]. Clock reset"
             6F 63 6B 20 72 65 73
             65 74
      00291E 0A                    1724 	.db 0x0a
      00291F 0D                    1725 	.db 0x0d
      002920 00                    1726 	.db 0x00
                                   1727 	.area CSEG    (CODE)
                                   1728 	.area CONST   (CODE)
      002921                       1729 ___str_8:
      002921 50 6C 65 61 73 65 20  1730 	.ascii "Please enter commands in small cases"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 73 6D 61
             6C 6C 20 63 61 73 65
             73
      002945 0A                    1731 	.db 0x0a
      002946 0D                    1732 	.db 0x0d
      002947 00                    1733 	.db 0x00
                                   1734 	.area CSEG    (CODE)
                                   1735 	.area CONST   (CODE)
      002948                       1736 ___str_9:
      002948 0A                    1737 	.db 0x0a
      002949 0D                    1738 	.db 0x0d
      00294A 00                    1739 	.db 0x00
                                   1740 	.area CSEG    (CODE)
                                   1741 	.area XINIT   (CODE)
      00294B                       1742 __xinit__db:
      00294B 00                    1743 	.db #0x00	; 0
                                   1744 	.area CABS    (ABS,CODE)
