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
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _user_input_reset_handle
                                     15 	.globl _user_input_hex_dump_handle
                                     16 	.globl _user_input_read_handle
                                     17 	.globl _user_input_write_handle
                                     18 	.globl _echo
                                     19 	.globl _menu
                                     20 	.globl _delay
                                     21 	.globl _printf_tiny
                                     22 	.globl _TF1
                                     23 	.globl _TR1
                                     24 	.globl _TF0
                                     25 	.globl _TR0
                                     26 	.globl _IE1
                                     27 	.globl _IT1
                                     28 	.globl _IE0
                                     29 	.globl _IT0
                                     30 	.globl _SM0
                                     31 	.globl _SM1
                                     32 	.globl _SM2
                                     33 	.globl _REN
                                     34 	.globl _TB8
                                     35 	.globl _RB8
                                     36 	.globl _TI
                                     37 	.globl _RI
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD0
                                     53 	.globl _TXD
                                     54 	.globl _RXD0
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _PS
                                     89 	.globl _PT1
                                     90 	.globl _PX1
                                     91 	.globl _PT0
                                     92 	.globl _PX0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _BREG_F7
                                    100 	.globl _BREG_F6
                                    101 	.globl _BREG_F5
                                    102 	.globl _BREG_F4
                                    103 	.globl _BREG_F3
                                    104 	.globl _BREG_F2
                                    105 	.globl _BREG_F1
                                    106 	.globl _BREG_F0
                                    107 	.globl _P5_7
                                    108 	.globl _P5_6
                                    109 	.globl _P5_5
                                    110 	.globl _P5_4
                                    111 	.globl _P5_3
                                    112 	.globl _P5_2
                                    113 	.globl _P5_1
                                    114 	.globl _P5_0
                                    115 	.globl _P4_7
                                    116 	.globl _P4_6
                                    117 	.globl _P4_5
                                    118 	.globl _P4_4
                                    119 	.globl _P4_3
                                    120 	.globl _P4_2
                                    121 	.globl _P4_1
                                    122 	.globl _P4_0
                                    123 	.globl _PX0L
                                    124 	.globl _PT0L
                                    125 	.globl _PX1L
                                    126 	.globl _PT1L
                                    127 	.globl _PSL
                                    128 	.globl _PT2L
                                    129 	.globl _PPCL
                                    130 	.globl _EC
                                    131 	.globl _CCF0
                                    132 	.globl _CCF1
                                    133 	.globl _CCF2
                                    134 	.globl _CCF3
                                    135 	.globl _CCF4
                                    136 	.globl _CR
                                    137 	.globl _CF
                                    138 	.globl _TF2
                                    139 	.globl _EXF2
                                    140 	.globl _RCLK
                                    141 	.globl _TCLK
                                    142 	.globl _EXEN2
                                    143 	.globl _TR2
                                    144 	.globl _C_T2
                                    145 	.globl _CP_RL2
                                    146 	.globl _T2CON_7
                                    147 	.globl _T2CON_6
                                    148 	.globl _T2CON_5
                                    149 	.globl _T2CON_4
                                    150 	.globl _T2CON_3
                                    151 	.globl _T2CON_2
                                    152 	.globl _T2CON_1
                                    153 	.globl _T2CON_0
                                    154 	.globl _PT2
                                    155 	.globl _ET2
                                    156 	.globl _TMOD
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TH1
                                    160 	.globl _TH0
                                    161 	.globl _TCON
                                    162 	.globl _SP
                                    163 	.globl _SCON
                                    164 	.globl _SBUF0
                                    165 	.globl _SBUF
                                    166 	.globl _PSW
                                    167 	.globl _PCON
                                    168 	.globl _P3
                                    169 	.globl _P2
                                    170 	.globl _P1
                                    171 	.globl _P0
                                    172 	.globl _IP
                                    173 	.globl _IE
                                    174 	.globl _DP0L
                                    175 	.globl _DPL
                                    176 	.globl _DP0H
                                    177 	.globl _DPH
                                    178 	.globl _B
                                    179 	.globl _ACC
                                    180 	.globl _EECON
                                    181 	.globl _KBF
                                    182 	.globl _KBE
                                    183 	.globl _KBLS
                                    184 	.globl _BRL
                                    185 	.globl _BDRCON
                                    186 	.globl _T2MOD
                                    187 	.globl _SPDAT
                                    188 	.globl _SPSTA
                                    189 	.globl _SPCON
                                    190 	.globl _SADEN
                                    191 	.globl _SADDR
                                    192 	.globl _WDTPRG
                                    193 	.globl _WDTRST
                                    194 	.globl _P5
                                    195 	.globl _P4
                                    196 	.globl _IPH1
                                    197 	.globl _IPL1
                                    198 	.globl _IPH0
                                    199 	.globl _IPL0
                                    200 	.globl _IEN1
                                    201 	.globl _IEN0
                                    202 	.globl _CMOD
                                    203 	.globl _CL
                                    204 	.globl _CH
                                    205 	.globl _CCON
                                    206 	.globl _CCAPM4
                                    207 	.globl _CCAPM3
                                    208 	.globl _CCAPM2
                                    209 	.globl _CCAPM1
                                    210 	.globl _CCAPM0
                                    211 	.globl _CCAP4L
                                    212 	.globl _CCAP3L
                                    213 	.globl _CCAP2L
                                    214 	.globl _CCAP1L
                                    215 	.globl _CCAP0L
                                    216 	.globl _CCAP4H
                                    217 	.globl _CCAP3H
                                    218 	.globl _CCAP2H
                                    219 	.globl _CCAP1H
                                    220 	.globl _CCAP0H
                                    221 	.globl _CKCON1
                                    222 	.globl _CKCON0
                                    223 	.globl _CKRL
                                    224 	.globl _AUXR1
                                    225 	.globl _AUXR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T2CON
                                    231 	.globl ___sdcc_heap
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                           000083   290 _DPH	=	0x0083
                           000083   291 _DP0H	=	0x0083
                           000082   292 _DPL	=	0x0082
                           000082   293 _DP0L	=	0x0082
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           000080   296 _P0	=	0x0080
                           000090   297 _P1	=	0x0090
                           0000A0   298 _P2	=	0x00a0
                           0000B0   299 _P3	=	0x00b0
                           000087   300 _PCON	=	0x0087
                           0000D0   301 _PSW	=	0x00d0
                           000099   302 _SBUF	=	0x0099
                           000099   303 _SBUF0	=	0x0099
                           000098   304 _SCON	=	0x0098
                           000081   305 _SP	=	0x0081
                           000088   306 _TCON	=	0x0088
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           000089   311 _TMOD	=	0x0089
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000AD   317 _ET2	=	0x00ad
                           0000BD   318 _PT2	=	0x00bd
                           0000C8   319 _T2CON_0	=	0x00c8
                           0000C9   320 _T2CON_1	=	0x00c9
                           0000CA   321 _T2CON_2	=	0x00ca
                           0000CB   322 _T2CON_3	=	0x00cb
                           0000CC   323 _T2CON_4	=	0x00cc
                           0000CD   324 _T2CON_5	=	0x00cd
                           0000CE   325 _T2CON_6	=	0x00ce
                           0000CF   326 _T2CON_7	=	0x00cf
                           0000C8   327 _CP_RL2	=	0x00c8
                           0000C9   328 _C_T2	=	0x00c9
                           0000CA   329 _TR2	=	0x00ca
                           0000CB   330 _EXEN2	=	0x00cb
                           0000CC   331 _TCLK	=	0x00cc
                           0000CD   332 _RCLK	=	0x00cd
                           0000CE   333 _EXF2	=	0x00ce
                           0000CF   334 _TF2	=	0x00cf
                           0000DF   335 _CF	=	0x00df
                           0000DE   336 _CR	=	0x00de
                           0000DC   337 _CCF4	=	0x00dc
                           0000DB   338 _CCF3	=	0x00db
                           0000DA   339 _CCF2	=	0x00da
                           0000D9   340 _CCF1	=	0x00d9
                           0000D8   341 _CCF0	=	0x00d8
                           0000AE   342 _EC	=	0x00ae
                           0000BE   343 _PPCL	=	0x00be
                           0000BD   344 _PT2L	=	0x00bd
                           0000BC   345 _PSL	=	0x00bc
                           0000BB   346 _PT1L	=	0x00bb
                           0000BA   347 _PX1L	=	0x00ba
                           0000B9   348 _PT0L	=	0x00b9
                           0000B8   349 _PX0L	=	0x00b8
                           0000C0   350 _P4_0	=	0x00c0
                           0000C1   351 _P4_1	=	0x00c1
                           0000C2   352 _P4_2	=	0x00c2
                           0000C3   353 _P4_3	=	0x00c3
                           0000C4   354 _P4_4	=	0x00c4
                           0000C5   355 _P4_5	=	0x00c5
                           0000C6   356 _P4_6	=	0x00c6
                           0000C7   357 _P4_7	=	0x00c7
                           0000E8   358 _P5_0	=	0x00e8
                           0000E9   359 _P5_1	=	0x00e9
                           0000EA   360 _P5_2	=	0x00ea
                           0000EB   361 _P5_3	=	0x00eb
                           0000EC   362 _P5_4	=	0x00ec
                           0000ED   363 _P5_5	=	0x00ed
                           0000EE   364 _P5_6	=	0x00ee
                           0000EF   365 _P5_7	=	0x00ef
                           0000F0   366 _BREG_F0	=	0x00f0
                           0000F1   367 _BREG_F1	=	0x00f1
                           0000F2   368 _BREG_F2	=	0x00f2
                           0000F3   369 _BREG_F3	=	0x00f3
                           0000F4   370 _BREG_F4	=	0x00f4
                           0000F5   371 _BREG_F5	=	0x00f5
                           0000F6   372 _BREG_F6	=	0x00f6
                           0000F7   373 _BREG_F7	=	0x00f7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AF   379 _EA	=	0x00af
                           0000B8   380 _PX0	=	0x00b8
                           0000B9   381 _PT0	=	0x00b9
                           0000BA   382 _PX1	=	0x00ba
                           0000BB   383 _PT1	=	0x00bb
                           0000BC   384 _PS	=	0x00bc
                           000080   385 _P0_0	=	0x0080
                           000081   386 _P0_1	=	0x0081
                           000082   387 _P0_2	=	0x0082
                           000083   388 _P0_3	=	0x0083
                           000084   389 _P0_4	=	0x0084
                           000085   390 _P0_5	=	0x0085
                           000086   391 _P0_6	=	0x0086
                           000087   392 _P0_7	=	0x0087
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           0000A0   401 _P2_0	=	0x00a0
                           0000A1   402 _P2_1	=	0x00a1
                           0000A2   403 _P2_2	=	0x00a2
                           0000A3   404 _P2_3	=	0x00a3
                           0000A4   405 _P2_4	=	0x00a4
                           0000A5   406 _P2_5	=	0x00a5
                           0000A6   407 _P2_6	=	0x00a6
                           0000A7   408 _P2_7	=	0x00a7
                           0000B0   409 _P3_0	=	0x00b0
                           0000B1   410 _P3_1	=	0x00b1
                           0000B2   411 _P3_2	=	0x00b2
                           0000B3   412 _P3_3	=	0x00b3
                           0000B4   413 _P3_4	=	0x00b4
                           0000B5   414 _P3_5	=	0x00b5
                           0000B6   415 _P3_6	=	0x00b6
                           0000B7   416 _P3_7	=	0x00b7
                           0000B0   417 _RXD	=	0x00b0
                           0000B0   418 _RXD0	=	0x00b0
                           0000B1   419 _TXD	=	0x00b1
                           0000B1   420 _TXD0	=	0x00b1
                           0000B2   421 _INT0	=	0x00b2
                           0000B3   422 _INT1	=	0x00b3
                           0000B4   423 _T0	=	0x00b4
                           0000B5   424 _T1	=	0x00b5
                           0000B6   425 _WR	=	0x00b6
                           0000B7   426 _RD	=	0x00b7
                           0000D0   427 _P	=	0x00d0
                           0000D1   428 _F1	=	0x00d1
                           0000D2   429 _OV	=	0x00d2
                           0000D3   430 _RS0	=	0x00d3
                           0000D4   431 _RS1	=	0x00d4
                           0000D5   432 _F0	=	0x00d5
                           0000D6   433 _AC	=	0x00d6
                           0000D7   434 _CY	=	0x00d7
                           000098   435 _RI	=	0x0098
                           000099   436 _TI	=	0x0099
                           00009A   437 _RB8	=	0x009a
                           00009B   438 _TB8	=	0x009b
                           00009C   439 _REN	=	0x009c
                           00009D   440 _SM2	=	0x009d
                           00009E   441 _SM1	=	0x009e
                           00009F   442 _SM0	=	0x009f
                           000088   443 _IT0	=	0x0088
                           000089   444 _IE0	=	0x0089
                           00008A   445 _IT1	=	0x008a
                           00008B   446 _IE1	=	0x008b
                           00008C   447 _TR0	=	0x008c
                           00008D   448 _TF0	=	0x008d
                           00008E   449 _TR1	=	0x008e
                           00008F   450 _TF1	=	0x008f
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area DSEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable items in internal ram
                                    462 ;--------------------------------------------------------
                                    463 ;--------------------------------------------------------
                                    464 ; Stack segment in internal ram
                                    465 ;--------------------------------------------------------
                                    466 	.area	SSEG
      00000F                        467 __start__stack:
      00000F                        468 	.ds	1
                                    469 
                                    470 ;--------------------------------------------------------
                                    471 ; indirectly addressable internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area ISEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; absolute internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area IABS    (ABS,DATA)
                                    478 	.area IABS    (ABS,DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; bit data
                                    481 ;--------------------------------------------------------
                                    482 	.area BSEG    (BIT)
                                    483 ;--------------------------------------------------------
                                    484 ; paged external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area PSEG    (PAG,XDATA)
                                    487 ;--------------------------------------------------------
                                    488 ; external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XSEG    (XDATA)
      000109                        491 ___sdcc_heap::
      000109                        492 	.ds 5000
                                    493 ;--------------------------------------------------------
                                    494 ; absolute external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XABS    (ABS,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; external initialized ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XISEG   (XDATA)
                                    501 	.area HOME    (CODE)
                                    502 	.area GSINIT0 (CODE)
                                    503 	.area GSINIT1 (CODE)
                                    504 	.area GSINIT2 (CODE)
                                    505 	.area GSINIT3 (CODE)
                                    506 	.area GSINIT4 (CODE)
                                    507 	.area GSINIT5 (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 	.area GSFINAL (CODE)
                                    510 	.area CSEG    (CODE)
                                    511 ;--------------------------------------------------------
                                    512 ; interrupt vector
                                    513 ;--------------------------------------------------------
                                    514 	.area HOME    (CODE)
      003000                        515 __interrupt_vect:
      003000 02 30 06         [24]  516 	ljmp	__sdcc_gsinit_startup
                                    517 ;--------------------------------------------------------
                                    518 ; global & static initialisations
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.globl __sdcc_gsinit_startup
                                    525 	.globl __sdcc_program_startup
                                    526 	.globl __start__stack
                                    527 	.globl __mcs51_genXINIT
                                    528 	.globl __mcs51_genXRAMCLEAR
                                    529 	.globl __mcs51_genRAMCLEAR
                                    530 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  531 	ljmp	__sdcc_program_startup
                                    532 ;--------------------------------------------------------
                                    533 ; Home
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area HOME    (CODE)
      003003                        537 __sdcc_program_startup:
      003003 02 3B D3         [24]  538 	ljmp	_main
                                    539 ;	return from main will return to caller
                                    540 ;--------------------------------------------------------
                                    541 ; code
                                    542 ;--------------------------------------------------------
                                    543 	.area CSEG    (CODE)
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    546 ;------------------------------------------------------------
                                    547 ;	main.c:39: _sdcc_external_startup()
                                    548 ;	-----------------------------------------
                                    549 ;	 function _sdcc_external_startup
                                    550 ;	-----------------------------------------
      003BCC                        551 __sdcc_external_startup:
                           000007   552 	ar7 = 0x07
                           000006   553 	ar6 = 0x06
                           000005   554 	ar5 = 0x05
                           000004   555 	ar4 = 0x04
                           000003   556 	ar3 = 0x03
                           000002   557 	ar2 = 0x02
                           000001   558 	ar1 = 0x01
                           000000   559 	ar0 = 0x00
                                    560 ;	main.c:41: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      003BCC 43 8E 0C         [24]  561 	orl	_AUXR,#0x0c
                                    562 ;	main.c:43: return 0;               // Return 0 to indicate successful startup
      003BCF 90 00 00         [24]  563 	mov	dptr,#0x0000
                                    564 ;	main.c:44: }
      003BD2 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'main'
                                    568 ;------------------------------------------------------------
                                    569 ;user_input                Allocated to registers r7 
                                    570 ;------------------------------------------------------------
                                    571 ;	main.c:49: void main()
                                    572 ;	-----------------------------------------
                                    573 ;	 function main
                                    574 ;	-----------------------------------------
      003BD3                        575 _main:
                                    576 ;	main.c:51: menu(); // Display the menu to the user
      003BD3 12 3C 56         [24]  577 	lcall	_menu
                                    578 ;	main.c:52: while (1) // Infinite loop for user interactions
      003BD6                        579 00114$:
                                    580 ;	main.c:54: int8_t user_input = echo(); // Read user input from UART
      003BD6 12 3D 25         [24]  581 	lcall	_echo
      003BD9 AF 82            [24]  582 	mov	r7,dpl
                                    583 ;	main.c:55: if (((user_input >= '0') && (user_input <= '9')) || ((user_input >= 'A') && (user_input <= 'Z')))
      003BDB C3               [12]  584 	clr	c
      003BDC EF               [12]  585 	mov	a,r7
      003BDD 64 80            [12]  586 	xrl	a,#0x80
      003BDF 94 B0            [12]  587 	subb	a,#0xb0
      003BE1 40 0B            [24]  588 	jc	00106$
      003BE3 74 B9            [12]  589 	mov	a,#(0x39 ^ 0x80)
      003BE5 8F F0            [24]  590 	mov	b,r7
      003BE7 63 F0 80         [24]  591 	xrl	b,#0x80
      003BEA 95 F0            [12]  592 	subb	a,b
      003BEC 50 13            [24]  593 	jnc	00101$
      003BEE                        594 00106$:
      003BEE C3               [12]  595 	clr	c
      003BEF EF               [12]  596 	mov	a,r7
      003BF0 64 80            [12]  597 	xrl	a,#0x80
      003BF2 94 C1            [12]  598 	subb	a,#0xc1
      003BF4 40 20            [24]  599 	jc	00102$
      003BF6 74 DA            [12]  600 	mov	a,#(0x5a ^ 0x80)
      003BF8 8F F0            [24]  601 	mov	b,r7
      003BFA 63 F0 80         [24]  602 	xrl	b,#0x80
      003BFD 95 F0            [12]  603 	subb	a,b
      003BFF 40 15            [24]  604 	jc	00102$
      003C01                        605 00101$:
                                    606 ;	main.c:58: printf_tiny("Please enter commands in small cases\n\r");
      003C01 C0 07            [24]  607 	push	ar7
      003C03 74 3B            [12]  608 	mov	a,#___str_0
      003C05 C0 E0            [24]  609 	push	acc
      003C07 74 41            [12]  610 	mov	a,#(___str_0 >> 8)
      003C09 C0 E0            [24]  611 	push	acc
      003C0B 12 3D 3E         [24]  612 	lcall	_printf_tiny
      003C0E 15 81            [12]  613 	dec	sp
      003C10 15 81            [12]  614 	dec	sp
      003C12 D0 07            [24]  615 	pop	ar7
      003C14 80 13            [24]  616 	sjmp	00103$
      003C16                        617 00102$:
                                    618 ;	main.c:62: printf_tiny("\n\r"); // Print newline for better output formatting
      003C16 C0 07            [24]  619 	push	ar7
      003C18 74 62            [12]  620 	mov	a,#___str_1
      003C1A C0 E0            [24]  621 	push	acc
      003C1C 74 41            [12]  622 	mov	a,#(___str_1 >> 8)
      003C1E C0 E0            [24]  623 	push	acc
      003C20 12 3D 3E         [24]  624 	lcall	_printf_tiny
      003C23 15 81            [12]  625 	dec	sp
      003C25 15 81            [12]  626 	dec	sp
      003C27 D0 07            [24]  627 	pop	ar7
      003C29                        628 00103$:
                                    629 ;	main.c:64: switch (user_input) // Switch statement based on user input
      003C29 BF 65 02         [24]  630 	cjne	r7,#0x65,00150$
      003C2C 80 1C            [24]  631 	sjmp	00110$
      003C2E                        632 00150$:
      003C2E BF 68 02         [24]  633 	cjne	r7,#0x68,00151$
      003C31 80 12            [24]  634 	sjmp	00109$
      003C33                        635 00151$:
      003C33 BF 72 02         [24]  636 	cjne	r7,#0x72,00152$
      003C36 80 08            [24]  637 	sjmp	00108$
      003C38                        638 00152$:
      003C38 BF 77 12         [24]  639 	cjne	r7,#0x77,00112$
                                    640 ;	main.c:67: user_input_write_handle(); // Handle user input for writing data
      003C3B 12 31 45         [24]  641 	lcall	_user_input_write_handle
                                    642 ;	main.c:68: break;
                                    643 ;	main.c:69: case 'r':
      003C3E 80 0D            [24]  644 	sjmp	00112$
      003C40                        645 00108$:
                                    646 ;	main.c:70: user_input_read_handle(); // Handle user input for reading data
      003C40 12 31 BE         [24]  647 	lcall	_user_input_read_handle
                                    648 ;	main.c:71: break;
                                    649 ;	main.c:72: case 'h':
      003C43 80 08            [24]  650 	sjmp	00112$
      003C45                        651 00109$:
                                    652 ;	main.c:73: user_input_hex_dump_handle(); // Handle user input for hex dumping data
      003C45 12 32 3D         [24]  653 	lcall	_user_input_hex_dump_handle
                                    654 ;	main.c:74: break;
                                    655 ;	main.c:75: case 'e':
      003C48 80 03            [24]  656 	sjmp	00112$
      003C4A                        657 00110$:
                                    658 ;	main.c:76: user_input_reset_handle(); // Handle user input for reset
      003C4A 12 33 AA         [24]  659 	lcall	_user_input_reset_handle
                                    660 ;	main.c:80: }
      003C4D                        661 00112$:
                                    662 ;	main.c:81: delay(3); // Delay for stability before processing the next input
      003C4D 90 00 03         [24]  663 	mov	dptr,#0x0003
      003C50 12 33 CC         [24]  664 	lcall	_delay
                                    665 ;	main.c:83: }
      003C53 02 3B D6         [24]  666 	ljmp	00114$
                                    667 	.area CSEG    (CODE)
                                    668 	.area CONST   (CODE)
      004139                        669 ___sdcc_heap_size:
      004139 88 13                  670 	.byte #0x88, #0x13	; 5000
                                    671 	.area CONST   (CODE)
      00413B                        672 ___str_0:
      00413B 50 6C 65 61 73 65 20   673 	.ascii "Please enter commands in small cases"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 73 6D 61
             6C 6C 20 63 61 73 65
             73
      00415F 0A                     674 	.db 0x0a
      004160 0D                     675 	.db 0x0d
      004161 00                     676 	.db 0x00
                                    677 	.area CSEG    (CODE)
                                    678 	.area CONST   (CODE)
      004162                        679 ___str_1:
      004162 0A                     680 	.db 0x0a
      004163 0D                     681 	.db 0x0d
      004164 00                     682 	.db 0x00
                                    683 	.area CSEG    (CODE)
                                    684 	.area XINIT   (CODE)
                                    685 	.area CABS    (ABS,CODE)
