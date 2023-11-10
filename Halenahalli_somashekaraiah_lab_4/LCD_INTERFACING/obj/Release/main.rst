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
                                     14 	.globl _isr_timer0
                                     15 	.globl _timer0_interrupt_Init
                                     16 	.globl _timer0_init
                                     17 	.globl _isr_timer2
                                     18 	.globl _timer2_interrupt_Init
                                     19 	.globl _timer2_init
                                     20 	.globl _create_custom_character
                                     21 	.globl _set_cgram_address
                                     22 	.globl _test_functionality
                                     23 	.globl _lcdclear
                                     24 	.globl _lcdinit
                                     25 	.globl _lcdputstr
                                     26 	.globl _lcdputch
                                     27 	.globl _lcdgotoxy
                                     28 	.globl _lcdgotoaddr
                                     29 	.globl _lcdbusywait
                                     30 	.globl _lcd_command
                                     31 	.globl _delay
                                     32 	.globl __sdcc_external_startup
                                     33 	.globl _printf_tiny
                                     34 	.globl _printf
                                     35 	.globl _TF1
                                     36 	.globl _TR1
                                     37 	.globl _TF0
                                     38 	.globl _TR0
                                     39 	.globl _IE1
                                     40 	.globl _IT1
                                     41 	.globl _IE0
                                     42 	.globl _IT0
                                     43 	.globl _SM0
                                     44 	.globl _SM1
                                     45 	.globl _SM2
                                     46 	.globl _REN
                                     47 	.globl _TB8
                                     48 	.globl _RB8
                                     49 	.globl _TI
                                     50 	.globl _RI
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _RD
                                     60 	.globl _WR
                                     61 	.globl _T1
                                     62 	.globl _T0
                                     63 	.globl _INT1
                                     64 	.globl _INT0
                                     65 	.globl _TXD0
                                     66 	.globl _TXD
                                     67 	.globl _RXD0
                                     68 	.globl _RXD
                                     69 	.globl _P3_7
                                     70 	.globl _P3_6
                                     71 	.globl _P3_5
                                     72 	.globl _P3_4
                                     73 	.globl _P3_3
                                     74 	.globl _P3_2
                                     75 	.globl _P3_1
                                     76 	.globl _P3_0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _P0_7
                                     94 	.globl _P0_6
                                     95 	.globl _P0_5
                                     96 	.globl _P0_4
                                     97 	.globl _P0_3
                                     98 	.globl _P0_2
                                     99 	.globl _P0_1
                                    100 	.globl _P0_0
                                    101 	.globl _PS
                                    102 	.globl _PT1
                                    103 	.globl _PX1
                                    104 	.globl _PT0
                                    105 	.globl _PX0
                                    106 	.globl _EA
                                    107 	.globl _ES
                                    108 	.globl _ET1
                                    109 	.globl _EX1
                                    110 	.globl _ET0
                                    111 	.globl _EX0
                                    112 	.globl _BREG_F7
                                    113 	.globl _BREG_F6
                                    114 	.globl _BREG_F5
                                    115 	.globl _BREG_F4
                                    116 	.globl _BREG_F3
                                    117 	.globl _BREG_F2
                                    118 	.globl _BREG_F1
                                    119 	.globl _BREG_F0
                                    120 	.globl _P5_7
                                    121 	.globl _P5_6
                                    122 	.globl _P5_5
                                    123 	.globl _P5_4
                                    124 	.globl _P5_3
                                    125 	.globl _P5_2
                                    126 	.globl _P5_1
                                    127 	.globl _P5_0
                                    128 	.globl _P4_7
                                    129 	.globl _P4_6
                                    130 	.globl _P4_5
                                    131 	.globl _P4_4
                                    132 	.globl _P4_3
                                    133 	.globl _P4_2
                                    134 	.globl _P4_1
                                    135 	.globl _P4_0
                                    136 	.globl _PX0L
                                    137 	.globl _PT0L
                                    138 	.globl _PX1L
                                    139 	.globl _PT1L
                                    140 	.globl _PSL
                                    141 	.globl _PT2L
                                    142 	.globl _PPCL
                                    143 	.globl _EC
                                    144 	.globl _CCF0
                                    145 	.globl _CCF1
                                    146 	.globl _CCF2
                                    147 	.globl _CCF3
                                    148 	.globl _CCF4
                                    149 	.globl _CR
                                    150 	.globl _CF
                                    151 	.globl _TF2
                                    152 	.globl _EXF2
                                    153 	.globl _RCLK
                                    154 	.globl _TCLK
                                    155 	.globl _EXEN2
                                    156 	.globl _TR2
                                    157 	.globl _C_T2
                                    158 	.globl _CP_RL2
                                    159 	.globl _T2CON_7
                                    160 	.globl _T2CON_6
                                    161 	.globl _T2CON_5
                                    162 	.globl _T2CON_4
                                    163 	.globl _T2CON_3
                                    164 	.globl _T2CON_2
                                    165 	.globl _T2CON_1
                                    166 	.globl _T2CON_0
                                    167 	.globl _PT2
                                    168 	.globl _ET2
                                    169 	.globl _TMOD
                                    170 	.globl _TL1
                                    171 	.globl _TL0
                                    172 	.globl _TH1
                                    173 	.globl _TH0
                                    174 	.globl _TCON
                                    175 	.globl _SP
                                    176 	.globl _SCON
                                    177 	.globl _SBUF0
                                    178 	.globl _SBUF
                                    179 	.globl _PSW
                                    180 	.globl _PCON
                                    181 	.globl _P3
                                    182 	.globl _P2
                                    183 	.globl _P1
                                    184 	.globl _P0
                                    185 	.globl _IP
                                    186 	.globl _IE
                                    187 	.globl _DP0L
                                    188 	.globl _DPL
                                    189 	.globl _DP0H
                                    190 	.globl _DPH
                                    191 	.globl _B
                                    192 	.globl _ACC
                                    193 	.globl _EECON
                                    194 	.globl _KBF
                                    195 	.globl _KBE
                                    196 	.globl _KBLS
                                    197 	.globl _BRL
                                    198 	.globl _BDRCON
                                    199 	.globl _T2MOD
                                    200 	.globl _SPDAT
                                    201 	.globl _SPSTA
                                    202 	.globl _SPCON
                                    203 	.globl _SADEN
                                    204 	.globl _SADDR
                                    205 	.globl _WDTPRG
                                    206 	.globl _WDTRST
                                    207 	.globl _P5
                                    208 	.globl _P4
                                    209 	.globl _IPH1
                                    210 	.globl _IPL1
                                    211 	.globl _IPH0
                                    212 	.globl _IPL0
                                    213 	.globl _IEN1
                                    214 	.globl _IEN0
                                    215 	.globl _CMOD
                                    216 	.globl _CL
                                    217 	.globl _CH
                                    218 	.globl _CCON
                                    219 	.globl _CCAPM4
                                    220 	.globl _CCAPM3
                                    221 	.globl _CCAPM2
                                    222 	.globl _CCAPM1
                                    223 	.globl _CCAPM0
                                    224 	.globl _CCAP4L
                                    225 	.globl _CCAP3L
                                    226 	.globl _CCAP2L
                                    227 	.globl _CCAP1L
                                    228 	.globl _CCAP0L
                                    229 	.globl _CCAP4H
                                    230 	.globl _CCAP3H
                                    231 	.globl _CCAP2H
                                    232 	.globl _CCAP1H
                                    233 	.globl _CCAP0H
                                    234 	.globl _CKCON1
                                    235 	.globl _CKCON0
                                    236 	.globl _CKRL
                                    237 	.globl _AUXR1
                                    238 	.globl _AUXR
                                    239 	.globl _TH2
                                    240 	.globl _TL2
                                    241 	.globl _RCAP2H
                                    242 	.globl _RCAP2L
                                    243 	.globl _T2CON
                                    244 	.globl _db
                                    245 	.globl _lcdgotoxy_PARM_2
                                    246 	.globl _tick
                                    247 	.globl _ptr
                                    248 ;--------------------------------------------------------
                                    249 ; special function registers
                                    250 ;--------------------------------------------------------
                                    251 	.area RSEG    (ABS,DATA)
      000000                        252 	.org 0x0000
                           0000C8   253 _T2CON	=	0x00c8
                           0000CA   254 _RCAP2L	=	0x00ca
                           0000CB   255 _RCAP2H	=	0x00cb
                           0000CC   256 _TL2	=	0x00cc
                           0000CD   257 _TH2	=	0x00cd
                           00008E   258 _AUXR	=	0x008e
                           0000A2   259 _AUXR1	=	0x00a2
                           000097   260 _CKRL	=	0x0097
                           00008F   261 _CKCON0	=	0x008f
                           0000AF   262 _CKCON1	=	0x00af
                           0000FA   263 _CCAP0H	=	0x00fa
                           0000FB   264 _CCAP1H	=	0x00fb
                           0000FC   265 _CCAP2H	=	0x00fc
                           0000FD   266 _CCAP3H	=	0x00fd
                           0000FE   267 _CCAP4H	=	0x00fe
                           0000EA   268 _CCAP0L	=	0x00ea
                           0000EB   269 _CCAP1L	=	0x00eb
                           0000EC   270 _CCAP2L	=	0x00ec
                           0000ED   271 _CCAP3L	=	0x00ed
                           0000EE   272 _CCAP4L	=	0x00ee
                           0000DA   273 _CCAPM0	=	0x00da
                           0000DB   274 _CCAPM1	=	0x00db
                           0000DC   275 _CCAPM2	=	0x00dc
                           0000DD   276 _CCAPM3	=	0x00dd
                           0000DE   277 _CCAPM4	=	0x00de
                           0000D8   278 _CCON	=	0x00d8
                           0000F9   279 _CH	=	0x00f9
                           0000E9   280 _CL	=	0x00e9
                           0000D9   281 _CMOD	=	0x00d9
                           0000A8   282 _IEN0	=	0x00a8
                           0000B1   283 _IEN1	=	0x00b1
                           0000B8   284 _IPL0	=	0x00b8
                           0000B7   285 _IPH0	=	0x00b7
                           0000B2   286 _IPL1	=	0x00b2
                           0000B3   287 _IPH1	=	0x00b3
                           0000C0   288 _P4	=	0x00c0
                           0000E8   289 _P5	=	0x00e8
                           0000A6   290 _WDTRST	=	0x00a6
                           0000A7   291 _WDTPRG	=	0x00a7
                           0000A9   292 _SADDR	=	0x00a9
                           0000B9   293 _SADEN	=	0x00b9
                           0000C3   294 _SPCON	=	0x00c3
                           0000C4   295 _SPSTA	=	0x00c4
                           0000C5   296 _SPDAT	=	0x00c5
                           0000C9   297 _T2MOD	=	0x00c9
                           00009B   298 _BDRCON	=	0x009b
                           00009A   299 _BRL	=	0x009a
                           00009C   300 _KBLS	=	0x009c
                           00009D   301 _KBE	=	0x009d
                           00009E   302 _KBF	=	0x009e
                           0000D2   303 _EECON	=	0x00d2
                           0000E0   304 _ACC	=	0x00e0
                           0000F0   305 _B	=	0x00f0
                           000083   306 _DPH	=	0x0083
                           000083   307 _DP0H	=	0x0083
                           000082   308 _DPL	=	0x0082
                           000082   309 _DP0L	=	0x0082
                           0000A8   310 _IE	=	0x00a8
                           0000B8   311 _IP	=	0x00b8
                           000080   312 _P0	=	0x0080
                           000090   313 _P1	=	0x0090
                           0000A0   314 _P2	=	0x00a0
                           0000B0   315 _P3	=	0x00b0
                           000087   316 _PCON	=	0x0087
                           0000D0   317 _PSW	=	0x00d0
                           000099   318 _SBUF	=	0x0099
                           000099   319 _SBUF0	=	0x0099
                           000098   320 _SCON	=	0x0098
                           000081   321 _SP	=	0x0081
                           000088   322 _TCON	=	0x0088
                           00008C   323 _TH0	=	0x008c
                           00008D   324 _TH1	=	0x008d
                           00008A   325 _TL0	=	0x008a
                           00008B   326 _TL1	=	0x008b
                           000089   327 _TMOD	=	0x0089
                                    328 ;--------------------------------------------------------
                                    329 ; special function bits
                                    330 ;--------------------------------------------------------
                                    331 	.area RSEG    (ABS,DATA)
      000000                        332 	.org 0x0000
                           0000AD   333 _ET2	=	0x00ad
                           0000BD   334 _PT2	=	0x00bd
                           0000C8   335 _T2CON_0	=	0x00c8
                           0000C9   336 _T2CON_1	=	0x00c9
                           0000CA   337 _T2CON_2	=	0x00ca
                           0000CB   338 _T2CON_3	=	0x00cb
                           0000CC   339 _T2CON_4	=	0x00cc
                           0000CD   340 _T2CON_5	=	0x00cd
                           0000CE   341 _T2CON_6	=	0x00ce
                           0000CF   342 _T2CON_7	=	0x00cf
                           0000C8   343 _CP_RL2	=	0x00c8
                           0000C9   344 _C_T2	=	0x00c9
                           0000CA   345 _TR2	=	0x00ca
                           0000CB   346 _EXEN2	=	0x00cb
                           0000CC   347 _TCLK	=	0x00cc
                           0000CD   348 _RCLK	=	0x00cd
                           0000CE   349 _EXF2	=	0x00ce
                           0000CF   350 _TF2	=	0x00cf
                           0000DF   351 _CF	=	0x00df
                           0000DE   352 _CR	=	0x00de
                           0000DC   353 _CCF4	=	0x00dc
                           0000DB   354 _CCF3	=	0x00db
                           0000DA   355 _CCF2	=	0x00da
                           0000D9   356 _CCF1	=	0x00d9
                           0000D8   357 _CCF0	=	0x00d8
                           0000AE   358 _EC	=	0x00ae
                           0000BE   359 _PPCL	=	0x00be
                           0000BD   360 _PT2L	=	0x00bd
                           0000BC   361 _PSL	=	0x00bc
                           0000BB   362 _PT1L	=	0x00bb
                           0000BA   363 _PX1L	=	0x00ba
                           0000B9   364 _PT0L	=	0x00b9
                           0000B8   365 _PX0L	=	0x00b8
                           0000C0   366 _P4_0	=	0x00c0
                           0000C1   367 _P4_1	=	0x00c1
                           0000C2   368 _P4_2	=	0x00c2
                           0000C3   369 _P4_3	=	0x00c3
                           0000C4   370 _P4_4	=	0x00c4
                           0000C5   371 _P4_5	=	0x00c5
                           0000C6   372 _P4_6	=	0x00c6
                           0000C7   373 _P4_7	=	0x00c7
                           0000E8   374 _P5_0	=	0x00e8
                           0000E9   375 _P5_1	=	0x00e9
                           0000EA   376 _P5_2	=	0x00ea
                           0000EB   377 _P5_3	=	0x00eb
                           0000EC   378 _P5_4	=	0x00ec
                           0000ED   379 _P5_5	=	0x00ed
                           0000EE   380 _P5_6	=	0x00ee
                           0000EF   381 _P5_7	=	0x00ef
                           0000F0   382 _BREG_F0	=	0x00f0
                           0000F1   383 _BREG_F1	=	0x00f1
                           0000F2   384 _BREG_F2	=	0x00f2
                           0000F3   385 _BREG_F3	=	0x00f3
                           0000F4   386 _BREG_F4	=	0x00f4
                           0000F5   387 _BREG_F5	=	0x00f5
                           0000F6   388 _BREG_F6	=	0x00f6
                           0000F7   389 _BREG_F7	=	0x00f7
                           0000A8   390 _EX0	=	0x00a8
                           0000A9   391 _ET0	=	0x00a9
                           0000AA   392 _EX1	=	0x00aa
                           0000AB   393 _ET1	=	0x00ab
                           0000AC   394 _ES	=	0x00ac
                           0000AF   395 _EA	=	0x00af
                           0000B8   396 _PX0	=	0x00b8
                           0000B9   397 _PT0	=	0x00b9
                           0000BA   398 _PX1	=	0x00ba
                           0000BB   399 _PT1	=	0x00bb
                           0000BC   400 _PS	=	0x00bc
                           000080   401 _P0_0	=	0x0080
                           000081   402 _P0_1	=	0x0081
                           000082   403 _P0_2	=	0x0082
                           000083   404 _P0_3	=	0x0083
                           000084   405 _P0_4	=	0x0084
                           000085   406 _P0_5	=	0x0085
                           000086   407 _P0_6	=	0x0086
                           000087   408 _P0_7	=	0x0087
                           000090   409 _P1_0	=	0x0090
                           000091   410 _P1_1	=	0x0091
                           000092   411 _P1_2	=	0x0092
                           000093   412 _P1_3	=	0x0093
                           000094   413 _P1_4	=	0x0094
                           000095   414 _P1_5	=	0x0095
                           000096   415 _P1_6	=	0x0096
                           000097   416 _P1_7	=	0x0097
                           0000A0   417 _P2_0	=	0x00a0
                           0000A1   418 _P2_1	=	0x00a1
                           0000A2   419 _P2_2	=	0x00a2
                           0000A3   420 _P2_3	=	0x00a3
                           0000A4   421 _P2_4	=	0x00a4
                           0000A5   422 _P2_5	=	0x00a5
                           0000A6   423 _P2_6	=	0x00a6
                           0000A7   424 _P2_7	=	0x00a7
                           0000B0   425 _P3_0	=	0x00b0
                           0000B1   426 _P3_1	=	0x00b1
                           0000B2   427 _P3_2	=	0x00b2
                           0000B3   428 _P3_3	=	0x00b3
                           0000B4   429 _P3_4	=	0x00b4
                           0000B5   430 _P3_5	=	0x00b5
                           0000B6   431 _P3_6	=	0x00b6
                           0000B7   432 _P3_7	=	0x00b7
                           0000B0   433 _RXD	=	0x00b0
                           0000B0   434 _RXD0	=	0x00b0
                           0000B1   435 _TXD	=	0x00b1
                           0000B1   436 _TXD0	=	0x00b1
                           0000B2   437 _INT0	=	0x00b2
                           0000B3   438 _INT1	=	0x00b3
                           0000B4   439 _T0	=	0x00b4
                           0000B5   440 _T1	=	0x00b5
                           0000B6   441 _WR	=	0x00b6
                           0000B7   442 _RD	=	0x00b7
                           0000D0   443 _P	=	0x00d0
                           0000D1   444 _F1	=	0x00d1
                           0000D2   445 _OV	=	0x00d2
                           0000D3   446 _RS0	=	0x00d3
                           0000D4   447 _RS1	=	0x00d4
                           0000D5   448 _F0	=	0x00d5
                           0000D6   449 _AC	=	0x00d6
                           0000D7   450 _CY	=	0x00d7
                           000098   451 _RI	=	0x0098
                           000099   452 _TI	=	0x0099
                           00009A   453 _RB8	=	0x009a
                           00009B   454 _TB8	=	0x009b
                           00009C   455 _REN	=	0x009c
                           00009D   456 _SM2	=	0x009d
                           00009E   457 _SM1	=	0x009e
                           00009F   458 _SM0	=	0x009f
                           000088   459 _IT0	=	0x0088
                           000089   460 _IE0	=	0x0089
                           00008A   461 _IT1	=	0x008a
                           00008B   462 _IE1	=	0x008b
                           00008C   463 _TR0	=	0x008c
                           00008D   464 _TF0	=	0x008d
                           00008E   465 _TR1	=	0x008e
                           00008F   466 _TF1	=	0x008f
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable register banks
                                    469 ;--------------------------------------------------------
                                    470 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        471 	.ds 8
                                    472 ;--------------------------------------------------------
                                    473 ; internal ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area DSEG    (DATA)
      000008                        476 _ptr::
      000008                        477 	.ds 2
      00000A                        478 _tick::
      00000A                        479 	.ds 2
      00000C                        480 _lcdgotoxy_PARM_2:
      00000C                        481 	.ds 1
      00000D                        482 _create_custom_character_c_65536_68:
      00000D                        483 	.ds 8
      000015                        484 _main_previous_time_noted_65536_82:
      000015                        485 	.ds 2
      000017                        486 _main_min_high_65536_82:
      000017                        487 	.ds 1
      000018                        488 _main_min_low_65536_82:
      000018                        489 	.ds 1
      000019                        490 _main_sec_high_65536_82:
      000019                        491 	.ds 1
      00001A                        492 _main_sec_low_65536_82:
      00001A                        493 	.ds 1
      00001B                        494 _main_mili_sec_65536_82:
      00001B                        495 	.ds 1
      00001C                        496 _main_sloc0_1_0:
      00001C                        497 	.ds 2
                                    498 ;--------------------------------------------------------
                                    499 ; overlayable items in internal ram
                                    500 ;--------------------------------------------------------
                                    501 	.area	OSEG    (OVR,DATA)
                                    502 	.area	OSEG    (OVR,DATA)
      00004F                        503 _lcd_command_PARM_2:
      00004F                        504 	.ds 1
      000050                        505 _lcd_command_PARM_3:
      000050                        506 	.ds 1
                                    507 ;--------------------------------------------------------
                                    508 ; Stack segment in internal ram
                                    509 ;--------------------------------------------------------
                                    510 	.area	SSEG
      000058                        511 __start__stack:
      000058                        512 	.ds	1
                                    513 
                                    514 ;--------------------------------------------------------
                                    515 ; indirectly addressable internal ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area ISEG    (DATA)
                                    518 ;--------------------------------------------------------
                                    519 ; absolute internal ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area IABS    (ABS,DATA)
                                    522 	.area IABS    (ABS,DATA)
                                    523 ;--------------------------------------------------------
                                    524 ; bit data
                                    525 ;--------------------------------------------------------
                                    526 	.area BSEG    (BIT)
      000000                        527 _lcdgotoxy_sloc0_1_0:
      000000                        528 	.ds 1
      000001                        529 _isr_timer2_sloc0_1_0:
      000001                        530 	.ds 1
      000002                        531 _isr_timer0_sloc0_1_0:
      000002                        532 	.ds 1
                                    533 ;--------------------------------------------------------
                                    534 ; paged external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area PSEG    (PAG,XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XSEG    (XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; absolute external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XABS    (ABS,XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; external initialized ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XISEG   (XDATA)
      00FC00                        549 _db::
      00FC00                        550 	.ds 1
                                    551 	.area HOME    (CODE)
                                    552 	.area GSINIT0 (CODE)
                                    553 	.area GSINIT1 (CODE)
                                    554 	.area GSINIT2 (CODE)
                                    555 	.area GSINIT3 (CODE)
                                    556 	.area GSINIT4 (CODE)
                                    557 	.area GSINIT5 (CODE)
                                    558 	.area GSINIT  (CODE)
                                    559 	.area GSFINAL (CODE)
                                    560 	.area CSEG    (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; interrupt vector
                                    563 ;--------------------------------------------------------
                                    564 	.area HOME    (CODE)
      002000                        565 __interrupt_vect:
      002000 02 20 31         [24]  566 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  567 	reti
      002004                        568 	.ds	7
      00200B 02 23 DB         [24]  569 	ljmp	_isr_timer0
      00200E                        570 	.ds	5
      002013 32               [24]  571 	reti
      002014                        572 	.ds	7
      00201B 32               [24]  573 	reti
      00201C                        574 	.ds	7
      002023 32               [24]  575 	reti
      002024                        576 	.ds	7
      00202B 02 23 96         [24]  577 	ljmp	_isr_timer2
                                    578 ;--------------------------------------------------------
                                    579 ; global & static initialisations
                                    580 ;--------------------------------------------------------
                                    581 	.area HOME    (CODE)
                                    582 	.area GSINIT  (CODE)
                                    583 	.area GSFINAL (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 	.globl __sdcc_gsinit_startup
                                    586 	.globl __sdcc_program_startup
                                    587 	.globl __start__stack
                                    588 	.globl __mcs51_genXINIT
                                    589 	.globl __mcs51_genXRAMCLEAR
                                    590 	.globl __mcs51_genRAMCLEAR
                                    591 ;	main.c:19: __xdata uint8_t * ptr = &db;
      00208A 75 08 00         [24]  592 	mov	_ptr,#_db
      00208D 75 09 FC         [24]  593 	mov	(_ptr + 1),#(_db >> 8)
                                    594 ;	main.c:20: volatile unsigned int tick = 0;
      002090 E4               [12]  595 	clr	a
      002091 F5 0A            [12]  596 	mov	_tick,a
      002093 F5 0B            [12]  597 	mov	(_tick + 1),a
                                    598 	.area GSFINAL (CODE)
      002095 02 20 2E         [24]  599 	ljmp	__sdcc_program_startup
                                    600 ;--------------------------------------------------------
                                    601 ; Home
                                    602 ;--------------------------------------------------------
                                    603 	.area HOME    (CODE)
                                    604 	.area HOME    (CODE)
      00202E                        605 __sdcc_program_startup:
      00202E 02 24 0F         [24]  606 	ljmp	_main
                                    607 ;	return from main will return to caller
                                    608 ;--------------------------------------------------------
                                    609 ; code
                                    610 ;--------------------------------------------------------
                                    611 	.area CSEG    (CODE)
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    614 ;------------------------------------------------------------
                                    615 ;	main.c:26: _sdcc_external_startup()
                                    616 ;	-----------------------------------------
                                    617 ;	 function _sdcc_external_startup
                                    618 ;	-----------------------------------------
      002098                        619 __sdcc_external_startup:
                           000007   620 	ar7 = 0x07
                           000006   621 	ar6 = 0x06
                           000005   622 	ar5 = 0x05
                           000004   623 	ar4 = 0x04
                           000003   624 	ar3 = 0x03
                           000002   625 	ar2 = 0x02
                           000001   626 	ar1 = 0x01
                           000000   627 	ar0 = 0x00
                                    628 ;	main.c:28: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      002098 43 8E 0C         [24]  629 	orl	_AUXR,#0x0c
                                    630 ;	main.c:29: return 0;               // Return 0 to indicate successful startup
      00209B 90 00 00         [24]  631 	mov	dptr,#0x0000
                                    632 ;	main.c:30: }
      00209E 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'delay'
                                    636 ;------------------------------------------------------------
                                    637 ;t                         Allocated to registers 
                                    638 ;------------------------------------------------------------
                                    639 ;	main.c:41: void delay(uint32_t t)
                                    640 ;	-----------------------------------------
                                    641 ;	 function delay
                                    642 ;	-----------------------------------------
      00209F                        643 _delay:
      00209F AC 82            [24]  644 	mov	r4,dpl
      0020A1 AD 83            [24]  645 	mov	r5,dph
      0020A3 AE F0            [24]  646 	mov	r6,b
      0020A5 FF               [12]  647 	mov	r7,a
                                    648 ;	main.c:43: while(t--){
      0020A6                        649 00101$:
      0020A6 8C 00            [24]  650 	mov	ar0,r4
      0020A8 8D 01            [24]  651 	mov	ar1,r5
      0020AA 8E 02            [24]  652 	mov	ar2,r6
      0020AC 8F 03            [24]  653 	mov	ar3,r7
      0020AE 1C               [12]  654 	dec	r4
      0020AF BC FF 09         [24]  655 	cjne	r4,#0xff,00115$
      0020B2 1D               [12]  656 	dec	r5
      0020B3 BD FF 05         [24]  657 	cjne	r5,#0xff,00115$
      0020B6 1E               [12]  658 	dec	r6
      0020B7 BE FF 01         [24]  659 	cjne	r6,#0xff,00115$
      0020BA 1F               [12]  660 	dec	r7
      0020BB                        661 00115$:
      0020BB E8               [12]  662 	mov	a,r0
      0020BC 49               [12]  663 	orl	a,r1
      0020BD 4A               [12]  664 	orl	a,r2
      0020BE 4B               [12]  665 	orl	a,r3
      0020BF 60 03            [24]  666 	jz	00104$
                                    667 ;	main.c:44: NOP;  // Assembly NOP instruction for delaying program execution.
      0020C1 00               [12]  668 	nop	
      0020C2 80 E2            [24]  669 	sjmp	00101$
      0020C4                        670 00104$:
                                    671 ;	main.c:46: }
      0020C4 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'lcd_command'
                                    675 ;------------------------------------------------------------
                                    676 ;r_w                       Allocated with name '_lcd_command_PARM_2'
                                    677 ;data                      Allocated with name '_lcd_command_PARM_3'
                                    678 ;rs                        Allocated to registers r7 
                                    679 ;------------------------------------------------------------
                                    680 ;	main.c:48: void lcd_command(uint8_t rs, uint8_t r_w, uint8_t data){
                                    681 ;	-----------------------------------------
                                    682 ;	 function lcd_command
                                    683 ;	-----------------------------------------
      0020C5                        684 _lcd_command:
                                    685 ;	main.c:49: RS = rs;
                                    686 ;	assignBit
      0020C5 E5 82            [12]  687 	mov	a,dpl
      0020C7 24 FF            [12]  688 	add	a,#0xff
      0020C9 92 96            [24]  689 	mov	_P1_6,c
                                    690 ;	main.c:50: R_W = r_w;
                                    691 ;	assignBit
      0020CB E5 4F            [12]  692 	mov	a,_lcd_command_PARM_2
      0020CD 24 FF            [12]  693 	add	a,#0xff
      0020CF 92 97            [24]  694 	mov	_P1_7,c
                                    695 ;	main.c:51: *ptr = data;
      0020D1 85 08 82         [24]  696 	mov	dpl,_ptr
      0020D4 85 09 83         [24]  697 	mov	dph,(_ptr + 1)
      0020D7 E5 50            [12]  698 	mov	a,_lcd_command_PARM_3
      0020D9 F0               [24]  699 	movx	@dptr,a
                                    700 ;	main.c:52: }
      0020DA 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'lcdbusywait'
                                    704 ;------------------------------------------------------------
                                    705 ;	main.c:54: void lcdbusywait(){
                                    706 ;	-----------------------------------------
                                    707 ;	 function lcdbusywait
                                    708 ;	-----------------------------------------
      0020DB                        709 _lcdbusywait:
                                    710 ;	main.c:55: RS = PULSE_LOW;
                                    711 ;	assignBit
      0020DB C2 96            [12]  712 	clr	_P1_6
                                    713 ;	main.c:56: R_W = PULSE_HIGH;
                                    714 ;	assignBit
      0020DD D2 97            [12]  715 	setb	_P1_7
                                    716 ;	main.c:57: while(*ptr & (0b10000000)){
      0020DF                        717 00101$:
      0020DF 85 08 82         [24]  718 	mov	dpl,_ptr
      0020E2 85 09 83         [24]  719 	mov	dph,(_ptr + 1)
      0020E5 E0               [24]  720 	movx	a,@dptr
      0020E6 20 E7 F6         [24]  721 	jb	acc.7,00101$
                                    722 ;	main.c:60: }
      0020E9 22               [24]  723 	ret
                                    724 ;------------------------------------------------------------
                                    725 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    726 ;------------------------------------------------------------
                                    727 ;addr                      Allocated to registers r7 
                                    728 ;------------------------------------------------------------
                                    729 ;	main.c:61: void lcdgotoaddr(uint8_t addr){
                                    730 ;	-----------------------------------------
                                    731 ;	 function lcdgotoaddr
                                    732 ;	-----------------------------------------
      0020EA                        733 _lcdgotoaddr:
      0020EA AF 82            [24]  734 	mov	r7,dpl
                                    735 ;	main.c:62: RS = PULSE_LOW;
                                    736 ;	assignBit
      0020EC C2 96            [12]  737 	clr	_P1_6
                                    738 ;	main.c:63: R_W = PULSE_LOW;
                                    739 ;	assignBit
      0020EE C2 97            [12]  740 	clr	_P1_7
                                    741 ;	main.c:64: *ptr = addr | (0x80);
      0020F0 85 08 82         [24]  742 	mov	dpl,_ptr
      0020F3 85 09 83         [24]  743 	mov	dph,(_ptr + 1)
      0020F6 43 07 80         [24]  744 	orl	ar7,#0x80
      0020F9 EF               [12]  745 	mov	a,r7
      0020FA F0               [24]  746 	movx	@dptr,a
                                    747 ;	main.c:65: lcdbusywait();
                                    748 ;	main.c:66: }
      0020FB 02 20 DB         [24]  749 	ljmp	_lcdbusywait
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'lcdgotoxy'
                                    752 ;------------------------------------------------------------
                                    753 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                    754 ;row                       Allocated to registers r7 
                                    755 ;------------------------------------------------------------
                                    756 ;	main.c:68: void lcdgotoxy(uint8_t row, uint8_t column){
                                    757 ;	-----------------------------------------
                                    758 ;	 function lcdgotoxy
                                    759 ;	-----------------------------------------
      0020FE                        760 _lcdgotoxy:
                                    761 ;	main.c:69: lcdgotoaddr(((row % 2) ? column + (16 * !(row % 3)) : column + 64 + (16 * !(row % 4))) - 1);
      0020FE AE 82            [24]  762 	mov	r6,dpl
      002100 7F 00            [12]  763 	mov	r7,#0x00
      002102 EE               [12]  764 	mov	a,r6
      002103 30 E0 23         [24]  765 	jnb	acc.0,00103$
      002106 75 4F 03         [24]  766 	mov	__modsint_PARM_2,#0x03
      002109 75 50 00         [24]  767 	mov	(__modsint_PARM_2 + 1),#0x00
      00210C 8E 82            [24]  768 	mov	dpl,r6
      00210E 8F 83            [24]  769 	mov	dph,r7
      002110 12 2E F6         [24]  770 	lcall	__modsint
      002113 AC 82            [24]  771 	mov	r4,dpl
      002115 AD 83            [24]  772 	mov	r5,dph
      002117 EC               [12]  773 	mov	a,r4
      002118 4D               [12]  774 	orl	a,r5
      002119 B4 01 00         [24]  775 	cjne	a,#0x01,00110$
      00211C                        776 00110$:
      00211C 92 00            [24]  777 	mov  _lcdgotoxy_sloc0_1_0,c
      00211E E4               [12]  778 	clr	a
      00211F 33               [12]  779 	rlc	a
      002120 C4               [12]  780 	swap	a
      002121 54 F0            [12]  781 	anl	a,#0xf0
      002123 AC 0C            [24]  782 	mov	r4,_lcdgotoxy_PARM_2
      002125 2C               [12]  783 	add	a,r4
      002126 FD               [12]  784 	mov	r5,a
      002127 80 1A            [24]  785 	sjmp	00104$
      002129                        786 00103$:
      002129 AC 0C            [24]  787 	mov	r4,_lcdgotoxy_PARM_2
      00212B 74 40            [12]  788 	mov	a,#0x40
      00212D 2C               [12]  789 	add	a,r4
      00212E FC               [12]  790 	mov	r4,a
      00212F 53 06 03         [24]  791 	anl	ar6,#0x03
      002132 7F 00            [12]  792 	mov	r7,#0x00
      002134 EE               [12]  793 	mov	a,r6
      002135 4F               [12]  794 	orl	a,r7
      002136 B4 01 00         [24]  795 	cjne	a,#0x01,00111$
      002139                        796 00111$:
      002139 92 00            [24]  797 	mov  _lcdgotoxy_sloc0_1_0,c
      00213B E4               [12]  798 	clr	a
      00213C 33               [12]  799 	rlc	a
      00213D C4               [12]  800 	swap	a
      00213E 54 F0            [12]  801 	anl	a,#0xf0
      002140 FF               [12]  802 	mov	r7,a
      002141 2C               [12]  803 	add	a,r4
      002142 FD               [12]  804 	mov	r5,a
      002143                        805 00104$:
      002143 ED               [12]  806 	mov	a,r5
      002144 14               [12]  807 	dec	a
      002145 F5 82            [12]  808 	mov	dpl,a
                                    809 ;	main.c:70: }
      002147 02 20 EA         [24]  810 	ljmp	_lcdgotoaddr
                                    811 ;------------------------------------------------------------
                                    812 ;Allocation info for local variables in function 'lcdputch'
                                    813 ;------------------------------------------------------------
                                    814 ;cc                        Allocated to registers r7 
                                    815 ;------------------------------------------------------------
                                    816 ;	main.c:71: void lcdputch(uint8_t cc){
                                    817 ;	-----------------------------------------
                                    818 ;	 function lcdputch
                                    819 ;	-----------------------------------------
      00214A                        820 _lcdputch:
      00214A AF 82            [24]  821 	mov	r7,dpl
                                    822 ;	main.c:72: RS = PULSE_HIGH;
                                    823 ;	assignBit
      00214C D2 96            [12]  824 	setb	_P1_6
                                    825 ;	main.c:73: R_W = PULSE_LOW;
                                    826 ;	assignBit
      00214E C2 97            [12]  827 	clr	_P1_7
                                    828 ;	main.c:74: *ptr = cc;
      002150 85 08 82         [24]  829 	mov	dpl,_ptr
      002153 85 09 83         [24]  830 	mov	dph,(_ptr + 1)
      002156 EF               [12]  831 	mov	a,r7
      002157 F0               [24]  832 	movx	@dptr,a
                                    833 ;	main.c:75: lcdbusywait();
                                    834 ;	main.c:76: }
      002158 02 20 DB         [24]  835 	ljmp	_lcdbusywait
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'lcdputstr'
                                    838 ;------------------------------------------------------------
                                    839 ;ss                        Allocated to registers 
                                    840 ;lcd_ptr_addr              Allocated to registers r4 
                                    841 ;------------------------------------------------------------
                                    842 ;	main.c:78: void lcdputstr(uint8_t *ss){
                                    843 ;	-----------------------------------------
                                    844 ;	 function lcdputstr
                                    845 ;	-----------------------------------------
      00215B                        846 _lcdputstr:
      00215B AD 82            [24]  847 	mov	r5,dpl
      00215D AE 83            [24]  848 	mov	r6,dph
      00215F AF F0            [24]  849 	mov	r7,b
                                    850 ;	main.c:80: while(*ss != '\0'){
      002161                        851 00107$:
      002161 8D 82            [24]  852 	mov	dpl,r5
      002163 8E 83            [24]  853 	mov	dph,r6
      002165 8F F0            [24]  854 	mov	b,r7
      002167 12 2E DA         [24]  855 	lcall	__gptrget
      00216A 70 01            [24]  856 	jnz	00137$
      00216C 22               [24]  857 	ret
      00216D                        858 00137$:
                                    859 ;	main.c:81: RS = PULSE_LOW;
                                    860 ;	assignBit
      00216D C2 96            [12]  861 	clr	_P1_6
                                    862 ;	main.c:82: R_W = PULSE_HIGH;
                                    863 ;	assignBit
      00216F D2 97            [12]  864 	setb	_P1_7
                                    865 ;	main.c:83: lcdputch(*ss);
      002171 8D 82            [24]  866 	mov	dpl,r5
      002173 8E 83            [24]  867 	mov	dph,r6
      002175 8F F0            [24]  868 	mov	b,r7
      002177 12 2E DA         [24]  869 	lcall	__gptrget
      00217A F5 82            [12]  870 	mov	dpl,a
      00217C C0 07            [24]  871 	push	ar7
      00217E C0 06            [24]  872 	push	ar6
      002180 C0 05            [24]  873 	push	ar5
      002182 12 21 4A         [24]  874 	lcall	_lcdputch
      002185 D0 05            [24]  875 	pop	ar5
      002187 D0 06            [24]  876 	pop	ar6
      002189 D0 07            [24]  877 	pop	ar7
                                    878 ;	main.c:84: lcd_ptr_addr = *ptr & (0b01111111);
      00218B 85 08 82         [24]  879 	mov	dpl,_ptr
      00218E 85 09 83         [24]  880 	mov	dph,(_ptr + 1)
      002191 E0               [24]  881 	movx	a,@dptr
      002192 FC               [12]  882 	mov	r4,a
      002193 53 04 7F         [24]  883 	anl	ar4,#0x7f
                                    884 ;	main.c:85: switch(lcd_ptr_addr){
      002196 BC 10 02         [24]  885 	cjne	r4,#0x10,00138$
      002199 80 0F            [24]  886 	sjmp	00101$
      00219B                        887 00138$:
      00219B BC 20 02         [24]  888 	cjne	r4,#0x20,00139$
      00219E 80 32            [24]  889 	sjmp	00103$
      0021A0                        890 00139$:
      0021A0 BC 50 02         [24]  891 	cjne	r4,#0x50,00140$
      0021A3 80 19            [24]  892 	sjmp	00102$
      0021A5                        893 00140$:
                                    894 ;	main.c:86: case 0x10:
      0021A5 BC 60 50         [24]  895 	cjne	r4,#0x60,00106$
      0021A8 80 3C            [24]  896 	sjmp	00104$
      0021AA                        897 00101$:
                                    898 ;	main.c:87: lcdgotoaddr(0x40);
      0021AA 75 82 40         [24]  899 	mov	dpl,#0x40
      0021AD C0 07            [24]  900 	push	ar7
      0021AF C0 06            [24]  901 	push	ar6
      0021B1 C0 05            [24]  902 	push	ar5
      0021B3 12 20 EA         [24]  903 	lcall	_lcdgotoaddr
      0021B6 D0 05            [24]  904 	pop	ar5
      0021B8 D0 06            [24]  905 	pop	ar6
      0021BA D0 07            [24]  906 	pop	ar7
                                    907 ;	main.c:88: break;
                                    908 ;	main.c:89: case 0x50:
      0021BC 80 3A            [24]  909 	sjmp	00106$
      0021BE                        910 00102$:
                                    911 ;	main.c:90: lcdgotoaddr(0x10);
      0021BE 75 82 10         [24]  912 	mov	dpl,#0x10
      0021C1 C0 07            [24]  913 	push	ar7
      0021C3 C0 06            [24]  914 	push	ar6
      0021C5 C0 05            [24]  915 	push	ar5
      0021C7 12 20 EA         [24]  916 	lcall	_lcdgotoaddr
      0021CA D0 05            [24]  917 	pop	ar5
      0021CC D0 06            [24]  918 	pop	ar6
      0021CE D0 07            [24]  919 	pop	ar7
                                    920 ;	main.c:91: break;
                                    921 ;	main.c:92: case 0x20:
      0021D0 80 26            [24]  922 	sjmp	00106$
      0021D2                        923 00103$:
                                    924 ;	main.c:93: lcdgotoaddr(0x50);
      0021D2 75 82 50         [24]  925 	mov	dpl,#0x50
      0021D5 C0 07            [24]  926 	push	ar7
      0021D7 C0 06            [24]  927 	push	ar6
      0021D9 C0 05            [24]  928 	push	ar5
      0021DB 12 20 EA         [24]  929 	lcall	_lcdgotoaddr
      0021DE D0 05            [24]  930 	pop	ar5
      0021E0 D0 06            [24]  931 	pop	ar6
      0021E2 D0 07            [24]  932 	pop	ar7
                                    933 ;	main.c:94: break;
                                    934 ;	main.c:95: case 0x60:
      0021E4 80 12            [24]  935 	sjmp	00106$
      0021E6                        936 00104$:
                                    937 ;	main.c:96: lcdgotoaddr(0x00);
      0021E6 75 82 00         [24]  938 	mov	dpl,#0x00
      0021E9 C0 07            [24]  939 	push	ar7
      0021EB C0 06            [24]  940 	push	ar6
      0021ED C0 05            [24]  941 	push	ar5
      0021EF 12 20 EA         [24]  942 	lcall	_lcdgotoaddr
      0021F2 D0 05            [24]  943 	pop	ar5
      0021F4 D0 06            [24]  944 	pop	ar6
      0021F6 D0 07            [24]  945 	pop	ar7
                                    946 ;	main.c:100: }
      0021F8                        947 00106$:
                                    948 ;	main.c:101: ss++;
      0021F8 0D               [12]  949 	inc	r5
      0021F9 BD 00 01         [24]  950 	cjne	r5,#0x00,00142$
      0021FC 0E               [12]  951 	inc	r6
      0021FD                        952 00142$:
                                    953 ;	main.c:103: }
      0021FD 02 21 61         [24]  954 	ljmp	00107$
                                    955 ;------------------------------------------------------------
                                    956 ;Allocation info for local variables in function 'lcdinit'
                                    957 ;------------------------------------------------------------
                                    958 ;	main.c:104: void lcdinit()
                                    959 ;	-----------------------------------------
                                    960 ;	 function lcdinit
                                    961 ;	-----------------------------------------
      002200                        962 _lcdinit:
                                    963 ;	main.c:106: printf_tiny("lcd init start\n\r");
      002200 74 2C            [12]  964 	mov	a,#___str_0
      002202 C0 E0            [24]  965 	push	acc
      002204 74 2F            [12]  966 	mov	a,#(___str_0 >> 8)
      002206 C0 E0            [24]  967 	push	acc
      002208 12 26 18         [24]  968 	lcall	_printf_tiny
      00220B 15 81            [12]  969 	dec	sp
      00220D 15 81            [12]  970 	dec	sp
                                    971 ;	main.c:107: delay(14000); //waiting for 15ms (1.085us * 14000 ~= 15ms)
      00220F 90 36 B0         [24]  972 	mov	dptr,#0x36b0
      002212 E4               [12]  973 	clr	a
      002213 F5 F0            [12]  974 	mov	b,a
      002215 12 20 9F         [24]  975 	lcall	_delay
                                    976 ;	main.c:108: lcd_command(0,0,0x30); // system set
      002218 75 4F 00         [24]  977 	mov	_lcd_command_PARM_2,#0x00
      00221B 75 50 30         [24]  978 	mov	_lcd_command_PARM_3,#0x30
      00221E 75 82 00         [24]  979 	mov	dpl,#0x00
      002221 12 20 C5         [24]  980 	lcall	_lcd_command
                                    981 ;	main.c:109: delay(4000); //waiting for 4.1ms (1.085us * 4000 ~= 4.1ms)
      002224 90 0F A0         [24]  982 	mov	dptr,#0x0fa0
      002227 E4               [12]  983 	clr	a
      002228 F5 F0            [12]  984 	mov	b,a
      00222A 12 20 9F         [24]  985 	lcall	_delay
                                    986 ;	main.c:110: lcd_command(0,0,0x30); // system set
      00222D 75 4F 00         [24]  987 	mov	_lcd_command_PARM_2,#0x00
      002230 75 50 30         [24]  988 	mov	_lcd_command_PARM_3,#0x30
      002233 75 82 00         [24]  989 	mov	dpl,#0x00
      002236 12 20 C5         [24]  990 	lcall	_lcd_command
                                    991 ;	main.c:111: delay(100); //waiting for 100us (1.085us * 100 ~= 100us)
      002239 90 00 64         [24]  992 	mov	dptr,#(0x64&0x00ff)
      00223C E4               [12]  993 	clr	a
      00223D F5 F0            [12]  994 	mov	b,a
      00223F 12 20 9F         [24]  995 	lcall	_delay
                                    996 ;	main.c:112: lcd_command(0,0,0x30); // system set
      002242 75 4F 00         [24]  997 	mov	_lcd_command_PARM_2,#0x00
      002245 75 50 30         [24]  998 	mov	_lcd_command_PARM_3,#0x30
      002248 75 82 00         [24]  999 	mov	dpl,#0x00
      00224B 12 20 C5         [24] 1000 	lcall	_lcd_command
                                   1001 ;	main.c:113: lcdbusywait();
      00224E 12 20 DB         [24] 1002 	lcall	_lcdbusywait
                                   1003 ;	main.c:114: lcd_command(0,0,0x38); // function set
      002251 75 4F 00         [24] 1004 	mov	_lcd_command_PARM_2,#0x00
      002254 75 50 38         [24] 1005 	mov	_lcd_command_PARM_3,#0x38
      002257 75 82 00         [24] 1006 	mov	dpl,#0x00
      00225A 12 20 C5         [24] 1007 	lcall	_lcd_command
                                   1008 ;	main.c:115: lcdbusywait();
      00225D 12 20 DB         [24] 1009 	lcall	_lcdbusywait
                                   1010 ;	main.c:116: lcd_command(0,0,0x08); // turn off display
      002260 75 4F 00         [24] 1011 	mov	_lcd_command_PARM_2,#0x00
      002263 75 50 08         [24] 1012 	mov	_lcd_command_PARM_3,#0x08
      002266 75 82 00         [24] 1013 	mov	dpl,#0x00
      002269 12 20 C5         [24] 1014 	lcall	_lcd_command
                                   1015 ;	main.c:117: lcdbusywait();
      00226C 12 20 DB         [24] 1016 	lcall	_lcdbusywait
                                   1017 ;	main.c:118: lcd_command(0,0,0x0C); // turn on display
      00226F 75 4F 00         [24] 1018 	mov	_lcd_command_PARM_2,#0x00
      002272 75 50 0C         [24] 1019 	mov	_lcd_command_PARM_3,#0x0c
      002275 75 82 00         [24] 1020 	mov	dpl,#0x00
      002278 12 20 C5         [24] 1021 	lcall	_lcd_command
                                   1022 ;	main.c:119: lcdbusywait();
      00227B 12 20 DB         [24] 1023 	lcall	_lcdbusywait
                                   1024 ;	main.c:120: lcd_command(0,0,0x06); // Entry mode set
      00227E 75 4F 00         [24] 1025 	mov	_lcd_command_PARM_2,#0x00
      002281 75 50 06         [24] 1026 	mov	_lcd_command_PARM_3,#0x06
      002284 75 82 00         [24] 1027 	mov	dpl,#0x00
      002287 12 20 C5         [24] 1028 	lcall	_lcd_command
                                   1029 ;	main.c:121: lcdbusywait();
      00228A 12 20 DB         [24] 1030 	lcall	_lcdbusywait
                                   1031 ;	main.c:122: lcd_command(0,0,0x01); // clear screen and send the cursor home
      00228D 75 4F 00         [24] 1032 	mov	_lcd_command_PARM_2,#0x00
      002290 75 50 01         [24] 1033 	mov	_lcd_command_PARM_3,#0x01
      002293 75 82 00         [24] 1034 	mov	dpl,#0x00
      002296 12 20 C5         [24] 1035 	lcall	_lcd_command
                                   1036 ;	main.c:123: printf_tiny("lcd init end\n\r");
      002299 74 3D            [12] 1037 	mov	a,#___str_1
      00229B C0 E0            [24] 1038 	push	acc
      00229D 74 2F            [12] 1039 	mov	a,#(___str_1 >> 8)
      00229F C0 E0            [24] 1040 	push	acc
      0022A1 12 26 18         [24] 1041 	lcall	_printf_tiny
      0022A4 15 81            [12] 1042 	dec	sp
      0022A6 15 81            [12] 1043 	dec	sp
                                   1044 ;	main.c:124: }
      0022A8 22               [24] 1045 	ret
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'lcdclear'
                                   1048 ;------------------------------------------------------------
                                   1049 ;	main.c:126: void lcdclear(){
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function lcdclear
                                   1052 ;	-----------------------------------------
      0022A9                       1053 _lcdclear:
                                   1054 ;	main.c:127: RS = PULSE_LOW;
                                   1055 ;	assignBit
      0022A9 C2 96            [12] 1056 	clr	_P1_6
                                   1057 ;	main.c:128: R_W = PULSE_LOW;
                                   1058 ;	assignBit
      0022AB C2 97            [12] 1059 	clr	_P1_7
                                   1060 ;	main.c:129: *ptr = 0b00000001;
      0022AD 85 08 82         [24] 1061 	mov	dpl,_ptr
      0022B0 85 09 83         [24] 1062 	mov	dph,(_ptr + 1)
      0022B3 74 01            [12] 1063 	mov	a,#0x01
      0022B5 F0               [24] 1064 	movx	@dptr,a
                                   1065 ;	main.c:130: lcdbusywait();
                                   1066 ;	main.c:131: }
      0022B6 02 20 DB         [24] 1067 	ljmp	_lcdbusywait
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'test_functionality'
                                   1070 ;------------------------------------------------------------
                                   1071 ;	main.c:133: void test_functionality(){
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function test_functionality
                                   1074 ;	-----------------------------------------
      0022B9                       1075 _test_functionality:
                                   1076 ;	main.c:134: printf_tiny("test_functionality start\n\r");
      0022B9 74 4C            [12] 1077 	mov	a,#___str_2
      0022BB C0 E0            [24] 1078 	push	acc
      0022BD 74 2F            [12] 1079 	mov	a,#(___str_2 >> 8)
      0022BF C0 E0            [24] 1080 	push	acc
      0022C1 12 26 18         [24] 1081 	lcall	_printf_tiny
      0022C4 15 81            [12] 1082 	dec	sp
      0022C6 15 81            [12] 1083 	dec	sp
                                   1084 ;	main.c:136: lcdgotoaddr(0x01);
      0022C8 75 82 01         [24] 1085 	mov	dpl,#0x01
      0022CB 12 20 EA         [24] 1086 	lcall	_lcdgotoaddr
                                   1087 ;	main.c:137: lcdputch('E');
      0022CE 75 82 45         [24] 1088 	mov	dpl,#0x45
      0022D1 12 21 4A         [24] 1089 	lcall	_lcdputch
                                   1090 ;	main.c:138: delay(100000);
      0022D4 90 86 A0         [24] 1091 	mov	dptr,#0x86a0
      0022D7 75 F0 01         [24] 1092 	mov	b,#0x01
      0022DA E4               [12] 1093 	clr	a
      0022DB 12 20 9F         [24] 1094 	lcall	_delay
                                   1095 ;	main.c:140: lcdgotoxy(1, 1);
      0022DE 75 0C 01         [24] 1096 	mov	_lcdgotoxy_PARM_2,#0x01
      0022E1 75 82 01         [24] 1097 	mov	dpl,#0x01
      0022E4 12 20 FE         [24] 1098 	lcall	_lcdgotoxy
                                   1099 ;	main.c:141: lcdputstr("ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyzJITHU");
      0022E7 90 2F 67         [24] 1100 	mov	dptr,#___str_3
      0022EA 75 F0 80         [24] 1101 	mov	b,#0x80
      0022ED 12 21 5B         [24] 1102 	lcall	_lcdputstr
                                   1103 ;	main.c:142: delay(100000);
      0022F0 90 86 A0         [24] 1104 	mov	dptr,#0x86a0
      0022F3 75 F0 01         [24] 1105 	mov	b,#0x01
      0022F6 E4               [12] 1106 	clr	a
      0022F7 12 20 9F         [24] 1107 	lcall	_delay
                                   1108 ;	main.c:144: lcdclear();
      0022FA 12 22 A9         [24] 1109 	lcall	_lcdclear
                                   1110 ;	main.c:145: printf_tiny("test_functionality end\n\r");
      0022FD 74 AA            [12] 1111 	mov	a,#___str_4
      0022FF C0 E0            [24] 1112 	push	acc
      002301 74 2F            [12] 1113 	mov	a,#(___str_4 >> 8)
      002303 C0 E0            [24] 1114 	push	acc
      002305 12 26 18         [24] 1115 	lcall	_printf_tiny
      002308 15 81            [12] 1116 	dec	sp
      00230A 15 81            [12] 1117 	dec	sp
                                   1118 ;	main.c:146: }
      00230C 22               [24] 1119 	ret
                                   1120 ;------------------------------------------------------------
                                   1121 ;Allocation info for local variables in function 'set_cgram_address'
                                   1122 ;------------------------------------------------------------
                                   1123 ;cgram_address             Allocated to registers r7 
                                   1124 ;------------------------------------------------------------
                                   1125 ;	main.c:148: void set_cgram_address(uint8_t cgram_address){
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function set_cgram_address
                                   1128 ;	-----------------------------------------
      00230D                       1129 _set_cgram_address:
      00230D AF 82            [24] 1130 	mov	r7,dpl
                                   1131 ;	main.c:149: RS = PULSE_LOW;
                                   1132 ;	assignBit
      00230F C2 96            [12] 1133 	clr	_P1_6
                                   1134 ;	main.c:150: R_W = PULSE_LOW;
                                   1135 ;	assignBit
      002311 C2 97            [12] 1136 	clr	_P1_7
                                   1137 ;	main.c:151: *ptr = cgram_address;
      002313 85 08 82         [24] 1138 	mov	dpl,_ptr
      002316 85 09 83         [24] 1139 	mov	dph,(_ptr + 1)
      002319 EF               [12] 1140 	mov	a,r7
      00231A F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	main.c:152: lcdbusywait();
                                   1143 ;	main.c:153: }
      00231B 02 20 DB         [24] 1144 	ljmp	_lcdbusywait
                                   1145 ;------------------------------------------------------------
                                   1146 ;Allocation info for local variables in function 'create_custom_character'
                                   1147 ;------------------------------------------------------------
                                   1148 ;char_num                  Allocated to registers r7 
                                   1149 ;c                         Allocated with name '_create_custom_character_c_65536_68'
                                   1150 ;i                         Allocated to registers r5 r6 
                                   1151 ;cgram_address             Allocated to registers 
                                   1152 ;------------------------------------------------------------
                                   1153 ;	main.c:154: void create_custom_character(uint8_t char_num){
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function create_custom_character
                                   1156 ;	-----------------------------------------
      00231E                       1157 _create_custom_character:
      00231E AF 82            [24] 1158 	mov	r7,dpl
                                   1159 ;	main.c:155: uint8_t c[8] =
      002320 75 0D 04         [24] 1160 	mov	_create_custom_character_c_65536_68,#0x04
      002323 75 0E 0E         [24] 1161 	mov	(_create_custom_character_c_65536_68 + 0x0001),#0x0e
      002326 75 0F 04         [24] 1162 	mov	(_create_custom_character_c_65536_68 + 0x0002),#0x04
      002329 75 10 04         [24] 1163 	mov	(_create_custom_character_c_65536_68 + 0x0003),#0x04
      00232C 75 11 04         [24] 1164 	mov	(_create_custom_character_c_65536_68 + 0x0004),#0x04
      00232F 75 12 04         [24] 1165 	mov	(_create_custom_character_c_65536_68 + 0x0005),#0x04
      002332 75 13 04         [24] 1166 	mov	(_create_custom_character_c_65536_68 + 0x0006),#0x04
      002335 75 14 0A         [24] 1167 	mov	(_create_custom_character_c_65536_68 + 0x0007),#0x0a
                                   1168 ;	main.c:165: for(int i = 0; i < BYTE_LENGTH; i++){
      002338 7D 00            [12] 1169 	mov	r5,#0x00
      00233A 7E 00            [12] 1170 	mov	r6,#0x00
      00233C                       1171 00103$:
      00233C C3               [12] 1172 	clr	c
      00233D ED               [12] 1173 	mov	a,r5
      00233E 94 08            [12] 1174 	subb	a,#0x08
      002340 EE               [12] 1175 	mov	a,r6
      002341 64 80            [12] 1176 	xrl	a,#0x80
      002343 94 80            [12] 1177 	subb	a,#0x80
      002345 50 34            [24] 1178 	jnc	00105$
                                   1179 ;	main.c:166: uint8_t cgram_address = 0b01000000 | (char_num << 3) | i;
      002347 8F 04            [24] 1180 	mov	ar4,r7
      002349 EC               [12] 1181 	mov	a,r4
      00234A C4               [12] 1182 	swap	a
      00234B 03               [12] 1183 	rr	a
      00234C 54 F8            [12] 1184 	anl	a,#0xf8
      00234E FC               [12] 1185 	mov	r4,a
      00234F 43 04 40         [24] 1186 	orl	ar4,#0x40
      002352 8D 03            [24] 1187 	mov	ar3,r5
      002354 EB               [12] 1188 	mov	a,r3
      002355 4C               [12] 1189 	orl	a,r4
      002356 F5 82            [12] 1190 	mov	dpl,a
                                   1191 ;	main.c:167: set_cgram_address(cgram_address);
      002358 C0 07            [24] 1192 	push	ar7
      00235A C0 06            [24] 1193 	push	ar6
      00235C C0 05            [24] 1194 	push	ar5
      00235E 12 23 0D         [24] 1195 	lcall	_set_cgram_address
      002361 D0 05            [24] 1196 	pop	ar5
                                   1197 ;	main.c:168: lcdputch(c[i]);
      002363 ED               [12] 1198 	mov	a,r5
      002364 24 0D            [12] 1199 	add	a,#_create_custom_character_c_65536_68
      002366 F9               [12] 1200 	mov	r1,a
      002367 87 82            [24] 1201 	mov	dpl,@r1
      002369 C0 05            [24] 1202 	push	ar5
      00236B 12 21 4A         [24] 1203 	lcall	_lcdputch
      00236E D0 05            [24] 1204 	pop	ar5
      002370 D0 06            [24] 1205 	pop	ar6
      002372 D0 07            [24] 1206 	pop	ar7
                                   1207 ;	main.c:165: for(int i = 0; i < BYTE_LENGTH; i++){
      002374 0D               [12] 1208 	inc	r5
      002375 BD 00 C4         [24] 1209 	cjne	r5,#0x00,00103$
      002378 0E               [12] 1210 	inc	r6
      002379 80 C1            [24] 1211 	sjmp	00103$
      00237B                       1212 00105$:
                                   1213 ;	main.c:170: }
      00237B 22               [24] 1214 	ret
                                   1215 ;------------------------------------------------------------
                                   1216 ;Allocation info for local variables in function 'timer2_init'
                                   1217 ;------------------------------------------------------------
                                   1218 ;	main.c:172: void timer2_init(){
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function timer2_init
                                   1221 ;	-----------------------------------------
      00237C                       1222 _timer2_init:
                                   1223 ;	main.c:173: T2MOD = 0b00000001;
      00237C 75 C9 01         [24] 1224 	mov	_T2MOD,#0x01
                                   1225 ;	main.c:174: RCAP2L = 0x00;
      00237F 75 CA 00         [24] 1226 	mov	_RCAP2L,#0x00
                                   1227 ;	main.c:175: RCAP2H = 0x00;
      002382 75 CB 00         [24] 1228 	mov	_RCAP2H,#0x00
                                   1229 ;	main.c:177: TL2 = RCAP2L;
      002385 85 CA CC         [24] 1230 	mov	_TL2,_RCAP2L
                                   1231 ;	main.c:178: TH2 = RCAP2H;
      002388 85 CB CD         [24] 1232 	mov	_TH2,_RCAP2H
                                   1233 ;	main.c:179: TR2 = 1;
                                   1234 ;	assignBit
      00238B D2 CA            [12] 1235 	setb	_TR2
                                   1236 ;	main.c:180: }
      00238D 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'timer2_interrupt_Init'
                                   1240 ;------------------------------------------------------------
                                   1241 ;	main.c:181: void timer2_interrupt_Init(){
                                   1242 ;	-----------------------------------------
                                   1243 ;	 function timer2_interrupt_Init
                                   1244 ;	-----------------------------------------
      00238E                       1245 _timer2_interrupt_Init:
                                   1246 ;	main.c:182: timer2_init();
      00238E 12 23 7C         [24] 1247 	lcall	_timer2_init
                                   1248 ;	main.c:183: ET2 = 1;
                                   1249 ;	assignBit
      002391 D2 AD            [12] 1250 	setb	_ET2
                                   1251 ;	main.c:184: EA = 1;
                                   1252 ;	assignBit
      002393 D2 AF            [12] 1253 	setb	_EA
                                   1254 ;	main.c:185: }
      002395 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'isr_timer2'
                                   1258 ;------------------------------------------------------------
                                   1259 ;	main.c:187: void isr_timer2(void) __interrupt (5)
                                   1260 ;	-----------------------------------------
                                   1261 ;	 function isr_timer2
                                   1262 ;	-----------------------------------------
      002396                       1263 _isr_timer2:
      002396 C0 E0            [24] 1264 	push	acc
      002398 C0 07            [24] 1265 	push	ar7
      00239A C0 06            [24] 1266 	push	ar6
      00239C C0 D0            [24] 1267 	push	psw
      00239E 75 D0 00         [24] 1268 	mov	psw,#0x00
                                   1269 ;	main.c:191: }
      0023A1 D2 01            [12] 1270 	setb	_isr_timer2_sloc0_1_0
      0023A3 10 AF 02         [24] 1271 	jbc	ea,00103$
      0023A6 C2 01            [12] 1272 	clr	_isr_timer2_sloc0_1_0
      0023A8                       1273 00103$:
                                   1274 ;	main.c:190: tick++;
      0023A8 AE 0A            [24] 1275 	mov	r6,_tick
      0023AA AF 0B            [24] 1276 	mov	r7,(_tick + 1)
      0023AC 74 01            [12] 1277 	mov	a,#0x01
      0023AE 2E               [12] 1278 	add	a,r6
      0023AF F5 0A            [12] 1279 	mov	_tick,a
      0023B1 E4               [12] 1280 	clr	a
      0023B2 3F               [12] 1281 	addc	a,r7
      0023B3 F5 0B            [12] 1282 	mov	(_tick + 1),a
      0023B5 A2 01            [12] 1283 	mov	c,_isr_timer2_sloc0_1_0
      0023B7 92 AF            [24] 1284 	mov	ea,c
                                   1285 ;	main.c:192: TF2 = 0;
                                   1286 ;	assignBit
      0023B9 C2 CF            [12] 1287 	clr	_TF2
                                   1288 ;	main.c:193: }
      0023BB D0 D0            [24] 1289 	pop	psw
      0023BD D0 06            [24] 1290 	pop	ar6
      0023BF D0 07            [24] 1291 	pop	ar7
      0023C1 D0 E0            [24] 1292 	pop	acc
      0023C3 32               [24] 1293 	reti
                                   1294 ;	eliminated unneeded push/pop dpl
                                   1295 ;	eliminated unneeded push/pop dph
                                   1296 ;	eliminated unneeded push/pop b
                                   1297 ;------------------------------------------------------------
                                   1298 ;Allocation info for local variables in function 'timer0_init'
                                   1299 ;------------------------------------------------------------
                                   1300 ;	main.c:195: void timer0_init(){
                                   1301 ;	-----------------------------------------
                                   1302 ;	 function timer0_init
                                   1303 ;	-----------------------------------------
      0023C4                       1304 _timer0_init:
                                   1305 ;	main.c:196: TMOD &= 0xF0;  // Clear the lower 4 bits of TMOD
      0023C4 53 89 F0         [24] 1306 	anl	_TMOD,#0xf0
                                   1307 ;	main.c:197: TMOD |= 0x01;  // Set timer0 in 16-bit mode
      0023C7 43 89 01         [24] 1308 	orl	_TMOD,#0x01
                                   1309 ;	main.c:200: TL0 = 0xFC;
      0023CA 75 8A FC         [24] 1310 	mov	_TL0,#0xfc
                                   1311 ;	main.c:201: TH0 = 0x4B;
      0023CD 75 8C 4B         [24] 1312 	mov	_TH0,#0x4b
                                   1313 ;	main.c:203: TR0 = 1;  // Start the timer
                                   1314 ;	assignBit
      0023D0 D2 8C            [12] 1315 	setb	_TR0
                                   1316 ;	main.c:204: }
      0023D2 22               [24] 1317 	ret
                                   1318 ;------------------------------------------------------------
                                   1319 ;Allocation info for local variables in function 'timer0_interrupt_Init'
                                   1320 ;------------------------------------------------------------
                                   1321 ;	main.c:205: void timer0_interrupt_Init(){
                                   1322 ;	-----------------------------------------
                                   1323 ;	 function timer0_interrupt_Init
                                   1324 ;	-----------------------------------------
      0023D3                       1325 _timer0_interrupt_Init:
                                   1326 ;	main.c:206: timer0_init();
      0023D3 12 23 C4         [24] 1327 	lcall	_timer0_init
                                   1328 ;	main.c:207: ET0 = 1;
                                   1329 ;	assignBit
      0023D6 D2 A9            [12] 1330 	setb	_ET0
                                   1331 ;	main.c:208: EA = 1;
                                   1332 ;	assignBit
      0023D8 D2 AF            [12] 1333 	setb	_EA
                                   1334 ;	main.c:209: }
      0023DA 22               [24] 1335 	ret
                                   1336 ;------------------------------------------------------------
                                   1337 ;Allocation info for local variables in function 'isr_timer0'
                                   1338 ;------------------------------------------------------------
                                   1339 ;	main.c:211: void isr_timer0(void) __interrupt (1)
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function isr_timer0
                                   1342 ;	-----------------------------------------
      0023DB                       1343 _isr_timer0:
      0023DB C0 E0            [24] 1344 	push	acc
      0023DD C0 07            [24] 1345 	push	ar7
      0023DF C0 06            [24] 1346 	push	ar6
      0023E1 C0 D0            [24] 1347 	push	psw
      0023E3 75 D0 00         [24] 1348 	mov	psw,#0x00
                                   1349 ;	main.c:215: }
      0023E6 D2 02            [12] 1350 	setb	_isr_timer0_sloc0_1_0
      0023E8 10 AF 02         [24] 1351 	jbc	ea,00103$
      0023EB C2 02            [12] 1352 	clr	_isr_timer0_sloc0_1_0
      0023ED                       1353 00103$:
                                   1354 ;	main.c:214: tick++;
      0023ED AE 0A            [24] 1355 	mov	r6,_tick
      0023EF AF 0B            [24] 1356 	mov	r7,(_tick + 1)
      0023F1 74 01            [12] 1357 	mov	a,#0x01
      0023F3 2E               [12] 1358 	add	a,r6
      0023F4 F5 0A            [12] 1359 	mov	_tick,a
      0023F6 E4               [12] 1360 	clr	a
      0023F7 3F               [12] 1361 	addc	a,r7
      0023F8 F5 0B            [12] 1362 	mov	(_tick + 1),a
      0023FA A2 02            [12] 1363 	mov	c,_isr_timer0_sloc0_1_0
      0023FC 92 AF            [24] 1364 	mov	ea,c
                                   1365 ;	main.c:216: TL0 = 0xFC;
      0023FE 75 8A FC         [24] 1366 	mov	_TL0,#0xfc
                                   1367 ;	main.c:217: TH0 = 0x4B;
      002401 75 8C 4B         [24] 1368 	mov	_TH0,#0x4b
                                   1369 ;	main.c:218: TF0 = 0;
                                   1370 ;	assignBit
      002404 C2 8D            [12] 1371 	clr	_TF0
                                   1372 ;	main.c:219: }
      002406 D0 D0            [24] 1373 	pop	psw
      002408 D0 06            [24] 1374 	pop	ar6
      00240A D0 07            [24] 1375 	pop	ar7
      00240C D0 E0            [24] 1376 	pop	acc
      00240E 32               [24] 1377 	reti
                                   1378 ;	eliminated unneeded push/pop dpl
                                   1379 ;	eliminated unneeded push/pop dph
                                   1380 ;	eliminated unneeded push/pop b
                                   1381 ;------------------------------------------------------------
                                   1382 ;Allocation info for local variables in function 'main'
                                   1383 ;------------------------------------------------------------
                                   1384 ;previous_time_noted       Allocated with name '_main_previous_time_noted_65536_82'
                                   1385 ;custom_char_code          Allocated to registers 
                                   1386 ;min_high                  Allocated with name '_main_min_high_65536_82'
                                   1387 ;min_low                   Allocated with name '_main_min_low_65536_82'
                                   1388 ;sec_high                  Allocated with name '_main_sec_high_65536_82'
                                   1389 ;sec_low                   Allocated with name '_main_sec_low_65536_82'
                                   1390 ;mili_sec                  Allocated with name '_main_mili_sec_65536_82'
                                   1391 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1392 ;------------------------------------------------------------
                                   1393 ;	main.c:221: void main(void)
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function main
                                   1396 ;	-----------------------------------------
      00240F                       1397 _main:
                                   1398 ;	main.c:223: unsigned int  previous_time_noted = tick;
      00240F 85 0A 15         [24] 1399 	mov	_main_previous_time_noted_65536_82,_tick
      002412 85 0B 16         [24] 1400 	mov	(_main_previous_time_noted_65536_82 + 1),(_tick + 1)
                                   1401 ;	main.c:225: uint8_t min_high = '0';
      002415 75 17 30         [24] 1402 	mov	_main_min_high_65536_82,#0x30
                                   1403 ;	main.c:226: uint8_t min_low = '0';
      002418 75 18 30         [24] 1404 	mov	_main_min_low_65536_82,#0x30
                                   1405 ;	main.c:227: uint8_t sec_high = '0';
      00241B 75 19 30         [24] 1406 	mov	_main_sec_high_65536_82,#0x30
                                   1407 ;	main.c:228: uint8_t sec_low = '0';
      00241E 75 1A 30         [24] 1408 	mov	_main_sec_low_65536_82,#0x30
                                   1409 ;	main.c:229: uint8_t mili_sec = '0';
      002421 75 1B 30         [24] 1410 	mov	_main_mili_sec_65536_82,#0x30
                                   1411 ;	main.c:230: lcdinit();
      002424 12 22 00         [24] 1412 	lcall	_lcdinit
                                   1413 ;	main.c:231: test_functionality();
      002427 12 22 B9         [24] 1414 	lcall	_test_functionality
                                   1415 ;	main.c:232: create_custom_character(custom_char_code);
      00242A 75 82 01         [24] 1416 	mov	dpl,#0x01
      00242D 12 23 1E         [24] 1417 	lcall	_create_custom_character
                                   1418 ;	main.c:233: lcdgotoaddr(0x0F);
      002430 75 82 0F         [24] 1419 	mov	dpl,#0x0f
      002433 12 20 EA         [24] 1420 	lcall	_lcdgotoaddr
                                   1421 ;	main.c:234: lcdputch(custom_char_code);
      002436 75 82 01         [24] 1422 	mov	dpl,#0x01
      002439 12 21 4A         [24] 1423 	lcall	_lcdputch
                                   1424 ;	main.c:235: timer2_interrupt_Init();
      00243C 12 23 8E         [24] 1425 	lcall	_timer2_interrupt_Init
                                   1426 ;	main.c:238: lcdgotoaddr(0x59);
      00243F 75 82 59         [24] 1427 	mov	dpl,#0x59
      002442 12 20 EA         [24] 1428 	lcall	_lcdgotoaddr
                                   1429 ;	main.c:239: lcdputch(min_high);
      002445 75 82 30         [24] 1430 	mov	dpl,#0x30
      002448 12 21 4A         [24] 1431 	lcall	_lcdputch
                                   1432 ;	main.c:240: lcdputch(min_low);
      00244B 75 82 30         [24] 1433 	mov	dpl,#0x30
      00244E 12 21 4A         [24] 1434 	lcall	_lcdputch
                                   1435 ;	main.c:241: lcdputch(':');
      002451 75 82 3A         [24] 1436 	mov	dpl,#0x3a
      002454 12 21 4A         [24] 1437 	lcall	_lcdputch
                                   1438 ;	main.c:242: lcdputch(sec_high);
      002457 75 82 30         [24] 1439 	mov	dpl,#0x30
      00245A 12 21 4A         [24] 1440 	lcall	_lcdputch
                                   1441 ;	main.c:243: lcdputch(sec_low);
      00245D 75 82 30         [24] 1442 	mov	dpl,#0x30
      002460 12 21 4A         [24] 1443 	lcall	_lcdputch
                                   1444 ;	main.c:244: lcdputch('.');
      002463 75 82 2E         [24] 1445 	mov	dpl,#0x2e
      002466 12 21 4A         [24] 1446 	lcall	_lcdputch
                                   1447 ;	main.c:245: lcdputch(mili_sec);
      002469 75 82 30         [24] 1448 	mov	dpl,#0x30
      00246C 12 21 4A         [24] 1449 	lcall	_lcdputch
                                   1450 ;	main.c:246: while(1){
      00246F                       1451 00115$:
                                   1452 ;	main.c:247: if(((tick % 2) == 0) && (tick > previous_time_noted)){
      00246F E5 0A            [12] 1453 	mov	a,_tick
      002471 20 E0 FB         [24] 1454 	jb	acc.0,00115$
      002474 C3               [12] 1455 	clr	c
      002475 E5 15            [12] 1456 	mov	a,_main_previous_time_noted_65536_82
      002477 95 0A            [12] 1457 	subb	a,_tick
      002479 E5 16            [12] 1458 	mov	a,(_main_previous_time_noted_65536_82 + 1)
      00247B 95 0B            [12] 1459 	subb	a,(_tick + 1)
      00247D 50 F0            [24] 1460 	jnc	00115$
                                   1461 ;	main.c:248: printf("Tick->>>>>>>>>%d\n\r",tick);
      00247F C0 0A            [24] 1462 	push	_tick
      002481 C0 0B            [24] 1463 	push	(_tick + 1)
      002483 74 C3            [12] 1464 	mov	a,#___str_5
      002485 C0 E0            [24] 1465 	push	acc
      002487 74 2F            [12] 1466 	mov	a,#(___str_5 >> 8)
      002489 C0 E0            [24] 1467 	push	acc
      00248B 74 80            [12] 1468 	mov	a,#0x80
      00248D C0 E0            [24] 1469 	push	acc
      00248F 12 27 96         [24] 1470 	lcall	_printf
      002492 E5 81            [12] 1471 	mov	a,sp
      002494 24 FB            [12] 1472 	add	a,#0xfb
      002496 F5 81            [12] 1473 	mov	sp,a
                                   1474 ;	main.c:249: previous_time_noted = tick;
      002498 85 0A 15         [24] 1475 	mov	_main_previous_time_noted_65536_82,_tick
      00249B 85 0B 16         [24] 1476 	mov	(_main_previous_time_noted_65536_82 + 1),(_tick + 1)
                                   1477 ;	main.c:250: mili_sec++;
      00249E 05 1B            [12] 1478 	inc	_main_mili_sec_65536_82
                                   1479 ;	main.c:251: if(mili_sec > '9'){
      0024A0 E5 1B            [12] 1480 	mov	a,_main_mili_sec_65536_82
      0024A2 24 C6            [12] 1481 	add	a,#0xff - 0x39
      0024A4 50 1D            [24] 1482 	jnc	00102$
                                   1483 ;	main.c:252: mili_sec = '0';
      0024A6 75 1B 30         [24] 1484 	mov	_main_mili_sec_65536_82,#0x30
                                   1485 ;	main.c:253: lcdgotoaddr(0x5F);
      0024A9 75 82 5F         [24] 1486 	mov	dpl,#0x5f
      0024AC 12 20 EA         [24] 1487 	lcall	_lcdgotoaddr
                                   1488 ;	main.c:254: lcdputch(mili_sec);
      0024AF 75 82 30         [24] 1489 	mov	dpl,#0x30
      0024B2 12 21 4A         [24] 1490 	lcall	_lcdputch
                                   1491 ;	main.c:255: sec_low++;
      0024B5 05 1A            [12] 1492 	inc	_main_sec_low_65536_82
                                   1493 ;	main.c:256: lcdgotoaddr(0x5D);
      0024B7 75 82 5D         [24] 1494 	mov	dpl,#0x5d
      0024BA 12 20 EA         [24] 1495 	lcall	_lcdgotoaddr
                                   1496 ;	main.c:257: lcdputch(sec_low);
      0024BD 85 1A 82         [24] 1497 	mov	dpl,_main_sec_low_65536_82
      0024C0 12 21 4A         [24] 1498 	lcall	_lcdputch
      0024C3                       1499 00102$:
                                   1500 ;	main.c:259: if(sec_low > '9'){
      0024C3 E5 1A            [12] 1501 	mov	a,_main_sec_low_65536_82
      0024C5 24 C6            [12] 1502 	add	a,#0xff - 0x39
      0024C7 50 1D            [24] 1503 	jnc	00104$
                                   1504 ;	main.c:260: sec_low = '0';
      0024C9 75 1A 30         [24] 1505 	mov	_main_sec_low_65536_82,#0x30
                                   1506 ;	main.c:261: lcdgotoaddr(0x5D);
      0024CC 75 82 5D         [24] 1507 	mov	dpl,#0x5d
      0024CF 12 20 EA         [24] 1508 	lcall	_lcdgotoaddr
                                   1509 ;	main.c:262: lcdputch(sec_low);
      0024D2 75 82 30         [24] 1510 	mov	dpl,#0x30
      0024D5 12 21 4A         [24] 1511 	lcall	_lcdputch
                                   1512 ;	main.c:263: sec_high++;
      0024D8 05 19            [12] 1513 	inc	_main_sec_high_65536_82
                                   1514 ;	main.c:264: lcdgotoaddr(0x5C);
      0024DA 75 82 5C         [24] 1515 	mov	dpl,#0x5c
      0024DD 12 20 EA         [24] 1516 	lcall	_lcdgotoaddr
                                   1517 ;	main.c:265: lcdputch(sec_high);
      0024E0 85 19 82         [24] 1518 	mov	dpl,_main_sec_high_65536_82
      0024E3 12 21 4A         [24] 1519 	lcall	_lcdputch
      0024E6                       1520 00104$:
                                   1521 ;	main.c:267: if(sec_high > '5'){
      0024E6 E5 19            [12] 1522 	mov	a,_main_sec_high_65536_82
      0024E8 24 CA            [12] 1523 	add	a,#0xff - 0x35
      0024EA 50 1D            [24] 1524 	jnc	00106$
                                   1525 ;	main.c:268: sec_high = '0';
      0024EC 75 19 30         [24] 1526 	mov	_main_sec_high_65536_82,#0x30
                                   1527 ;	main.c:269: lcdgotoaddr(0x5C);
      0024EF 75 82 5C         [24] 1528 	mov	dpl,#0x5c
      0024F2 12 20 EA         [24] 1529 	lcall	_lcdgotoaddr
                                   1530 ;	main.c:270: lcdputch(sec_high);
      0024F5 75 82 30         [24] 1531 	mov	dpl,#0x30
      0024F8 12 21 4A         [24] 1532 	lcall	_lcdputch
                                   1533 ;	main.c:271: min_low++;
      0024FB 05 18            [12] 1534 	inc	_main_min_low_65536_82
                                   1535 ;	main.c:272: lcdgotoaddr(0x5A);
      0024FD 75 82 5A         [24] 1536 	mov	dpl,#0x5a
      002500 12 20 EA         [24] 1537 	lcall	_lcdgotoaddr
                                   1538 ;	main.c:273: lcdputch(min_low);
      002503 85 18 82         [24] 1539 	mov	dpl,_main_min_low_65536_82
      002506 12 21 4A         [24] 1540 	lcall	_lcdputch
      002509                       1541 00106$:
                                   1542 ;	main.c:275: if(min_low > '9'){
      002509 E5 18            [12] 1543 	mov	a,_main_min_low_65536_82
      00250B 24 C6            [12] 1544 	add	a,#0xff - 0x39
      00250D 50 1D            [24] 1545 	jnc	00108$
                                   1546 ;	main.c:276: min_low = '0';
      00250F 75 18 30         [24] 1547 	mov	_main_min_low_65536_82,#0x30
                                   1548 ;	main.c:277: lcdgotoaddr(0x5A);
      002512 75 82 5A         [24] 1549 	mov	dpl,#0x5a
      002515 12 20 EA         [24] 1550 	lcall	_lcdgotoaddr
                                   1551 ;	main.c:278: lcdputch(min_low);
      002518 75 82 30         [24] 1552 	mov	dpl,#0x30
      00251B 12 21 4A         [24] 1553 	lcall	_lcdputch
                                   1554 ;	main.c:279: min_high++;
      00251E 05 17            [12] 1555 	inc	_main_min_high_65536_82
                                   1556 ;	main.c:280: lcdgotoaddr(0x59);
      002520 75 82 59         [24] 1557 	mov	dpl,#0x59
      002523 12 20 EA         [24] 1558 	lcall	_lcdgotoaddr
                                   1559 ;	main.c:281: lcdputch(min_high);
      002526 85 17 82         [24] 1560 	mov	dpl,_main_min_high_65536_82
      002529 12 21 4A         [24] 1561 	lcall	_lcdputch
      00252C                       1562 00108$:
                                   1563 ;	main.c:283: if(min_high > '5'){
      00252C E5 17            [12] 1564 	mov	a,_main_min_high_65536_82
      00252E 24 CA            [12] 1565 	add	a,#0xff - 0x35
      002530 50 0F            [24] 1566 	jnc	00110$
                                   1567 ;	main.c:284: min_high = '0';
      002532 75 17 30         [24] 1568 	mov	_main_min_high_65536_82,#0x30
                                   1569 ;	main.c:285: lcdgotoaddr(0x59);
      002535 75 82 59         [24] 1570 	mov	dpl,#0x59
      002538 12 20 EA         [24] 1571 	lcall	_lcdgotoaddr
                                   1572 ;	main.c:286: lcdputch(min_high);
      00253B 75 82 30         [24] 1573 	mov	dpl,#0x30
      00253E 12 21 4A         [24] 1574 	lcall	_lcdputch
      002541                       1575 00110$:
                                   1576 ;	main.c:288: printf("%c%c:%c%c.%c\n\r",min_high,min_low,sec_high,sec_low,mili_sec);
      002541 A8 1B            [24] 1577 	mov	r0,_main_mili_sec_65536_82
      002543 7F 00            [12] 1578 	mov	r7,#0x00
      002545 A9 1A            [24] 1579 	mov	r1,_main_sec_low_65536_82
      002547 7E 00            [12] 1580 	mov	r6,#0x00
      002549 AA 19            [24] 1581 	mov	r2,_main_sec_high_65536_82
      00254B 7B 00            [12] 1582 	mov	r3,#0x00
      00254D 85 18 1C         [24] 1583 	mov	_main_sloc0_1_0,_main_min_low_65536_82
                                   1584 ;	1-genFromRTrack replaced	mov	(_main_sloc0_1_0 + 1),#0x00
      002550 8F 1D            [24] 1585 	mov	(_main_sloc0_1_0 + 1),r7
      002552 AC 17            [24] 1586 	mov	r4,_main_min_high_65536_82
      002554 7D 00            [12] 1587 	mov	r5,#0x00
      002556 C0 00            [24] 1588 	push	ar0
      002558 C0 07            [24] 1589 	push	ar7
      00255A C0 01            [24] 1590 	push	ar1
      00255C C0 06            [24] 1591 	push	ar6
      00255E C0 02            [24] 1592 	push	ar2
      002560 C0 03            [24] 1593 	push	ar3
      002562 C0 1C            [24] 1594 	push	_main_sloc0_1_0
      002564 C0 1D            [24] 1595 	push	(_main_sloc0_1_0 + 1)
      002566 C0 04            [24] 1596 	push	ar4
      002568 C0 05            [24] 1597 	push	ar5
      00256A 74 D6            [12] 1598 	mov	a,#___str_6
      00256C C0 E0            [24] 1599 	push	acc
      00256E 74 2F            [12] 1600 	mov	a,#(___str_6 >> 8)
      002570 C0 E0            [24] 1601 	push	acc
      002572 74 80            [12] 1602 	mov	a,#0x80
      002574 C0 E0            [24] 1603 	push	acc
      002576 12 27 96         [24] 1604 	lcall	_printf
      002579 E5 81            [12] 1605 	mov	a,sp
      00257B 24 F3            [12] 1606 	add	a,#0xf3
      00257D F5 81            [12] 1607 	mov	sp,a
                                   1608 ;	main.c:289: lcdgotoaddr(0x5F);
      00257F 75 82 5F         [24] 1609 	mov	dpl,#0x5f
      002582 12 20 EA         [24] 1610 	lcall	_lcdgotoaddr
                                   1611 ;	main.c:290: lcdputch(mili_sec);
      002585 85 1B 82         [24] 1612 	mov	dpl,_main_mili_sec_65536_82
      002588 12 21 4A         [24] 1613 	lcall	_lcdputch
                                   1614 ;	main.c:293: }
      00258B 02 24 6F         [24] 1615 	ljmp	00115$
                                   1616 	.area CSEG    (CODE)
                                   1617 	.area CONST   (CODE)
                                   1618 	.area CONST   (CODE)
      002F2C                       1619 ___str_0:
      002F2C 6C 63 64 20 69 6E 69  1620 	.ascii "lcd init start"
             74 20 73 74 61 72 74
      002F3A 0A                    1621 	.db 0x0a
      002F3B 0D                    1622 	.db 0x0d
      002F3C 00                    1623 	.db 0x00
                                   1624 	.area CSEG    (CODE)
                                   1625 	.area CONST   (CODE)
      002F3D                       1626 ___str_1:
      002F3D 6C 63 64 20 69 6E 69  1627 	.ascii "lcd init end"
             74 20 65 6E 64
      002F49 0A                    1628 	.db 0x0a
      002F4A 0D                    1629 	.db 0x0d
      002F4B 00                    1630 	.db 0x00
                                   1631 	.area CSEG    (CODE)
                                   1632 	.area CONST   (CODE)
      002F4C                       1633 ___str_2:
      002F4C 74 65 73 74 5F 66 75  1634 	.ascii "test_functionality start"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 73 74
             61 72 74
      002F64 0A                    1635 	.db 0x0a
      002F65 0D                    1636 	.db 0x0d
      002F66 00                    1637 	.db 0x00
                                   1638 	.area CSEG    (CODE)
                                   1639 	.area CONST   (CODE)
      002F67                       1640 ___str_3:
      002F67 41 42 43 44 45 46 47  1641 	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxy"
             48 49 4A 4B 4C 4D 4E
             4F 50 51 52 53 54 55
             56 57 58 59 5A 31 32
             33 34 35 36 37 38 39
             61 62 63 64 65 66 67
             68 69 6A 6B 6C 6D 6E
             6F 70 71 72 73 74 75
             76 77 78 79
      002FA3 7A 4A 49 54 48 55     1642 	.ascii "zJITHU"
      002FA9 00                    1643 	.db 0x00
                                   1644 	.area CSEG    (CODE)
                                   1645 	.area CONST   (CODE)
      002FAA                       1646 ___str_4:
      002FAA 74 65 73 74 5F 66 75  1647 	.ascii "test_functionality end"
             6E 63 74 69 6F 6E 61
             6C 69 74 79 20 65 6E
             64
      002FC0 0A                    1648 	.db 0x0a
      002FC1 0D                    1649 	.db 0x0d
      002FC2 00                    1650 	.db 0x00
                                   1651 	.area CSEG    (CODE)
                                   1652 	.area CONST   (CODE)
      002FC3                       1653 ___str_5:
      002FC3 54 69 63 6B 2D 3E 3E  1654 	.ascii "Tick->>>>>>>>>%d"
             3E 3E 3E 3E 3E 3E 3E
             25 64
      002FD3 0A                    1655 	.db 0x0a
      002FD4 0D                    1656 	.db 0x0d
      002FD5 00                    1657 	.db 0x00
                                   1658 	.area CSEG    (CODE)
                                   1659 	.area CONST   (CODE)
      002FD6                       1660 ___str_6:
      002FD6 25 63 25 63 3A 25 63  1661 	.ascii "%c%c:%c%c.%c"
             25 63 2E 25 63
      002FE2 0A                    1662 	.db 0x0a
      002FE3 0D                    1663 	.db 0x0d
      002FE4 00                    1664 	.db 0x00
                                   1665 	.area CSEG    (CODE)
                                   1666 	.area XINIT   (CODE)
      002FF0                       1667 __xinit__db:
      002FF0 00                    1668 	.db #0x00	; 0
                                   1669 	.area CABS    (ABS,CODE)
