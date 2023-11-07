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
                                     11 	.globl ___sdcc_heap_size
                                     12 	.globl _main
                                     13 	.globl _user_input_reset_handle
                                     14 	.globl _user_input_hex_dump_handle
                                     15 	.globl _user_input_read_handle
                                     16 	.globl _user_input_write_handle
                                     17 	.globl _get_hex_value
                                     18 	.globl __sdcc_external_startup
                                     19 	.globl _echo
                                     20 	.globl _menu
                                     21 	.globl _eeprom_reset
                                     22 	.globl _Byte_Read
                                     23 	.globl _Byte_Write
                                     24 	.globl _delay
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
                                    235 	.globl ___sdcc_heap
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           0000C8   241 _T2CON	=	0x00c8
                           0000CA   242 _RCAP2L	=	0x00ca
                           0000CB   243 _RCAP2H	=	0x00cb
                           0000CC   244 _TL2	=	0x00cc
                           0000CD   245 _TH2	=	0x00cd
                           00008E   246 _AUXR	=	0x008e
                           0000A2   247 _AUXR1	=	0x00a2
                           000097   248 _CKRL	=	0x0097
                           00008F   249 _CKCON0	=	0x008f
                           0000AF   250 _CKCON1	=	0x00af
                           0000FA   251 _CCAP0H	=	0x00fa
                           0000FB   252 _CCAP1H	=	0x00fb
                           0000FC   253 _CCAP2H	=	0x00fc
                           0000FD   254 _CCAP3H	=	0x00fd
                           0000FE   255 _CCAP4H	=	0x00fe
                           0000EA   256 _CCAP0L	=	0x00ea
                           0000EB   257 _CCAP1L	=	0x00eb
                           0000EC   258 _CCAP2L	=	0x00ec
                           0000ED   259 _CCAP3L	=	0x00ed
                           0000EE   260 _CCAP4L	=	0x00ee
                           0000DA   261 _CCAPM0	=	0x00da
                           0000DB   262 _CCAPM1	=	0x00db
                           0000DC   263 _CCAPM2	=	0x00dc
                           0000DD   264 _CCAPM3	=	0x00dd
                           0000DE   265 _CCAPM4	=	0x00de
                           0000D8   266 _CCON	=	0x00d8
                           0000F9   267 _CH	=	0x00f9
                           0000E9   268 _CL	=	0x00e9
                           0000D9   269 _CMOD	=	0x00d9
                           0000A8   270 _IEN0	=	0x00a8
                           0000B1   271 _IEN1	=	0x00b1
                           0000B8   272 _IPL0	=	0x00b8
                           0000B7   273 _IPH0	=	0x00b7
                           0000B2   274 _IPL1	=	0x00b2
                           0000B3   275 _IPH1	=	0x00b3
                           0000C0   276 _P4	=	0x00c0
                           0000E8   277 _P5	=	0x00e8
                           0000A6   278 _WDTRST	=	0x00a6
                           0000A7   279 _WDTPRG	=	0x00a7
                           0000A9   280 _SADDR	=	0x00a9
                           0000B9   281 _SADEN	=	0x00b9
                           0000C3   282 _SPCON	=	0x00c3
                           0000C4   283 _SPSTA	=	0x00c4
                           0000C5   284 _SPDAT	=	0x00c5
                           0000C9   285 _T2MOD	=	0x00c9
                           00009B   286 _BDRCON	=	0x009b
                           00009A   287 _BRL	=	0x009a
                           00009C   288 _KBLS	=	0x009c
                           00009D   289 _KBE	=	0x009d
                           00009E   290 _KBF	=	0x009e
                           0000D2   291 _EECON	=	0x00d2
                           0000E0   292 _ACC	=	0x00e0
                           0000F0   293 _B	=	0x00f0
                           000083   294 _DPH	=	0x0083
                           000083   295 _DP0H	=	0x0083
                           000082   296 _DPL	=	0x0082
                           000082   297 _DP0L	=	0x0082
                           0000A8   298 _IE	=	0x00a8
                           0000B8   299 _IP	=	0x00b8
                           000080   300 _P0	=	0x0080
                           000090   301 _P1	=	0x0090
                           0000A0   302 _P2	=	0x00a0
                           0000B0   303 _P3	=	0x00b0
                           000087   304 _PCON	=	0x0087
                           0000D0   305 _PSW	=	0x00d0
                           000099   306 _SBUF	=	0x0099
                           000099   307 _SBUF0	=	0x0099
                           000098   308 _SCON	=	0x0098
                           000081   309 _SP	=	0x0081
                           000088   310 _TCON	=	0x0088
                           00008C   311 _TH0	=	0x008c
                           00008D   312 _TH1	=	0x008d
                           00008A   313 _TL0	=	0x008a
                           00008B   314 _TL1	=	0x008b
                           000089   315 _TMOD	=	0x0089
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           0000AD   321 _ET2	=	0x00ad
                           0000BD   322 _PT2	=	0x00bd
                           0000C8   323 _T2CON_0	=	0x00c8
                           0000C9   324 _T2CON_1	=	0x00c9
                           0000CA   325 _T2CON_2	=	0x00ca
                           0000CB   326 _T2CON_3	=	0x00cb
                           0000CC   327 _T2CON_4	=	0x00cc
                           0000CD   328 _T2CON_5	=	0x00cd
                           0000CE   329 _T2CON_6	=	0x00ce
                           0000CF   330 _T2CON_7	=	0x00cf
                           0000C8   331 _CP_RL2	=	0x00c8
                           0000C9   332 _C_T2	=	0x00c9
                           0000CA   333 _TR2	=	0x00ca
                           0000CB   334 _EXEN2	=	0x00cb
                           0000CC   335 _TCLK	=	0x00cc
                           0000CD   336 _RCLK	=	0x00cd
                           0000CE   337 _EXF2	=	0x00ce
                           0000CF   338 _TF2	=	0x00cf
                           0000DF   339 _CF	=	0x00df
                           0000DE   340 _CR	=	0x00de
                           0000DC   341 _CCF4	=	0x00dc
                           0000DB   342 _CCF3	=	0x00db
                           0000DA   343 _CCF2	=	0x00da
                           0000D9   344 _CCF1	=	0x00d9
                           0000D8   345 _CCF0	=	0x00d8
                           0000AE   346 _EC	=	0x00ae
                           0000BE   347 _PPCL	=	0x00be
                           0000BD   348 _PT2L	=	0x00bd
                           0000BC   349 _PSL	=	0x00bc
                           0000BB   350 _PT1L	=	0x00bb
                           0000BA   351 _PX1L	=	0x00ba
                           0000B9   352 _PT0L	=	0x00b9
                           0000B8   353 _PX0L	=	0x00b8
                           0000C0   354 _P4_0	=	0x00c0
                           0000C1   355 _P4_1	=	0x00c1
                           0000C2   356 _P4_2	=	0x00c2
                           0000C3   357 _P4_3	=	0x00c3
                           0000C4   358 _P4_4	=	0x00c4
                           0000C5   359 _P4_5	=	0x00c5
                           0000C6   360 _P4_6	=	0x00c6
                           0000C7   361 _P4_7	=	0x00c7
                           0000E8   362 _P5_0	=	0x00e8
                           0000E9   363 _P5_1	=	0x00e9
                           0000EA   364 _P5_2	=	0x00ea
                           0000EB   365 _P5_3	=	0x00eb
                           0000EC   366 _P5_4	=	0x00ec
                           0000ED   367 _P5_5	=	0x00ed
                           0000EE   368 _P5_6	=	0x00ee
                           0000EF   369 _P5_7	=	0x00ef
                           0000F0   370 _BREG_F0	=	0x00f0
                           0000F1   371 _BREG_F1	=	0x00f1
                           0000F2   372 _BREG_F2	=	0x00f2
                           0000F3   373 _BREG_F3	=	0x00f3
                           0000F4   374 _BREG_F4	=	0x00f4
                           0000F5   375 _BREG_F5	=	0x00f5
                           0000F6   376 _BREG_F6	=	0x00f6
                           0000F7   377 _BREG_F7	=	0x00f7
                           0000A8   378 _EX0	=	0x00a8
                           0000A9   379 _ET0	=	0x00a9
                           0000AA   380 _EX1	=	0x00aa
                           0000AB   381 _ET1	=	0x00ab
                           0000AC   382 _ES	=	0x00ac
                           0000AF   383 _EA	=	0x00af
                           0000B8   384 _PX0	=	0x00b8
                           0000B9   385 _PT0	=	0x00b9
                           0000BA   386 _PX1	=	0x00ba
                           0000BB   387 _PT1	=	0x00bb
                           0000BC   388 _PS	=	0x00bc
                           000080   389 _P0_0	=	0x0080
                           000081   390 _P0_1	=	0x0081
                           000082   391 _P0_2	=	0x0082
                           000083   392 _P0_3	=	0x0083
                           000084   393 _P0_4	=	0x0084
                           000085   394 _P0_5	=	0x0085
                           000086   395 _P0_6	=	0x0086
                           000087   396 _P0_7	=	0x0087
                           000090   397 _P1_0	=	0x0090
                           000091   398 _P1_1	=	0x0091
                           000092   399 _P1_2	=	0x0092
                           000093   400 _P1_3	=	0x0093
                           000094   401 _P1_4	=	0x0094
                           000095   402 _P1_5	=	0x0095
                           000096   403 _P1_6	=	0x0096
                           000097   404 _P1_7	=	0x0097
                           0000A0   405 _P2_0	=	0x00a0
                           0000A1   406 _P2_1	=	0x00a1
                           0000A2   407 _P2_2	=	0x00a2
                           0000A3   408 _P2_3	=	0x00a3
                           0000A4   409 _P2_4	=	0x00a4
                           0000A5   410 _P2_5	=	0x00a5
                           0000A6   411 _P2_6	=	0x00a6
                           0000A7   412 _P2_7	=	0x00a7
                           0000B0   413 _P3_0	=	0x00b0
                           0000B1   414 _P3_1	=	0x00b1
                           0000B2   415 _P3_2	=	0x00b2
                           0000B3   416 _P3_3	=	0x00b3
                           0000B4   417 _P3_4	=	0x00b4
                           0000B5   418 _P3_5	=	0x00b5
                           0000B6   419 _P3_6	=	0x00b6
                           0000B7   420 _P3_7	=	0x00b7
                           0000B0   421 _RXD	=	0x00b0
                           0000B0   422 _RXD0	=	0x00b0
                           0000B1   423 _TXD	=	0x00b1
                           0000B1   424 _TXD0	=	0x00b1
                           0000B2   425 _INT0	=	0x00b2
                           0000B3   426 _INT1	=	0x00b3
                           0000B4   427 _T0	=	0x00b4
                           0000B5   428 _T1	=	0x00b5
                           0000B6   429 _WR	=	0x00b6
                           0000B7   430 _RD	=	0x00b7
                           0000D0   431 _P	=	0x00d0
                           0000D1   432 _F1	=	0x00d1
                           0000D2   433 _OV	=	0x00d2
                           0000D3   434 _RS0	=	0x00d3
                           0000D4   435 _RS1	=	0x00d4
                           0000D5   436 _F0	=	0x00d5
                           0000D6   437 _AC	=	0x00d6
                           0000D7   438 _CY	=	0x00d7
                           000098   439 _RI	=	0x0098
                           000099   440 _TI	=	0x0099
                           00009A   441 _RB8	=	0x009a
                           00009B   442 _TB8	=	0x009b
                           00009C   443 _REN	=	0x009c
                           00009D   444 _SM2	=	0x009d
                           00009E   445 _SM1	=	0x009e
                           00009F   446 _SM0	=	0x009f
                           000088   447 _IT0	=	0x0088
                           000089   448 _IE0	=	0x0089
                           00008A   449 _IT1	=	0x008a
                           00008B   450 _IE1	=	0x008b
                           00008C   451 _TR0	=	0x008c
                           00008D   452 _TF0	=	0x008d
                           00008E   453 _TR1	=	0x008e
                           00008F   454 _TF1	=	0x008f
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable register banks
                                    457 ;--------------------------------------------------------
                                    458 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        459 	.ds 8
                                    460 ;--------------------------------------------------------
                                    461 ; internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area DSEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable items in internal ram
                                    466 ;--------------------------------------------------------
                                    467 ;--------------------------------------------------------
                                    468 ; Stack segment in internal ram
                                    469 ;--------------------------------------------------------
                                    470 	.area	SSEG
      00000B                        471 __start__stack:
      00000B                        472 	.ds	1
                                    473 
                                    474 ;--------------------------------------------------------
                                    475 ; indirectly addressable internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area ISEG    (DATA)
                                    478 ;--------------------------------------------------------
                                    479 ; absolute internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area IABS    (ABS,DATA)
                                    482 	.area IABS    (ABS,DATA)
                                    483 ;--------------------------------------------------------
                                    484 ; bit data
                                    485 ;--------------------------------------------------------
                                    486 	.area BSEG    (BIT)
                                    487 ;--------------------------------------------------------
                                    488 ; paged external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area PSEG    (PAG,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XSEG    (XDATA)
      000005                        495 ___sdcc_heap::
      000005                        496 	.ds 5000
      00138D                        497 _get_hex_value_char_received_196608_50:
      00138D                        498 	.ds 1
                                    499 ;--------------------------------------------------------
                                    500 ; absolute external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XABS    (ABS,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external initialized ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XISEG   (XDATA)
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT0 (CODE)
                                    509 	.area GSINIT1 (CODE)
                                    510 	.area GSINIT2 (CODE)
                                    511 	.area GSINIT3 (CODE)
                                    512 	.area GSINIT4 (CODE)
                                    513 	.area GSINIT5 (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area CSEG    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; interrupt vector
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
      003000                        521 __interrupt_vect:
      003000 02 30 06         [24]  522 	ljmp	__sdcc_gsinit_startup
                                    523 ;--------------------------------------------------------
                                    524 ; global & static initialisations
                                    525 ;--------------------------------------------------------
                                    526 	.area HOME    (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.area GSFINAL (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.globl __sdcc_gsinit_startup
                                    531 	.globl __sdcc_program_startup
                                    532 	.globl __start__stack
                                    533 	.globl __mcs51_genXINIT
                                    534 	.globl __mcs51_genXRAMCLEAR
                                    535 	.globl __mcs51_genRAMCLEAR
                                    536 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  537 	ljmp	__sdcc_program_startup
                                    538 ;--------------------------------------------------------
                                    539 ; Home
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area HOME    (CODE)
      003003                        543 __sdcc_program_startup:
      003003 02 36 D9         [24]  544 	ljmp	_main
                                    545 ;	return from main will return to caller
                                    546 ;--------------------------------------------------------
                                    547 ; code
                                    548 ;--------------------------------------------------------
                                    549 	.area CSEG    (CODE)
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    552 ;------------------------------------------------------------
                                    553 ;	main.c:36: _sdcc_external_startup()
                                    554 ;	-----------------------------------------
                                    555 ;	 function _sdcc_external_startup
                                    556 ;	-----------------------------------------
      003424                        557 __sdcc_external_startup:
                           000007   558 	ar7 = 0x07
                           000006   559 	ar6 = 0x06
                           000005   560 	ar5 = 0x05
                           000004   561 	ar4 = 0x04
                           000003   562 	ar3 = 0x03
                           000002   563 	ar2 = 0x02
                           000001   564 	ar1 = 0x01
                           000000   565 	ar0 = 0x00
                                    566 ;	main.c:38: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      003424 43 8E 0C         [24]  567 	orl	_AUXR,#0x0c
                                    568 ;	main.c:40: return 0;               // Return 0 to indicate successful startup
      003427 90 00 00         [24]  569 	mov	dptr,#0x0000
                                    570 ;	main.c:41: }
      00342A 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'get_hex_value'
                                    574 ;------------------------------------------------------------
                                    575 ;value                     Allocated to registers r7 
                                    576 ;i                         Allocated to registers r5 r6 
                                    577 ;char_received             Allocated with name '_get_hex_value_char_received_196608_50'
                                    578 ;------------------------------------------------------------
                                    579 ;	main.c:43: __xdata uint8_t get_hex_value(){
                                    580 ;	-----------------------------------------
                                    581 ;	 function get_hex_value
                                    582 ;	-----------------------------------------
      00342B                        583 _get_hex_value:
                                    584 ;	main.c:44: int8_t value = 0;
      00342B 7F 00            [12]  585 	mov	r7,#0x00
                                    586 ;	main.c:45: printf_tiny("0x");
      00342D C0 07            [24]  587 	push	ar7
      00342F 74 EE            [12]  588 	mov	a,#___str_0
      003431 C0 E0            [24]  589 	push	acc
      003433 74 39            [12]  590 	mov	a,#(___str_0 >> 8)
      003435 C0 E0            [24]  591 	push	acc
      003437 12 38 44         [24]  592 	lcall	_printf_tiny
      00343A 15 81            [12]  593 	dec	sp
      00343C 15 81            [12]  594 	dec	sp
      00343E D0 07            [24]  595 	pop	ar7
                                    596 ;	main.c:46: for(int i = 0; i < 2; i++){
      003440 7D 00            [12]  597 	mov	r5,#0x00
      003442 7E 00            [12]  598 	mov	r6,#0x00
      003444                        599 00118$:
      003444 C3               [12]  600 	clr	c
      003445 ED               [12]  601 	mov	a,r5
      003446 94 02            [12]  602 	subb	a,#0x02
      003448 EE               [12]  603 	mov	a,r6
      003449 64 80            [12]  604 	xrl	a,#0x80
      00344B 94 80            [12]  605 	subb	a,#0x80
      00344D 40 03            [24]  606 	jc	00158$
      00344F 02 34 F8         [24]  607 	ljmp	00116$
      003452                        608 00158$:
                                    609 ;	main.c:47: __xdata uint8_t char_received = echo(); // Read a character from UART
      003452 C0 07            [24]  610 	push	ar7
      003454 C0 06            [24]  611 	push	ar6
      003456 C0 05            [24]  612 	push	ar5
      003458 12 38 2B         [24]  613 	lcall	_echo
      00345B AC 82            [24]  614 	mov	r4,dpl
      00345D D0 05            [24]  615 	pop	ar5
      00345F D0 06            [24]  616 	pop	ar6
      003461 D0 07            [24]  617 	pop	ar7
      003463 90 13 8D         [24]  618 	mov	dptr,#_get_hex_value_char_received_196608_50
      003466 EC               [12]  619 	mov	a,r4
      003467 F0               [24]  620 	movx	@dptr,a
                                    621 ;	main.c:48: if((char_received >= '0') && (char_received <= '9')){
      003468 8C 03            [24]  622 	mov	ar3,r4
      00346A BB 30 00         [24]  623 	cjne	r3,#0x30,00159$
      00346D                        624 00159$:
      00346D 40 10            [24]  625 	jc	00113$
      00346F 8C 03            [24]  626 	mov	ar3,r4
      003471 EB               [12]  627 	mov	a,r3
      003472 24 C6            [12]  628 	add	a,#0xff - 0x39
      003474 40 09            [24]  629 	jc	00113$
                                    630 ;	main.c:49: char_received = char_received - '0'; // Convert ASCII character to its
      003476 EC               [12]  631 	mov	a,r4
      003477 24 D0            [12]  632 	add	a,#0xd0
      003479 90 13 8D         [24]  633 	mov	dptr,#_get_hex_value_char_received_196608_50
      00347C F0               [24]  634 	movx	@dptr,a
      00347D 80 52            [24]  635 	sjmp	00114$
      00347F                        636 00113$:
                                    637 ;	main.c:51: }else if((char_received >= 'A') && (char_received <= 'F')){
      00347F 90 13 8D         [24]  638 	mov	dptr,#_get_hex_value_char_received_196608_50
      003482 E0               [24]  639 	movx	a,@dptr
      003483 FC               [12]  640 	mov	r4,a
      003484 BC 41 00         [24]  641 	cjne	r4,#0x41,00162$
      003487                        642 00162$:
      003487 40 0E            [24]  643 	jc	00109$
      003489 EC               [12]  644 	mov	a,r4
      00348A 24 B9            [12]  645 	add	a,#0xff - 0x46
      00348C 40 09            [24]  646 	jc	00109$
                                    647 ;	main.c:52: char_received = char_received - 'A' + 10; // Convert ASCII character to its
      00348E 90 13 8D         [24]  648 	mov	dptr,#_get_hex_value_char_received_196608_50
      003491 74 C9            [12]  649 	mov	a,#0xc9
      003493 2C               [12]  650 	add	a,r4
      003494 F0               [24]  651 	movx	@dptr,a
      003495 80 3A            [24]  652 	sjmp	00114$
      003497                        653 00109$:
                                    654 ;	main.c:54: }else if((char_received >= 'a') && (char_received <= 'f')){
      003497 90 13 8D         [24]  655 	mov	dptr,#_get_hex_value_char_received_196608_50
      00349A E0               [24]  656 	movx	a,@dptr
      00349B FC               [12]  657 	mov	r4,a
      00349C BC 61 00         [24]  658 	cjne	r4,#0x61,00165$
      00349F                        659 00165$:
      00349F 40 0E            [24]  660 	jc	00105$
      0034A1 EC               [12]  661 	mov	a,r4
      0034A2 24 99            [12]  662 	add	a,#0xff - 0x66
      0034A4 40 09            [24]  663 	jc	00105$
                                    664 ;	main.c:55: char_received = char_received - 'a' + 10; // Convert ASCII character to its
      0034A6 90 13 8D         [24]  665 	mov	dptr,#_get_hex_value_char_received_196608_50
      0034A9 74 A9            [12]  666 	mov	a,#0xa9
      0034AB 2C               [12]  667 	add	a,r4
      0034AC F0               [24]  668 	movx	@dptr,a
      0034AD 80 22            [24]  669 	sjmp	00114$
      0034AF                        670 00105$:
                                    671 ;	main.c:57: }else if((char_received == '\n') || (char_received == '\r')){
      0034AF 90 13 8D         [24]  672 	mov	dptr,#_get_hex_value_char_received_196608_50
      0034B2 E0               [24]  673 	movx	a,@dptr
      0034B3 FC               [12]  674 	mov	r4,a
      0034B4 BC 0A 02         [24]  675 	cjne	r4,#0x0a,00168$
      0034B7 80 03            [24]  676 	sjmp	00101$
      0034B9                        677 00168$:
      0034B9 BC 0D 15         [24]  678 	cjne	r4,#0x0d,00114$
      0034BC                        679 00101$:
                                    680 ;	main.c:58: printf_tiny("\n\r");
      0034BC C0 07            [24]  681 	push	ar7
      0034BE 74 F1            [12]  682 	mov	a,#___str_1
      0034C0 C0 E0            [24]  683 	push	acc
      0034C2 74 39            [12]  684 	mov	a,#(___str_1 >> 8)
      0034C4 C0 E0            [24]  685 	push	acc
      0034C6 12 38 44         [24]  686 	lcall	_printf_tiny
      0034C9 15 81            [12]  687 	dec	sp
      0034CB 15 81            [12]  688 	dec	sp
      0034CD D0 07            [24]  689 	pop	ar7
                                    690 ;	main.c:59: break;
      0034CF 80 27            [24]  691 	sjmp	00116$
      0034D1                        692 00114$:
                                    693 ;	main.c:61: value |= char_received << ((1 - i) * 4);
      0034D1 8D 04            [24]  694 	mov	ar4,r5
      0034D3 74 01            [12]  695 	mov	a,#0x01
      0034D5 C3               [12]  696 	clr	c
      0034D6 9C               [12]  697 	subb	a,r4
      0034D7 25 E0            [12]  698 	add	a,acc
      0034D9 25 E0            [12]  699 	add	a,acc
      0034DB FC               [12]  700 	mov	r4,a
      0034DC 90 13 8D         [24]  701 	mov	dptr,#_get_hex_value_char_received_196608_50
      0034DF E0               [24]  702 	movx	a,@dptr
      0034E0 FB               [12]  703 	mov	r3,a
      0034E1 8C F0            [24]  704 	mov	b,r4
      0034E3 05 F0            [12]  705 	inc	b
      0034E5 EB               [12]  706 	mov	a,r3
      0034E6 80 02            [24]  707 	sjmp	00173$
      0034E8                        708 00171$:
      0034E8 25 E0            [12]  709 	add	a,acc
      0034EA                        710 00173$:
      0034EA D5 F0 FB         [24]  711 	djnz	b,00171$
      0034ED FC               [12]  712 	mov	r4,a
      0034EE 42 07            [12]  713 	orl	ar7,a
                                    714 ;	main.c:46: for(int i = 0; i < 2; i++){
      0034F0 0D               [12]  715 	inc	r5
      0034F1 BD 00 01         [24]  716 	cjne	r5,#0x00,00174$
      0034F4 0E               [12]  717 	inc	r6
      0034F5                        718 00174$:
      0034F5 02 34 44         [24]  719 	ljmp	00118$
      0034F8                        720 00116$:
                                    721 ;	main.c:63: printf_tiny("\n\r");
      0034F8 C0 07            [24]  722 	push	ar7
      0034FA 74 F1            [12]  723 	mov	a,#___str_1
      0034FC C0 E0            [24]  724 	push	acc
      0034FE 74 39            [12]  725 	mov	a,#(___str_1 >> 8)
      003500 C0 E0            [24]  726 	push	acc
      003502 12 38 44         [24]  727 	lcall	_printf_tiny
      003505 15 81            [12]  728 	dec	sp
      003507 15 81            [12]  729 	dec	sp
      003509 D0 07            [24]  730 	pop	ar7
                                    731 ;	main.c:64: return value;
      00350B 8F 82            [24]  732 	mov	dpl,r7
                                    733 ;	main.c:65: }
      00350D 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'user_input_write_handle'
                                    737 ;------------------------------------------------------------
                                    738 ;address                   Allocated with name '_user_input_write_handle_address_65536_55'
                                    739 ;data                      Allocated with name '_user_input_write_handle_data_65536_55'
                                    740 ;block                     Allocated with name '_user_input_write_handle_block_65536_55'
                                    741 ;------------------------------------------------------------
                                    742 ;	main.c:66: void user_input_write_handle(){
                                    743 ;	-----------------------------------------
                                    744 ;	 function user_input_write_handle
                                    745 ;	-----------------------------------------
      00350E                        746 _user_input_write_handle:
                                    747 ;	main.c:71: printf_tiny("Please enter address in hex format to store the data byte\n\r");
      00350E 74 F4            [12]  748 	mov	a,#___str_2
      003510 C0 E0            [24]  749 	push	acc
      003512 74 39            [12]  750 	mov	a,#(___str_2 >> 8)
      003514 C0 E0            [24]  751 	push	acc
      003516 12 38 44         [24]  752 	lcall	_printf_tiny
      003519 15 81            [12]  753 	dec	sp
      00351B 15 81            [12]  754 	dec	sp
                                    755 ;	main.c:72: address = get_hex_value();
      00351D 12 34 2B         [24]  756 	lcall	_get_hex_value
      003520 AF 82            [24]  757 	mov	r7,dpl
                                    758 ;	main.c:77: printf_tiny("Please enter data in hex format to store\n\r");
      003522 C0 07            [24]  759 	push	ar7
      003524 74 30            [12]  760 	mov	a,#___str_3
      003526 C0 E0            [24]  761 	push	acc
      003528 74 3A            [12]  762 	mov	a,#(___str_3 >> 8)
      00352A C0 E0            [24]  763 	push	acc
      00352C 12 38 44         [24]  764 	lcall	_printf_tiny
      00352F 15 81            [12]  765 	dec	sp
      003531 15 81            [12]  766 	dec	sp
                                    767 ;	main.c:78: data = get_hex_value();
      003533 12 34 2B         [24]  768 	lcall	_get_hex_value
      003536 AE 82            [24]  769 	mov	r6,dpl
      003538 D0 07            [24]  770 	pop	ar7
                                    771 ;	main.c:85: Byte_Write(data, block, address);
      00353A 90 00 00         [24]  772 	mov	dptr,#_Byte_Write_PARM_2
      00353D 74 07            [12]  773 	mov	a,#0x07
      00353F F0               [24]  774 	movx	@dptr,a
      003540 90 00 01         [24]  775 	mov	dptr,#_Byte_Write_PARM_3
      003543 EF               [12]  776 	mov	a,r7
      003544 F0               [24]  777 	movx	@dptr,a
      003545 8E 82            [24]  778 	mov	dpl,r6
      003547 12 30 8F         [24]  779 	lcall	_Byte_Write
                                    780 ;	main.c:86: printf_tiny("=========================================================================\n\r");
      00354A 74 5B            [12]  781 	mov	a,#___str_4
      00354C C0 E0            [24]  782 	push	acc
      00354E 74 3A            [12]  783 	mov	a,#(___str_4 >> 8)
      003550 C0 E0            [24]  784 	push	acc
      003552 12 38 44         [24]  785 	lcall	_printf_tiny
      003555 15 81            [12]  786 	dec	sp
      003557 15 81            [12]  787 	dec	sp
                                    788 ;	main.c:87: }
      003559 22               [24]  789 	ret
                                    790 ;------------------------------------------------------------
                                    791 ;Allocation info for local variables in function 'user_input_read_handle'
                                    792 ;------------------------------------------------------------
                                    793 ;address                   Allocated with name '_user_input_read_handle_address_65536_57'
                                    794 ;data                      Allocated with name '_user_input_read_handle_data_65536_57'
                                    795 ;block                     Allocated with name '_user_input_read_handle_block_65536_57'
                                    796 ;------------------------------------------------------------
                                    797 ;	main.c:89: void user_input_read_handle(){
                                    798 ;	-----------------------------------------
                                    799 ;	 function user_input_read_handle
                                    800 ;	-----------------------------------------
      00355A                        801 _user_input_read_handle:
                                    802 ;	main.c:94: printf_tiny("Please enter address in hex format to get the data byte\n\r");
      00355A 74 A7            [12]  803 	mov	a,#___str_5
      00355C C0 E0            [24]  804 	push	acc
      00355E 74 3A            [12]  805 	mov	a,#(___str_5 >> 8)
      003560 C0 E0            [24]  806 	push	acc
      003562 12 38 44         [24]  807 	lcall	_printf_tiny
      003565 15 81            [12]  808 	dec	sp
      003567 15 81            [12]  809 	dec	sp
                                    810 ;	main.c:95: address = get_hex_value();
      003569 12 34 2B         [24]  811 	lcall	_get_hex_value
      00356C AF 82            [24]  812 	mov	r7,dpl
                                    813 ;	main.c:102: data = Byte_Read(block, address);
      00356E 90 00 03         [24]  814 	mov	dptr,#_Byte_Read_PARM_2
      003571 EF               [12]  815 	mov	a,r7
      003572 F0               [24]  816 	movx	@dptr,a
      003573 75 82 07         [24]  817 	mov	dpl,#0x07
      003576 C0 07            [24]  818 	push	ar7
      003578 12 31 C7         [24]  819 	lcall	_Byte_Read
      00357B AE 82            [24]  820 	mov	r6,dpl
      00357D D0 07            [24]  821 	pop	ar7
                                    822 ;	main.c:103: printf_tiny("Read byte--> 0x%x: 0x%x\n\r", address, data);
      00357F 7D 00            [12]  823 	mov	r5,#0x00
      003581 7C 00            [12]  824 	mov	r4,#0x00
      003583 C0 06            [24]  825 	push	ar6
      003585 C0 05            [24]  826 	push	ar5
      003587 C0 07            [24]  827 	push	ar7
      003589 C0 04            [24]  828 	push	ar4
      00358B 74 E1            [12]  829 	mov	a,#___str_6
      00358D C0 E0            [24]  830 	push	acc
      00358F 74 3A            [12]  831 	mov	a,#(___str_6 >> 8)
      003591 C0 E0            [24]  832 	push	acc
      003593 12 38 44         [24]  833 	lcall	_printf_tiny
      003596 E5 81            [12]  834 	mov	a,sp
      003598 24 FA            [12]  835 	add	a,#0xfa
      00359A F5 81            [12]  836 	mov	sp,a
                                    837 ;	main.c:104: printf_tiny("=========================================================================\n\r");
      00359C 74 5B            [12]  838 	mov	a,#___str_4
      00359E C0 E0            [24]  839 	push	acc
      0035A0 74 3A            [12]  840 	mov	a,#(___str_4 >> 8)
      0035A2 C0 E0            [24]  841 	push	acc
      0035A4 12 38 44         [24]  842 	lcall	_printf_tiny
      0035A7 15 81            [12]  843 	dec	sp
      0035A9 15 81            [12]  844 	dec	sp
                                    845 ;	main.c:105: }
      0035AB 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'user_input_hex_dump_handle'
                                    849 ;------------------------------------------------------------
                                    850 ;address_range             Allocated to registers r6 
                                    851 ;i                         Allocated to registers r4 r5 
                                    852 ;data                      Allocated to registers r3 
                                    853 ;start_address             Allocated with name '_user_input_hex_dump_handle_start_address_65536_59'
                                    854 ;end_address               Allocated with name '_user_input_hex_dump_handle_end_address_65536_59'
                                    855 ;block                     Allocated with name '_user_input_hex_dump_handle_block_65536_59'
                                    856 ;------------------------------------------------------------
                                    857 ;	main.c:107: void user_input_hex_dump_handle(){
                                    858 ;	-----------------------------------------
                                    859 ;	 function user_input_hex_dump_handle
                                    860 ;	-----------------------------------------
      0035AC                        861 _user_input_hex_dump_handle:
                                    862 ;	main.c:111: while(1){
      0035AC                        863 00104$:
                                    864 ;	main.c:112: printf_tiny("Please enter start address in hex format\n\r");
      0035AC 74 FB            [12]  865 	mov	a,#___str_7
      0035AE C0 E0            [24]  866 	push	acc
      0035B0 74 3A            [12]  867 	mov	a,#(___str_7 >> 8)
      0035B2 C0 E0            [24]  868 	push	acc
      0035B4 12 38 44         [24]  869 	lcall	_printf_tiny
      0035B7 15 81            [12]  870 	dec	sp
      0035B9 15 81            [12]  871 	dec	sp
                                    872 ;	main.c:113: start_address = get_hex_value();
      0035BB 12 34 2B         [24]  873 	lcall	_get_hex_value
      0035BE AF 82            [24]  874 	mov	r7,dpl
                                    875 ;	main.c:118: printf_tiny("Please enter end address in hex format\n\r");
      0035C0 C0 07            [24]  876 	push	ar7
      0035C2 74 26            [12]  877 	mov	a,#___str_8
      0035C4 C0 E0            [24]  878 	push	acc
      0035C6 74 3B            [12]  879 	mov	a,#(___str_8 >> 8)
      0035C8 C0 E0            [24]  880 	push	acc
      0035CA 12 38 44         [24]  881 	lcall	_printf_tiny
      0035CD 15 81            [12]  882 	dec	sp
      0035CF 15 81            [12]  883 	dec	sp
                                    884 ;	main.c:119: end_address = get_hex_value();
      0035D1 12 34 2B         [24]  885 	lcall	_get_hex_value
      0035D4 AE 82            [24]  886 	mov	r6,dpl
      0035D6 D0 07            [24]  887 	pop	ar7
                                    888 ;	main.c:124: if(end_address > start_address){
      0035D8 C3               [12]  889 	clr	c
      0035D9 EF               [12]  890 	mov	a,r7
      0035DA 9E               [12]  891 	subb	a,r6
      0035DB 40 11            [24]  892 	jc	00105$
                                    893 ;	main.c:127: printf_tiny("Invalid address range, end address should be greater than start address\n\r");
      0035DD 74 4F            [12]  894 	mov	a,#___str_9
      0035DF C0 E0            [24]  895 	push	acc
      0035E1 74 3B            [12]  896 	mov	a,#(___str_9 >> 8)
      0035E3 C0 E0            [24]  897 	push	acc
      0035E5 12 38 44         [24]  898 	lcall	_printf_tiny
      0035E8 15 81            [12]  899 	dec	sp
      0035EA 15 81            [12]  900 	dec	sp
      0035EC 80 BE            [24]  901 	sjmp	00104$
      0035EE                        902 00105$:
                                    903 ;	main.c:129: uint8_t address_range = end_address - start_address + 1;
      0035EE EE               [12]  904 	mov	a,r6
      0035EF C3               [12]  905 	clr	c
      0035F0 9F               [12]  906 	subb	a,r7
      0035F1 FE               [12]  907 	mov	r6,a
      0035F2 0E               [12]  908 	inc	r6
                                    909 ;	main.c:130: for(int i = 0; i < address_range; i++){
      0035F3 7C 00            [12]  910 	mov	r4,#0x00
      0035F5 7D 00            [12]  911 	mov	r5,#0x00
      0035F7                        912 00110$:
      0035F7 8E 02            [24]  913 	mov	ar2,r6
      0035F9 7B 00            [12]  914 	mov	r3,#0x00
      0035FB C3               [12]  915 	clr	c
      0035FC EC               [12]  916 	mov	a,r4
      0035FD 9A               [12]  917 	subb	a,r2
      0035FE ED               [12]  918 	mov	a,r5
      0035FF 64 80            [12]  919 	xrl	a,#0x80
      003601 8B F0            [24]  920 	mov	b,r3
      003603 63 F0 80         [24]  921 	xrl	b,#0x80
      003606 95 F0            [12]  922 	subb	a,b
      003608 40 03            [24]  923 	jc	00136$
      00360A 02 36 98         [24]  924 	ljmp	00108$
      00360D                        925 00136$:
                                    926 ;	main.c:131: if(i % 16 == 0){
      00360D 75 09 10         [24]  927 	mov	__modsint_PARM_2,#0x10
      003610 75 0A 00         [24]  928 	mov	(__modsint_PARM_2 + 1),#0x00
      003613 8C 82            [24]  929 	mov	dpl,r4
      003615 8D 83            [24]  930 	mov	dph,r5
      003617 C0 07            [24]  931 	push	ar7
      003619 C0 06            [24]  932 	push	ar6
      00361B C0 05            [24]  933 	push	ar5
      00361D C0 04            [24]  934 	push	ar4
      00361F 12 39 B6         [24]  935 	lcall	__modsint
      003622 E5 82            [12]  936 	mov	a,dpl
      003624 85 83 F0         [24]  937 	mov	b,dph
      003627 D0 04            [24]  938 	pop	ar4
      003629 D0 05            [24]  939 	pop	ar5
      00362B D0 06            [24]  940 	pop	ar6
      00362D D0 07            [24]  941 	pop	ar7
      00362F 45 F0            [12]  942 	orl	a,b
                                    943 ;	main.c:132: printf_tiny("\n\r0x%x :",start_address);
      003631 70 28            [24]  944 	jnz	00107$
      003633 8F 02            [24]  945 	mov	ar2,r7
      003635 FB               [12]  946 	mov	r3,a
      003636 C0 07            [24]  947 	push	ar7
      003638 C0 06            [24]  948 	push	ar6
      00363A C0 05            [24]  949 	push	ar5
      00363C C0 04            [24]  950 	push	ar4
      00363E C0 02            [24]  951 	push	ar2
      003640 C0 03            [24]  952 	push	ar3
      003642 74 99            [12]  953 	mov	a,#___str_10
      003644 C0 E0            [24]  954 	push	acc
      003646 74 3B            [12]  955 	mov	a,#(___str_10 >> 8)
      003648 C0 E0            [24]  956 	push	acc
      00364A 12 38 44         [24]  957 	lcall	_printf_tiny
      00364D E5 81            [12]  958 	mov	a,sp
      00364F 24 FC            [12]  959 	add	a,#0xfc
      003651 F5 81            [12]  960 	mov	sp,a
      003653 D0 04            [24]  961 	pop	ar4
      003655 D0 05            [24]  962 	pop	ar5
      003657 D0 06            [24]  963 	pop	ar6
      003659 D0 07            [24]  964 	pop	ar7
      00365B                        965 00107$:
                                    966 ;	main.c:134: uint8_t data = Byte_Read(block, start_address);
      00365B 90 00 03         [24]  967 	mov	dptr,#_Byte_Read_PARM_2
      00365E EF               [12]  968 	mov	a,r7
      00365F F0               [24]  969 	movx	@dptr,a
      003660 75 82 07         [24]  970 	mov	dpl,#0x07
      003663 C0 07            [24]  971 	push	ar7
      003665 C0 06            [24]  972 	push	ar6
      003667 C0 05            [24]  973 	push	ar5
      003669 C0 04            [24]  974 	push	ar4
      00366B 12 31 C7         [24]  975 	lcall	_Byte_Read
      00366E AB 82            [24]  976 	mov	r3,dpl
                                    977 ;	main.c:135: printf_tiny(" 0x%x", data);
      003670 7A 00            [12]  978 	mov	r2,#0x00
      003672 C0 03            [24]  979 	push	ar3
      003674 C0 02            [24]  980 	push	ar2
      003676 74 A2            [12]  981 	mov	a,#___str_11
      003678 C0 E0            [24]  982 	push	acc
      00367A 74 3B            [12]  983 	mov	a,#(___str_11 >> 8)
      00367C C0 E0            [24]  984 	push	acc
      00367E 12 38 44         [24]  985 	lcall	_printf_tiny
      003681 E5 81            [12]  986 	mov	a,sp
      003683 24 FC            [12]  987 	add	a,#0xfc
      003685 F5 81            [12]  988 	mov	sp,a
      003687 D0 04            [24]  989 	pop	ar4
      003689 D0 05            [24]  990 	pop	ar5
      00368B D0 06            [24]  991 	pop	ar6
      00368D D0 07            [24]  992 	pop	ar7
                                    993 ;	main.c:136: start_address++;
      00368F 0F               [12]  994 	inc	r7
                                    995 ;	main.c:130: for(int i = 0; i < address_range; i++){
      003690 0C               [12]  996 	inc	r4
      003691 BC 00 01         [24]  997 	cjne	r4,#0x00,00138$
      003694 0D               [12]  998 	inc	r5
      003695                        999 00138$:
      003695 02 35 F7         [24] 1000 	ljmp	00110$
      003698                       1001 00108$:
                                   1002 ;	main.c:138: printf_tiny("\n\r");
      003698 74 F1            [12] 1003 	mov	a,#___str_1
      00369A C0 E0            [24] 1004 	push	acc
      00369C 74 39            [12] 1005 	mov	a,#(___str_1 >> 8)
      00369E C0 E0            [24] 1006 	push	acc
      0036A0 12 38 44         [24] 1007 	lcall	_printf_tiny
      0036A3 15 81            [12] 1008 	dec	sp
      0036A5 15 81            [12] 1009 	dec	sp
                                   1010 ;	main.c:139: printf_tiny("=========================================================================\n\r");
      0036A7 74 5B            [12] 1011 	mov	a,#___str_4
      0036A9 C0 E0            [24] 1012 	push	acc
      0036AB 74 3A            [12] 1013 	mov	a,#(___str_4 >> 8)
      0036AD C0 E0            [24] 1014 	push	acc
      0036AF 12 38 44         [24] 1015 	lcall	_printf_tiny
      0036B2 15 81            [12] 1016 	dec	sp
      0036B4 15 81            [12] 1017 	dec	sp
                                   1018 ;	main.c:140: }
      0036B6 22               [24] 1019 	ret
                                   1020 ;------------------------------------------------------------
                                   1021 ;Allocation info for local variables in function 'user_input_reset_handle'
                                   1022 ;------------------------------------------------------------
                                   1023 ;	main.c:142: void user_input_reset_handle(){
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function user_input_reset_handle
                                   1026 ;	-----------------------------------------
      0036B7                       1027 _user_input_reset_handle:
                                   1028 ;	main.c:143: printf_tiny("Reset mode\n\r");
      0036B7 74 A8            [12] 1029 	mov	a,#___str_12
      0036B9 C0 E0            [24] 1030 	push	acc
      0036BB 74 3B            [12] 1031 	mov	a,#(___str_12 >> 8)
      0036BD C0 E0            [24] 1032 	push	acc
      0036BF 12 38 44         [24] 1033 	lcall	_printf_tiny
      0036C2 15 81            [12] 1034 	dec	sp
      0036C4 15 81            [12] 1035 	dec	sp
                                   1036 ;	main.c:144: eeprom_reset();
      0036C6 12 33 AD         [24] 1037 	lcall	_eeprom_reset
                                   1038 ;	main.c:145: printf_tiny("=========================================================================\n\r");
      0036C9 74 5B            [12] 1039 	mov	a,#___str_4
      0036CB C0 E0            [24] 1040 	push	acc
      0036CD 74 3A            [12] 1041 	mov	a,#(___str_4 >> 8)
      0036CF C0 E0            [24] 1042 	push	acc
      0036D1 12 38 44         [24] 1043 	lcall	_printf_tiny
      0036D4 15 81            [12] 1044 	dec	sp
      0036D6 15 81            [12] 1045 	dec	sp
                                   1046 ;	main.c:146: }
      0036D8 22               [24] 1047 	ret
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'main'
                                   1050 ;------------------------------------------------------------
                                   1051 ;user_input                Allocated to registers r7 
                                   1052 ;------------------------------------------------------------
                                   1053 ;	main.c:147: void main()
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function main
                                   1056 ;	-----------------------------------------
      0036D9                       1057 _main:
                                   1058 ;	main.c:151: menu();
      0036D9 12 37 5C         [24] 1059 	lcall	_menu
                                   1060 ;	main.c:152: while(1)
      0036DC                       1061 00114$:
                                   1062 ;	main.c:154: int8_t user_input = echo(); // Read user input from UART
      0036DC 12 38 2B         [24] 1063 	lcall	_echo
      0036DF AF 82            [24] 1064 	mov	r7,dpl
                                   1065 ;	main.c:155: if(((user_input >= '0') && (user_input <= '9'))
      0036E1 C3               [12] 1066 	clr	c
      0036E2 EF               [12] 1067 	mov	a,r7
      0036E3 64 80            [12] 1068 	xrl	a,#0x80
      0036E5 94 B0            [12] 1069 	subb	a,#0xb0
      0036E7 40 0B            [24] 1070 	jc	00106$
      0036E9 74 B9            [12] 1071 	mov	a,#(0x39 ^ 0x80)
      0036EB 8F F0            [24] 1072 	mov	b,r7
      0036ED 63 F0 80         [24] 1073 	xrl	b,#0x80
      0036F0 95 F0            [12] 1074 	subb	a,b
      0036F2 50 13            [24] 1075 	jnc	00101$
      0036F4                       1076 00106$:
                                   1077 ;	main.c:156: || ((user_input >= 'A') && (user_input <= 'Z'))) {
      0036F4 C3               [12] 1078 	clr	c
      0036F5 EF               [12] 1079 	mov	a,r7
      0036F6 64 80            [12] 1080 	xrl	a,#0x80
      0036F8 94 C1            [12] 1081 	subb	a,#0xc1
      0036FA 40 20            [24] 1082 	jc	00102$
      0036FC 74 DA            [12] 1083 	mov	a,#(0x5a ^ 0x80)
      0036FE 8F F0            [24] 1084 	mov	b,r7
      003700 63 F0 80         [24] 1085 	xrl	b,#0x80
      003703 95 F0            [12] 1086 	subb	a,b
      003705 40 15            [24] 1087 	jc	00102$
      003707                       1088 00101$:
                                   1089 ;	main.c:158: printf_tiny("Please enter commands in small cases\n\r");
      003707 C0 07            [24] 1090 	push	ar7
      003709 74 B5            [12] 1091 	mov	a,#___str_13
      00370B C0 E0            [24] 1092 	push	acc
      00370D 74 3B            [12] 1093 	mov	a,#(___str_13 >> 8)
      00370F C0 E0            [24] 1094 	push	acc
      003711 12 38 44         [24] 1095 	lcall	_printf_tiny
      003714 15 81            [12] 1096 	dec	sp
      003716 15 81            [12] 1097 	dec	sp
      003718 D0 07            [24] 1098 	pop	ar7
      00371A 80 13            [24] 1099 	sjmp	00103$
      00371C                       1100 00102$:
                                   1101 ;	main.c:160: printf_tiny("\n\r");  // Print newline for better output formatting
      00371C C0 07            [24] 1102 	push	ar7
      00371E 74 F1            [12] 1103 	mov	a,#___str_1
      003720 C0 E0            [24] 1104 	push	acc
      003722 74 39            [12] 1105 	mov	a,#(___str_1 >> 8)
      003724 C0 E0            [24] 1106 	push	acc
      003726 12 38 44         [24] 1107 	lcall	_printf_tiny
      003729 15 81            [12] 1108 	dec	sp
      00372B 15 81            [12] 1109 	dec	sp
      00372D D0 07            [24] 1110 	pop	ar7
      00372F                       1111 00103$:
                                   1112 ;	main.c:162: switch(user_input) {
      00372F BF 65 02         [24] 1113 	cjne	r7,#0x65,00150$
      003732 80 1C            [24] 1114 	sjmp	00110$
      003734                       1115 00150$:
      003734 BF 68 02         [24] 1116 	cjne	r7,#0x68,00151$
      003737 80 12            [24] 1117 	sjmp	00109$
      003739                       1118 00151$:
      003739 BF 72 02         [24] 1119 	cjne	r7,#0x72,00152$
      00373C 80 08            [24] 1120 	sjmp	00108$
      00373E                       1121 00152$:
      00373E BF 77 12         [24] 1122 	cjne	r7,#0x77,00112$
                                   1123 ;	main.c:164: user_input_write_handle();
      003741 12 35 0E         [24] 1124 	lcall	_user_input_write_handle
                                   1125 ;	main.c:165: break;
                                   1126 ;	main.c:166: case 'r':
      003744 80 0D            [24] 1127 	sjmp	00112$
      003746                       1128 00108$:
                                   1129 ;	main.c:167: user_input_read_handle();
      003746 12 35 5A         [24] 1130 	lcall	_user_input_read_handle
                                   1131 ;	main.c:168: break;
                                   1132 ;	main.c:169: case 'h':
      003749 80 08            [24] 1133 	sjmp	00112$
      00374B                       1134 00109$:
                                   1135 ;	main.c:170: user_input_hex_dump_handle();
      00374B 12 35 AC         [24] 1136 	lcall	_user_input_hex_dump_handle
                                   1137 ;	main.c:171: break;
                                   1138 ;	main.c:172: case 'e':
      00374E 80 03            [24] 1139 	sjmp	00112$
      003750                       1140 00110$:
                                   1141 ;	main.c:173: user_input_reset_handle();
      003750 12 36 B7         [24] 1142 	lcall	_user_input_reset_handle
                                   1143 ;	main.c:177: }
      003753                       1144 00112$:
                                   1145 ;	main.c:178: delay(3);
      003753 90 00 03         [24] 1146 	mov	dptr,#0x0003
      003756 12 30 7A         [24] 1147 	lcall	_delay
                                   1148 ;	main.c:180: }
      003759 02 36 DC         [24] 1149 	ljmp	00114$
                                   1150 	.area CSEG    (CODE)
                                   1151 	.area CONST   (CODE)
      0039EC                       1152 ___sdcc_heap_size:
      0039EC 88 13                 1153 	.byte #0x88, #0x13	; 5000
                                   1154 	.area CONST   (CODE)
      0039EE                       1155 ___str_0:
      0039EE 30 78                 1156 	.ascii "0x"
      0039F0 00                    1157 	.db 0x00
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
      0039F1                       1160 ___str_1:
      0039F1 0A                    1161 	.db 0x0a
      0039F2 0D                    1162 	.db 0x0d
      0039F3 00                    1163 	.db 0x00
                                   1164 	.area CSEG    (CODE)
                                   1165 	.area CONST   (CODE)
      0039F4                       1166 ___str_2:
      0039F4 50 6C 65 61 73 65 20  1167 	.ascii "Please enter address in hex format to store the data byte"
             65 6E 74 65 72 20 61
             64 64 72 65 73 73 20
             69 6E 20 68 65 78 20
             66 6F 72 6D 61 74 20
             74 6F 20 73 74 6F 72
             65 20 74 68 65 20 64
             61 74 61 20 62 79 74
             65
      003A2D 0A                    1168 	.db 0x0a
      003A2E 0D                    1169 	.db 0x0d
      003A2F 00                    1170 	.db 0x00
                                   1171 	.area CSEG    (CODE)
                                   1172 	.area CONST   (CODE)
      003A30                       1173 ___str_3:
      003A30 50 6C 65 61 73 65 20  1174 	.ascii "Please enter data in hex format to store"
             65 6E 74 65 72 20 64
             61 74 61 20 69 6E 20
             68 65 78 20 66 6F 72
             6D 61 74 20 74 6F 20
             73 74 6F 72 65
      003A58 0A                    1175 	.db 0x0a
      003A59 0D                    1176 	.db 0x0d
      003A5A 00                    1177 	.db 0x00
                                   1178 	.area CSEG    (CODE)
                                   1179 	.area CONST   (CODE)
      003A5B                       1180 ___str_4:
      003A5B 3D 3D 3D 3D 3D 3D 3D  1181 	.ascii "============================================================"
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D
      003A97 3D 3D 3D 3D 3D 3D 3D  1182 	.ascii "============="
             3D 3D 3D 3D 3D 3D
      003AA4 0A                    1183 	.db 0x0a
      003AA5 0D                    1184 	.db 0x0d
      003AA6 00                    1185 	.db 0x00
                                   1186 	.area CSEG    (CODE)
                                   1187 	.area CONST   (CODE)
      003AA7                       1188 ___str_5:
      003AA7 50 6C 65 61 73 65 20  1189 	.ascii "Please enter address in hex format to get the data byte"
             65 6E 74 65 72 20 61
             64 64 72 65 73 73 20
             69 6E 20 68 65 78 20
             66 6F 72 6D 61 74 20
             74 6F 20 67 65 74 20
             74 68 65 20 64 61 74
             61 20 62 79 74 65
      003ADE 0A                    1190 	.db 0x0a
      003ADF 0D                    1191 	.db 0x0d
      003AE0 00                    1192 	.db 0x00
                                   1193 	.area CSEG    (CODE)
                                   1194 	.area CONST   (CODE)
      003AE1                       1195 ___str_6:
      003AE1 52 65 61 64 20 62 79  1196 	.ascii "Read byte--> 0x%x: 0x%x"
             74 65 2D 2D 3E 20 30
             78 25 78 3A 20 30 78
             25 78
      003AF8 0A                    1197 	.db 0x0a
      003AF9 0D                    1198 	.db 0x0d
      003AFA 00                    1199 	.db 0x00
                                   1200 	.area CSEG    (CODE)
                                   1201 	.area CONST   (CODE)
      003AFB                       1202 ___str_7:
      003AFB 50 6C 65 61 73 65 20  1203 	.ascii "Please enter start address in hex format"
             65 6E 74 65 72 20 73
             74 61 72 74 20 61 64
             64 72 65 73 73 20 69
             6E 20 68 65 78 20 66
             6F 72 6D 61 74
      003B23 0A                    1204 	.db 0x0a
      003B24 0D                    1205 	.db 0x0d
      003B25 00                    1206 	.db 0x00
                                   1207 	.area CSEG    (CODE)
                                   1208 	.area CONST   (CODE)
      003B26                       1209 ___str_8:
      003B26 50 6C 65 61 73 65 20  1210 	.ascii "Please enter end address in hex format"
             65 6E 74 65 72 20 65
             6E 64 20 61 64 64 72
             65 73 73 20 69 6E 20
             68 65 78 20 66 6F 72
             6D 61 74
      003B4C 0A                    1211 	.db 0x0a
      003B4D 0D                    1212 	.db 0x0d
      003B4E 00                    1213 	.db 0x00
                                   1214 	.area CSEG    (CODE)
                                   1215 	.area CONST   (CODE)
      003B4F                       1216 ___str_9:
      003B4F 49 6E 76 61 6C 69 64  1217 	.ascii "Invalid address range, end address should be greater than st"
             20 61 64 64 72 65 73
             73 20 72 61 6E 67 65
             2C 20 65 6E 64 20 61
             64 64 72 65 73 73 20
             73 68 6F 75 6C 64 20
             62 65 20 67 72 65 61
             74 65 72 20 74 68 61
             6E 20 73 74
      003B8B 61 72 74 20 61 64 64  1218 	.ascii "art address"
             72 65 73 73
      003B96 0A                    1219 	.db 0x0a
      003B97 0D                    1220 	.db 0x0d
      003B98 00                    1221 	.db 0x00
                                   1222 	.area CSEG    (CODE)
                                   1223 	.area CONST   (CODE)
      003B99                       1224 ___str_10:
      003B99 0A                    1225 	.db 0x0a
      003B9A 0D                    1226 	.db 0x0d
      003B9B 30 78 25 78 20 3A     1227 	.ascii "0x%x :"
      003BA1 00                    1228 	.db 0x00
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area CONST   (CODE)
      003BA2                       1231 ___str_11:
      003BA2 20 30 78 25 78        1232 	.ascii " 0x%x"
      003BA7 00                    1233 	.db 0x00
                                   1234 	.area CSEG    (CODE)
                                   1235 	.area CONST   (CODE)
      003BA8                       1236 ___str_12:
      003BA8 52 65 73 65 74 20 6D  1237 	.ascii "Reset mode"
             6F 64 65
      003BB2 0A                    1238 	.db 0x0a
      003BB3 0D                    1239 	.db 0x0d
      003BB4 00                    1240 	.db 0x00
                                   1241 	.area CSEG    (CODE)
                                   1242 	.area CONST   (CODE)
      003BB5                       1243 ___str_13:
      003BB5 50 6C 65 61 73 65 20  1244 	.ascii "Please enter commands in small cases"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 73 6D 61
             6C 6C 20 63 61 73 65
             73
      003BD9 0A                    1245 	.db 0x0a
      003BDA 0D                    1246 	.db 0x0d
      003BDB 00                    1247 	.db 0x00
                                   1248 	.area CSEG    (CODE)
                                   1249 	.area XINIT   (CODE)
                                   1250 	.area CABS    (ABS,CODE)
