                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl ___sdcc_heap_size
                                     12 	.globl _main
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _get_buffer_size
                                     15 	.globl _echo
                                     16 	.globl _free
                                     17 	.globl _malloc
                                     18 	.globl _printf
                                     19 	.globl _TF1
                                     20 	.globl _TR1
                                     21 	.globl _TF0
                                     22 	.globl _TR0
                                     23 	.globl _IE1
                                     24 	.globl _IT1
                                     25 	.globl _IE0
                                     26 	.globl _IT0
                                     27 	.globl _SM0
                                     28 	.globl _SM1
                                     29 	.globl _SM2
                                     30 	.globl _REN
                                     31 	.globl _TB8
                                     32 	.globl _RB8
                                     33 	.globl _TI
                                     34 	.globl _RI
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD0
                                     50 	.globl _TXD
                                     51 	.globl _RXD0
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _P0_7
                                     78 	.globl _P0_6
                                     79 	.globl _P0_5
                                     80 	.globl _P0_4
                                     81 	.globl _P0_3
                                     82 	.globl _P0_2
                                     83 	.globl _P0_1
                                     84 	.globl _P0_0
                                     85 	.globl _PS
                                     86 	.globl _PT1
                                     87 	.globl _PX1
                                     88 	.globl _PT0
                                     89 	.globl _PX0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _BREG_F7
                                     97 	.globl _BREG_F6
                                     98 	.globl _BREG_F5
                                     99 	.globl _BREG_F4
                                    100 	.globl _BREG_F3
                                    101 	.globl _BREG_F2
                                    102 	.globl _BREG_F1
                                    103 	.globl _BREG_F0
                                    104 	.globl _P5_7
                                    105 	.globl _P5_6
                                    106 	.globl _P5_5
                                    107 	.globl _P5_4
                                    108 	.globl _P5_3
                                    109 	.globl _P5_2
                                    110 	.globl _P5_1
                                    111 	.globl _P5_0
                                    112 	.globl _P4_7
                                    113 	.globl _P4_6
                                    114 	.globl _P4_5
                                    115 	.globl _P4_4
                                    116 	.globl _P4_3
                                    117 	.globl _P4_2
                                    118 	.globl _P4_1
                                    119 	.globl _P4_0
                                    120 	.globl _PX0L
                                    121 	.globl _PT0L
                                    122 	.globl _PX1L
                                    123 	.globl _PT1L
                                    124 	.globl _PSL
                                    125 	.globl _PT2L
                                    126 	.globl _PPCL
                                    127 	.globl _EC
                                    128 	.globl _CCF0
                                    129 	.globl _CCF1
                                    130 	.globl _CCF2
                                    131 	.globl _CCF3
                                    132 	.globl _CCF4
                                    133 	.globl _CR
                                    134 	.globl _CF
                                    135 	.globl _TF2
                                    136 	.globl _EXF2
                                    137 	.globl _RCLK
                                    138 	.globl _TCLK
                                    139 	.globl _EXEN2
                                    140 	.globl _TR2
                                    141 	.globl _C_T2
                                    142 	.globl _CP_RL2
                                    143 	.globl _T2CON_7
                                    144 	.globl _T2CON_6
                                    145 	.globl _T2CON_5
                                    146 	.globl _T2CON_4
                                    147 	.globl _T2CON_3
                                    148 	.globl _T2CON_2
                                    149 	.globl _T2CON_1
                                    150 	.globl _T2CON_0
                                    151 	.globl _PT2
                                    152 	.globl _ET2
                                    153 	.globl _TMOD
                                    154 	.globl _TL1
                                    155 	.globl _TL0
                                    156 	.globl _TH1
                                    157 	.globl _TH0
                                    158 	.globl _TCON
                                    159 	.globl _SP
                                    160 	.globl _SCON
                                    161 	.globl _SBUF0
                                    162 	.globl _SBUF
                                    163 	.globl _PSW
                                    164 	.globl _PCON
                                    165 	.globl _P3
                                    166 	.globl _P2
                                    167 	.globl _P1
                                    168 	.globl _P0
                                    169 	.globl _IP
                                    170 	.globl _IE
                                    171 	.globl _DP0L
                                    172 	.globl _DPL
                                    173 	.globl _DP0H
                                    174 	.globl _DPH
                                    175 	.globl _B
                                    176 	.globl _ACC
                                    177 	.globl _EECON
                                    178 	.globl _KBF
                                    179 	.globl _KBE
                                    180 	.globl _KBLS
                                    181 	.globl _BRL
                                    182 	.globl _BDRCON
                                    183 	.globl _T2MOD
                                    184 	.globl _SPDAT
                                    185 	.globl _SPSTA
                                    186 	.globl _SPCON
                                    187 	.globl _SADEN
                                    188 	.globl _SADDR
                                    189 	.globl _WDTPRG
                                    190 	.globl _WDTRST
                                    191 	.globl _P5
                                    192 	.globl _P4
                                    193 	.globl _IPH1
                                    194 	.globl _IPL1
                                    195 	.globl _IPH0
                                    196 	.globl _IPL0
                                    197 	.globl _IEN1
                                    198 	.globl _IEN0
                                    199 	.globl _CMOD
                                    200 	.globl _CL
                                    201 	.globl _CH
                                    202 	.globl _CCON
                                    203 	.globl _CCAPM4
                                    204 	.globl _CCAPM3
                                    205 	.globl _CCAPM2
                                    206 	.globl _CCAPM1
                                    207 	.globl _CCAPM0
                                    208 	.globl _CCAP4L
                                    209 	.globl _CCAP3L
                                    210 	.globl _CCAP2L
                                    211 	.globl _CCAP1L
                                    212 	.globl _CCAP0L
                                    213 	.globl _CCAP4H
                                    214 	.globl _CCAP3H
                                    215 	.globl _CCAP2H
                                    216 	.globl _CCAP1H
                                    217 	.globl _CCAP0H
                                    218 	.globl _CKCON1
                                    219 	.globl _CKCON0
                                    220 	.globl _CKRL
                                    221 	.globl _AUXR1
                                    222 	.globl _AUXR
                                    223 	.globl _TH2
                                    224 	.globl _TL2
                                    225 	.globl _RCAP2H
                                    226 	.globl _RCAP2L
                                    227 	.globl _T2CON
                                    228 	.globl ___sdcc_heap
                                    229 ;--------------------------------------------------------
                                    230 ; special function registers
                                    231 ;--------------------------------------------------------
                                    232 	.area RSEG    (ABS,DATA)
      000000                        233 	.org 0x0000
                           0000C8   234 _T2CON	=	0x00c8
                           0000CA   235 _RCAP2L	=	0x00ca
                           0000CB   236 _RCAP2H	=	0x00cb
                           0000CC   237 _TL2	=	0x00cc
                           0000CD   238 _TH2	=	0x00cd
                           00008E   239 _AUXR	=	0x008e
                           0000A2   240 _AUXR1	=	0x00a2
                           000097   241 _CKRL	=	0x0097
                           00008F   242 _CKCON0	=	0x008f
                           0000AF   243 _CKCON1	=	0x00af
                           0000FA   244 _CCAP0H	=	0x00fa
                           0000FB   245 _CCAP1H	=	0x00fb
                           0000FC   246 _CCAP2H	=	0x00fc
                           0000FD   247 _CCAP3H	=	0x00fd
                           0000FE   248 _CCAP4H	=	0x00fe
                           0000EA   249 _CCAP0L	=	0x00ea
                           0000EB   250 _CCAP1L	=	0x00eb
                           0000EC   251 _CCAP2L	=	0x00ec
                           0000ED   252 _CCAP3L	=	0x00ed
                           0000EE   253 _CCAP4L	=	0x00ee
                           0000DA   254 _CCAPM0	=	0x00da
                           0000DB   255 _CCAPM1	=	0x00db
                           0000DC   256 _CCAPM2	=	0x00dc
                           0000DD   257 _CCAPM3	=	0x00dd
                           0000DE   258 _CCAPM4	=	0x00de
                           0000D8   259 _CCON	=	0x00d8
                           0000F9   260 _CH	=	0x00f9
                           0000E9   261 _CL	=	0x00e9
                           0000D9   262 _CMOD	=	0x00d9
                           0000A8   263 _IEN0	=	0x00a8
                           0000B1   264 _IEN1	=	0x00b1
                           0000B8   265 _IPL0	=	0x00b8
                           0000B7   266 _IPH0	=	0x00b7
                           0000B2   267 _IPL1	=	0x00b2
                           0000B3   268 _IPH1	=	0x00b3
                           0000C0   269 _P4	=	0x00c0
                           0000E8   270 _P5	=	0x00e8
                           0000A6   271 _WDTRST	=	0x00a6
                           0000A7   272 _WDTPRG	=	0x00a7
                           0000A9   273 _SADDR	=	0x00a9
                           0000B9   274 _SADEN	=	0x00b9
                           0000C3   275 _SPCON	=	0x00c3
                           0000C4   276 _SPSTA	=	0x00c4
                           0000C5   277 _SPDAT	=	0x00c5
                           0000C9   278 _T2MOD	=	0x00c9
                           00009B   279 _BDRCON	=	0x009b
                           00009A   280 _BRL	=	0x009a
                           00009C   281 _KBLS	=	0x009c
                           00009D   282 _KBE	=	0x009d
                           00009E   283 _KBF	=	0x009e
                           0000D2   284 _EECON	=	0x00d2
                           0000E0   285 _ACC	=	0x00e0
                           0000F0   286 _B	=	0x00f0
                           000083   287 _DPH	=	0x0083
                           000083   288 _DP0H	=	0x0083
                           000082   289 _DPL	=	0x0082
                           000082   290 _DP0L	=	0x0082
                           0000A8   291 _IE	=	0x00a8
                           0000B8   292 _IP	=	0x00b8
                           000080   293 _P0	=	0x0080
                           000090   294 _P1	=	0x0090
                           0000A0   295 _P2	=	0x00a0
                           0000B0   296 _P3	=	0x00b0
                           000087   297 _PCON	=	0x0087
                           0000D0   298 _PSW	=	0x00d0
                           000099   299 _SBUF	=	0x0099
                           000099   300 _SBUF0	=	0x0099
                           000098   301 _SCON	=	0x0098
                           000081   302 _SP	=	0x0081
                           000088   303 _TCON	=	0x0088
                           00008C   304 _TH0	=	0x008c
                           00008D   305 _TH1	=	0x008d
                           00008A   306 _TL0	=	0x008a
                           00008B   307 _TL1	=	0x008b
                           000089   308 _TMOD	=	0x0089
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           0000AD   314 _ET2	=	0x00ad
                           0000BD   315 _PT2	=	0x00bd
                           0000C8   316 _T2CON_0	=	0x00c8
                           0000C9   317 _T2CON_1	=	0x00c9
                           0000CA   318 _T2CON_2	=	0x00ca
                           0000CB   319 _T2CON_3	=	0x00cb
                           0000CC   320 _T2CON_4	=	0x00cc
                           0000CD   321 _T2CON_5	=	0x00cd
                           0000CE   322 _T2CON_6	=	0x00ce
                           0000CF   323 _T2CON_7	=	0x00cf
                           0000C8   324 _CP_RL2	=	0x00c8
                           0000C9   325 _C_T2	=	0x00c9
                           0000CA   326 _TR2	=	0x00ca
                           0000CB   327 _EXEN2	=	0x00cb
                           0000CC   328 _TCLK	=	0x00cc
                           0000CD   329 _RCLK	=	0x00cd
                           0000CE   330 _EXF2	=	0x00ce
                           0000CF   331 _TF2	=	0x00cf
                           0000DF   332 _CF	=	0x00df
                           0000DE   333 _CR	=	0x00de
                           0000DC   334 _CCF4	=	0x00dc
                           0000DB   335 _CCF3	=	0x00db
                           0000DA   336 _CCF2	=	0x00da
                           0000D9   337 _CCF1	=	0x00d9
                           0000D8   338 _CCF0	=	0x00d8
                           0000AE   339 _EC	=	0x00ae
                           0000BE   340 _PPCL	=	0x00be
                           0000BD   341 _PT2L	=	0x00bd
                           0000BC   342 _PSL	=	0x00bc
                           0000BB   343 _PT1L	=	0x00bb
                           0000BA   344 _PX1L	=	0x00ba
                           0000B9   345 _PT0L	=	0x00b9
                           0000B8   346 _PX0L	=	0x00b8
                           0000C0   347 _P4_0	=	0x00c0
                           0000C1   348 _P4_1	=	0x00c1
                           0000C2   349 _P4_2	=	0x00c2
                           0000C3   350 _P4_3	=	0x00c3
                           0000C4   351 _P4_4	=	0x00c4
                           0000C5   352 _P4_5	=	0x00c5
                           0000C6   353 _P4_6	=	0x00c6
                           0000C7   354 _P4_7	=	0x00c7
                           0000E8   355 _P5_0	=	0x00e8
                           0000E9   356 _P5_1	=	0x00e9
                           0000EA   357 _P5_2	=	0x00ea
                           0000EB   358 _P5_3	=	0x00eb
                           0000EC   359 _P5_4	=	0x00ec
                           0000ED   360 _P5_5	=	0x00ed
                           0000EE   361 _P5_6	=	0x00ee
                           0000EF   362 _P5_7	=	0x00ef
                           0000F0   363 _BREG_F0	=	0x00f0
                           0000F1   364 _BREG_F1	=	0x00f1
                           0000F2   365 _BREG_F2	=	0x00f2
                           0000F3   366 _BREG_F3	=	0x00f3
                           0000F4   367 _BREG_F4	=	0x00f4
                           0000F5   368 _BREG_F5	=	0x00f5
                           0000F6   369 _BREG_F6	=	0x00f6
                           0000F7   370 _BREG_F7	=	0x00f7
                           0000A8   371 _EX0	=	0x00a8
                           0000A9   372 _ET0	=	0x00a9
                           0000AA   373 _EX1	=	0x00aa
                           0000AB   374 _ET1	=	0x00ab
                           0000AC   375 _ES	=	0x00ac
                           0000AF   376 _EA	=	0x00af
                           0000B8   377 _PX0	=	0x00b8
                           0000B9   378 _PT0	=	0x00b9
                           0000BA   379 _PX1	=	0x00ba
                           0000BB   380 _PT1	=	0x00bb
                           0000BC   381 _PS	=	0x00bc
                           000080   382 _P0_0	=	0x0080
                           000081   383 _P0_1	=	0x0081
                           000082   384 _P0_2	=	0x0082
                           000083   385 _P0_3	=	0x0083
                           000084   386 _P0_4	=	0x0084
                           000085   387 _P0_5	=	0x0085
                           000086   388 _P0_6	=	0x0086
                           000087   389 _P0_7	=	0x0087
                           000090   390 _P1_0	=	0x0090
                           000091   391 _P1_1	=	0x0091
                           000092   392 _P1_2	=	0x0092
                           000093   393 _P1_3	=	0x0093
                           000094   394 _P1_4	=	0x0094
                           000095   395 _P1_5	=	0x0095
                           000096   396 _P1_6	=	0x0096
                           000097   397 _P1_7	=	0x0097
                           0000A0   398 _P2_0	=	0x00a0
                           0000A1   399 _P2_1	=	0x00a1
                           0000A2   400 _P2_2	=	0x00a2
                           0000A3   401 _P2_3	=	0x00a3
                           0000A4   402 _P2_4	=	0x00a4
                           0000A5   403 _P2_5	=	0x00a5
                           0000A6   404 _P2_6	=	0x00a6
                           0000A7   405 _P2_7	=	0x00a7
                           0000B0   406 _P3_0	=	0x00b0
                           0000B1   407 _P3_1	=	0x00b1
                           0000B2   408 _P3_2	=	0x00b2
                           0000B3   409 _P3_3	=	0x00b3
                           0000B4   410 _P3_4	=	0x00b4
                           0000B5   411 _P3_5	=	0x00b5
                           0000B6   412 _P3_6	=	0x00b6
                           0000B7   413 _P3_7	=	0x00b7
                           0000B0   414 _RXD	=	0x00b0
                           0000B0   415 _RXD0	=	0x00b0
                           0000B1   416 _TXD	=	0x00b1
                           0000B1   417 _TXD0	=	0x00b1
                           0000B2   418 _INT0	=	0x00b2
                           0000B3   419 _INT1	=	0x00b3
                           0000B4   420 _T0	=	0x00b4
                           0000B5   421 _T1	=	0x00b5
                           0000B6   422 _WR	=	0x00b6
                           0000B7   423 _RD	=	0x00b7
                           0000D0   424 _P	=	0x00d0
                           0000D1   425 _F1	=	0x00d1
                           0000D2   426 _OV	=	0x00d2
                           0000D3   427 _RS0	=	0x00d3
                           0000D4   428 _RS1	=	0x00d4
                           0000D5   429 _F0	=	0x00d5
                           0000D6   430 _AC	=	0x00d6
                           0000D7   431 _CY	=	0x00d7
                           000098   432 _RI	=	0x0098
                           000099   433 _TI	=	0x0099
                           00009A   434 _RB8	=	0x009a
                           00009B   435 _TB8	=	0x009b
                           00009C   436 _REN	=	0x009c
                           00009D   437 _SM2	=	0x009d
                           00009E   438 _SM1	=	0x009e
                           00009F   439 _SM0	=	0x009f
                           000088   440 _IT0	=	0x0088
                           000089   441 _IE0	=	0x0089
                           00008A   442 _IT1	=	0x008a
                           00008B   443 _IE1	=	0x008b
                           00008C   444 _TR0	=	0x008c
                           00008D   445 _TF0	=	0x008d
                           00008E   446 _TR1	=	0x008e
                           00008F   447 _TF1	=	0x008f
                                    448 ;--------------------------------------------------------
                                    449 ; overlayable register banks
                                    450 ;--------------------------------------------------------
                                    451 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        452 	.ds 8
                                    453 ;--------------------------------------------------------
                                    454 ; internal ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area DSEG    (DATA)
      000017                        457 _main_sloc0_1_0:
      000017                        458 	.ds 4
      00001B                        459 _main_sloc1_1_0:
      00001B                        460 	.ds 2
      00001D                        461 _main_sloc2_1_0:
      00001D                        462 	.ds 2
      00001F                        463 _main_sloc3_1_0:
      00001F                        464 	.ds 2
      000021                        465 _main_sloc4_1_0:
      000021                        466 	.ds 2
      000023                        467 _main_sloc5_1_0:
      000023                        468 	.ds 2
      000025                        469 _main_sloc6_1_0:
      000025                        470 	.ds 3
                                    471 ;--------------------------------------------------------
                                    472 ; overlayable items in internal ram
                                    473 ;--------------------------------------------------------
                                    474 ;--------------------------------------------------------
                                    475 ; Stack segment in internal ram
                                    476 ;--------------------------------------------------------
                                    477 	.area	SSEG
      000039                        478 __start__stack:
      000039                        479 	.ds	1
                                    480 
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
                                    494 ;--------------------------------------------------------
                                    495 ; paged external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area PSEG    (PAG,XDATA)
                                    498 ;--------------------------------------------------------
                                    499 ; external ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XSEG    (XDATA)
      00000F                        502 ___sdcc_heap::
      00000F                        503 	.ds 5000
      001397                        504 _main_buffer_array_131072_48:
      001397                        505 	.ds 60
      0013D3                        506 _main_buffer_count_131072_48:
      0013D3                        507 	.ds 2
      0013D5                        508 _main_inserted_131072_48:
      0013D5                        509 	.ds 2
      0013D7                        510 _main_since_last_131073_49:
      0013D7                        511 	.ds 2
      0013D9                        512 _main_switch_case_131074_52:
      0013D9                        513 	.ds 4
                                    514 ;--------------------------------------------------------
                                    515 ; absolute external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XABS    (ABS,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; external initialized ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XISEG   (XDATA)
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT0 (CODE)
                                    524 	.area GSINIT1 (CODE)
                                    525 	.area GSINIT2 (CODE)
                                    526 	.area GSINIT3 (CODE)
                                    527 	.area GSINIT4 (CODE)
                                    528 	.area GSINIT5 (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area CSEG    (CODE)
                                    532 ;--------------------------------------------------------
                                    533 ; interrupt vector
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
      003000                        536 __interrupt_vect:
      003000 02 30 06         [24]  537 	ljmp	__sdcc_gsinit_startup
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.globl __sdcc_gsinit_startup
                                    546 	.globl __sdcc_program_startup
                                    547 	.globl __start__stack
                                    548 	.globl __mcs51_genXINIT
                                    549 	.globl __mcs51_genXRAMCLEAR
                                    550 	.globl __mcs51_genRAMCLEAR
                                    551 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  552 	ljmp	__sdcc_program_startup
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
      003003                        558 __sdcc_program_startup:
      003003 02 32 60         [24]  559 	ljmp	_main
                                    560 ;	return from main will return to caller
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    567 ;------------------------------------------------------------
                                    568 ;	main.c:48: _sdcc_external_startup()
                                    569 ;	-----------------------------------------
                                    570 ;	 function _sdcc_external_startup
                                    571 ;	-----------------------------------------
      003259                        572 __sdcc_external_startup:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
                                    581 ;	main.c:50: AUXR |= (XRS1 | XRS0); // Configure XRAM
      003259 43 8E 0C         [24]  582 	orl	_AUXR,#0x0c
                                    583 ;	main.c:51: return 0;
      00325C 90 00 00         [24]  584 	mov	dptr,#0x0000
                                    585 ;	main.c:52: }
      00325F 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'main'
                                    589 ;------------------------------------------------------------
                                    590 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    591 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    592 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    593 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                    594 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                    595 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                    596 ;sloc6                     Allocated with name '_main_sloc6_1_0'
                                    597 ;buffer_array              Allocated with name '_main_buffer_array_131072_48'
                                    598 ;user_input_1              Allocated with name '_main_user_input_1_131072_48'
                                    599 ;user_input_2              Allocated with name '_main_user_input_2_131072_48'
                                    600 ;buffer_count              Allocated with name '_main_buffer_count_131072_48'
                                    601 ;buffer_0_index            Allocated with name '_main_buffer_0_index_131072_48'
                                    602 ;divisible                 Allocated with name '_main_divisible_131072_48'
                                    603 ;inserted                  Allocated with name '_main_inserted_131072_48'
                                    604 ;since_last                Allocated with name '_main_since_last_131073_49'
                                    605 ;switch_case               Allocated with name '_main_switch_case_131074_52'
                                    606 ;char_received             Allocated with name '_main_char_received_196610_53'
                                    607 ;index                     Allocated with name '_main_index_327682_73'
                                    608 ;index                     Allocated with name '_main_index_327682_82'
                                    609 ;j                         Allocated with name '_main_j_524290_86'
                                    610 ;k                         Allocated with name '_main_k_327682_89'
                                    611 ;l                         Allocated with name '_main_l_196610_92'
                                    612 ;------------------------------------------------------------
                                    613 ;	main.c:57: void main(void)
                                    614 ;	-----------------------------------------
                                    615 ;	 function main
                                    616 ;	-----------------------------------------
      003260                        617 _main:
                                    618 ;	main.c:59: while (1) {
      003260                        619 00185$:
                                    620 ;	main.c:66: int inserted = 0;
      003260 90 13 D5         [24]  621 	mov	dptr,#_main_inserted_131072_48
      003263 E4               [12]  622 	clr	a
      003264 F0               [24]  623 	movx	@dptr,a
      003265 A3               [24]  624 	inc	dptr
      003266 F0               [24]  625 	movx	@dptr,a
                                    626 ;	main.c:67: total_characters_count = 0;
      003267 90 14 42         [24]  627 	mov	dptr,#_total_characters_count
      00326A F0               [24]  628 	movx	@dptr,a
      00326B A3               [24]  629 	inc	dptr
      00326C F0               [24]  630 	movx	@dptr,a
                                    631 ;	main.c:68: int since_last = total_characters_count;
      00326D 90 13 D7         [24]  632 	mov	dptr,#_main_since_last_131073_49
      003270 F0               [24]  633 	movx	@dptr,a
      003271 A3               [24]  634 	inc	dptr
      003272 F0               [24]  635 	movx	@dptr,a
                                    636 ;	main.c:71: printf("Specify the buffer size (range 32 to 4800) divisible by 16: \n\r");
      003273 74 FC            [12]  637 	mov	a,#___str_0
      003275 C0 E0            [24]  638 	push	acc
      003277 74 4E            [12]  639 	mov	a,#(___str_0 >> 8)
      003279 C0 E0            [24]  640 	push	acc
      00327B 74 80            [12]  641 	mov	a,#0x80
      00327D C0 E0            [24]  642 	push	acc
      00327F 12 44 19         [24]  643 	lcall	_printf
      003282 15 81            [12]  644 	dec	sp
      003284 15 81            [12]  645 	dec	sp
      003286 15 81            [12]  646 	dec	sp
                                    647 ;	main.c:72: user_input_1 = get_buffer_size(32, 4800, DIVISIBLE);
      003288 90 00 00         [24]  648 	mov	dptr,#_get_buffer_size_PARM_2
      00328B 74 C0            [12]  649 	mov	a,#0xc0
      00328D F0               [24]  650 	movx	@dptr,a
      00328E 74 12            [12]  651 	mov	a,#0x12
      003290 A3               [24]  652 	inc	dptr
      003291 F0               [24]  653 	movx	@dptr,a
      003292 E4               [12]  654 	clr	a
      003293 A3               [24]  655 	inc	dptr
      003294 F0               [24]  656 	movx	@dptr,a
      003295 A3               [24]  657 	inc	dptr
      003296 F0               [24]  658 	movx	@dptr,a
      003297 90 00 04         [24]  659 	mov	dptr,#_get_buffer_size_PARM_3
      00329A 74 10            [12]  660 	mov	a,#0x10
      00329C F0               [24]  661 	movx	@dptr,a
      00329D E4               [12]  662 	clr	a
      00329E A3               [24]  663 	inc	dptr
      00329F F0               [24]  664 	movx	@dptr,a
      0032A0 A3               [24]  665 	inc	dptr
      0032A1 F0               [24]  666 	movx	@dptr,a
      0032A2 A3               [24]  667 	inc	dptr
      0032A3 F0               [24]  668 	movx	@dptr,a
      0032A4 90 00 20         [24]  669 	mov	dptr,#(0x20&0x00ff)
      0032A7 E4               [12]  670 	clr	a
      0032A8 F5 F0            [12]  671 	mov	b,a
      0032AA 12 30 62         [24]  672 	lcall	_get_buffer_size
      0032AD 85 82 1F         [24]  673 	mov	_main_sloc3_1_0,dpl
      0032B0 85 83 20         [24]  674 	mov	(_main_sloc3_1_0 + 1),dph
                                    675 ;	main.c:75: buffer_array[buffer_count].buffer_pointer = (uint8_t *)malloc(user_input_1 * sizeof(uint8_t));
      0032B3 AC 1F            [24]  676 	mov	r4,_main_sloc3_1_0
      0032B5 AD 20            [24]  677 	mov	r5,(_main_sloc3_1_0 + 1)
      0032B7 8C 82            [24]  678 	mov	dpl,r4
      0032B9 8D 83            [24]  679 	mov	dph,r5
      0032BB C0 05            [24]  680 	push	ar5
      0032BD C0 04            [24]  681 	push	ar4
      0032BF 12 40 C2         [24]  682 	lcall	_malloc
      0032C2 AA 82            [24]  683 	mov	r2,dpl
      0032C4 AB 83            [24]  684 	mov	r3,dph
      0032C6 D0 04            [24]  685 	pop	ar4
      0032C8 D0 05            [24]  686 	pop	ar5
      0032CA 90 13 97         [24]  687 	mov	dptr,#_main_buffer_array_131072_48
      0032CD EA               [12]  688 	mov	a,r2
      0032CE F0               [24]  689 	movx	@dptr,a
      0032CF EB               [12]  690 	mov	a,r3
      0032D0 A3               [24]  691 	inc	dptr
      0032D1 F0               [24]  692 	movx	@dptr,a
                                    693 ;	main.c:76: if (buffer_array[buffer_count].buffer_pointer == NULL) {
      0032D2 EA               [12]  694 	mov	a,r2
      0032D3 4B               [12]  695 	orl	a,r3
      0032D4 70 18            [24]  696 	jnz	00102$
                                    697 ;	main.c:77: printf("Failed to allocate memory\n\r");
      0032D6 74 3B            [12]  698 	mov	a,#___str_1
      0032D8 C0 E0            [24]  699 	push	acc
      0032DA 74 4F            [12]  700 	mov	a,#(___str_1 >> 8)
      0032DC C0 E0            [24]  701 	push	acc
      0032DE 74 80            [12]  702 	mov	a,#0x80
      0032E0 C0 E0            [24]  703 	push	acc
      0032E2 12 44 19         [24]  704 	lcall	_printf
      0032E5 15 81            [12]  705 	dec	sp
      0032E7 15 81            [12]  706 	dec	sp
      0032E9 15 81            [12]  707 	dec	sp
                                    708 ;	main.c:78: continue;
      0032EB 02 32 60         [24]  709 	ljmp	00185$
      0032EE                        710 00102$:
                                    711 ;	main.c:80: buffer_array[buffer_count].buffer_size = user_input_1;
      0032EE 90 13 99         [24]  712 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0002)
      0032F1 E5 1F            [12]  713 	mov	a,_main_sloc3_1_0
      0032F3 F0               [24]  714 	movx	@dptr,a
      0032F4 E5 20            [12]  715 	mov	a,(_main_sloc3_1_0 + 1)
      0032F6 A3               [24]  716 	inc	dptr
      0032F7 F0               [24]  717 	movx	@dptr,a
                                    718 ;	main.c:81: buffer_array[buffer_count].buffer_occupied = 0;
      0032F8 90 13 9B         [24]  719 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      0032FB E4               [12]  720 	clr	a
      0032FC F0               [24]  721 	movx	@dptr,a
      0032FD A3               [24]  722 	inc	dptr
      0032FE F0               [24]  723 	movx	@dptr,a
                                    724 ;	main.c:85: buffer_array[buffer_count].buffer_pointer = (uint8_t *)malloc(user_input_1 * sizeof(uint8_t));
      0032FF 8C 82            [24]  725 	mov	dpl,r4
      003301 8D 83            [24]  726 	mov	dph,r5
      003303 12 40 C2         [24]  727 	lcall	_malloc
      003306 AC 82            [24]  728 	mov	r4,dpl
      003308 AD 83            [24]  729 	mov	r5,dph
      00330A 90 13 9D         [24]  730 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0006)
      00330D EC               [12]  731 	mov	a,r4
      00330E F0               [24]  732 	movx	@dptr,a
      00330F ED               [12]  733 	mov	a,r5
      003310 A3               [24]  734 	inc	dptr
      003311 F0               [24]  735 	movx	@dptr,a
                                    736 ;	main.c:86: if (buffer_array[buffer_count].buffer_pointer == NULL) {
      003312 EC               [12]  737 	mov	a,r4
      003313 4D               [12]  738 	orl	a,r5
      003314 70 32            [24]  739 	jnz	00104$
                                    740 ;	main.c:87: printf("Failed to allocate memory\n\r");
      003316 74 3B            [12]  741 	mov	a,#___str_1
      003318 C0 E0            [24]  742 	push	acc
      00331A 74 4F            [12]  743 	mov	a,#(___str_1 >> 8)
      00331C C0 E0            [24]  744 	push	acc
      00331E 74 80            [12]  745 	mov	a,#0x80
      003320 C0 E0            [24]  746 	push	acc
      003322 12 44 19         [24]  747 	lcall	_printf
      003325 15 81            [12]  748 	dec	sp
      003327 15 81            [12]  749 	dec	sp
      003329 15 81            [12]  750 	dec	sp
                                    751 ;	main.c:88: free(buffer_array[0].buffer_pointer);
      00332B 90 13 97         [24]  752 	mov	dptr,#_main_buffer_array_131072_48
      00332E E0               [24]  753 	movx	a,@dptr
      00332F FC               [12]  754 	mov	r4,a
      003330 A3               [24]  755 	inc	dptr
      003331 E0               [24]  756 	movx	a,@dptr
      003332 FD               [12]  757 	mov	r5,a
      003333 7B 00            [12]  758 	mov	r3,#0x00
      003335 8C 82            [24]  759 	mov	dpl,r4
      003337 8D 83            [24]  760 	mov	dph,r5
      003339 8B F0            [24]  761 	mov	b,r3
      00333B 12 3D EF         [24]  762 	lcall	_free
                                    763 ;	main.c:89: buffer_array[0].buffer_pointer = NULL;
      00333E 90 13 97         [24]  764 	mov	dptr,#_main_buffer_array_131072_48
      003341 E4               [12]  765 	clr	a
      003342 F0               [24]  766 	movx	@dptr,a
      003343 A3               [24]  767 	inc	dptr
      003344 F0               [24]  768 	movx	@dptr,a
                                    769 ;	main.c:90: continue;
      003345 02 32 60         [24]  770 	ljmp	00185$
      003348                        771 00104$:
                                    772 ;	main.c:92: buffer_array[buffer_count].buffer_size = user_input_1;
      003348 90 13 9F         [24]  773 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0008)
      00334B E5 1F            [12]  774 	mov	a,_main_sloc3_1_0
      00334D F0               [24]  775 	movx	@dptr,a
      00334E E5 20            [12]  776 	mov	a,(_main_sloc3_1_0 + 1)
      003350 A3               [24]  777 	inc	dptr
      003351 F0               [24]  778 	movx	@dptr,a
                                    779 ;	main.c:93: buffer_array[buffer_count].buffer_occupied = 0;
      003352 90 13 A1         [24]  780 	mov	dptr,#(_main_buffer_array_131072_48 + 0x000a)
      003355 E4               [12]  781 	clr	a
      003356 F0               [24]  782 	movx	@dptr,a
      003357 A3               [24]  783 	inc	dptr
      003358 F0               [24]  784 	movx	@dptr,a
                                    785 ;	main.c:94: buffer_count++;
      003359 90 13 D3         [24]  786 	mov	dptr,#_main_buffer_count_131072_48
      00335C 74 02            [12]  787 	mov	a,#0x02
      00335E F0               [24]  788 	movx	@dptr,a
      00335F E4               [12]  789 	clr	a
      003360 A3               [24]  790 	inc	dptr
      003361 F0               [24]  791 	movx	@dptr,a
                                    792 ;	main.c:97: printf("* Enter any UPPERCASE letter to append characters into buffer 0\n\r");
      003362 74 57            [12]  793 	mov	a,#___str_2
      003364 C0 E0            [24]  794 	push	acc
      003366 74 4F            [12]  795 	mov	a,#(___str_2 >> 8)
      003368 C0 E0            [24]  796 	push	acc
      00336A 74 80            [12]  797 	mov	a,#0x80
      00336C C0 E0            [24]  798 	push	acc
      00336E 12 44 19         [24]  799 	lcall	_printf
      003371 15 81            [12]  800 	dec	sp
      003373 15 81            [12]  801 	dec	sp
      003375 15 81            [12]  802 	dec	sp
                                    803 ;	main.c:98: printf("* Press '+' to allocate a new buffer \n\r");
      003377 74 99            [12]  804 	mov	a,#___str_3
      003379 C0 E0            [24]  805 	push	acc
      00337B 74 4F            [12]  806 	mov	a,#(___str_3 >> 8)
      00337D C0 E0            [24]  807 	push	acc
      00337F 74 80            [12]  808 	mov	a,#0x80
      003381 C0 E0            [24]  809 	push	acc
      003383 12 44 19         [24]  810 	lcall	_printf
      003386 15 81            [12]  811 	dec	sp
      003388 15 81            [12]  812 	dec	sp
      00338A 15 81            [12]  813 	dec	sp
                                    814 ;	main.c:99: printf("* Press '-' to remove allocated buffers \n\r");
      00338C 74 C1            [12]  815 	mov	a,#___str_4
      00338E C0 E0            [24]  816 	push	acc
      003390 74 4F            [12]  817 	mov	a,#(___str_4 >> 8)
      003392 C0 E0            [24]  818 	push	acc
      003394 74 80            [12]  819 	mov	a,#0x80
      003396 C0 E0            [24]  820 	push	acc
      003398 12 44 19         [24]  821 	lcall	_printf
      00339B 15 81            [12]  822 	dec	sp
      00339D 15 81            [12]  823 	dec	sp
      00339F 15 81            [12]  824 	dec	sp
                                    825 ;	main.c:100: printf("* Press '?' to get the heap report \n\r");
      0033A1 74 EC            [12]  826 	mov	a,#___str_5
      0033A3 C0 E0            [24]  827 	push	acc
      0033A5 74 4F            [12]  828 	mov	a,#(___str_5 >> 8)
      0033A7 C0 E0            [24]  829 	push	acc
      0033A9 74 80            [12]  830 	mov	a,#0x80
      0033AB C0 E0            [24]  831 	push	acc
      0033AD 12 44 19         [24]  832 	lcall	_printf
      0033B0 15 81            [12]  833 	dec	sp
      0033B2 15 81            [12]  834 	dec	sp
      0033B4 15 81            [12]  835 	dec	sp
                                    836 ;	main.c:101: printf("* Press '=' to get buffer 0 content \n\r");
      0033B6 74 12            [12]  837 	mov	a,#___str_6
      0033B8 C0 E0            [24]  838 	push	acc
      0033BA 74 50            [12]  839 	mov	a,#(___str_6 >> 8)
      0033BC C0 E0            [24]  840 	push	acc
      0033BE 74 80            [12]  841 	mov	a,#0x80
      0033C0 C0 E0            [24]  842 	push	acc
      0033C2 12 44 19         [24]  843 	lcall	_printf
      0033C5 15 81            [12]  844 	dec	sp
      0033C7 15 81            [12]  845 	dec	sp
      0033C9 15 81            [12]  846 	dec	sp
                                    847 ;	main.c:102: printf("* Press '@' to restart the program \n\r");
      0033CB 74 39            [12]  848 	mov	a,#___str_7
      0033CD C0 E0            [24]  849 	push	acc
      0033CF 74 50            [12]  850 	mov	a,#(___str_7 >> 8)
      0033D1 C0 E0            [24]  851 	push	acc
      0033D3 74 80            [12]  852 	mov	a,#0x80
      0033D5 C0 E0            [24]  853 	push	acc
      0033D7 12 44 19         [24]  854 	lcall	_printf
      0033DA 15 81            [12]  855 	dec	sp
      0033DC 15 81            [12]  856 	dec	sp
      0033DE 15 81            [12]  857 	dec	sp
                                    858 ;	main.c:104: int32_t switch_case = 0;
      0033E0 90 13 D9         [24]  859 	mov	dptr,#_main_switch_case_131074_52
      0033E3 E4               [12]  860 	clr	a
      0033E4 F0               [24]  861 	movx	@dptr,a
      0033E5 A3               [24]  862 	inc	dptr
      0033E6 F0               [24]  863 	movx	@dptr,a
      0033E7 A3               [24]  864 	inc	dptr
      0033E8 F0               [24]  865 	movx	@dptr,a
      0033E9 A3               [24]  866 	inc	dptr
      0033EA F0               [24]  867 	movx	@dptr,a
                                    868 ;	main.c:107: while (1) {
      0033EB                        869 00181$:
                                    870 ;	main.c:108: __xdata uint8_t char_received = echo(); // Receive a character from UART
      0033EB 12 3D CA         [24]  871 	lcall	_echo
      0033EE AD 82            [24]  872 	mov	r5,dpl
                                    873 ;	main.c:111: if (((char_received >= 'A') && (char_received <= 'Z')) && !switch_case) {
      0033F0 8D 04            [24]  874 	mov	ar4,r5
      0033F2 BC 41 00         [24]  875 	cjne	r4,#0x41,00380$
      0033F5                        876 00380$:
      0033F5 40 2B            [24]  877 	jc	00136$
      0033F7 8D 04            [24]  878 	mov	ar4,r5
      0033F9 EC               [12]  879 	mov	a,r4
      0033FA 24 A5            [12]  880 	add	a,#0xff - 0x5a
      0033FC 40 24            [24]  881 	jc	00136$
      0033FE 90 13 D9         [24]  882 	mov	dptr,#_main_switch_case_131074_52
      003401 E0               [24]  883 	movx	a,@dptr
      003402 F5 F0            [12]  884 	mov	b,a
      003404 A3               [24]  885 	inc	dptr
      003405 E0               [24]  886 	movx	a,@dptr
      003406 42 F0            [12]  887 	orl	b,a
      003408 A3               [24]  888 	inc	dptr
      003409 E0               [24]  889 	movx	a,@dptr
      00340A 42 F0            [12]  890 	orl	b,a
      00340C A3               [24]  891 	inc	dptr
      00340D E0               [24]  892 	movx	a,@dptr
      00340E 45 F0            [12]  893 	orl	a,b
      003410 70 10            [24]  894 	jnz	00136$
                                    895 ;	main.c:112: switch_case = 1;
      003412 90 13 D9         [24]  896 	mov	dptr,#_main_switch_case_131074_52
      003415 74 01            [12]  897 	mov	a,#0x01
      003417 F0               [24]  898 	movx	@dptr,a
      003418 E4               [12]  899 	clr	a
      003419 A3               [24]  900 	inc	dptr
      00341A F0               [24]  901 	movx	@dptr,a
      00341B A3               [24]  902 	inc	dptr
      00341C F0               [24]  903 	movx	@dptr,a
      00341D A3               [24]  904 	inc	dptr
      00341E F0               [24]  905 	movx	@dptr,a
      00341F 02 35 D9         [24]  906 	ljmp	00137$
      003422                        907 00136$:
                                    908 ;	main.c:113: } else if (char_received == '+') {
      003422 BD 2B 59         [24]  909 	cjne	r5,#0x2b,00133$
                                    910 ;	main.c:114: if (!switch_case) {
      003425 90 13 D9         [24]  911 	mov	dptr,#_main_switch_case_131074_52
      003428 E0               [24]  912 	movx	a,@dptr
      003429 F5 F0            [12]  913 	mov	b,a
      00342B A3               [24]  914 	inc	dptr
      00342C E0               [24]  915 	movx	a,@dptr
      00342D 42 F0            [12]  916 	orl	b,a
      00342F A3               [24]  917 	inc	dptr
      003430 E0               [24]  918 	movx	a,@dptr
      003431 42 F0            [12]  919 	orl	b,a
      003433 A3               [24]  920 	inc	dptr
      003434 E0               [24]  921 	movx	a,@dptr
      003435 45 F0            [12]  922 	orl	a,b
      003437 70 29            [24]  923 	jnz	00106$
                                    924 ;	main.c:115: printf(" mode, specify buffer size (range 20 to 400): \n\r");
      003439 C0 05            [24]  925 	push	ar5
      00343B 74 5F            [12]  926 	mov	a,#___str_8
      00343D C0 E0            [24]  927 	push	acc
      00343F 74 50            [12]  928 	mov	a,#(___str_8 >> 8)
      003441 C0 E0            [24]  929 	push	acc
      003443 74 80            [12]  930 	mov	a,#0x80
      003445 C0 E0            [24]  931 	push	acc
      003447 12 44 19         [24]  932 	lcall	_printf
      00344A 15 81            [12]  933 	dec	sp
      00344C 15 81            [12]  934 	dec	sp
      00344E 15 81            [12]  935 	dec	sp
      003450 D0 05            [24]  936 	pop	ar5
                                    937 ;	main.c:116: switch_case = 2;
      003452 90 13 D9         [24]  938 	mov	dptr,#_main_switch_case_131074_52
      003455 74 02            [12]  939 	mov	a,#0x02
      003457 F0               [24]  940 	movx	@dptr,a
      003458 E4               [12]  941 	clr	a
      003459 A3               [24]  942 	inc	dptr
      00345A F0               [24]  943 	movx	@dptr,a
      00345B A3               [24]  944 	inc	dptr
      00345C F0               [24]  945 	movx	@dptr,a
      00345D A3               [24]  946 	inc	dptr
      00345E F0               [24]  947 	movx	@dptr,a
      00345F 02 35 D9         [24]  948 	ljmp	00137$
      003462                        949 00106$:
                                    950 ;	main.c:118: printf("First exit the current mode \n\r");
      003462 C0 05            [24]  951 	push	ar5
      003464 74 90            [12]  952 	mov	a,#___str_9
      003466 C0 E0            [24]  953 	push	acc
      003468 74 50            [12]  954 	mov	a,#(___str_9 >> 8)
      00346A C0 E0            [24]  955 	push	acc
      00346C 74 80            [12]  956 	mov	a,#0x80
      00346E C0 E0            [24]  957 	push	acc
      003470 12 44 19         [24]  958 	lcall	_printf
      003473 15 81            [12]  959 	dec	sp
      003475 15 81            [12]  960 	dec	sp
      003477 15 81            [12]  961 	dec	sp
      003479 D0 05            [24]  962 	pop	ar5
      00347B 02 35 D9         [24]  963 	ljmp	00137$
      00347E                        964 00133$:
                                    965 ;	main.c:120: } else if (char_received == '-') {
      00347E BD 2D 59         [24]  966 	cjne	r5,#0x2d,00130$
                                    967 ;	main.c:121: if (!switch_case) {
      003481 90 13 D9         [24]  968 	mov	dptr,#_main_switch_case_131074_52
      003484 E0               [24]  969 	movx	a,@dptr
      003485 F5 F0            [12]  970 	mov	b,a
      003487 A3               [24]  971 	inc	dptr
      003488 E0               [24]  972 	movx	a,@dptr
      003489 42 F0            [12]  973 	orl	b,a
      00348B A3               [24]  974 	inc	dptr
      00348C E0               [24]  975 	movx	a,@dptr
      00348D 42 F0            [12]  976 	orl	b,a
      00348F A3               [24]  977 	inc	dptr
      003490 E0               [24]  978 	movx	a,@dptr
      003491 45 F0            [12]  979 	orl	a,b
      003493 70 29            [24]  980 	jnz	00109$
                                    981 ;	main.c:122: printf(" mode, specify buffer number to destroy: \n\r");
      003495 C0 05            [24]  982 	push	ar5
      003497 74 AF            [12]  983 	mov	a,#___str_10
      003499 C0 E0            [24]  984 	push	acc
      00349B 74 50            [12]  985 	mov	a,#(___str_10 >> 8)
      00349D C0 E0            [24]  986 	push	acc
      00349F 74 80            [12]  987 	mov	a,#0x80
      0034A1 C0 E0            [24]  988 	push	acc
      0034A3 12 44 19         [24]  989 	lcall	_printf
      0034A6 15 81            [12]  990 	dec	sp
      0034A8 15 81            [12]  991 	dec	sp
      0034AA 15 81            [12]  992 	dec	sp
      0034AC D0 05            [24]  993 	pop	ar5
                                    994 ;	main.c:123: switch_case = 3;
      0034AE 90 13 D9         [24]  995 	mov	dptr,#_main_switch_case_131074_52
      0034B1 74 03            [12]  996 	mov	a,#0x03
      0034B3 F0               [24]  997 	movx	@dptr,a
      0034B4 E4               [12]  998 	clr	a
      0034B5 A3               [24]  999 	inc	dptr
      0034B6 F0               [24] 1000 	movx	@dptr,a
      0034B7 A3               [24] 1001 	inc	dptr
      0034B8 F0               [24] 1002 	movx	@dptr,a
      0034B9 A3               [24] 1003 	inc	dptr
      0034BA F0               [24] 1004 	movx	@dptr,a
      0034BB 02 35 D9         [24] 1005 	ljmp	00137$
      0034BE                       1006 00109$:
                                   1007 ;	main.c:125: printf("First exit the current mode \n\r");
      0034BE C0 05            [24] 1008 	push	ar5
      0034C0 74 90            [12] 1009 	mov	a,#___str_9
      0034C2 C0 E0            [24] 1010 	push	acc
      0034C4 74 50            [12] 1011 	mov	a,#(___str_9 >> 8)
      0034C6 C0 E0            [24] 1012 	push	acc
      0034C8 74 80            [12] 1013 	mov	a,#0x80
      0034CA C0 E0            [24] 1014 	push	acc
      0034CC 12 44 19         [24] 1015 	lcall	_printf
      0034CF 15 81            [12] 1016 	dec	sp
      0034D1 15 81            [12] 1017 	dec	sp
      0034D3 15 81            [12] 1018 	dec	sp
      0034D5 D0 05            [24] 1019 	pop	ar5
      0034D7 02 35 D9         [24] 1020 	ljmp	00137$
      0034DA                       1021 00130$:
                                   1022 ;	main.c:127: } else if (char_received == '?') {
      0034DA BD 3F 59         [24] 1023 	cjne	r5,#0x3f,00127$
                                   1024 ;	main.c:128: if (!switch_case) {
      0034DD 90 13 D9         [24] 1025 	mov	dptr,#_main_switch_case_131074_52
      0034E0 E0               [24] 1026 	movx	a,@dptr
      0034E1 F5 F0            [12] 1027 	mov	b,a
      0034E3 A3               [24] 1028 	inc	dptr
      0034E4 E0               [24] 1029 	movx	a,@dptr
      0034E5 42 F0            [12] 1030 	orl	b,a
      0034E7 A3               [24] 1031 	inc	dptr
      0034E8 E0               [24] 1032 	movx	a,@dptr
      0034E9 42 F0            [12] 1033 	orl	b,a
      0034EB A3               [24] 1034 	inc	dptr
      0034EC E0               [24] 1035 	movx	a,@dptr
      0034ED 45 F0            [12] 1036 	orl	a,b
      0034EF 70 29            [24] 1037 	jnz	00112$
                                   1038 ;	main.c:129: printf(" mode\n\r");
      0034F1 C0 05            [24] 1039 	push	ar5
      0034F3 74 DB            [12] 1040 	mov	a,#___str_11
      0034F5 C0 E0            [24] 1041 	push	acc
      0034F7 74 50            [12] 1042 	mov	a,#(___str_11 >> 8)
      0034F9 C0 E0            [24] 1043 	push	acc
      0034FB 74 80            [12] 1044 	mov	a,#0x80
      0034FD C0 E0            [24] 1045 	push	acc
      0034FF 12 44 19         [24] 1046 	lcall	_printf
      003502 15 81            [12] 1047 	dec	sp
      003504 15 81            [12] 1048 	dec	sp
      003506 15 81            [12] 1049 	dec	sp
      003508 D0 05            [24] 1050 	pop	ar5
                                   1051 ;	main.c:130: switch_case = 4;
      00350A 90 13 D9         [24] 1052 	mov	dptr,#_main_switch_case_131074_52
      00350D 74 04            [12] 1053 	mov	a,#0x04
      00350F F0               [24] 1054 	movx	@dptr,a
      003510 E4               [12] 1055 	clr	a
      003511 A3               [24] 1056 	inc	dptr
      003512 F0               [24] 1057 	movx	@dptr,a
      003513 A3               [24] 1058 	inc	dptr
      003514 F0               [24] 1059 	movx	@dptr,a
      003515 A3               [24] 1060 	inc	dptr
      003516 F0               [24] 1061 	movx	@dptr,a
      003517 02 35 D9         [24] 1062 	ljmp	00137$
      00351A                       1063 00112$:
                                   1064 ;	main.c:132: printf("First exit the current mode \n\r");
      00351A C0 05            [24] 1065 	push	ar5
      00351C 74 90            [12] 1066 	mov	a,#___str_9
      00351E C0 E0            [24] 1067 	push	acc
      003520 74 50            [12] 1068 	mov	a,#(___str_9 >> 8)
      003522 C0 E0            [24] 1069 	push	acc
      003524 74 80            [12] 1070 	mov	a,#0x80
      003526 C0 E0            [24] 1071 	push	acc
      003528 12 44 19         [24] 1072 	lcall	_printf
      00352B 15 81            [12] 1073 	dec	sp
      00352D 15 81            [12] 1074 	dec	sp
      00352F 15 81            [12] 1075 	dec	sp
      003531 D0 05            [24] 1076 	pop	ar5
      003533 02 35 D9         [24] 1077 	ljmp	00137$
      003536                       1078 00127$:
                                   1079 ;	main.c:134: } else if ((char_received == '\n') || (char_received == '\r')) {
      003536 BD 0A 02         [24] 1080 	cjne	r5,#0x0a,00393$
      003539 80 03            [24] 1081 	sjmp	00122$
      00353B                       1082 00393$:
      00353B BD 0D 26         [24] 1083 	cjne	r5,#0x0d,00123$
      00353E                       1084 00122$:
                                   1085 ;	main.c:135: printf("\n\r");
      00353E C0 05            [24] 1086 	push	ar5
      003540 74 E3            [12] 1087 	mov	a,#___str_12
      003542 C0 E0            [24] 1088 	push	acc
      003544 74 50            [12] 1089 	mov	a,#(___str_12 >> 8)
      003546 C0 E0            [24] 1090 	push	acc
      003548 74 80            [12] 1091 	mov	a,#0x80
      00354A C0 E0            [24] 1092 	push	acc
      00354C 12 44 19         [24] 1093 	lcall	_printf
      00354F 15 81            [12] 1094 	dec	sp
      003551 15 81            [12] 1095 	dec	sp
      003553 15 81            [12] 1096 	dec	sp
      003555 D0 05            [24] 1097 	pop	ar5
                                   1098 ;	main.c:136: switch_case = 0;
      003557 90 13 D9         [24] 1099 	mov	dptr,#_main_switch_case_131074_52
      00355A E4               [12] 1100 	clr	a
      00355B F0               [24] 1101 	movx	@dptr,a
      00355C A3               [24] 1102 	inc	dptr
      00355D F0               [24] 1103 	movx	@dptr,a
      00355E A3               [24] 1104 	inc	dptr
      00355F F0               [24] 1105 	movx	@dptr,a
      003560 A3               [24] 1106 	inc	dptr
      003561 F0               [24] 1107 	movx	@dptr,a
      003562 80 75            [24] 1108 	sjmp	00137$
      003564                       1109 00123$:
                                   1110 ;	main.c:137: } else if (char_received == '=') {
      003564 BD 3D 57         [24] 1111 	cjne	r5,#0x3d,00120$
                                   1112 ;	main.c:138: if (!switch_case) {
      003567 90 13 D9         [24] 1113 	mov	dptr,#_main_switch_case_131074_52
      00356A E0               [24] 1114 	movx	a,@dptr
      00356B F5 F0            [12] 1115 	mov	b,a
      00356D A3               [24] 1116 	inc	dptr
      00356E E0               [24] 1117 	movx	a,@dptr
      00356F 42 F0            [12] 1118 	orl	b,a
      003571 A3               [24] 1119 	inc	dptr
      003572 E0               [24] 1120 	movx	a,@dptr
      003573 42 F0            [12] 1121 	orl	b,a
      003575 A3               [24] 1122 	inc	dptr
      003576 E0               [24] 1123 	movx	a,@dptr
      003577 45 F0            [12] 1124 	orl	a,b
      003579 70 28            [24] 1125 	jnz	00115$
                                   1126 ;	main.c:139: printf(" mode\n\r");
      00357B C0 05            [24] 1127 	push	ar5
      00357D 74 DB            [12] 1128 	mov	a,#___str_11
      00357F C0 E0            [24] 1129 	push	acc
      003581 74 50            [12] 1130 	mov	a,#(___str_11 >> 8)
      003583 C0 E0            [24] 1131 	push	acc
      003585 74 80            [12] 1132 	mov	a,#0x80
      003587 C0 E0            [24] 1133 	push	acc
      003589 12 44 19         [24] 1134 	lcall	_printf
      00358C 15 81            [12] 1135 	dec	sp
      00358E 15 81            [12] 1136 	dec	sp
      003590 15 81            [12] 1137 	dec	sp
      003592 D0 05            [24] 1138 	pop	ar5
                                   1139 ;	main.c:140: switch_case = 5;
      003594 90 13 D9         [24] 1140 	mov	dptr,#_main_switch_case_131074_52
      003597 74 05            [12] 1141 	mov	a,#0x05
      003599 F0               [24] 1142 	movx	@dptr,a
      00359A E4               [12] 1143 	clr	a
      00359B A3               [24] 1144 	inc	dptr
      00359C F0               [24] 1145 	movx	@dptr,a
      00359D A3               [24] 1146 	inc	dptr
      00359E F0               [24] 1147 	movx	@dptr,a
      00359F A3               [24] 1148 	inc	dptr
      0035A0 F0               [24] 1149 	movx	@dptr,a
      0035A1 80 36            [24] 1150 	sjmp	00137$
      0035A3                       1151 00115$:
                                   1152 ;	main.c:142: printf("First exit the current mode \n\r");
      0035A3 C0 05            [24] 1153 	push	ar5
      0035A5 74 90            [12] 1154 	mov	a,#___str_9
      0035A7 C0 E0            [24] 1155 	push	acc
      0035A9 74 50            [12] 1156 	mov	a,#(___str_9 >> 8)
      0035AB C0 E0            [24] 1157 	push	acc
      0035AD 74 80            [12] 1158 	mov	a,#0x80
      0035AF C0 E0            [24] 1159 	push	acc
      0035B1 12 44 19         [24] 1160 	lcall	_printf
      0035B4 15 81            [12] 1161 	dec	sp
      0035B6 15 81            [12] 1162 	dec	sp
      0035B8 15 81            [12] 1163 	dec	sp
      0035BA D0 05            [24] 1164 	pop	ar5
      0035BC 80 1B            [24] 1165 	sjmp	00137$
      0035BE                       1166 00120$:
                                   1167 ;	main.c:144: } else if (char_received == '@') {
      0035BE BD 40 18         [24] 1168 	cjne	r5,#0x40,00137$
                                   1169 ;	main.c:145: printf(" mode - restarting program \n\r");
      0035C1 74 E6            [12] 1170 	mov	a,#___str_13
      0035C3 C0 E0            [24] 1171 	push	acc
      0035C5 74 50            [12] 1172 	mov	a,#(___str_13 >> 8)
      0035C7 C0 E0            [24] 1173 	push	acc
      0035C9 74 80            [12] 1174 	mov	a,#0x80
      0035CB C0 E0            [24] 1175 	push	acc
      0035CD 12 44 19         [24] 1176 	lcall	_printf
      0035D0 15 81            [12] 1177 	dec	sp
      0035D2 15 81            [12] 1178 	dec	sp
      0035D4 15 81            [12] 1179 	dec	sp
                                   1180 ;	main.c:146: break;
      0035D6 02 3C CC         [24] 1181 	ljmp	00245$
      0035D9                       1182 00137$:
                                   1183 ;	main.c:150: switch (switch_case) {
      0035D9 90 13 D9         [24] 1184 	mov	dptr,#_main_switch_case_131074_52
      0035DC E0               [24] 1185 	movx	a,@dptr
      0035DD F9               [12] 1186 	mov	r1,a
      0035DE A3               [24] 1187 	inc	dptr
      0035DF E0               [24] 1188 	movx	a,@dptr
      0035E0 FA               [12] 1189 	mov	r2,a
      0035E1 A3               [24] 1190 	inc	dptr
      0035E2 E0               [24] 1191 	movx	a,@dptr
      0035E3 FB               [12] 1192 	mov	r3,a
      0035E4 A3               [24] 1193 	inc	dptr
      0035E5 E0               [24] 1194 	movx	a,@dptr
      0035E6 FC               [12] 1195 	mov	r4,a
      0035E7 B9 01 0B         [24] 1196 	cjne	r1,#0x01,00401$
      0035EA BA 00 08         [24] 1197 	cjne	r2,#0x00,00401$
      0035ED BB 00 05         [24] 1198 	cjne	r3,#0x00,00401$
      0035F0 BC 00 02         [24] 1199 	cjne	r4,#0x00,00401$
      0035F3 80 3F            [24] 1200 	sjmp	00140$
      0035F5                       1201 00401$:
      0035F5 B9 02 0C         [24] 1202 	cjne	r1,#0x02,00402$
      0035F8 BA 00 09         [24] 1203 	cjne	r2,#0x00,00402$
      0035FB BB 00 06         [24] 1204 	cjne	r3,#0x00,00402$
      0035FE BC 00 03         [24] 1205 	cjne	r4,#0x00,00402$
      003601 02 36 D3         [24] 1206 	ljmp	00148$
      003604                       1207 00402$:
      003604 B9 03 0C         [24] 1208 	cjne	r1,#0x03,00403$
      003607 BA 00 09         [24] 1209 	cjne	r2,#0x00,00403$
      00360A BB 00 06         [24] 1210 	cjne	r3,#0x00,00403$
      00360D BC 00 03         [24] 1211 	cjne	r4,#0x00,00403$
      003610 02 38 34         [24] 1212 	ljmp	00157$
      003613                       1213 00403$:
      003613 B9 04 0C         [24] 1214 	cjne	r1,#0x04,00404$
      003616 BA 00 09         [24] 1215 	cjne	r2,#0x00,00404$
      003619 BB 00 06         [24] 1216 	cjne	r3,#0x00,00404$
      00361C BC 00 03         [24] 1217 	cjne	r4,#0x00,00404$
      00361F 02 39 72         [24] 1218 	ljmp	00165$
      003622                       1219 00404$:
      003622 B9 05 0C         [24] 1220 	cjne	r1,#0x05,00405$
      003625 BA 00 09         [24] 1221 	cjne	r2,#0x00,00405$
      003628 BB 00 06         [24] 1222 	cjne	r3,#0x00,00405$
      00362B BC 00 03         [24] 1223 	cjne	r4,#0x00,00405$
      00362E 02 3B F6         [24] 1224 	ljmp	00243$
      003631                       1225 00405$:
      003631 02 33 EB         [24] 1226 	ljmp	00181$
                                   1227 ;	main.c:151: case 1:
      003634                       1228 00140$:
                                   1229 ;	main.c:152: if ((char_received == '\n') || (char_received == '\r')) {
      003634 BD 0A 02         [24] 1230 	cjne	r5,#0x0a,00406$
      003637 80 03            [24] 1231 	sjmp	00144$
      003639                       1232 00406$:
      003639 BD 0D 23         [24] 1233 	cjne	r5,#0x0d,00145$
      00363C                       1234 00144$:
                                   1235 ;	main.c:153: printf("Characters added to buffer 0 - exiting mode \n\r");
      00363C 74 04            [12] 1236 	mov	a,#___str_14
      00363E C0 E0            [24] 1237 	push	acc
      003640 74 51            [12] 1238 	mov	a,#(___str_14 >> 8)
      003642 C0 E0            [24] 1239 	push	acc
      003644 74 80            [12] 1240 	mov	a,#0x80
      003646 C0 E0            [24] 1241 	push	acc
      003648 12 44 19         [24] 1242 	lcall	_printf
      00364B 15 81            [12] 1243 	dec	sp
      00364D 15 81            [12] 1244 	dec	sp
      00364F 15 81            [12] 1245 	dec	sp
                                   1246 ;	main.c:154: switch_case = 0;
      003651 90 13 D9         [24] 1247 	mov	dptr,#_main_switch_case_131074_52
      003654 E4               [12] 1248 	clr	a
      003655 F0               [24] 1249 	movx	@dptr,a
      003656 A3               [24] 1250 	inc	dptr
      003657 F0               [24] 1251 	movx	@dptr,a
      003658 A3               [24] 1252 	inc	dptr
      003659 F0               [24] 1253 	movx	@dptr,a
      00365A A3               [24] 1254 	inc	dptr
      00365B F0               [24] 1255 	movx	@dptr,a
      00365C 02 33 EB         [24] 1256 	ljmp	00181$
      00365F                       1257 00145$:
                                   1258 ;	main.c:155: } else if (buffer_array[0].buffer_occupied < user_input_1) {
      00365F 90 13 9B         [24] 1259 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      003662 E0               [24] 1260 	movx	a,@dptr
      003663 FB               [12] 1261 	mov	r3,a
      003664 A3               [24] 1262 	inc	dptr
      003665 E0               [24] 1263 	movx	a,@dptr
      003666 FC               [12] 1264 	mov	r4,a
      003667 C3               [12] 1265 	clr	c
      003668 EB               [12] 1266 	mov	a,r3
      003669 95 1F            [12] 1267 	subb	a,_main_sloc3_1_0
      00366B EC               [12] 1268 	mov	a,r4
      00366C 64 80            [12] 1269 	xrl	a,#0x80
      00366E 85 20 F0         [24] 1270 	mov	b,(_main_sloc3_1_0 + 1)
      003671 63 F0 80         [24] 1271 	xrl	b,#0x80
      003674 95 F0            [12] 1272 	subb	a,b
      003676 50 32            [24] 1273 	jnc	00142$
                                   1274 ;	main.c:156: buffer_array[0].buffer_pointer[buffer_array[0].buffer_occupied] = char_received;
      003678 90 13 97         [24] 1275 	mov	dptr,#_main_buffer_array_131072_48
      00367B E0               [24] 1276 	movx	a,@dptr
      00367C FB               [12] 1277 	mov	r3,a
      00367D A3               [24] 1278 	inc	dptr
      00367E E0               [24] 1279 	movx	a,@dptr
      00367F FC               [12] 1280 	mov	r4,a
      003680 90 13 9B         [24] 1281 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      003683 E0               [24] 1282 	movx	a,@dptr
      003684 F9               [12] 1283 	mov	r1,a
      003685 A3               [24] 1284 	inc	dptr
      003686 E0               [24] 1285 	movx	a,@dptr
      003687 FA               [12] 1286 	mov	r2,a
      003688 E9               [12] 1287 	mov	a,r1
      003689 2B               [12] 1288 	add	a,r3
      00368A F5 82            [12] 1289 	mov	dpl,a
      00368C EA               [12] 1290 	mov	a,r2
      00368D 3C               [12] 1291 	addc	a,r4
      00368E F5 83            [12] 1292 	mov	dph,a
      003690 ED               [12] 1293 	mov	a,r5
      003691 F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	main.c:157: buffer_array[0].buffer_occupied++;
      003692 90 13 9B         [24] 1296 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      003695 E0               [24] 1297 	movx	a,@dptr
      003696 FB               [12] 1298 	mov	r3,a
      003697 A3               [24] 1299 	inc	dptr
      003698 E0               [24] 1300 	movx	a,@dptr
      003699 FC               [12] 1301 	mov	r4,a
      00369A 0B               [12] 1302 	inc	r3
      00369B BB 00 01         [24] 1303 	cjne	r3,#0x00,00410$
      00369E 0C               [12] 1304 	inc	r4
      00369F                       1305 00410$:
      00369F 90 13 9B         [24] 1306 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      0036A2 EB               [12] 1307 	mov	a,r3
      0036A3 F0               [24] 1308 	movx	@dptr,a
      0036A4 EC               [12] 1309 	mov	a,r4
      0036A5 A3               [24] 1310 	inc	dptr
      0036A6 F0               [24] 1311 	movx	@dptr,a
      0036A7 02 33 EB         [24] 1312 	ljmp	00181$
      0036AA                       1313 00142$:
                                   1314 ;	main.c:159: printf("\n\rNot enough memory to load, echoing to serial output %c\n\r", char_received);
      0036AA 7C 00            [12] 1315 	mov	r4,#0x00
      0036AC C0 05            [24] 1316 	push	ar5
      0036AE C0 04            [24] 1317 	push	ar4
      0036B0 74 33            [12] 1318 	mov	a,#___str_15
      0036B2 C0 E0            [24] 1319 	push	acc
      0036B4 74 51            [12] 1320 	mov	a,#(___str_15 >> 8)
      0036B6 C0 E0            [24] 1321 	push	acc
      0036B8 74 80            [12] 1322 	mov	a,#0x80
      0036BA C0 E0            [24] 1323 	push	acc
      0036BC 12 44 19         [24] 1324 	lcall	_printf
      0036BF E5 81            [12] 1325 	mov	a,sp
      0036C1 24 FB            [12] 1326 	add	a,#0xfb
      0036C3 F5 81            [12] 1327 	mov	sp,a
                                   1328 ;	main.c:160: switch_case = 0;
      0036C5 90 13 D9         [24] 1329 	mov	dptr,#_main_switch_case_131074_52
      0036C8 E4               [12] 1330 	clr	a
      0036C9 F0               [24] 1331 	movx	@dptr,a
      0036CA A3               [24] 1332 	inc	dptr
      0036CB F0               [24] 1333 	movx	@dptr,a
      0036CC A3               [24] 1334 	inc	dptr
      0036CD F0               [24] 1335 	movx	@dptr,a
      0036CE A3               [24] 1336 	inc	dptr
      0036CF F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	main.c:162: break;
      0036D0 02 33 EB         [24] 1339 	ljmp	00181$
                                   1340 ;	main.c:163: case 2:
      0036D3                       1341 00148$:
                                   1342 ;	main.c:165: user_input_2 = get_buffer_size(20, 400, DIVISIBLE);
      0036D3 90 00 00         [24] 1343 	mov	dptr,#_get_buffer_size_PARM_2
      0036D6 74 90            [12] 1344 	mov	a,#0x90
      0036D8 F0               [24] 1345 	movx	@dptr,a
      0036D9 74 01            [12] 1346 	mov	a,#0x01
      0036DB A3               [24] 1347 	inc	dptr
      0036DC F0               [24] 1348 	movx	@dptr,a
      0036DD E4               [12] 1349 	clr	a
      0036DE A3               [24] 1350 	inc	dptr
      0036DF F0               [24] 1351 	movx	@dptr,a
      0036E0 A3               [24] 1352 	inc	dptr
      0036E1 F0               [24] 1353 	movx	@dptr,a
      0036E2 90 00 04         [24] 1354 	mov	dptr,#_get_buffer_size_PARM_3
      0036E5 74 10            [12] 1355 	mov	a,#0x10
      0036E7 F0               [24] 1356 	movx	@dptr,a
      0036E8 E4               [12] 1357 	clr	a
      0036E9 A3               [24] 1358 	inc	dptr
      0036EA F0               [24] 1359 	movx	@dptr,a
      0036EB A3               [24] 1360 	inc	dptr
      0036EC F0               [24] 1361 	movx	@dptr,a
      0036ED A3               [24] 1362 	inc	dptr
      0036EE F0               [24] 1363 	movx	@dptr,a
      0036EF 90 00 14         [24] 1364 	mov	dptr,#(0x14&0x00ff)
      0036F2 E4               [12] 1365 	clr	a
      0036F3 F5 F0            [12] 1366 	mov	b,a
      0036F5 12 30 62         [24] 1367 	lcall	_get_buffer_size
      0036F8 85 82 1D         [24] 1368 	mov	_main_sloc2_1_0,dpl
      0036FB 85 83 1E         [24] 1369 	mov	(_main_sloc2_1_0 + 1),dph
                                   1370 ;	main.c:166: for (int32_t index = 1; index < 10; index++) {
      0036FE 78 01            [12] 1371 	mov	r0,#0x01
      003700 79 00            [12] 1372 	mov	r1,#0x00
      003702 7A 00            [12] 1373 	mov	r2,#0x00
      003704 7B 00            [12] 1374 	mov	r3,#0x00
      003706                       1375 00188$:
      003706 C3               [12] 1376 	clr	c
      003707 E8               [12] 1377 	mov	a,r0
      003708 94 0A            [12] 1378 	subb	a,#0x0a
      00370A E9               [12] 1379 	mov	a,r1
      00370B 94 00            [12] 1380 	subb	a,#0x00
      00370D EA               [12] 1381 	mov	a,r2
      00370E 94 00            [12] 1382 	subb	a,#0x00
      003710 EB               [12] 1383 	mov	a,r3
      003711 64 80            [12] 1384 	xrl	a,#0x80
      003713 94 80            [12] 1385 	subb	a,#0x80
      003715 40 03            [24] 1386 	jc	00411$
      003717 02 37 E8         [24] 1387 	ljmp	00154$
      00371A                       1388 00411$:
                                   1389 ;	main.c:167: if (buffer_array[index].buffer_pointer == NULL) {
      00371A 90 13 FE         [24] 1390 	mov	dptr,#__mullong_PARM_2
      00371D E8               [12] 1391 	mov	a,r0
      00371E F0               [24] 1392 	movx	@dptr,a
      00371F E9               [12] 1393 	mov	a,r1
      003720 A3               [24] 1394 	inc	dptr
      003721 F0               [24] 1395 	movx	@dptr,a
      003722 EA               [12] 1396 	mov	a,r2
      003723 A3               [24] 1397 	inc	dptr
      003724 F0               [24] 1398 	movx	@dptr,a
      003725 EB               [12] 1399 	mov	a,r3
      003726 A3               [24] 1400 	inc	dptr
      003727 F0               [24] 1401 	movx	@dptr,a
      003728 90 00 06         [24] 1402 	mov	dptr,#(0x06&0x00ff)
      00372B E4               [12] 1403 	clr	a
      00372C F5 F0            [12] 1404 	mov	b,a
      00372E C0 03            [24] 1405 	push	ar3
      003730 C0 02            [24] 1406 	push	ar2
      003732 C0 01            [24] 1407 	push	ar1
      003734 C0 00            [24] 1408 	push	ar0
      003736 12 42 4B         [24] 1409 	lcall	__mullong
      003739 85 82 17         [24] 1410 	mov	_main_sloc0_1_0,dpl
      00373C 85 83 18         [24] 1411 	mov	(_main_sloc0_1_0 + 1),dph
      00373F 85 F0 19         [24] 1412 	mov	(_main_sloc0_1_0 + 2),b
      003742 F5 1A            [12] 1413 	mov	(_main_sloc0_1_0 + 3),a
      003744 D0 00            [24] 1414 	pop	ar0
      003746 D0 01            [24] 1415 	pop	ar1
      003748 D0 02            [24] 1416 	pop	ar2
      00374A D0 03            [24] 1417 	pop	ar3
      00374C E5 17            [12] 1418 	mov	a,_main_sloc0_1_0
      00374E 24 97            [12] 1419 	add	a,#_main_buffer_array_131072_48
      003750 F5 1B            [12] 1420 	mov	_main_sloc1_1_0,a
      003752 E5 18            [12] 1421 	mov	a,(_main_sloc0_1_0 + 1)
      003754 34 13            [12] 1422 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003756 F5 1C            [12] 1423 	mov	(_main_sloc1_1_0 + 1),a
      003758 85 1B 82         [24] 1424 	mov	dpl,_main_sloc1_1_0
      00375B 85 1C 83         [24] 1425 	mov	dph,(_main_sloc1_1_0 + 1)
      00375E E0               [24] 1426 	movx	a,@dptr
      00375F FC               [12] 1427 	mov	r4,a
      003760 A3               [24] 1428 	inc	dptr
      003761 E0               [24] 1429 	movx	a,@dptr
      003762 FD               [12] 1430 	mov	r5,a
      003763 4C               [12] 1431 	orl	a,r4
      003764 70 72            [24] 1432 	jnz	00189$
                                   1433 ;	main.c:168: buffer_array[index].buffer_pointer = (int8_t *)malloc(user_input_2 * sizeof(int8_t));
      003766 AC 1D            [24] 1434 	mov	r4,_main_sloc2_1_0
      003768 AD 1E            [24] 1435 	mov	r5,(_main_sloc2_1_0 + 1)
      00376A 8C 82            [24] 1436 	mov	dpl,r4
      00376C 8D 83            [24] 1437 	mov	dph,r5
      00376E C0 03            [24] 1438 	push	ar3
      003770 C0 02            [24] 1439 	push	ar2
      003772 C0 01            [24] 1440 	push	ar1
      003774 C0 00            [24] 1441 	push	ar0
      003776 12 40 C2         [24] 1442 	lcall	_malloc
      003779 AC 82            [24] 1443 	mov	r4,dpl
      00377B AD 83            [24] 1444 	mov	r5,dph
      00377D D0 00            [24] 1445 	pop	ar0
      00377F D0 01            [24] 1446 	pop	ar1
      003781 D0 02            [24] 1447 	pop	ar2
      003783 D0 03            [24] 1448 	pop	ar3
      003785 85 1B 82         [24] 1449 	mov	dpl,_main_sloc1_1_0
      003788 85 1C 83         [24] 1450 	mov	dph,(_main_sloc1_1_0 + 1)
      00378B EC               [12] 1451 	mov	a,r4
      00378C F0               [24] 1452 	movx	@dptr,a
      00378D ED               [12] 1453 	mov	a,r5
      00378E A3               [24] 1454 	inc	dptr
      00378F F0               [24] 1455 	movx	@dptr,a
                                   1456 ;	main.c:169: if (buffer_array[index].buffer_pointer == NULL) {
      003790 EC               [12] 1457 	mov	a,r4
      003791 4D               [12] 1458 	orl	a,r5
      003792 70 17            [24] 1459 	jnz	00150$
                                   1460 ;	main.c:170: printf("Failed to allocate memory  - exiting mode \n\r");
      003794 74 6E            [12] 1461 	mov	a,#___str_16
      003796 C0 E0            [24] 1462 	push	acc
      003798 74 51            [12] 1463 	mov	a,#(___str_16 >> 8)
      00379A C0 E0            [24] 1464 	push	acc
      00379C 74 80            [12] 1465 	mov	a,#0x80
      00379E C0 E0            [24] 1466 	push	acc
      0037A0 12 44 19         [24] 1467 	lcall	_printf
      0037A3 15 81            [12] 1468 	dec	sp
      0037A5 15 81            [12] 1469 	dec	sp
      0037A7 15 81            [12] 1470 	dec	sp
      0037A9 80 3D            [24] 1471 	sjmp	00154$
      0037AB                       1472 00150$:
                                   1473 ;	main.c:172: buffer_array[index].buffer_size = user_input_2;
      0037AB E5 17            [12] 1474 	mov	a,_main_sloc0_1_0
      0037AD 24 97            [12] 1475 	add	a,#_main_buffer_array_131072_48
      0037AF FC               [12] 1476 	mov	r4,a
      0037B0 E5 18            [12] 1477 	mov	a,(_main_sloc0_1_0 + 1)
      0037B2 34 13            [12] 1478 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      0037B4 FD               [12] 1479 	mov	r5,a
      0037B5 8C 82            [24] 1480 	mov	dpl,r4
      0037B7 8D 83            [24] 1481 	mov	dph,r5
      0037B9 A3               [24] 1482 	inc	dptr
      0037BA A3               [24] 1483 	inc	dptr
      0037BB E5 1D            [12] 1484 	mov	a,_main_sloc2_1_0
      0037BD F0               [24] 1485 	movx	@dptr,a
      0037BE E5 1E            [12] 1486 	mov	a,(_main_sloc2_1_0 + 1)
      0037C0 A3               [24] 1487 	inc	dptr
      0037C1 F0               [24] 1488 	movx	@dptr,a
                                   1489 ;	main.c:173: buffer_array[index].buffer_occupied = 0;
      0037C2 8C 82            [24] 1490 	mov	dpl,r4
      0037C4 8D 83            [24] 1491 	mov	dph,r5
      0037C6 A3               [24] 1492 	inc	dptr
      0037C7 A3               [24] 1493 	inc	dptr
      0037C8 A3               [24] 1494 	inc	dptr
      0037C9 A3               [24] 1495 	inc	dptr
      0037CA E4               [12] 1496 	clr	a
      0037CB F0               [24] 1497 	movx	@dptr,a
      0037CC A3               [24] 1498 	inc	dptr
      0037CD F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	main.c:174: inserted = index;
      0037CE 90 13 D5         [24] 1501 	mov	dptr,#_main_inserted_131072_48
      0037D1 E8               [12] 1502 	mov	a,r0
      0037D2 F0               [24] 1503 	movx	@dptr,a
      0037D3 E9               [12] 1504 	mov	a,r1
      0037D4 A3               [24] 1505 	inc	dptr
      0037D5 F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	main.c:176: break;
      0037D6 80 10            [24] 1508 	sjmp	00154$
      0037D8                       1509 00189$:
                                   1510 ;	main.c:166: for (int32_t index = 1; index < 10; index++) {
      0037D8 08               [12] 1511 	inc	r0
      0037D9 B8 00 09         [24] 1512 	cjne	r0,#0x00,00414$
      0037DC 09               [12] 1513 	inc	r1
      0037DD B9 00 05         [24] 1514 	cjne	r1,#0x00,00414$
      0037E0 0A               [12] 1515 	inc	r2
      0037E1 BA 00 01         [24] 1516 	cjne	r2,#0x00,00414$
      0037E4 0B               [12] 1517 	inc	r3
      0037E5                       1518 00414$:
      0037E5 02 37 06         [24] 1519 	ljmp	00188$
      0037E8                       1520 00154$:
                                   1521 ;	main.c:179: if (inserted) {
      0037E8 90 13 D5         [24] 1522 	mov	dptr,#_main_inserted_131072_48
      0037EB E0               [24] 1523 	movx	a,@dptr
      0037EC F5 F0            [12] 1524 	mov	b,a
      0037EE A3               [24] 1525 	inc	dptr
      0037EF E0               [24] 1526 	movx	a,@dptr
      0037F0 45 F0            [12] 1527 	orl	a,b
      0037F2 60 32            [24] 1528 	jz	00156$
                                   1529 ;	main.c:180: printf("Allocated memory as buffer #%d  - exiting mode \n\r", inserted);
      0037F4 90 13 D5         [24] 1530 	mov	dptr,#_main_inserted_131072_48
      0037F7 E0               [24] 1531 	movx	a,@dptr
      0037F8 C0 E0            [24] 1532 	push	acc
      0037FA A3               [24] 1533 	inc	dptr
      0037FB E0               [24] 1534 	movx	a,@dptr
      0037FC C0 E0            [24] 1535 	push	acc
      0037FE 74 9B            [12] 1536 	mov	a,#___str_17
      003800 C0 E0            [24] 1537 	push	acc
      003802 74 51            [12] 1538 	mov	a,#(___str_17 >> 8)
      003804 C0 E0            [24] 1539 	push	acc
      003806 74 80            [12] 1540 	mov	a,#0x80
      003808 C0 E0            [24] 1541 	push	acc
      00380A 12 44 19         [24] 1542 	lcall	_printf
      00380D E5 81            [12] 1543 	mov	a,sp
      00380F 24 FB            [12] 1544 	add	a,#0xfb
      003811 F5 81            [12] 1545 	mov	sp,a
                                   1546 ;	main.c:181: buffer_count++;
      003813 90 13 D3         [24] 1547 	mov	dptr,#_main_buffer_count_131072_48
      003816 E0               [24] 1548 	movx	a,@dptr
      003817 24 01            [12] 1549 	add	a,#0x01
      003819 F0               [24] 1550 	movx	@dptr,a
      00381A A3               [24] 1551 	inc	dptr
      00381B E0               [24] 1552 	movx	a,@dptr
      00381C 34 00            [12] 1553 	addc	a,#0x00
      00381E F0               [24] 1554 	movx	@dptr,a
                                   1555 ;	main.c:182: inserted = 0;
      00381F 90 13 D5         [24] 1556 	mov	dptr,#_main_inserted_131072_48
      003822 E4               [12] 1557 	clr	a
      003823 F0               [24] 1558 	movx	@dptr,a
      003824 A3               [24] 1559 	inc	dptr
      003825 F0               [24] 1560 	movx	@dptr,a
      003826                       1561 00156$:
                                   1562 ;	main.c:184: switch_case = 0;
      003826 90 13 D9         [24] 1563 	mov	dptr,#_main_switch_case_131074_52
      003829 E4               [12] 1564 	clr	a
      00382A F0               [24] 1565 	movx	@dptr,a
      00382B A3               [24] 1566 	inc	dptr
      00382C F0               [24] 1567 	movx	@dptr,a
      00382D A3               [24] 1568 	inc	dptr
      00382E F0               [24] 1569 	movx	@dptr,a
      00382F A3               [24] 1570 	inc	dptr
      003830 F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	main.c:185: break;
      003831 02 33 EB         [24] 1573 	ljmp	00181$
                                   1574 ;	main.c:186: case 3:
      003834                       1575 00157$:
                                   1576 ;	main.c:187: user_input_2 = get_buffer_size(ZERO, ARRAY_SIZE, ONE);
      003834 90 00 00         [24] 1577 	mov	dptr,#_get_buffer_size_PARM_2
      003837 74 0A            [12] 1578 	mov	a,#0x0a
      003839 F0               [24] 1579 	movx	@dptr,a
      00383A E4               [12] 1580 	clr	a
      00383B A3               [24] 1581 	inc	dptr
      00383C F0               [24] 1582 	movx	@dptr,a
      00383D A3               [24] 1583 	inc	dptr
      00383E F0               [24] 1584 	movx	@dptr,a
      00383F A3               [24] 1585 	inc	dptr
      003840 F0               [24] 1586 	movx	@dptr,a
      003841 90 00 04         [24] 1587 	mov	dptr,#_get_buffer_size_PARM_3
      003844 04               [12] 1588 	inc	a
      003845 F0               [24] 1589 	movx	@dptr,a
      003846 E4               [12] 1590 	clr	a
      003847 A3               [24] 1591 	inc	dptr
      003848 F0               [24] 1592 	movx	@dptr,a
      003849 A3               [24] 1593 	inc	dptr
      00384A F0               [24] 1594 	movx	@dptr,a
      00384B A3               [24] 1595 	inc	dptr
      00384C F0               [24] 1596 	movx	@dptr,a
      00384D 90 00 00         [24] 1597 	mov	dptr,#(0x00&0x00ff)
      003850 E4               [12] 1598 	clr	a
      003851 F5 F0            [12] 1599 	mov	b,a
      003853 12 30 62         [24] 1600 	lcall	_get_buffer_size
      003856 AC 82            [24] 1601 	mov	r4,dpl
      003858 AD 83            [24] 1602 	mov	r5,dph
                                   1603 ;	main.c:188: if (user_input_2 == 0) {
      00385A EC               [12] 1604 	mov	a,r4
      00385B 4D               [12] 1605 	orl	a,r5
      00385C 70 18            [24] 1606 	jnz	00163$
                                   1607 ;	main.c:189: printf("Cannot remove buffer 0 - exiting mode \n\r");
      00385E 74 CD            [12] 1608 	mov	a,#___str_18
      003860 C0 E0            [24] 1609 	push	acc
      003862 74 51            [12] 1610 	mov	a,#(___str_18 >> 8)
      003864 C0 E0            [24] 1611 	push	acc
      003866 74 80            [12] 1612 	mov	a,#0x80
      003868 C0 E0            [24] 1613 	push	acc
      00386A 12 44 19         [24] 1614 	lcall	_printf
      00386D 15 81            [12] 1615 	dec	sp
      00386F 15 81            [12] 1616 	dec	sp
      003871 15 81            [12] 1617 	dec	sp
      003873 02 39 64         [24] 1618 	ljmp	00164$
      003876                       1619 00163$:
                                   1620 ;	main.c:190: } else if ((user_input_2 < buffer_count) && (buffer_array[user_input_2].buffer_pointer != NULL)) {
      003876 90 13 D3         [24] 1621 	mov	dptr,#_main_buffer_count_131072_48
      003879 E0               [24] 1622 	movx	a,@dptr
      00387A FA               [12] 1623 	mov	r2,a
      00387B A3               [24] 1624 	inc	dptr
      00387C E0               [24] 1625 	movx	a,@dptr
      00387D FB               [12] 1626 	mov	r3,a
      00387E 8C 00            [24] 1627 	mov	ar0,r4
      003880 8D 01            [24] 1628 	mov	ar1,r5
      003882 C3               [12] 1629 	clr	c
      003883 E8               [12] 1630 	mov	a,r0
      003884 9A               [12] 1631 	subb	a,r2
      003885 E9               [12] 1632 	mov	a,r1
      003886 64 80            [12] 1633 	xrl	a,#0x80
      003888 8B F0            [24] 1634 	mov	b,r3
      00388A 63 F0 80         [24] 1635 	xrl	b,#0x80
      00388D 95 F0            [12] 1636 	subb	a,b
      00388F 40 03            [24] 1637 	jc	00417$
      003891 02 39 4F         [24] 1638 	ljmp	00159$
      003894                       1639 00417$:
      003894 90 13 FC         [24] 1640 	mov	dptr,#__mulint_PARM_2
      003897 EC               [12] 1641 	mov	a,r4
      003898 F0               [24] 1642 	movx	@dptr,a
      003899 ED               [12] 1643 	mov	a,r5
      00389A A3               [24] 1644 	inc	dptr
      00389B F0               [24] 1645 	movx	@dptr,a
      00389C 90 00 06         [24] 1646 	mov	dptr,#0x0006
      00389F C0 05            [24] 1647 	push	ar5
      0038A1 C0 04            [24] 1648 	push	ar4
      0038A3 C0 03            [24] 1649 	push	ar3
      0038A5 C0 02            [24] 1650 	push	ar2
      0038A7 12 42 2B         [24] 1651 	lcall	__mulint
      0038AA 85 82 17         [24] 1652 	mov	_main_sloc0_1_0,dpl
      0038AD 85 83 18         [24] 1653 	mov	(_main_sloc0_1_0 + 1),dph
      0038B0 D0 02            [24] 1654 	pop	ar2
      0038B2 D0 03            [24] 1655 	pop	ar3
      0038B4 D0 04            [24] 1656 	pop	ar4
      0038B6 D0 05            [24] 1657 	pop	ar5
      0038B8 E5 17            [12] 1658 	mov	a,_main_sloc0_1_0
      0038BA 24 97            [12] 1659 	add	a,#_main_buffer_array_131072_48
      0038BC F5 1D            [12] 1660 	mov	_main_sloc2_1_0,a
      0038BE E5 18            [12] 1661 	mov	a,(_main_sloc0_1_0 + 1)
      0038C0 34 13            [12] 1662 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      0038C2 F5 1E            [12] 1663 	mov	(_main_sloc2_1_0 + 1),a
      0038C4 85 1D 82         [24] 1664 	mov	dpl,_main_sloc2_1_0
      0038C7 85 1E 83         [24] 1665 	mov	dph,(_main_sloc2_1_0 + 1)
      0038CA E0               [24] 1666 	movx	a,@dptr
      0038CB F5 1B            [12] 1667 	mov	_main_sloc1_1_0,a
      0038CD A3               [24] 1668 	inc	dptr
      0038CE E0               [24] 1669 	movx	a,@dptr
      0038CF F5 1C            [12] 1670 	mov	(_main_sloc1_1_0 + 1),a
      0038D1 E5 1B            [12] 1671 	mov	a,_main_sloc1_1_0
      0038D3 45 1C            [12] 1672 	orl	a,(_main_sloc1_1_0 + 1)
      0038D5 60 78            [24] 1673 	jz	00159$
                                   1674 ;	main.c:191: free(buffer_array[user_input_2].buffer_pointer);
      0038D7 AE 1B            [24] 1675 	mov	r6,_main_sloc1_1_0
      0038D9 A9 1C            [24] 1676 	mov	r1,(_main_sloc1_1_0 + 1)
      0038DB 7F 00            [12] 1677 	mov	r7,#0x00
      0038DD 8E 82            [24] 1678 	mov	dpl,r6
      0038DF 89 83            [24] 1679 	mov	dph,r1
      0038E1 8F F0            [24] 1680 	mov	b,r7
      0038E3 C0 05            [24] 1681 	push	ar5
      0038E5 C0 04            [24] 1682 	push	ar4
      0038E7 C0 03            [24] 1683 	push	ar3
      0038E9 C0 02            [24] 1684 	push	ar2
      0038EB 12 3D EF         [24] 1685 	lcall	_free
      0038EE D0 02            [24] 1686 	pop	ar2
      0038F0 D0 03            [24] 1687 	pop	ar3
      0038F2 D0 04            [24] 1688 	pop	ar4
      0038F4 D0 05            [24] 1689 	pop	ar5
                                   1690 ;	main.c:192: buffer_array[user_input_2].buffer_pointer = NULL;
      0038F6 85 1D 82         [24] 1691 	mov	dpl,_main_sloc2_1_0
      0038F9 85 1E 83         [24] 1692 	mov	dph,(_main_sloc2_1_0 + 1)
      0038FC E4               [12] 1693 	clr	a
      0038FD F0               [24] 1694 	movx	@dptr,a
      0038FE A3               [24] 1695 	inc	dptr
      0038FF F0               [24] 1696 	movx	@dptr,a
                                   1697 ;	main.c:193: buffer_array[user_input_2].buffer_size = 0;
      003900 E5 17            [12] 1698 	mov	a,_main_sloc0_1_0
      003902 24 97            [12] 1699 	add	a,#_main_buffer_array_131072_48
      003904 FE               [12] 1700 	mov	r6,a
      003905 E5 18            [12] 1701 	mov	a,(_main_sloc0_1_0 + 1)
      003907 34 13            [12] 1702 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003909 FF               [12] 1703 	mov	r7,a
      00390A 8E 82            [24] 1704 	mov	dpl,r6
      00390C 8F 83            [24] 1705 	mov	dph,r7
      00390E A3               [24] 1706 	inc	dptr
      00390F A3               [24] 1707 	inc	dptr
      003910 E4               [12] 1708 	clr	a
      003911 F0               [24] 1709 	movx	@dptr,a
      003912 A3               [24] 1710 	inc	dptr
      003913 F0               [24] 1711 	movx	@dptr,a
                                   1712 ;	main.c:194: buffer_array[user_input_2].buffer_occupied = 0;
      003914 8E 82            [24] 1713 	mov	dpl,r6
      003916 8F 83            [24] 1714 	mov	dph,r7
      003918 A3               [24] 1715 	inc	dptr
      003919 A3               [24] 1716 	inc	dptr
      00391A A3               [24] 1717 	inc	dptr
      00391B A3               [24] 1718 	inc	dptr
      00391C F0               [24] 1719 	movx	@dptr,a
      00391D A3               [24] 1720 	inc	dptr
      00391E F0               [24] 1721 	movx	@dptr,a
                                   1722 ;	main.c:195: printf("Freed buffer #%d - exiting mode \n\r", user_input_2);
      00391F C0 03            [24] 1723 	push	ar3
      003921 C0 02            [24] 1724 	push	ar2
      003923 C0 04            [24] 1725 	push	ar4
      003925 C0 05            [24] 1726 	push	ar5
      003927 74 F6            [12] 1727 	mov	a,#___str_19
      003929 C0 E0            [24] 1728 	push	acc
      00392B 74 51            [12] 1729 	mov	a,#(___str_19 >> 8)
      00392D C0 E0            [24] 1730 	push	acc
      00392F 74 80            [12] 1731 	mov	a,#0x80
      003931 C0 E0            [24] 1732 	push	acc
      003933 12 44 19         [24] 1733 	lcall	_printf
      003936 E5 81            [12] 1734 	mov	a,sp
      003938 24 FB            [12] 1735 	add	a,#0xfb
      00393A F5 81            [12] 1736 	mov	sp,a
      00393C D0 02            [24] 1737 	pop	ar2
      00393E D0 03            [24] 1738 	pop	ar3
                                   1739 ;	main.c:196: buffer_count--;
      003940 1A               [12] 1740 	dec	r2
      003941 BA FF 01         [24] 1741 	cjne	r2,#0xff,00419$
      003944 1B               [12] 1742 	dec	r3
      003945                       1743 00419$:
      003945 90 13 D3         [24] 1744 	mov	dptr,#_main_buffer_count_131072_48
      003948 EA               [12] 1745 	mov	a,r2
      003949 F0               [24] 1746 	movx	@dptr,a
      00394A EB               [12] 1747 	mov	a,r3
      00394B A3               [24] 1748 	inc	dptr
      00394C F0               [24] 1749 	movx	@dptr,a
      00394D 80 15            [24] 1750 	sjmp	00164$
      00394F                       1751 00159$:
                                   1752 ;	main.c:198: printf("No such buffer exists - exiting mode \n\r");
      00394F 74 19            [12] 1753 	mov	a,#___str_20
      003951 C0 E0            [24] 1754 	push	acc
      003953 74 52            [12] 1755 	mov	a,#(___str_20 >> 8)
      003955 C0 E0            [24] 1756 	push	acc
      003957 74 80            [12] 1757 	mov	a,#0x80
      003959 C0 E0            [24] 1758 	push	acc
      00395B 12 44 19         [24] 1759 	lcall	_printf
      00395E 15 81            [12] 1760 	dec	sp
      003960 15 81            [12] 1761 	dec	sp
      003962 15 81            [12] 1762 	dec	sp
      003964                       1763 00164$:
                                   1764 ;	main.c:200: switch_case = 0;
      003964 90 13 D9         [24] 1765 	mov	dptr,#_main_switch_case_131074_52
      003967 E4               [12] 1766 	clr	a
      003968 F0               [24] 1767 	movx	@dptr,a
      003969 A3               [24] 1768 	inc	dptr
      00396A F0               [24] 1769 	movx	@dptr,a
      00396B A3               [24] 1770 	inc	dptr
      00396C F0               [24] 1771 	movx	@dptr,a
      00396D A3               [24] 1772 	inc	dptr
      00396E F0               [24] 1773 	movx	@dptr,a
                                   1774 ;	main.c:201: break;
      00396F 02 33 EB         [24] 1775 	ljmp	00181$
                                   1776 ;	main.c:202: case 4:
      003972                       1777 00165$:
                                   1778 ;	main.c:204: printf("Total characters count: %d \n\r", total_characters_count);
      003972 90 14 42         [24] 1779 	mov	dptr,#_total_characters_count
      003975 E0               [24] 1780 	movx	a,@dptr
      003976 C0 E0            [24] 1781 	push	acc
      003978 A3               [24] 1782 	inc	dptr
      003979 E0               [24] 1783 	movx	a,@dptr
      00397A C0 E0            [24] 1784 	push	acc
      00397C 74 41            [12] 1785 	mov	a,#___str_21
      00397E C0 E0            [24] 1786 	push	acc
      003980 74 52            [12] 1787 	mov	a,#(___str_21 >> 8)
      003982 C0 E0            [24] 1788 	push	acc
      003984 74 80            [12] 1789 	mov	a,#0x80
      003986 C0 E0            [24] 1790 	push	acc
      003988 12 44 19         [24] 1791 	lcall	_printf
      00398B E5 81            [12] 1792 	mov	a,sp
      00398D 24 FB            [12] 1793 	add	a,#0xfb
      00398F F5 81            [12] 1794 	mov	sp,a
                                   1795 ;	main.c:205: printf("Since last '?': %d \n\r", (total_characters_count - since_last));
      003991 90 13 D7         [24] 1796 	mov	dptr,#_main_since_last_131073_49
      003994 E0               [24] 1797 	movx	a,@dptr
      003995 FC               [12] 1798 	mov	r4,a
      003996 A3               [24] 1799 	inc	dptr
      003997 E0               [24] 1800 	movx	a,@dptr
      003998 FD               [12] 1801 	mov	r5,a
      003999 90 14 42         [24] 1802 	mov	dptr,#_total_characters_count
      00399C E0               [24] 1803 	movx	a,@dptr
      00399D FA               [12] 1804 	mov	r2,a
      00399E A3               [24] 1805 	inc	dptr
      00399F E0               [24] 1806 	movx	a,@dptr
      0039A0 FB               [12] 1807 	mov	r3,a
      0039A1 EA               [12] 1808 	mov	a,r2
      0039A2 C3               [12] 1809 	clr	c
      0039A3 9C               [12] 1810 	subb	a,r4
      0039A4 FC               [12] 1811 	mov	r4,a
      0039A5 EB               [12] 1812 	mov	a,r3
      0039A6 9D               [12] 1813 	subb	a,r5
      0039A7 FD               [12] 1814 	mov	r5,a
      0039A8 C0 04            [24] 1815 	push	ar4
      0039AA C0 05            [24] 1816 	push	ar5
      0039AC 74 5F            [12] 1817 	mov	a,#___str_22
      0039AE C0 E0            [24] 1818 	push	acc
      0039B0 74 52            [12] 1819 	mov	a,#(___str_22 >> 8)
      0039B2 C0 E0            [24] 1820 	push	acc
      0039B4 74 80            [12] 1821 	mov	a,#0x80
      0039B6 C0 E0            [24] 1822 	push	acc
      0039B8 12 44 19         [24] 1823 	lcall	_printf
      0039BB E5 81            [12] 1824 	mov	a,sp
      0039BD 24 FB            [12] 1825 	add	a,#0xfb
      0039BF F5 81            [12] 1826 	mov	sp,a
                                   1827 ;	main.c:206: since_last = total_characters_count;
      0039C1 90 14 42         [24] 1828 	mov	dptr,#_total_characters_count
      0039C4 E0               [24] 1829 	movx	a,@dptr
      0039C5 FC               [12] 1830 	mov	r4,a
      0039C6 A3               [24] 1831 	inc	dptr
      0039C7 E0               [24] 1832 	movx	a,@dptr
      0039C8 FD               [12] 1833 	mov	r5,a
      0039C9 90 13 D7         [24] 1834 	mov	dptr,#_main_since_last_131073_49
      0039CC EC               [12] 1835 	mov	a,r4
      0039CD F0               [24] 1836 	movx	@dptr,a
      0039CE ED               [12] 1837 	mov	a,r5
      0039CF A3               [24] 1838 	inc	dptr
      0039D0 F0               [24] 1839 	movx	@dptr,a
                                   1840 ;	main.c:207: for (int8_t index = 0; index <= buffer_count; index++) {
      0039D1 90 13 D3         [24] 1841 	mov	dptr,#_main_buffer_count_131072_48
      0039D4 E0               [24] 1842 	movx	a,@dptr
      0039D5 FC               [12] 1843 	mov	r4,a
      0039D6 A3               [24] 1844 	inc	dptr
      0039D7 E0               [24] 1845 	movx	a,@dptr
      0039D8 FD               [12] 1846 	mov	r5,a
      0039D9 75 1B 00         [24] 1847 	mov	_main_sloc1_1_0,#0x00
      0039DC                       1848 00194$:
      0039DC E5 1B            [12] 1849 	mov	a,_main_sloc1_1_0
      0039DE F9               [12] 1850 	mov	r1,a
      0039DF 33               [12] 1851 	rlc	a
      0039E0 95 E0            [12] 1852 	subb	a,acc
      0039E2 FA               [12] 1853 	mov	r2,a
      0039E3 C3               [12] 1854 	clr	c
      0039E4 EC               [12] 1855 	mov	a,r4
      0039E5 99               [12] 1856 	subb	a,r1
      0039E6 ED               [12] 1857 	mov	a,r5
      0039E7 64 80            [12] 1858 	xrl	a,#0x80
      0039E9 8A F0            [24] 1859 	mov	b,r2
      0039EB 63 F0 80         [24] 1860 	xrl	b,#0x80
      0039EE 95 F0            [12] 1861 	subb	a,b
      0039F0 50 03            [24] 1862 	jnc	00420$
      0039F2 02 3B E8         [24] 1863 	ljmp	00173$
      0039F5                       1864 00420$:
                                   1865 ;	main.c:208: if (buffer_array[index].buffer_pointer == NULL) {
      0039F5 C2 D5            [12] 1866 	clr	F0
      0039F7 75 F0 06         [24] 1867 	mov	b,#0x06
      0039FA E5 1B            [12] 1868 	mov	a,_main_sloc1_1_0
      0039FC 30 E7 04         [24] 1869 	jnb	acc.7,00421$
      0039FF B2 D5            [12] 1870 	cpl	F0
      003A01 F4               [12] 1871 	cpl	a
      003A02 04               [12] 1872 	inc	a
      003A03                       1873 00421$:
      003A03 A4               [48] 1874 	mul	ab
      003A04 30 D5 0A         [24] 1875 	jnb	F0,00422$
      003A07 F4               [12] 1876 	cpl	a
      003A08 24 01            [12] 1877 	add	a,#0x01
      003A0A C5 F0            [12] 1878 	xch	a,b
      003A0C F4               [12] 1879 	cpl	a
      003A0D 34 00            [12] 1880 	addc	a,#0x00
      003A0F C5 F0            [12] 1881 	xch	a,b
      003A11                       1882 00422$:
      003A11 F5 1D            [12] 1883 	mov	_main_sloc2_1_0,a
      003A13 85 F0 1E         [24] 1884 	mov	(_main_sloc2_1_0 + 1),b
      003A16 24 97            [12] 1885 	add	a,#_main_buffer_array_131072_48
      003A18 F5 82            [12] 1886 	mov	dpl,a
      003A1A E5 1E            [12] 1887 	mov	a,(_main_sloc2_1_0 + 1)
      003A1C 34 13            [12] 1888 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003A1E F5 83            [12] 1889 	mov	dph,a
      003A20 E0               [24] 1890 	movx	a,@dptr
      003A21 F8               [12] 1891 	mov	r0,a
      003A22 A3               [24] 1892 	inc	dptr
      003A23 E0               [24] 1893 	movx	a,@dptr
      003A24 FF               [12] 1894 	mov	r7,a
      003A25 48               [12] 1895 	orl	a,r0
      003A26 70 03            [24] 1896 	jnz	00423$
      003A28 02 3B E3         [24] 1897 	ljmp	00172$
      003A2B                       1898 00423$:
                                   1899 ;	main.c:216: (buffer_array[index].buffer_size - buffer_array[index].buffer_occupied));
      003A2B C0 04            [24] 1900 	push	ar4
      003A2D C0 05            [24] 1901 	push	ar5
      003A2F E5 1D            [12] 1902 	mov	a,_main_sloc2_1_0
      003A31 24 97            [12] 1903 	add	a,#_main_buffer_array_131072_48
      003A33 FE               [12] 1904 	mov	r6,a
      003A34 E5 1E            [12] 1905 	mov	a,(_main_sloc2_1_0 + 1)
      003A36 34 13            [12] 1906 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003A38 FF               [12] 1907 	mov	r7,a
      003A39 8E 82            [24] 1908 	mov	dpl,r6
      003A3B 8F 83            [24] 1909 	mov	dph,r7
      003A3D A3               [24] 1910 	inc	dptr
      003A3E A3               [24] 1911 	inc	dptr
      003A3F E0               [24] 1912 	movx	a,@dptr
      003A40 F8               [12] 1913 	mov	r0,a
      003A41 A3               [24] 1914 	inc	dptr
      003A42 E0               [24] 1915 	movx	a,@dptr
      003A43 FD               [12] 1916 	mov	r5,a
      003A44 8E 82            [24] 1917 	mov	dpl,r6
      003A46 8F 83            [24] 1918 	mov	dph,r7
      003A48 A3               [24] 1919 	inc	dptr
      003A49 A3               [24] 1920 	inc	dptr
      003A4A A3               [24] 1921 	inc	dptr
      003A4B A3               [24] 1922 	inc	dptr
      003A4C E0               [24] 1923 	movx	a,@dptr
      003A4D F5 17            [12] 1924 	mov	_main_sloc0_1_0,a
      003A4F A3               [24] 1925 	inc	dptr
      003A50 E0               [24] 1926 	movx	a,@dptr
      003A51 F5 18            [12] 1927 	mov	(_main_sloc0_1_0 + 1),a
      003A53 E8               [12] 1928 	mov	a,r0
      003A54 C3               [12] 1929 	clr	c
      003A55 95 17            [12] 1930 	subb	a,_main_sloc0_1_0
      003A57 F5 21            [12] 1931 	mov	_main_sloc4_1_0,a
      003A59 ED               [12] 1932 	mov	a,r5
      003A5A 95 18            [12] 1933 	subb	a,(_main_sloc0_1_0 + 1)
      003A5C F5 22            [12] 1934 	mov	(_main_sloc4_1_0 + 1),a
                                   1935 ;	main.c:214: (buffer_array[index].buffer_pointer + buffer_array[index].buffer_size),
      003A5E 8E 82            [24] 1936 	mov	dpl,r6
      003A60 8F 83            [24] 1937 	mov	dph,r7
      003A62 E0               [24] 1938 	movx	a,@dptr
      003A63 F5 23            [12] 1939 	mov	_main_sloc5_1_0,a
      003A65 A3               [24] 1940 	inc	dptr
      003A66 E0               [24] 1941 	movx	a,@dptr
      003A67 F5 24            [12] 1942 	mov	(_main_sloc5_1_0 + 1),a
      003A69 E8               [12] 1943 	mov	a,r0
      003A6A 25 23            [12] 1944 	add	a,_main_sloc5_1_0
      003A6C FB               [12] 1945 	mov	r3,a
      003A6D ED               [12] 1946 	mov	a,r5
      003A6E 35 24            [12] 1947 	addc	a,(_main_sloc5_1_0 + 1)
      003A70 FC               [12] 1948 	mov	r4,a
      003A71 8B 25            [24] 1949 	mov	_main_sloc6_1_0,r3
      003A73 8C 26            [24] 1950 	mov	(_main_sloc6_1_0 + 1),r4
      003A75 75 27 00         [24] 1951 	mov	(_main_sloc6_1_0 + 2),#0x00
                                   1952 ;	main.c:213: buffer_array[index].buffer_pointer,
      003A78 AE 23            [24] 1953 	mov	r6,_main_sloc5_1_0
      003A7A AF 24            [24] 1954 	mov	r7,(_main_sloc5_1_0 + 1)
      003A7C 7C 00            [12] 1955 	mov	r4,#0x00
                                   1956 ;	main.c:212: "Storage character counts: %u, Free space available: %u\n\r", index,
      003A7E C0 05            [24] 1957 	push	ar5
      003A80 C0 04            [24] 1958 	push	ar4
      003A82 C0 02            [24] 1959 	push	ar2
      003A84 C0 01            [24] 1960 	push	ar1
      003A86 C0 21            [24] 1961 	push	_main_sloc4_1_0
      003A88 C0 22            [24] 1962 	push	(_main_sloc4_1_0 + 1)
      003A8A C0 17            [24] 1963 	push	_main_sloc0_1_0
      003A8C C0 18            [24] 1964 	push	(_main_sloc0_1_0 + 1)
      003A8E C0 00            [24] 1965 	push	ar0
      003A90 C0 05            [24] 1966 	push	ar5
      003A92 C0 25            [24] 1967 	push	_main_sloc6_1_0
      003A94 C0 26            [24] 1968 	push	(_main_sloc6_1_0 + 1)
      003A96 C0 27            [24] 1969 	push	(_main_sloc6_1_0 + 2)
      003A98 C0 06            [24] 1970 	push	ar6
      003A9A C0 07            [24] 1971 	push	ar7
      003A9C C0 04            [24] 1972 	push	ar4
      003A9E C0 01            [24] 1973 	push	ar1
      003AA0 C0 02            [24] 1974 	push	ar2
      003AA2 74 75            [12] 1975 	mov	a,#___str_23
      003AA4 C0 E0            [24] 1976 	push	acc
      003AA6 74 52            [12] 1977 	mov	a,#(___str_23 >> 8)
      003AA8 C0 E0            [24] 1978 	push	acc
      003AAA 74 80            [12] 1979 	mov	a,#0x80
      003AAC C0 E0            [24] 1980 	push	acc
      003AAE 12 44 19         [24] 1981 	lcall	_printf
      003AB1 E5 81            [12] 1982 	mov	a,sp
      003AB3 24 EF            [12] 1983 	add	a,#0xef
      003AB5 F5 81            [12] 1984 	mov	sp,a
      003AB7 D0 01            [24] 1985 	pop	ar1
      003AB9 D0 02            [24] 1986 	pop	ar2
                                   1987 ;	main.c:217: printf("Buffer %d content: \n\r", index);
      003ABB C0 01            [24] 1988 	push	ar1
      003ABD C0 02            [24] 1989 	push	ar2
      003ABF 74 F4            [12] 1990 	mov	a,#___str_24
      003AC1 C0 E0            [24] 1991 	push	acc
      003AC3 74 52            [12] 1992 	mov	a,#(___str_24 >> 8)
      003AC5 C0 E0            [24] 1993 	push	acc
      003AC7 74 80            [12] 1994 	mov	a,#0x80
      003AC9 C0 E0            [24] 1995 	push	acc
      003ACB 12 44 19         [24] 1996 	lcall	_printf
      003ACE E5 81            [12] 1997 	mov	a,sp
      003AD0 24 FB            [12] 1998 	add	a,#0xfb
      003AD2 F5 81            [12] 1999 	mov	sp,a
      003AD4 D0 04            [24] 2000 	pop	ar4
      003AD6 D0 05            [24] 2001 	pop	ar5
                                   2002 ;	main.c:218: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
      003AD8 E5 1D            [12] 2003 	mov	a,_main_sloc2_1_0
      003ADA 24 97            [12] 2004 	add	a,#_main_buffer_array_131072_48
      003ADC F5 25            [12] 2005 	mov	_main_sloc6_1_0,a
      003ADE E5 1E            [12] 2006 	mov	a,(_main_sloc2_1_0 + 1)
      003AE0 34 13            [12] 2007 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003AE2 F5 26            [12] 2008 	mov	(_main_sloc6_1_0 + 1),a
      003AE4 E5 1D            [12] 2009 	mov	a,_main_sloc2_1_0
      003AE6 24 97            [12] 2010 	add	a,#_main_buffer_array_131072_48
      003AE8 FE               [12] 2011 	mov	r6,a
      003AE9 E5 1E            [12] 2012 	mov	a,(_main_sloc2_1_0 + 1)
      003AEB 34 13            [12] 2013 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003AED FF               [12] 2014 	mov	r7,a
      003AEE 74 04            [12] 2015 	mov	a,#0x04
      003AF0 2E               [12] 2016 	add	a,r6
      003AF1 F5 23            [12] 2017 	mov	_main_sloc5_1_0,a
      003AF3 E4               [12] 2018 	clr	a
      003AF4 3F               [12] 2019 	addc	a,r7
      003AF5 F5 24            [12] 2020 	mov	(_main_sloc5_1_0 + 1),a
      003AF7 E4               [12] 2021 	clr	a
      003AF8 F5 21            [12] 2022 	mov	_main_sloc4_1_0,a
      003AFA F5 22            [12] 2023 	mov	(_main_sloc4_1_0 + 1),a
                                   2024 ;	main.c:248: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
      003AFC D0 05            [24] 2025 	pop	ar5
      003AFE D0 04            [24] 2026 	pop	ar4
                                   2027 ;	main.c:218: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
      003B00                       2028 00191$:
      003B00 85 23 82         [24] 2029 	mov	dpl,_main_sloc5_1_0
      003B03 85 24 83         [24] 2030 	mov	dph,(_main_sloc5_1_0 + 1)
      003B06 E0               [24] 2031 	movx	a,@dptr
      003B07 FE               [12] 2032 	mov	r6,a
      003B08 A3               [24] 2033 	inc	dptr
      003B09 E0               [24] 2034 	movx	a,@dptr
      003B0A FF               [12] 2035 	mov	r7,a
      003B0B AA 21            [24] 2036 	mov	r2,_main_sloc4_1_0
      003B0D AB 22            [24] 2037 	mov	r3,(_main_sloc4_1_0 + 1)
      003B0F C3               [12] 2038 	clr	c
      003B10 EA               [12] 2039 	mov	a,r2
      003B11 9E               [12] 2040 	subb	a,r6
      003B12 EB               [12] 2041 	mov	a,r3
      003B13 64 80            [12] 2042 	xrl	a,#0x80
      003B15 8F F0            [24] 2043 	mov	b,r7
      003B17 63 F0 80         [24] 2044 	xrl	b,#0x80
      003B1A 95 F0            [12] 2045 	subb	a,b
      003B1C 40 03            [24] 2046 	jc	00424$
      003B1E 02 3B BC         [24] 2047 	ljmp	00168$
      003B21                       2048 00424$:
                                   2049 ;	main.c:219: if (!(j % 32)) {
      003B21 90 14 02         [24] 2050 	mov	dptr,#__modsint_PARM_2
      003B24 74 20            [12] 2051 	mov	a,#0x20
      003B26 F0               [24] 2052 	movx	@dptr,a
      003B27 E4               [12] 2053 	clr	a
      003B28 A3               [24] 2054 	inc	dptr
      003B29 F0               [24] 2055 	movx	@dptr,a
      003B2A 85 21 82         [24] 2056 	mov	dpl,_main_sloc4_1_0
      003B2D 85 22 83         [24] 2057 	mov	dph,(_main_sloc4_1_0 + 1)
      003B30 C0 05            [24] 2058 	push	ar5
      003B32 C0 04            [24] 2059 	push	ar4
      003B34 12 42 B7         [24] 2060 	lcall	__modsint
      003B37 E5 82            [12] 2061 	mov	a,dpl
      003B39 85 83 F0         [24] 2062 	mov	b,dph
      003B3C D0 04            [24] 2063 	pop	ar4
      003B3E D0 05            [24] 2064 	pop	ar5
      003B40 45 F0            [12] 2065 	orl	a,b
      003B42 70 1D            [24] 2066 	jnz	00167$
                                   2067 ;	main.c:220: printf("\n\r");
      003B44 C0 05            [24] 2068 	push	ar5
      003B46 C0 04            [24] 2069 	push	ar4
      003B48 74 E3            [12] 2070 	mov	a,#___str_12
      003B4A C0 E0            [24] 2071 	push	acc
      003B4C 74 50            [12] 2072 	mov	a,#(___str_12 >> 8)
      003B4E C0 E0            [24] 2073 	push	acc
      003B50 74 80            [12] 2074 	mov	a,#0x80
      003B52 C0 E0            [24] 2075 	push	acc
      003B54 12 44 19         [24] 2076 	lcall	_printf
      003B57 15 81            [12] 2077 	dec	sp
      003B59 15 81            [12] 2078 	dec	sp
      003B5B 15 81            [12] 2079 	dec	sp
      003B5D D0 04            [24] 2080 	pop	ar4
      003B5F D0 05            [24] 2081 	pop	ar5
      003B61                       2082 00167$:
                                   2083 ;	main.c:222: printf("%c", buffer_array[index].buffer_pointer[j]);
      003B61 85 25 82         [24] 2084 	mov	dpl,_main_sloc6_1_0
      003B64 85 26 83         [24] 2085 	mov	dph,(_main_sloc6_1_0 + 1)
      003B67 E0               [24] 2086 	movx	a,@dptr
      003B68 FE               [12] 2087 	mov	r6,a
      003B69 A3               [24] 2088 	inc	dptr
      003B6A E0               [24] 2089 	movx	a,@dptr
      003B6B FF               [12] 2090 	mov	r7,a
      003B6C E5 21            [12] 2091 	mov	a,_main_sloc4_1_0
      003B6E 2E               [12] 2092 	add	a,r6
      003B6F F5 82            [12] 2093 	mov	dpl,a
      003B71 E5 22            [12] 2094 	mov	a,(_main_sloc4_1_0 + 1)
      003B73 3F               [12] 2095 	addc	a,r7
      003B74 F5 83            [12] 2096 	mov	dph,a
      003B76 E0               [24] 2097 	movx	a,@dptr
      003B77 FF               [12] 2098 	mov	r7,a
      003B78 7E 00            [12] 2099 	mov	r6,#0x00
      003B7A C0 05            [24] 2100 	push	ar5
      003B7C C0 04            [24] 2101 	push	ar4
      003B7E C0 07            [24] 2102 	push	ar7
      003B80 C0 06            [24] 2103 	push	ar6
      003B82 74 0A            [12] 2104 	mov	a,#___str_25
      003B84 C0 E0            [24] 2105 	push	acc
      003B86 74 53            [12] 2106 	mov	a,#(___str_25 >> 8)
      003B88 C0 E0            [24] 2107 	push	acc
      003B8A 74 80            [12] 2108 	mov	a,#0x80
      003B8C C0 E0            [24] 2109 	push	acc
      003B8E 12 44 19         [24] 2110 	lcall	_printf
      003B91 E5 81            [12] 2111 	mov	a,sp
      003B93 24 FB            [12] 2112 	add	a,#0xfb
      003B95 F5 81            [12] 2113 	mov	sp,a
      003B97 D0 04            [24] 2114 	pop	ar4
      003B99 D0 05            [24] 2115 	pop	ar5
                                   2116 ;	main.c:223: buffer_array[index].buffer_pointer[j] = 0;
      003B9B 85 25 82         [24] 2117 	mov	dpl,_main_sloc6_1_0
      003B9E 85 26 83         [24] 2118 	mov	dph,(_main_sloc6_1_0 + 1)
      003BA1 E0               [24] 2119 	movx	a,@dptr
      003BA2 FE               [12] 2120 	mov	r6,a
      003BA3 A3               [24] 2121 	inc	dptr
      003BA4 E0               [24] 2122 	movx	a,@dptr
      003BA5 FF               [12] 2123 	mov	r7,a
      003BA6 E5 21            [12] 2124 	mov	a,_main_sloc4_1_0
      003BA8 2E               [12] 2125 	add	a,r6
      003BA9 F5 82            [12] 2126 	mov	dpl,a
      003BAB E5 22            [12] 2127 	mov	a,(_main_sloc4_1_0 + 1)
      003BAD 3F               [12] 2128 	addc	a,r7
      003BAE F5 83            [12] 2129 	mov	dph,a
      003BB0 E4               [12] 2130 	clr	a
      003BB1 F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	main.c:218: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
      003BB2 05 21            [12] 2133 	inc	_main_sloc4_1_0
                                   2134 ;	genFromRTrack removed	clr	a
      003BB4 B5 21 02         [24] 2135 	cjne	a,_main_sloc4_1_0,00426$
      003BB7 05 22            [12] 2136 	inc	(_main_sloc4_1_0 + 1)
      003BB9                       2137 00426$:
      003BB9 02 3B 00         [24] 2138 	ljmp	00191$
      003BBC                       2139 00168$:
                                   2140 ;	main.c:225: printf("\n\r");
      003BBC C0 05            [24] 2141 	push	ar5
      003BBE C0 04            [24] 2142 	push	ar4
      003BC0 74 E3            [12] 2143 	mov	a,#___str_12
      003BC2 C0 E0            [24] 2144 	push	acc
      003BC4 74 50            [12] 2145 	mov	a,#(___str_12 >> 8)
      003BC6 C0 E0            [24] 2146 	push	acc
      003BC8 74 80            [12] 2147 	mov	a,#0x80
      003BCA C0 E0            [24] 2148 	push	acc
      003BCC 12 44 19         [24] 2149 	lcall	_printf
      003BCF 15 81            [12] 2150 	dec	sp
      003BD1 15 81            [12] 2151 	dec	sp
      003BD3 15 81            [12] 2152 	dec	sp
      003BD5 D0 04            [24] 2153 	pop	ar4
      003BD7 D0 05            [24] 2154 	pop	ar5
                                   2155 ;	main.c:226: buffer_array[index].buffer_occupied = 0;
      003BD9 85 23 82         [24] 2156 	mov	dpl,_main_sloc5_1_0
      003BDC 85 24 83         [24] 2157 	mov	dph,(_main_sloc5_1_0 + 1)
      003BDF E4               [12] 2158 	clr	a
      003BE0 F0               [24] 2159 	movx	@dptr,a
      003BE1 A3               [24] 2160 	inc	dptr
      003BE2 F0               [24] 2161 	movx	@dptr,a
      003BE3                       2162 00172$:
                                   2163 ;	main.c:207: for (int8_t index = 0; index <= buffer_count; index++) {
      003BE3 05 1B            [12] 2164 	inc	_main_sloc1_1_0
      003BE5 02 39 DC         [24] 2165 	ljmp	00194$
      003BE8                       2166 00173$:
                                   2167 ;	main.c:229: switch_case = 0;
      003BE8 90 13 D9         [24] 2168 	mov	dptr,#_main_switch_case_131074_52
      003BEB E4               [12] 2169 	clr	a
      003BEC F0               [24] 2170 	movx	@dptr,a
      003BED A3               [24] 2171 	inc	dptr
      003BEE F0               [24] 2172 	movx	@dptr,a
      003BEF A3               [24] 2173 	inc	dptr
      003BF0 F0               [24] 2174 	movx	@dptr,a
      003BF1 A3               [24] 2175 	inc	dptr
      003BF2 F0               [24] 2176 	movx	@dptr,a
                                   2177 ;	main.c:230: break;
      003BF3 02 33 EB         [24] 2178 	ljmp	00181$
                                   2179 ;	main.c:233: for (int k = 0; k < buffer_array[0].buffer_size; k++) {
      003BF6                       2180 00243$:
      003BF6 7E 00            [12] 2181 	mov	r6,#0x00
      003BF8 7F 00            [12] 2182 	mov	r7,#0x00
      003BFA                       2183 00196$:
      003BFA 90 13 99         [24] 2184 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0002)
      003BFD E0               [24] 2185 	movx	a,@dptr
      003BFE FC               [12] 2186 	mov	r4,a
      003BFF A3               [24] 2187 	inc	dptr
      003C00 E0               [24] 2188 	movx	a,@dptr
      003C01 FD               [12] 2189 	mov	r5,a
      003C02 8E 02            [24] 2190 	mov	ar2,r6
      003C04 8F 03            [24] 2191 	mov	ar3,r7
      003C06 C3               [12] 2192 	clr	c
      003C07 EA               [12] 2193 	mov	a,r2
      003C08 9C               [12] 2194 	subb	a,r4
      003C09 EB               [12] 2195 	mov	a,r3
      003C0A 64 80            [12] 2196 	xrl	a,#0x80
      003C0C 8D F0            [24] 2197 	mov	b,r5
      003C0E 63 F0 80         [24] 2198 	xrl	b,#0x80
      003C11 95 F0            [12] 2199 	subb	a,b
      003C13 40 03            [24] 2200 	jc	00427$
      003C15 02 3C A9         [24] 2201 	ljmp	00177$
      003C18                       2202 00427$:
                                   2203 ;	main.c:234: if (!(k % 16)) {
      003C18 90 14 02         [24] 2204 	mov	dptr,#__modsint_PARM_2
      003C1B 74 10            [12] 2205 	mov	a,#0x10
      003C1D F0               [24] 2206 	movx	@dptr,a
      003C1E E4               [12] 2207 	clr	a
      003C1F A3               [24] 2208 	inc	dptr
      003C20 F0               [24] 2209 	movx	@dptr,a
      003C21 8E 82            [24] 2210 	mov	dpl,r6
      003C23 8F 83            [24] 2211 	mov	dph,r7
      003C25 C0 07            [24] 2212 	push	ar7
      003C27 C0 06            [24] 2213 	push	ar6
      003C29 12 42 B7         [24] 2214 	lcall	__modsint
      003C2C E5 82            [12] 2215 	mov	a,dpl
      003C2E 85 83 F0         [24] 2216 	mov	b,dph
      003C31 D0 06            [24] 2217 	pop	ar6
      003C33 D0 07            [24] 2218 	pop	ar7
      003C35 45 F0            [12] 2219 	orl	a,b
      003C37 70 33            [24] 2220 	jnz	00176$
                                   2221 ;	main.c:235: printf("\n\r%p :", &buffer_array[0].buffer_pointer[k]);
      003C39 90 13 97         [24] 2222 	mov	dptr,#_main_buffer_array_131072_48
      003C3C E0               [24] 2223 	movx	a,@dptr
      003C3D FC               [12] 2224 	mov	r4,a
      003C3E A3               [24] 2225 	inc	dptr
      003C3F E0               [24] 2226 	movx	a,@dptr
      003C40 FD               [12] 2227 	mov	r5,a
      003C41 EE               [12] 2228 	mov	a,r6
      003C42 2C               [12] 2229 	add	a,r4
      003C43 FC               [12] 2230 	mov	r4,a
      003C44 EF               [12] 2231 	mov	a,r7
      003C45 3D               [12] 2232 	addc	a,r5
      003C46 FD               [12] 2233 	mov	r5,a
      003C47 7B 00            [12] 2234 	mov	r3,#0x00
      003C49 C0 07            [24] 2235 	push	ar7
      003C4B C0 06            [24] 2236 	push	ar6
      003C4D C0 04            [24] 2237 	push	ar4
      003C4F C0 05            [24] 2238 	push	ar5
      003C51 C0 03            [24] 2239 	push	ar3
      003C53 74 0D            [12] 2240 	mov	a,#___str_26
      003C55 C0 E0            [24] 2241 	push	acc
      003C57 74 53            [12] 2242 	mov	a,#(___str_26 >> 8)
      003C59 C0 E0            [24] 2243 	push	acc
      003C5B 74 80            [12] 2244 	mov	a,#0x80
      003C5D C0 E0            [24] 2245 	push	acc
      003C5F 12 44 19         [24] 2246 	lcall	_printf
      003C62 E5 81            [12] 2247 	mov	a,sp
      003C64 24 FA            [12] 2248 	add	a,#0xfa
      003C66 F5 81            [12] 2249 	mov	sp,a
      003C68 D0 06            [24] 2250 	pop	ar6
      003C6A D0 07            [24] 2251 	pop	ar7
      003C6C                       2252 00176$:
                                   2253 ;	main.c:237: printf(" %x", buffer_array[0].buffer_pointer[k]);
      003C6C 90 13 97         [24] 2254 	mov	dptr,#_main_buffer_array_131072_48
      003C6F E0               [24] 2255 	movx	a,@dptr
      003C70 FC               [12] 2256 	mov	r4,a
      003C71 A3               [24] 2257 	inc	dptr
      003C72 E0               [24] 2258 	movx	a,@dptr
      003C73 FD               [12] 2259 	mov	r5,a
      003C74 EE               [12] 2260 	mov	a,r6
      003C75 2C               [12] 2261 	add	a,r4
      003C76 F5 82            [12] 2262 	mov	dpl,a
      003C78 EF               [12] 2263 	mov	a,r7
      003C79 3D               [12] 2264 	addc	a,r5
      003C7A F5 83            [12] 2265 	mov	dph,a
      003C7C E0               [24] 2266 	movx	a,@dptr
      003C7D FD               [12] 2267 	mov	r5,a
      003C7E 7C 00            [12] 2268 	mov	r4,#0x00
      003C80 C0 07            [24] 2269 	push	ar7
      003C82 C0 06            [24] 2270 	push	ar6
      003C84 C0 05            [24] 2271 	push	ar5
      003C86 C0 04            [24] 2272 	push	ar4
      003C88 74 14            [12] 2273 	mov	a,#___str_27
      003C8A C0 E0            [24] 2274 	push	acc
      003C8C 74 53            [12] 2275 	mov	a,#(___str_27 >> 8)
      003C8E C0 E0            [24] 2276 	push	acc
      003C90 74 80            [12] 2277 	mov	a,#0x80
      003C92 C0 E0            [24] 2278 	push	acc
      003C94 12 44 19         [24] 2279 	lcall	_printf
      003C97 E5 81            [12] 2280 	mov	a,sp
      003C99 24 FB            [12] 2281 	add	a,#0xfb
      003C9B F5 81            [12] 2282 	mov	sp,a
      003C9D D0 06            [24] 2283 	pop	ar6
      003C9F D0 07            [24] 2284 	pop	ar7
                                   2285 ;	main.c:233: for (int k = 0; k < buffer_array[0].buffer_size; k++) {
      003CA1 0E               [12] 2286 	inc	r6
      003CA2 BE 00 01         [24] 2287 	cjne	r6,#0x00,00429$
      003CA5 0F               [12] 2288 	inc	r7
      003CA6                       2289 00429$:
      003CA6 02 3B FA         [24] 2290 	ljmp	00196$
      003CA9                       2291 00177$:
                                   2292 ;	main.c:239: printf("\n\r");
      003CA9 74 E3            [12] 2293 	mov	a,#___str_12
      003CAB C0 E0            [24] 2294 	push	acc
      003CAD 74 50            [12] 2295 	mov	a,#(___str_12 >> 8)
      003CAF C0 E0            [24] 2296 	push	acc
      003CB1 74 80            [12] 2297 	mov	a,#0x80
      003CB3 C0 E0            [24] 2298 	push	acc
      003CB5 12 44 19         [24] 2299 	lcall	_printf
      003CB8 15 81            [12] 2300 	dec	sp
      003CBA 15 81            [12] 2301 	dec	sp
      003CBC 15 81            [12] 2302 	dec	sp
                                   2303 ;	main.c:240: switch_case = 0;
      003CBE 90 13 D9         [24] 2304 	mov	dptr,#_main_switch_case_131074_52
      003CC1 E4               [12] 2305 	clr	a
      003CC2 F0               [24] 2306 	movx	@dptr,a
      003CC3 A3               [24] 2307 	inc	dptr
      003CC4 F0               [24] 2308 	movx	@dptr,a
      003CC5 A3               [24] 2309 	inc	dptr
      003CC6 F0               [24] 2310 	movx	@dptr,a
      003CC7 A3               [24] 2311 	inc	dptr
      003CC8 F0               [24] 2312 	movx	@dptr,a
                                   2313 ;	main.c:241: break;
      003CC9 02 33 EB         [24] 2314 	ljmp	00181$
                                   2315 ;	main.c:248: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
      003CCC                       2316 00245$:
      003CCC 7F 00            [12] 2317 	mov	r7,#0x00
      003CCE                       2318 00199$:
      003CCE C3               [12] 2319 	clr	c
      003CCF EF               [12] 2320 	mov	a,r7
      003CD0 64 80            [12] 2321 	xrl	a,#0x80
      003CD2 94 8A            [12] 2322 	subb	a,#0x8a
      003CD4 40 03            [24] 2323 	jc	00430$
      003CD6 02 32 60         [24] 2324 	ljmp	00185$
      003CD9                       2325 00430$:
                                   2326 ;	main.c:249: free(buffer_array[l].buffer_pointer);
      003CD9 C2 D5            [12] 2327 	clr	F0
      003CDB 75 F0 06         [24] 2328 	mov	b,#0x06
      003CDE EF               [12] 2329 	mov	a,r7
      003CDF 30 E7 04         [24] 2330 	jnb	acc.7,00431$
      003CE2 B2 D5            [12] 2331 	cpl	F0
      003CE4 F4               [12] 2332 	cpl	a
      003CE5 04               [12] 2333 	inc	a
      003CE6                       2334 00431$:
      003CE6 A4               [48] 2335 	mul	ab
      003CE7 30 D5 0A         [24] 2336 	jnb	F0,00432$
      003CEA F4               [12] 2337 	cpl	a
      003CEB 24 01            [12] 2338 	add	a,#0x01
      003CED C5 F0            [12] 2339 	xch	a,b
      003CEF F4               [12] 2340 	cpl	a
      003CF0 34 00            [12] 2341 	addc	a,#0x00
      003CF2 C5 F0            [12] 2342 	xch	a,b
      003CF4                       2343 00432$:
      003CF4 24 97            [12] 2344 	add	a,#_main_buffer_array_131072_48
      003CF6 FD               [12] 2345 	mov	r5,a
      003CF7 74 13            [12] 2346 	mov	a,#(_main_buffer_array_131072_48 >> 8)
      003CF9 35 F0            [12] 2347 	addc	a,b
      003CFB FE               [12] 2348 	mov	r6,a
      003CFC 8D 82            [24] 2349 	mov	dpl,r5
      003CFE 8E 83            [24] 2350 	mov	dph,r6
      003D00 E0               [24] 2351 	movx	a,@dptr
      003D01 FB               [12] 2352 	mov	r3,a
      003D02 A3               [24] 2353 	inc	dptr
      003D03 E0               [24] 2354 	movx	a,@dptr
      003D04 FC               [12] 2355 	mov	r4,a
      003D05 7A 00            [12] 2356 	mov	r2,#0x00
      003D07 8B 82            [24] 2357 	mov	dpl,r3
      003D09 8C 83            [24] 2358 	mov	dph,r4
      003D0B 8A F0            [24] 2359 	mov	b,r2
      003D0D C0 07            [24] 2360 	push	ar7
      003D0F C0 06            [24] 2361 	push	ar6
      003D11 C0 05            [24] 2362 	push	ar5
      003D13 12 3D EF         [24] 2363 	lcall	_free
      003D16 D0 05            [24] 2364 	pop	ar5
      003D18 D0 06            [24] 2365 	pop	ar6
      003D1A D0 07            [24] 2366 	pop	ar7
                                   2367 ;	main.c:250: buffer_array[l].buffer_pointer = NULL;
      003D1C 8D 82            [24] 2368 	mov	dpl,r5
      003D1E 8E 83            [24] 2369 	mov	dph,r6
      003D20 E4               [12] 2370 	clr	a
      003D21 F0               [24] 2371 	movx	@dptr,a
      003D22 A3               [24] 2372 	inc	dptr
      003D23 F0               [24] 2373 	movx	@dptr,a
                                   2374 ;	main.c:248: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
      003D24 0F               [12] 2375 	inc	r7
                                   2376 ;	main.c:253: }
      003D25 80 A7            [24] 2377 	sjmp	00199$
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      004EFA                       2380 ___sdcc_heap_size:
      004EFA 88 13                 2381 	.byte #0x88, #0x13	; 5000
                                   2382 	.area CONST   (CODE)
      004EFC                       2383 ___str_0:
      004EFC 53 70 65 63 69 66 79  2384 	.ascii "Specify the buffer size (range 32 to 4800) divisible by 16: "
             20 74 68 65 20 62 75
             66 66 65 72 20 73 69
             7A 65 20 28 72 61 6E
             67 65 20 33 32 20 74
             6F 20 34 38 30 30 29
             20 64 69 76 69 73 69
             62 6C 65 20 62 79 20
             31 36 3A 20
      004F38 0A                    2385 	.db 0x0a
      004F39 0D                    2386 	.db 0x0d
      004F3A 00                    2387 	.db 0x00
                                   2388 	.area CSEG    (CODE)
                                   2389 	.area CONST   (CODE)
      004F3B                       2390 ___str_1:
      004F3B 46 61 69 6C 65 64 20  2391 	.ascii "Failed to allocate memory"
             74 6F 20 61 6C 6C 6F
             63 61 74 65 20 6D 65
             6D 6F 72 79
      004F54 0A                    2392 	.db 0x0a
      004F55 0D                    2393 	.db 0x0d
      004F56 00                    2394 	.db 0x00
                                   2395 	.area CSEG    (CODE)
                                   2396 	.area CONST   (CODE)
      004F57                       2397 ___str_2:
      004F57 2A 20 45 6E 74 65 72  2398 	.ascii "* Enter any UPPERCASE letter to append characters into buffe"
             20 61 6E 79 20 55 50
             50 45 52 43 41 53 45
             20 6C 65 74 74 65 72
             20 74 6F 20 61 70 70
             65 6E 64 20 63 68 61
             72 61 63 74 65 72 73
             20 69 6E 74 6F 20 62
             75 66 66 65
      004F93 72 20 30              2399 	.ascii "r 0"
      004F96 0A                    2400 	.db 0x0a
      004F97 0D                    2401 	.db 0x0d
      004F98 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                                   2404 	.area CONST   (CODE)
      004F99                       2405 ___str_3:
      004F99 2A 20 50 72 65 73 73  2406 	.ascii "* Press '+' to allocate a new buffer "
             20 27 2B 27 20 74 6F
             20 61 6C 6C 6F 63 61
             74 65 20 61 20 6E 65
             77 20 62 75 66 66 65
             72 20
      004FBE 0A                    2407 	.db 0x0a
      004FBF 0D                    2408 	.db 0x0d
      004FC0 00                    2409 	.db 0x00
                                   2410 	.area CSEG    (CODE)
                                   2411 	.area CONST   (CODE)
      004FC1                       2412 ___str_4:
      004FC1 2A 20 50 72 65 73 73  2413 	.ascii "* Press '-' to remove allocated buffers "
             20 27 2D 27 20 74 6F
             20 72 65 6D 6F 76 65
             20 61 6C 6C 6F 63 61
             74 65 64 20 62 75 66
             66 65 72 73 20
      004FE9 0A                    2414 	.db 0x0a
      004FEA 0D                    2415 	.db 0x0d
      004FEB 00                    2416 	.db 0x00
                                   2417 	.area CSEG    (CODE)
                                   2418 	.area CONST   (CODE)
      004FEC                       2419 ___str_5:
      004FEC 2A 20 50 72 65 73 73  2420 	.ascii "* Press '?' to get the heap report "
             20 27 3F 27 20 74 6F
             20 67 65 74 20 74 68
             65 20 68 65 61 70 20
             72 65 70 6F 72 74 20
      00500F 0A                    2421 	.db 0x0a
      005010 0D                    2422 	.db 0x0d
      005011 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      005012                       2426 ___str_6:
      005012 2A 20 50 72 65 73 73  2427 	.ascii "* Press '=' to get buffer 0 content "
             20 27 3D 27 20 74 6F
             20 67 65 74 20 62 75
             66 66 65 72 20 30 20
             63 6F 6E 74 65 6E 74
             20
      005036 0A                    2428 	.db 0x0a
      005037 0D                    2429 	.db 0x0d
      005038 00                    2430 	.db 0x00
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
      005039                       2433 ___str_7:
      005039 2A 20 50 72 65 73 73  2434 	.ascii "* Press '@' to restart the program "
             20 27 40 27 20 74 6F
             20 72 65 73 74 61 72
             74 20 74 68 65 20 70
             72 6F 67 72 61 6D 20
      00505C 0A                    2435 	.db 0x0a
      00505D 0D                    2436 	.db 0x0d
      00505E 00                    2437 	.db 0x00
                                   2438 	.area CSEG    (CODE)
                                   2439 	.area CONST   (CODE)
      00505F                       2440 ___str_8:
      00505F 20 6D 6F 64 65 2C 20  2441 	.ascii " mode, specify buffer size (range 20 to 400): "
             73 70 65 63 69 66 79
             20 62 75 66 66 65 72
             20 73 69 7A 65 20 28
             72 61 6E 67 65 20 32
             30 20 74 6F 20 34 30
             30 29 3A 20
      00508D 0A                    2442 	.db 0x0a
      00508E 0D                    2443 	.db 0x0d
      00508F 00                    2444 	.db 0x00
                                   2445 	.area CSEG    (CODE)
                                   2446 	.area CONST   (CODE)
      005090                       2447 ___str_9:
      005090 46 69 72 73 74 20 65  2448 	.ascii "First exit the current mode "
             78 69 74 20 74 68 65
             20 63 75 72 72 65 6E
             74 20 6D 6F 64 65 20
      0050AC 0A                    2449 	.db 0x0a
      0050AD 0D                    2450 	.db 0x0d
      0050AE 00                    2451 	.db 0x00
                                   2452 	.area CSEG    (CODE)
                                   2453 	.area CONST   (CODE)
      0050AF                       2454 ___str_10:
      0050AF 20 6D 6F 64 65 2C 20  2455 	.ascii " mode, specify buffer number to destroy: "
             73 70 65 63 69 66 79
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 74 6F 20 64 65 73
             74 72 6F 79 3A 20
      0050D8 0A                    2456 	.db 0x0a
      0050D9 0D                    2457 	.db 0x0d
      0050DA 00                    2458 	.db 0x00
                                   2459 	.area CSEG    (CODE)
                                   2460 	.area CONST   (CODE)
      0050DB                       2461 ___str_11:
      0050DB 20 6D 6F 64 65        2462 	.ascii " mode"
      0050E0 0A                    2463 	.db 0x0a
      0050E1 0D                    2464 	.db 0x0d
      0050E2 00                    2465 	.db 0x00
                                   2466 	.area CSEG    (CODE)
                                   2467 	.area CONST   (CODE)
      0050E3                       2468 ___str_12:
      0050E3 0A                    2469 	.db 0x0a
      0050E4 0D                    2470 	.db 0x0d
      0050E5 00                    2471 	.db 0x00
                                   2472 	.area CSEG    (CODE)
                                   2473 	.area CONST   (CODE)
      0050E6                       2474 ___str_13:
      0050E6 20 6D 6F 64 65 20 2D  2475 	.ascii " mode - restarting program "
             20 72 65 73 74 61 72
             74 69 6E 67 20 70 72
             6F 67 72 61 6D 20
      005101 0A                    2476 	.db 0x0a
      005102 0D                    2477 	.db 0x0d
      005103 00                    2478 	.db 0x00
                                   2479 	.area CSEG    (CODE)
                                   2480 	.area CONST   (CODE)
      005104                       2481 ___str_14:
      005104 43 68 61 72 61 63 74  2482 	.ascii "Characters added to buffer 0 - exiting mode "
             65 72 73 20 61 64 64
             65 64 20 74 6F 20 62
             75 66 66 65 72 20 30
             20 2D 20 65 78 69 74
             69 6E 67 20 6D 6F 64
             65 20
      005130 0A                    2483 	.db 0x0a
      005131 0D                    2484 	.db 0x0d
      005132 00                    2485 	.db 0x00
                                   2486 	.area CSEG    (CODE)
                                   2487 	.area CONST   (CODE)
      005133                       2488 ___str_15:
      005133 0A                    2489 	.db 0x0a
      005134 0D                    2490 	.db 0x0d
      005135 4E 6F 74 20 65 6E 6F  2491 	.ascii "Not enough memory to load, echoing to serial output %c"
             75 67 68 20 6D 65 6D
             6F 72 79 20 74 6F 20
             6C 6F 61 64 2C 20 65
             63 68 6F 69 6E 67 20
             74 6F 20 73 65 72 69
             61 6C 20 6F 75 74 70
             75 74 20 25 63
      00516B 0A                    2492 	.db 0x0a
      00516C 0D                    2493 	.db 0x0d
      00516D 00                    2494 	.db 0x00
                                   2495 	.area CSEG    (CODE)
                                   2496 	.area CONST   (CODE)
      00516E                       2497 ___str_16:
      00516E 46 61 69 6C 65 64 20  2498 	.ascii "Failed to allocate memory  - exiting mode "
             74 6F 20 61 6C 6C 6F
             63 61 74 65 20 6D 65
             6D 6F 72 79 20 20 2D
             20 65 78 69 74 69 6E
             67 20 6D 6F 64 65 20
      005198 0A                    2499 	.db 0x0a
      005199 0D                    2500 	.db 0x0d
      00519A 00                    2501 	.db 0x00
                                   2502 	.area CSEG    (CODE)
                                   2503 	.area CONST   (CODE)
      00519B                       2504 ___str_17:
      00519B 41 6C 6C 6F 63 61 74  2505 	.ascii "Allocated memory as buffer #%d  - exiting mode "
             65 64 20 6D 65 6D 6F
             72 79 20 61 73 20 62
             75 66 66 65 72 20 23
             25 64 20 20 2D 20 65
             78 69 74 69 6E 67 20
             6D 6F 64 65 20
      0051CA 0A                    2506 	.db 0x0a
      0051CB 0D                    2507 	.db 0x0d
      0051CC 00                    2508 	.db 0x00
                                   2509 	.area CSEG    (CODE)
                                   2510 	.area CONST   (CODE)
      0051CD                       2511 ___str_18:
      0051CD 43 61 6E 6E 6F 74 20  2512 	.ascii "Cannot remove buffer 0 - exiting mode "
             72 65 6D 6F 76 65 20
             62 75 66 66 65 72 20
             30 20 2D 20 65 78 69
             74 69 6E 67 20 6D 6F
             64 65 20
      0051F3 0A                    2513 	.db 0x0a
      0051F4 0D                    2514 	.db 0x0d
      0051F5 00                    2515 	.db 0x00
                                   2516 	.area CSEG    (CODE)
                                   2517 	.area CONST   (CODE)
      0051F6                       2518 ___str_19:
      0051F6 46 72 65 65 64 20 62  2519 	.ascii "Freed buffer #%d - exiting mode "
             75 66 66 65 72 20 23
             25 64 20 2D 20 65 78
             69 74 69 6E 67 20 6D
             6F 64 65 20
      005216 0A                    2520 	.db 0x0a
      005217 0D                    2521 	.db 0x0d
      005218 00                    2522 	.db 0x00
                                   2523 	.area CSEG    (CODE)
                                   2524 	.area CONST   (CODE)
      005219                       2525 ___str_20:
      005219 4E 6F 20 73 75 63 68  2526 	.ascii "No such buffer exists - exiting mode "
             20 62 75 66 66 65 72
             20 65 78 69 73 74 73
             20 2D 20 65 78 69 74
             69 6E 67 20 6D 6F 64
             65 20
      00523E 0A                    2527 	.db 0x0a
      00523F 0D                    2528 	.db 0x0d
      005240 00                    2529 	.db 0x00
                                   2530 	.area CSEG    (CODE)
                                   2531 	.area CONST   (CODE)
      005241                       2532 ___str_21:
      005241 54 6F 74 61 6C 20 63  2533 	.ascii "Total characters count: %d "
             68 61 72 61 63 74 65
             72 73 20 63 6F 75 6E
             74 3A 20 25 64 20
      00525C 0A                    2534 	.db 0x0a
      00525D 0D                    2535 	.db 0x0d
      00525E 00                    2536 	.db 0x00
                                   2537 	.area CSEG    (CODE)
                                   2538 	.area CONST   (CODE)
      00525F                       2539 ___str_22:
      00525F 53 69 6E 63 65 20 6C  2540 	.ascii "Since last '?': %d "
             61 73 74 20 27 3F 27
             3A 20 25 64 20
      005272 0A                    2541 	.db 0x0a
      005273 0D                    2542 	.db 0x0d
      005274 00                    2543 	.db 0x00
                                   2544 	.area CSEG    (CODE)
                                   2545 	.area CONST   (CODE)
      005275                       2546 ___str_23:
      005275 42 75 66 66 65 72 20  2547 	.ascii "Buffer %d --> Start address: %p, End address: %p, Allocated "
             25 64 20 2D 2D 3E 20
             53 74 61 72 74 20 61
             64 64 72 65 73 73 3A
             20 25 70 2C 20 45 6E
             64 20 61 64 64 72 65
             73 73 3A 20 25 70 2C
             20 41 6C 6C 6F 63 61
             74 65 64 20
      0052B1 73 69 7A 65 3A 20 25  2548 	.ascii "size: %u, Storage character counts: %u, Free space available"
             75 2C 20 53 74 6F 72
             61 67 65 20 63 68 61
             72 61 63 74 65 72 20
             63 6F 75 6E 74 73 3A
             20 25 75 2C 20 46 72
             65 65 20 73 70 61 63
             65 20 61 76 61 69 6C
             61 62 6C 65
      0052ED 3A 20 25 75           2549 	.ascii ": %u"
      0052F1 0A                    2550 	.db 0x0a
      0052F2 0D                    2551 	.db 0x0d
      0052F3 00                    2552 	.db 0x00
                                   2553 	.area CSEG    (CODE)
                                   2554 	.area CONST   (CODE)
      0052F4                       2555 ___str_24:
      0052F4 42 75 66 66 65 72 20  2556 	.ascii "Buffer %d content: "
             25 64 20 63 6F 6E 74
             65 6E 74 3A 20
      005307 0A                    2557 	.db 0x0a
      005308 0D                    2558 	.db 0x0d
      005309 00                    2559 	.db 0x00
                                   2560 	.area CSEG    (CODE)
                                   2561 	.area CONST   (CODE)
      00530A                       2562 ___str_25:
      00530A 25 63                 2563 	.ascii "%c"
      00530C 00                    2564 	.db 0x00
                                   2565 	.area CSEG    (CODE)
                                   2566 	.area CONST   (CODE)
      00530D                       2567 ___str_26:
      00530D 0A                    2568 	.db 0x0a
      00530E 0D                    2569 	.db 0x0d
      00530F 25 70 20 3A           2570 	.ascii "%p :"
      005313 00                    2571 	.db 0x00
                                   2572 	.area CSEG    (CODE)
                                   2573 	.area CONST   (CODE)
      005314                       2574 ___str_27:
      005314 20 25 78              2575 	.ascii " %x"
      005317 00                    2576 	.db 0x00
                                   2577 	.area CSEG    (CODE)
                                   2578 	.area XINIT   (CODE)
                                   2579 	.area CABS    (ABS,CODE)
