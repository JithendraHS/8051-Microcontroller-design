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
      003260                        619 00183$:
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
      003273 74 E5            [12]  637 	mov	a,#___str_0
      003275 C0 E0            [24]  638 	push	acc
      003277 74 4E            [12]  639 	mov	a,#(___str_0 >> 8)
      003279 C0 E0            [24]  640 	push	acc
      00327B 74 80            [12]  641 	mov	a,#0x80
      00327D C0 E0            [24]  642 	push	acc
      00327F 12 44 02         [24]  643 	lcall	_printf
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
      0032BF 12 40 AB         [24]  682 	lcall	_malloc
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
      0032D6 74 24            [12]  698 	mov	a,#___str_1
      0032D8 C0 E0            [24]  699 	push	acc
      0032DA 74 4F            [12]  700 	mov	a,#(___str_1 >> 8)
      0032DC C0 E0            [24]  701 	push	acc
      0032DE 74 80            [12]  702 	mov	a,#0x80
      0032E0 C0 E0            [24]  703 	push	acc
      0032E2 12 44 02         [24]  704 	lcall	_printf
      0032E5 15 81            [12]  705 	dec	sp
      0032E7 15 81            [12]  706 	dec	sp
      0032E9 15 81            [12]  707 	dec	sp
                                    708 ;	main.c:78: continue;
      0032EB 02 32 60         [24]  709 	ljmp	00183$
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
      003303 12 40 AB         [24]  727 	lcall	_malloc
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
      003316 74 24            [12]  741 	mov	a,#___str_1
      003318 C0 E0            [24]  742 	push	acc
      00331A 74 4F            [12]  743 	mov	a,#(___str_1 >> 8)
      00331C C0 E0            [24]  744 	push	acc
      00331E 74 80            [12]  745 	mov	a,#0x80
      003320 C0 E0            [24]  746 	push	acc
      003322 12 44 02         [24]  747 	lcall	_printf
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
      00333B 12 3D D8         [24]  762 	lcall	_free
                                    763 ;	main.c:89: buffer_array[0].buffer_pointer = NULL;
      00333E 90 13 97         [24]  764 	mov	dptr,#_main_buffer_array_131072_48
      003341 E4               [12]  765 	clr	a
      003342 F0               [24]  766 	movx	@dptr,a
      003343 A3               [24]  767 	inc	dptr
      003344 F0               [24]  768 	movx	@dptr,a
                                    769 ;	main.c:90: continue;
      003345 02 32 60         [24]  770 	ljmp	00183$
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
      003362 74 40            [12]  793 	mov	a,#___str_2
      003364 C0 E0            [24]  794 	push	acc
      003366 74 4F            [12]  795 	mov	a,#(___str_2 >> 8)
      003368 C0 E0            [24]  796 	push	acc
      00336A 74 80            [12]  797 	mov	a,#0x80
      00336C C0 E0            [24]  798 	push	acc
      00336E 12 44 02         [24]  799 	lcall	_printf
      003371 15 81            [12]  800 	dec	sp
      003373 15 81            [12]  801 	dec	sp
      003375 15 81            [12]  802 	dec	sp
                                    803 ;	main.c:98: printf("* Press '+' to allocate a new buffer \n\r");
      003377 74 82            [12]  804 	mov	a,#___str_3
      003379 C0 E0            [24]  805 	push	acc
      00337B 74 4F            [12]  806 	mov	a,#(___str_3 >> 8)
      00337D C0 E0            [24]  807 	push	acc
      00337F 74 80            [12]  808 	mov	a,#0x80
      003381 C0 E0            [24]  809 	push	acc
      003383 12 44 02         [24]  810 	lcall	_printf
      003386 15 81            [12]  811 	dec	sp
      003388 15 81            [12]  812 	dec	sp
      00338A 15 81            [12]  813 	dec	sp
                                    814 ;	main.c:99: printf("* Press '-' to remove allocated buffers \n\r");
      00338C 74 AA            [12]  815 	mov	a,#___str_4
      00338E C0 E0            [24]  816 	push	acc
      003390 74 4F            [12]  817 	mov	a,#(___str_4 >> 8)
      003392 C0 E0            [24]  818 	push	acc
      003394 74 80            [12]  819 	mov	a,#0x80
      003396 C0 E0            [24]  820 	push	acc
      003398 12 44 02         [24]  821 	lcall	_printf
      00339B 15 81            [12]  822 	dec	sp
      00339D 15 81            [12]  823 	dec	sp
      00339F 15 81            [12]  824 	dec	sp
                                    825 ;	main.c:100: printf("* Press '?' to get the heap report \n\r");
      0033A1 74 D5            [12]  826 	mov	a,#___str_5
      0033A3 C0 E0            [24]  827 	push	acc
      0033A5 74 4F            [12]  828 	mov	a,#(___str_5 >> 8)
      0033A7 C0 E0            [24]  829 	push	acc
      0033A9 74 80            [12]  830 	mov	a,#0x80
      0033AB C0 E0            [24]  831 	push	acc
      0033AD 12 44 02         [24]  832 	lcall	_printf
      0033B0 15 81            [12]  833 	dec	sp
      0033B2 15 81            [12]  834 	dec	sp
      0033B4 15 81            [12]  835 	dec	sp
                                    836 ;	main.c:101: printf("* Press '=' to get buffer 0 content \n\r");
      0033B6 74 FB            [12]  837 	mov	a,#___str_6
      0033B8 C0 E0            [24]  838 	push	acc
      0033BA 74 4F            [12]  839 	mov	a,#(___str_6 >> 8)
      0033BC C0 E0            [24]  840 	push	acc
      0033BE 74 80            [12]  841 	mov	a,#0x80
      0033C0 C0 E0            [24]  842 	push	acc
      0033C2 12 44 02         [24]  843 	lcall	_printf
      0033C5 15 81            [12]  844 	dec	sp
      0033C7 15 81            [12]  845 	dec	sp
      0033C9 15 81            [12]  846 	dec	sp
                                    847 ;	main.c:102: printf("* Press '@' to restart the program \n\r");
      0033CB 74 22            [12]  848 	mov	a,#___str_7
      0033CD C0 E0            [24]  849 	push	acc
      0033CF 74 50            [12]  850 	mov	a,#(___str_7 >> 8)
      0033D1 C0 E0            [24]  851 	push	acc
      0033D3 74 80            [12]  852 	mov	a,#0x80
      0033D5 C0 E0            [24]  853 	push	acc
      0033D7 12 44 02         [24]  854 	lcall	_printf
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
      0033EB                        869 00179$:
                                    870 ;	main.c:108: __xdata uint8_t char_received = echo(); // Receive a character from UART
      0033EB 12 3D B3         [24]  871 	lcall	_echo
      0033EE AD 82            [24]  872 	mov	r5,dpl
                                    873 ;	main.c:110: if (((char_received >= 'A') && (char_received <= 'Z')) && !switch_case) {
      0033F0 8D 04            [24]  874 	mov	ar4,r5
      0033F2 BC 41 00         [24]  875 	cjne	r4,#0x41,00378$
      0033F5                        876 00378$:
      0033F5 40 2B            [24]  877 	jc	00138$
      0033F7 8D 04            [24]  878 	mov	ar4,r5
      0033F9 EC               [12]  879 	mov	a,r4
      0033FA 24 A5            [12]  880 	add	a,#0xff - 0x5a
      0033FC 40 24            [24]  881 	jc	00138$
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
      003410 70 10            [24]  894 	jnz	00138$
                                    895 ;	main.c:111: switch_case = 1;
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
      00341F 02 35 ED         [24]  906 	ljmp	00139$
      003422                        907 00138$:
                                    908 ;	main.c:112: } else if (char_received == '+') {
      003422 BD 2B 59         [24]  909 	cjne	r5,#0x2b,00135$
                                    910 ;	main.c:113: if (!switch_case) {
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
                                    924 ;	main.c:114: printf(" mode, specify buffer size (range 20 to 400): \n\r");
      003439 C0 05            [24]  925 	push	ar5
      00343B 74 48            [12]  926 	mov	a,#___str_8
      00343D C0 E0            [24]  927 	push	acc
      00343F 74 50            [12]  928 	mov	a,#(___str_8 >> 8)
      003441 C0 E0            [24]  929 	push	acc
      003443 74 80            [12]  930 	mov	a,#0x80
      003445 C0 E0            [24]  931 	push	acc
      003447 12 44 02         [24]  932 	lcall	_printf
      00344A 15 81            [12]  933 	dec	sp
      00344C 15 81            [12]  934 	dec	sp
      00344E 15 81            [12]  935 	dec	sp
      003450 D0 05            [24]  936 	pop	ar5
                                    937 ;	main.c:115: switch_case = 2;
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
      00345F 02 35 ED         [24]  948 	ljmp	00139$
      003462                        949 00106$:
                                    950 ;	main.c:117: printf("First exit the current mode \n\r");
      003462 C0 05            [24]  951 	push	ar5
      003464 74 79            [12]  952 	mov	a,#___str_9
      003466 C0 E0            [24]  953 	push	acc
      003468 74 50            [12]  954 	mov	a,#(___str_9 >> 8)
      00346A C0 E0            [24]  955 	push	acc
      00346C 74 80            [12]  956 	mov	a,#0x80
      00346E C0 E0            [24]  957 	push	acc
      003470 12 44 02         [24]  958 	lcall	_printf
      003473 15 81            [12]  959 	dec	sp
      003475 15 81            [12]  960 	dec	sp
      003477 15 81            [12]  961 	dec	sp
      003479 D0 05            [24]  962 	pop	ar5
      00347B 02 35 ED         [24]  963 	ljmp	00139$
      00347E                        964 00135$:
                                    965 ;	main.c:119: } else if (char_received == '-') {
      00347E BD 2D 59         [24]  966 	cjne	r5,#0x2d,00132$
                                    967 ;	main.c:120: if (!switch_case) {
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
                                    981 ;	main.c:121: printf(" mode, specify buffer number to destroy: \n\r");
      003495 C0 05            [24]  982 	push	ar5
      003497 74 98            [12]  983 	mov	a,#___str_10
      003499 C0 E0            [24]  984 	push	acc
      00349B 74 50            [12]  985 	mov	a,#(___str_10 >> 8)
      00349D C0 E0            [24]  986 	push	acc
      00349F 74 80            [12]  987 	mov	a,#0x80
      0034A1 C0 E0            [24]  988 	push	acc
      0034A3 12 44 02         [24]  989 	lcall	_printf
      0034A6 15 81            [12]  990 	dec	sp
      0034A8 15 81            [12]  991 	dec	sp
      0034AA 15 81            [12]  992 	dec	sp
      0034AC D0 05            [24]  993 	pop	ar5
                                    994 ;	main.c:122: switch_case = 3;
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
      0034BB 02 35 ED         [24] 1005 	ljmp	00139$
      0034BE                       1006 00109$:
                                   1007 ;	main.c:124: printf("First exit the current mode \n\r");
      0034BE C0 05            [24] 1008 	push	ar5
      0034C0 74 79            [12] 1009 	mov	a,#___str_9
      0034C2 C0 E0            [24] 1010 	push	acc
      0034C4 74 50            [12] 1011 	mov	a,#(___str_9 >> 8)
      0034C6 C0 E0            [24] 1012 	push	acc
      0034C8 74 80            [12] 1013 	mov	a,#0x80
      0034CA C0 E0            [24] 1014 	push	acc
      0034CC 12 44 02         [24] 1015 	lcall	_printf
      0034CF 15 81            [12] 1016 	dec	sp
      0034D1 15 81            [12] 1017 	dec	sp
      0034D3 15 81            [12] 1018 	dec	sp
      0034D5 D0 05            [24] 1019 	pop	ar5
      0034D7 02 35 ED         [24] 1020 	ljmp	00139$
      0034DA                       1021 00132$:
                                   1022 ;	main.c:126: } else if (char_received == '?') {
      0034DA BD 3F 59         [24] 1023 	cjne	r5,#0x3f,00129$
                                   1024 ;	main.c:127: if (!switch_case) {
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
                                   1038 ;	main.c:128: printf(" mode\n\r");
      0034F1 C0 05            [24] 1039 	push	ar5
      0034F3 74 C4            [12] 1040 	mov	a,#___str_11
      0034F5 C0 E0            [24] 1041 	push	acc
      0034F7 74 50            [12] 1042 	mov	a,#(___str_11 >> 8)
      0034F9 C0 E0            [24] 1043 	push	acc
      0034FB 74 80            [12] 1044 	mov	a,#0x80
      0034FD C0 E0            [24] 1045 	push	acc
      0034FF 12 44 02         [24] 1046 	lcall	_printf
      003502 15 81            [12] 1047 	dec	sp
      003504 15 81            [12] 1048 	dec	sp
      003506 15 81            [12] 1049 	dec	sp
      003508 D0 05            [24] 1050 	pop	ar5
                                   1051 ;	main.c:129: switch_case = 4;
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
      003517 02 35 ED         [24] 1062 	ljmp	00139$
      00351A                       1063 00112$:
                                   1064 ;	main.c:131: printf("First exit the current mode \n\r");
      00351A C0 05            [24] 1065 	push	ar5
      00351C 74 79            [12] 1066 	mov	a,#___str_9
      00351E C0 E0            [24] 1067 	push	acc
      003520 74 50            [12] 1068 	mov	a,#(___str_9 >> 8)
      003522 C0 E0            [24] 1069 	push	acc
      003524 74 80            [12] 1070 	mov	a,#0x80
      003526 C0 E0            [24] 1071 	push	acc
      003528 12 44 02         [24] 1072 	lcall	_printf
      00352B 15 81            [12] 1073 	dec	sp
      00352D 15 81            [12] 1074 	dec	sp
      00352F 15 81            [12] 1075 	dec	sp
      003531 D0 05            [24] 1076 	pop	ar5
      003533 02 35 ED         [24] 1077 	ljmp	00139$
      003536                       1078 00129$:
                                   1079 ;	main.c:133: } else if ((char_received == '\n') || (char_received == '\r')) {
      003536 BD 0A 02         [24] 1080 	cjne	r5,#0x0a,00391$
      003539 80 03            [24] 1081 	sjmp	00124$
      00353B                       1082 00391$:
      00353B BD 0D 3A         [24] 1083 	cjne	r5,#0x0d,00125$
      00353E                       1084 00124$:
                                   1085 ;	main.c:134: if(!switch_case){
      00353E 90 13 D9         [24] 1086 	mov	dptr,#_main_switch_case_131074_52
      003541 E0               [24] 1087 	movx	a,@dptr
      003542 F5 F0            [12] 1088 	mov	b,a
      003544 A3               [24] 1089 	inc	dptr
      003545 E0               [24] 1090 	movx	a,@dptr
      003546 42 F0            [12] 1091 	orl	b,a
      003548 A3               [24] 1092 	inc	dptr
      003549 E0               [24] 1093 	movx	a,@dptr
      00354A 42 F0            [12] 1094 	orl	b,a
      00354C A3               [24] 1095 	inc	dptr
      00354D E0               [24] 1096 	movx	a,@dptr
      00354E 45 F0            [12] 1097 	orl	a,b
      003550 70 19            [24] 1098 	jnz	00115$
                                   1099 ;	main.c:135: printf("\n\r");
      003552 C0 05            [24] 1100 	push	ar5
      003554 74 CC            [12] 1101 	mov	a,#___str_12
      003556 C0 E0            [24] 1102 	push	acc
      003558 74 50            [12] 1103 	mov	a,#(___str_12 >> 8)
      00355A C0 E0            [24] 1104 	push	acc
      00355C 74 80            [12] 1105 	mov	a,#0x80
      00355E C0 E0            [24] 1106 	push	acc
      003560 12 44 02         [24] 1107 	lcall	_printf
      003563 15 81            [12] 1108 	dec	sp
      003565 15 81            [12] 1109 	dec	sp
      003567 15 81            [12] 1110 	dec	sp
      003569 D0 05            [24] 1111 	pop	ar5
      00356B                       1112 00115$:
                                   1113 ;	main.c:137: switch_case = 0;
      00356B 90 13 D9         [24] 1114 	mov	dptr,#_main_switch_case_131074_52
      00356E E4               [12] 1115 	clr	a
      00356F F0               [24] 1116 	movx	@dptr,a
      003570 A3               [24] 1117 	inc	dptr
      003571 F0               [24] 1118 	movx	@dptr,a
      003572 A3               [24] 1119 	inc	dptr
      003573 F0               [24] 1120 	movx	@dptr,a
      003574 A3               [24] 1121 	inc	dptr
      003575 F0               [24] 1122 	movx	@dptr,a
      003576 80 75            [24] 1123 	sjmp	00139$
      003578                       1124 00125$:
                                   1125 ;	main.c:138: } else if (char_received == '=') {
      003578 BD 3D 57         [24] 1126 	cjne	r5,#0x3d,00122$
                                   1127 ;	main.c:139: if (!switch_case) {
      00357B 90 13 D9         [24] 1128 	mov	dptr,#_main_switch_case_131074_52
      00357E E0               [24] 1129 	movx	a,@dptr
      00357F F5 F0            [12] 1130 	mov	b,a
      003581 A3               [24] 1131 	inc	dptr
      003582 E0               [24] 1132 	movx	a,@dptr
      003583 42 F0            [12] 1133 	orl	b,a
      003585 A3               [24] 1134 	inc	dptr
      003586 E0               [24] 1135 	movx	a,@dptr
      003587 42 F0            [12] 1136 	orl	b,a
      003589 A3               [24] 1137 	inc	dptr
      00358A E0               [24] 1138 	movx	a,@dptr
      00358B 45 F0            [12] 1139 	orl	a,b
      00358D 70 28            [24] 1140 	jnz	00117$
                                   1141 ;	main.c:140: printf(" mode\n\r");
      00358F C0 05            [24] 1142 	push	ar5
      003591 74 C4            [12] 1143 	mov	a,#___str_11
      003593 C0 E0            [24] 1144 	push	acc
      003595 74 50            [12] 1145 	mov	a,#(___str_11 >> 8)
      003597 C0 E0            [24] 1146 	push	acc
      003599 74 80            [12] 1147 	mov	a,#0x80
      00359B C0 E0            [24] 1148 	push	acc
      00359D 12 44 02         [24] 1149 	lcall	_printf
      0035A0 15 81            [12] 1150 	dec	sp
      0035A2 15 81            [12] 1151 	dec	sp
      0035A4 15 81            [12] 1152 	dec	sp
      0035A6 D0 05            [24] 1153 	pop	ar5
                                   1154 ;	main.c:141: switch_case = 5;
      0035A8 90 13 D9         [24] 1155 	mov	dptr,#_main_switch_case_131074_52
      0035AB 74 05            [12] 1156 	mov	a,#0x05
      0035AD F0               [24] 1157 	movx	@dptr,a
      0035AE E4               [12] 1158 	clr	a
      0035AF A3               [24] 1159 	inc	dptr
      0035B0 F0               [24] 1160 	movx	@dptr,a
      0035B1 A3               [24] 1161 	inc	dptr
      0035B2 F0               [24] 1162 	movx	@dptr,a
      0035B3 A3               [24] 1163 	inc	dptr
      0035B4 F0               [24] 1164 	movx	@dptr,a
      0035B5 80 36            [24] 1165 	sjmp	00139$
      0035B7                       1166 00117$:
                                   1167 ;	main.c:143: printf("First exit the current mode \n\r");
      0035B7 C0 05            [24] 1168 	push	ar5
      0035B9 74 79            [12] 1169 	mov	a,#___str_9
      0035BB C0 E0            [24] 1170 	push	acc
      0035BD 74 50            [12] 1171 	mov	a,#(___str_9 >> 8)
      0035BF C0 E0            [24] 1172 	push	acc
      0035C1 74 80            [12] 1173 	mov	a,#0x80
      0035C3 C0 E0            [24] 1174 	push	acc
      0035C5 12 44 02         [24] 1175 	lcall	_printf
      0035C8 15 81            [12] 1176 	dec	sp
      0035CA 15 81            [12] 1177 	dec	sp
      0035CC 15 81            [12] 1178 	dec	sp
      0035CE D0 05            [24] 1179 	pop	ar5
      0035D0 80 1B            [24] 1180 	sjmp	00139$
      0035D2                       1181 00122$:
                                   1182 ;	main.c:145: } else if (char_received == '@') {
      0035D2 BD 40 18         [24] 1183 	cjne	r5,#0x40,00139$
                                   1184 ;	main.c:146: printf(" mode - restarting program \n\r");
      0035D5 74 CF            [12] 1185 	mov	a,#___str_13
      0035D7 C0 E0            [24] 1186 	push	acc
      0035D9 74 50            [12] 1187 	mov	a,#(___str_13 >> 8)
      0035DB C0 E0            [24] 1188 	push	acc
      0035DD 74 80            [12] 1189 	mov	a,#0x80
      0035DF C0 E0            [24] 1190 	push	acc
      0035E1 12 44 02         [24] 1191 	lcall	_printf
      0035E4 15 81            [12] 1192 	dec	sp
      0035E6 15 81            [12] 1193 	dec	sp
      0035E8 15 81            [12] 1194 	dec	sp
                                   1195 ;	main.c:147: break;
      0035EA 02 3C B5         [24] 1196 	ljmp	00243$
      0035ED                       1197 00139$:
                                   1198 ;	main.c:151: switch (switch_case) {
      0035ED 90 13 D9         [24] 1199 	mov	dptr,#_main_switch_case_131074_52
      0035F0 E0               [24] 1200 	movx	a,@dptr
      0035F1 F9               [12] 1201 	mov	r1,a
      0035F2 A3               [24] 1202 	inc	dptr
      0035F3 E0               [24] 1203 	movx	a,@dptr
      0035F4 FA               [12] 1204 	mov	r2,a
      0035F5 A3               [24] 1205 	inc	dptr
      0035F6 E0               [24] 1206 	movx	a,@dptr
      0035F7 FB               [12] 1207 	mov	r3,a
      0035F8 A3               [24] 1208 	inc	dptr
      0035F9 E0               [24] 1209 	movx	a,@dptr
      0035FA FC               [12] 1210 	mov	r4,a
      0035FB B9 01 0B         [24] 1211 	cjne	r1,#0x01,00400$
      0035FE BA 00 08         [24] 1212 	cjne	r2,#0x00,00400$
      003601 BB 00 05         [24] 1213 	cjne	r3,#0x00,00400$
      003604 BC 00 02         [24] 1214 	cjne	r4,#0x00,00400$
      003607 80 3F            [24] 1215 	sjmp	00142$
      003609                       1216 00400$:
      003609 B9 02 0C         [24] 1217 	cjne	r1,#0x02,00401$
      00360C BA 00 09         [24] 1218 	cjne	r2,#0x00,00401$
      00360F BB 00 06         [24] 1219 	cjne	r3,#0x00,00401$
      003612 BC 00 03         [24] 1220 	cjne	r4,#0x00,00401$
      003615 02 36 BC         [24] 1221 	ljmp	00146$
      003618                       1222 00401$:
      003618 B9 03 0C         [24] 1223 	cjne	r1,#0x03,00402$
      00361B BA 00 09         [24] 1224 	cjne	r2,#0x00,00402$
      00361E BB 00 06         [24] 1225 	cjne	r3,#0x00,00402$
      003621 BC 00 03         [24] 1226 	cjne	r4,#0x00,00402$
      003624 02 38 1D         [24] 1227 	ljmp	00155$
      003627                       1228 00402$:
      003627 B9 04 0C         [24] 1229 	cjne	r1,#0x04,00403$
      00362A BA 00 09         [24] 1230 	cjne	r2,#0x00,00403$
      00362D BB 00 06         [24] 1231 	cjne	r3,#0x00,00403$
      003630 BC 00 03         [24] 1232 	cjne	r4,#0x00,00403$
      003633 02 39 5B         [24] 1233 	ljmp	00163$
      003636                       1234 00403$:
      003636 B9 05 0C         [24] 1235 	cjne	r1,#0x05,00404$
      003639 BA 00 09         [24] 1236 	cjne	r2,#0x00,00404$
      00363C BB 00 06         [24] 1237 	cjne	r3,#0x00,00404$
      00363F BC 00 03         [24] 1238 	cjne	r4,#0x00,00404$
      003642 02 3B DF         [24] 1239 	ljmp	00241$
      003645                       1240 00404$:
      003645 02 33 EB         [24] 1241 	ljmp	00179$
                                   1242 ;	main.c:152: case 1:
      003648                       1243 00142$:
                                   1244 ;	main.c:157: if (buffer_array[0].buffer_occupied < user_input_1) {
      003648 90 13 9B         [24] 1245 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      00364B E0               [24] 1246 	movx	a,@dptr
      00364C FB               [12] 1247 	mov	r3,a
      00364D A3               [24] 1248 	inc	dptr
      00364E E0               [24] 1249 	movx	a,@dptr
      00364F FC               [12] 1250 	mov	r4,a
      003650 C3               [12] 1251 	clr	c
      003651 EB               [12] 1252 	mov	a,r3
      003652 95 1F            [12] 1253 	subb	a,_main_sloc3_1_0
      003654 EC               [12] 1254 	mov	a,r4
      003655 64 80            [12] 1255 	xrl	a,#0x80
      003657 85 20 F0         [24] 1256 	mov	b,(_main_sloc3_1_0 + 1)
      00365A 63 F0 80         [24] 1257 	xrl	b,#0x80
      00365D 95 F0            [12] 1258 	subb	a,b
      00365F 50 32            [24] 1259 	jnc	00144$
                                   1260 ;	main.c:158: buffer_array[0].buffer_pointer[buffer_array[0].buffer_occupied] = char_received;
      003661 90 13 97         [24] 1261 	mov	dptr,#_main_buffer_array_131072_48
      003664 E0               [24] 1262 	movx	a,@dptr
      003665 FB               [12] 1263 	mov	r3,a
      003666 A3               [24] 1264 	inc	dptr
      003667 E0               [24] 1265 	movx	a,@dptr
      003668 FC               [12] 1266 	mov	r4,a
      003669 90 13 9B         [24] 1267 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      00366C E0               [24] 1268 	movx	a,@dptr
      00366D F9               [12] 1269 	mov	r1,a
      00366E A3               [24] 1270 	inc	dptr
      00366F E0               [24] 1271 	movx	a,@dptr
      003670 FA               [12] 1272 	mov	r2,a
      003671 E9               [12] 1273 	mov	a,r1
      003672 2B               [12] 1274 	add	a,r3
      003673 F5 82            [12] 1275 	mov	dpl,a
      003675 EA               [12] 1276 	mov	a,r2
      003676 3C               [12] 1277 	addc	a,r4
      003677 F5 83            [12] 1278 	mov	dph,a
      003679 ED               [12] 1279 	mov	a,r5
      00367A F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	main.c:159: buffer_array[0].buffer_occupied++;
      00367B 90 13 9B         [24] 1282 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      00367E E0               [24] 1283 	movx	a,@dptr
      00367F FB               [12] 1284 	mov	r3,a
      003680 A3               [24] 1285 	inc	dptr
      003681 E0               [24] 1286 	movx	a,@dptr
      003682 FC               [12] 1287 	mov	r4,a
      003683 0B               [12] 1288 	inc	r3
      003684 BB 00 01         [24] 1289 	cjne	r3,#0x00,00406$
      003687 0C               [12] 1290 	inc	r4
      003688                       1291 00406$:
      003688 90 13 9B         [24] 1292 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0004)
      00368B EB               [12] 1293 	mov	a,r3
      00368C F0               [24] 1294 	movx	@dptr,a
      00368D EC               [12] 1295 	mov	a,r4
      00368E A3               [24] 1296 	inc	dptr
      00368F F0               [24] 1297 	movx	@dptr,a
      003690 02 33 EB         [24] 1298 	ljmp	00179$
      003693                       1299 00144$:
                                   1300 ;	main.c:161: printf("\n\rNot enough memory to load, echoing to serial output %c\n\r", char_received);
      003693 7C 00            [12] 1301 	mov	r4,#0x00
      003695 C0 05            [24] 1302 	push	ar5
      003697 C0 04            [24] 1303 	push	ar4
      003699 74 ED            [12] 1304 	mov	a,#___str_14
      00369B C0 E0            [24] 1305 	push	acc
      00369D 74 50            [12] 1306 	mov	a,#(___str_14 >> 8)
      00369F C0 E0            [24] 1307 	push	acc
      0036A1 74 80            [12] 1308 	mov	a,#0x80
      0036A3 C0 E0            [24] 1309 	push	acc
      0036A5 12 44 02         [24] 1310 	lcall	_printf
      0036A8 E5 81            [12] 1311 	mov	a,sp
      0036AA 24 FB            [12] 1312 	add	a,#0xfb
      0036AC F5 81            [12] 1313 	mov	sp,a
                                   1314 ;	main.c:162: switch_case = 0;
      0036AE 90 13 D9         [24] 1315 	mov	dptr,#_main_switch_case_131074_52
      0036B1 E4               [12] 1316 	clr	a
      0036B2 F0               [24] 1317 	movx	@dptr,a
      0036B3 A3               [24] 1318 	inc	dptr
      0036B4 F0               [24] 1319 	movx	@dptr,a
      0036B5 A3               [24] 1320 	inc	dptr
      0036B6 F0               [24] 1321 	movx	@dptr,a
      0036B7 A3               [24] 1322 	inc	dptr
      0036B8 F0               [24] 1323 	movx	@dptr,a
                                   1324 ;	main.c:164: break;
      0036B9 02 33 EB         [24] 1325 	ljmp	00179$
                                   1326 ;	main.c:165: case 2:
      0036BC                       1327 00146$:
                                   1328 ;	main.c:167: user_input_2 = get_buffer_size(20, 400, DIVISIBLE);
      0036BC 90 00 00         [24] 1329 	mov	dptr,#_get_buffer_size_PARM_2
      0036BF 74 90            [12] 1330 	mov	a,#0x90
      0036C1 F0               [24] 1331 	movx	@dptr,a
      0036C2 74 01            [12] 1332 	mov	a,#0x01
      0036C4 A3               [24] 1333 	inc	dptr
      0036C5 F0               [24] 1334 	movx	@dptr,a
      0036C6 E4               [12] 1335 	clr	a
      0036C7 A3               [24] 1336 	inc	dptr
      0036C8 F0               [24] 1337 	movx	@dptr,a
      0036C9 A3               [24] 1338 	inc	dptr
      0036CA F0               [24] 1339 	movx	@dptr,a
      0036CB 90 00 04         [24] 1340 	mov	dptr,#_get_buffer_size_PARM_3
      0036CE 74 10            [12] 1341 	mov	a,#0x10
      0036D0 F0               [24] 1342 	movx	@dptr,a
      0036D1 E4               [12] 1343 	clr	a
      0036D2 A3               [24] 1344 	inc	dptr
      0036D3 F0               [24] 1345 	movx	@dptr,a
      0036D4 A3               [24] 1346 	inc	dptr
      0036D5 F0               [24] 1347 	movx	@dptr,a
      0036D6 A3               [24] 1348 	inc	dptr
      0036D7 F0               [24] 1349 	movx	@dptr,a
      0036D8 90 00 14         [24] 1350 	mov	dptr,#(0x14&0x00ff)
      0036DB E4               [12] 1351 	clr	a
      0036DC F5 F0            [12] 1352 	mov	b,a
      0036DE 12 30 62         [24] 1353 	lcall	_get_buffer_size
      0036E1 85 82 1D         [24] 1354 	mov	_main_sloc2_1_0,dpl
      0036E4 85 83 1E         [24] 1355 	mov	(_main_sloc2_1_0 + 1),dph
                                   1356 ;	main.c:168: for (int32_t index = 1; index < 10; index++) {
      0036E7 78 01            [12] 1357 	mov	r0,#0x01
      0036E9 79 00            [12] 1358 	mov	r1,#0x00
      0036EB 7A 00            [12] 1359 	mov	r2,#0x00
      0036ED 7B 00            [12] 1360 	mov	r3,#0x00
      0036EF                       1361 00186$:
      0036EF C3               [12] 1362 	clr	c
      0036F0 E8               [12] 1363 	mov	a,r0
      0036F1 94 0A            [12] 1364 	subb	a,#0x0a
      0036F3 E9               [12] 1365 	mov	a,r1
      0036F4 94 00            [12] 1366 	subb	a,#0x00
      0036F6 EA               [12] 1367 	mov	a,r2
      0036F7 94 00            [12] 1368 	subb	a,#0x00
      0036F9 EB               [12] 1369 	mov	a,r3
      0036FA 64 80            [12] 1370 	xrl	a,#0x80
      0036FC 94 80            [12] 1371 	subb	a,#0x80
      0036FE 40 03            [24] 1372 	jc	00407$
      003700 02 37 D1         [24] 1373 	ljmp	00152$
      003703                       1374 00407$:
                                   1375 ;	main.c:169: if (buffer_array[index].buffer_pointer == NULL) {
      003703 90 13 FE         [24] 1376 	mov	dptr,#__mullong_PARM_2
      003706 E8               [12] 1377 	mov	a,r0
      003707 F0               [24] 1378 	movx	@dptr,a
      003708 E9               [12] 1379 	mov	a,r1
      003709 A3               [24] 1380 	inc	dptr
      00370A F0               [24] 1381 	movx	@dptr,a
      00370B EA               [12] 1382 	mov	a,r2
      00370C A3               [24] 1383 	inc	dptr
      00370D F0               [24] 1384 	movx	@dptr,a
      00370E EB               [12] 1385 	mov	a,r3
      00370F A3               [24] 1386 	inc	dptr
      003710 F0               [24] 1387 	movx	@dptr,a
      003711 90 00 06         [24] 1388 	mov	dptr,#(0x06&0x00ff)
      003714 E4               [12] 1389 	clr	a
      003715 F5 F0            [12] 1390 	mov	b,a
      003717 C0 03            [24] 1391 	push	ar3
      003719 C0 02            [24] 1392 	push	ar2
      00371B C0 01            [24] 1393 	push	ar1
      00371D C0 00            [24] 1394 	push	ar0
      00371F 12 42 34         [24] 1395 	lcall	__mullong
      003722 85 82 17         [24] 1396 	mov	_main_sloc0_1_0,dpl
      003725 85 83 18         [24] 1397 	mov	(_main_sloc0_1_0 + 1),dph
      003728 85 F0 19         [24] 1398 	mov	(_main_sloc0_1_0 + 2),b
      00372B F5 1A            [12] 1399 	mov	(_main_sloc0_1_0 + 3),a
      00372D D0 00            [24] 1400 	pop	ar0
      00372F D0 01            [24] 1401 	pop	ar1
      003731 D0 02            [24] 1402 	pop	ar2
      003733 D0 03            [24] 1403 	pop	ar3
      003735 E5 17            [12] 1404 	mov	a,_main_sloc0_1_0
      003737 24 97            [12] 1405 	add	a,#_main_buffer_array_131072_48
      003739 F5 1B            [12] 1406 	mov	_main_sloc1_1_0,a
      00373B E5 18            [12] 1407 	mov	a,(_main_sloc0_1_0 + 1)
      00373D 34 13            [12] 1408 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      00373F F5 1C            [12] 1409 	mov	(_main_sloc1_1_0 + 1),a
      003741 85 1B 82         [24] 1410 	mov	dpl,_main_sloc1_1_0
      003744 85 1C 83         [24] 1411 	mov	dph,(_main_sloc1_1_0 + 1)
      003747 E0               [24] 1412 	movx	a,@dptr
      003748 FC               [12] 1413 	mov	r4,a
      003749 A3               [24] 1414 	inc	dptr
      00374A E0               [24] 1415 	movx	a,@dptr
      00374B FD               [12] 1416 	mov	r5,a
      00374C 4C               [12] 1417 	orl	a,r4
      00374D 70 72            [24] 1418 	jnz	00187$
                                   1419 ;	main.c:170: buffer_array[index].buffer_pointer = (int8_t *)malloc(user_input_2 * sizeof(int8_t));
      00374F AC 1D            [24] 1420 	mov	r4,_main_sloc2_1_0
      003751 AD 1E            [24] 1421 	mov	r5,(_main_sloc2_1_0 + 1)
      003753 8C 82            [24] 1422 	mov	dpl,r4
      003755 8D 83            [24] 1423 	mov	dph,r5
      003757 C0 03            [24] 1424 	push	ar3
      003759 C0 02            [24] 1425 	push	ar2
      00375B C0 01            [24] 1426 	push	ar1
      00375D C0 00            [24] 1427 	push	ar0
      00375F 12 40 AB         [24] 1428 	lcall	_malloc
      003762 AC 82            [24] 1429 	mov	r4,dpl
      003764 AD 83            [24] 1430 	mov	r5,dph
      003766 D0 00            [24] 1431 	pop	ar0
      003768 D0 01            [24] 1432 	pop	ar1
      00376A D0 02            [24] 1433 	pop	ar2
      00376C D0 03            [24] 1434 	pop	ar3
      00376E 85 1B 82         [24] 1435 	mov	dpl,_main_sloc1_1_0
      003771 85 1C 83         [24] 1436 	mov	dph,(_main_sloc1_1_0 + 1)
      003774 EC               [12] 1437 	mov	a,r4
      003775 F0               [24] 1438 	movx	@dptr,a
      003776 ED               [12] 1439 	mov	a,r5
      003777 A3               [24] 1440 	inc	dptr
      003778 F0               [24] 1441 	movx	@dptr,a
                                   1442 ;	main.c:171: if (buffer_array[index].buffer_pointer == NULL) {
      003779 EC               [12] 1443 	mov	a,r4
      00377A 4D               [12] 1444 	orl	a,r5
      00377B 70 17            [24] 1445 	jnz	00148$
                                   1446 ;	main.c:172: printf("Failed to allocate memory for buffer, try deleting some using '-' \n\r");
      00377D 74 28            [12] 1447 	mov	a,#___str_15
      00377F C0 E0            [24] 1448 	push	acc
      003781 74 51            [12] 1449 	mov	a,#(___str_15 >> 8)
      003783 C0 E0            [24] 1450 	push	acc
      003785 74 80            [12] 1451 	mov	a,#0x80
      003787 C0 E0            [24] 1452 	push	acc
      003789 12 44 02         [24] 1453 	lcall	_printf
      00378C 15 81            [12] 1454 	dec	sp
      00378E 15 81            [12] 1455 	dec	sp
      003790 15 81            [12] 1456 	dec	sp
      003792 80 3D            [24] 1457 	sjmp	00152$
      003794                       1458 00148$:
                                   1459 ;	main.c:174: buffer_array[index].buffer_size = user_input_2;
      003794 E5 17            [12] 1460 	mov	a,_main_sloc0_1_0
      003796 24 97            [12] 1461 	add	a,#_main_buffer_array_131072_48
      003798 FC               [12] 1462 	mov	r4,a
      003799 E5 18            [12] 1463 	mov	a,(_main_sloc0_1_0 + 1)
      00379B 34 13            [12] 1464 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      00379D FD               [12] 1465 	mov	r5,a
      00379E 8C 82            [24] 1466 	mov	dpl,r4
      0037A0 8D 83            [24] 1467 	mov	dph,r5
      0037A2 A3               [24] 1468 	inc	dptr
      0037A3 A3               [24] 1469 	inc	dptr
      0037A4 E5 1D            [12] 1470 	mov	a,_main_sloc2_1_0
      0037A6 F0               [24] 1471 	movx	@dptr,a
      0037A7 E5 1E            [12] 1472 	mov	a,(_main_sloc2_1_0 + 1)
      0037A9 A3               [24] 1473 	inc	dptr
      0037AA F0               [24] 1474 	movx	@dptr,a
                                   1475 ;	main.c:175: buffer_array[index].buffer_occupied = 0;
      0037AB 8C 82            [24] 1476 	mov	dpl,r4
      0037AD 8D 83            [24] 1477 	mov	dph,r5
      0037AF A3               [24] 1478 	inc	dptr
      0037B0 A3               [24] 1479 	inc	dptr
      0037B1 A3               [24] 1480 	inc	dptr
      0037B2 A3               [24] 1481 	inc	dptr
      0037B3 E4               [12] 1482 	clr	a
      0037B4 F0               [24] 1483 	movx	@dptr,a
      0037B5 A3               [24] 1484 	inc	dptr
      0037B6 F0               [24] 1485 	movx	@dptr,a
                                   1486 ;	main.c:176: inserted = index;
      0037B7 90 13 D5         [24] 1487 	mov	dptr,#_main_inserted_131072_48
      0037BA E8               [12] 1488 	mov	a,r0
      0037BB F0               [24] 1489 	movx	@dptr,a
      0037BC E9               [12] 1490 	mov	a,r1
      0037BD A3               [24] 1491 	inc	dptr
      0037BE F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	main.c:178: break;
      0037BF 80 10            [24] 1494 	sjmp	00152$
      0037C1                       1495 00187$:
                                   1496 ;	main.c:168: for (int32_t index = 1; index < 10; index++) {
      0037C1 08               [12] 1497 	inc	r0
      0037C2 B8 00 09         [24] 1498 	cjne	r0,#0x00,00410$
      0037C5 09               [12] 1499 	inc	r1
      0037C6 B9 00 05         [24] 1500 	cjne	r1,#0x00,00410$
      0037C9 0A               [12] 1501 	inc	r2
      0037CA BA 00 01         [24] 1502 	cjne	r2,#0x00,00410$
      0037CD 0B               [12] 1503 	inc	r3
      0037CE                       1504 00410$:
      0037CE 02 36 EF         [24] 1505 	ljmp	00186$
      0037D1                       1506 00152$:
                                   1507 ;	main.c:181: if (inserted) {
      0037D1 90 13 D5         [24] 1508 	mov	dptr,#_main_inserted_131072_48
      0037D4 E0               [24] 1509 	movx	a,@dptr
      0037D5 F5 F0            [12] 1510 	mov	b,a
      0037D7 A3               [24] 1511 	inc	dptr
      0037D8 E0               [24] 1512 	movx	a,@dptr
      0037D9 45 F0            [12] 1513 	orl	a,b
      0037DB 60 32            [24] 1514 	jz	00154$
                                   1515 ;	main.c:182: printf("Allocated memory for buffer #%d \n\r", inserted);
      0037DD 90 13 D5         [24] 1516 	mov	dptr,#_main_inserted_131072_48
      0037E0 E0               [24] 1517 	movx	a,@dptr
      0037E1 C0 E0            [24] 1518 	push	acc
      0037E3 A3               [24] 1519 	inc	dptr
      0037E4 E0               [24] 1520 	movx	a,@dptr
      0037E5 C0 E0            [24] 1521 	push	acc
      0037E7 74 6D            [12] 1522 	mov	a,#___str_16
      0037E9 C0 E0            [24] 1523 	push	acc
      0037EB 74 51            [12] 1524 	mov	a,#(___str_16 >> 8)
      0037ED C0 E0            [24] 1525 	push	acc
      0037EF 74 80            [12] 1526 	mov	a,#0x80
      0037F1 C0 E0            [24] 1527 	push	acc
      0037F3 12 44 02         [24] 1528 	lcall	_printf
      0037F6 E5 81            [12] 1529 	mov	a,sp
      0037F8 24 FB            [12] 1530 	add	a,#0xfb
      0037FA F5 81            [12] 1531 	mov	sp,a
                                   1532 ;	main.c:183: buffer_count++;
      0037FC 90 13 D3         [24] 1533 	mov	dptr,#_main_buffer_count_131072_48
      0037FF E0               [24] 1534 	movx	a,@dptr
      003800 24 01            [12] 1535 	add	a,#0x01
      003802 F0               [24] 1536 	movx	@dptr,a
      003803 A3               [24] 1537 	inc	dptr
      003804 E0               [24] 1538 	movx	a,@dptr
      003805 34 00            [12] 1539 	addc	a,#0x00
      003807 F0               [24] 1540 	movx	@dptr,a
                                   1541 ;	main.c:184: inserted = 0;
      003808 90 13 D5         [24] 1542 	mov	dptr,#_main_inserted_131072_48
      00380B E4               [12] 1543 	clr	a
      00380C F0               [24] 1544 	movx	@dptr,a
      00380D A3               [24] 1545 	inc	dptr
      00380E F0               [24] 1546 	movx	@dptr,a
      00380F                       1547 00154$:
                                   1548 ;	main.c:186: switch_case = 0;
      00380F 90 13 D9         [24] 1549 	mov	dptr,#_main_switch_case_131074_52
      003812 E4               [12] 1550 	clr	a
      003813 F0               [24] 1551 	movx	@dptr,a
      003814 A3               [24] 1552 	inc	dptr
      003815 F0               [24] 1553 	movx	@dptr,a
      003816 A3               [24] 1554 	inc	dptr
      003817 F0               [24] 1555 	movx	@dptr,a
      003818 A3               [24] 1556 	inc	dptr
      003819 F0               [24] 1557 	movx	@dptr,a
                                   1558 ;	main.c:187: break;
      00381A 02 33 EB         [24] 1559 	ljmp	00179$
                                   1560 ;	main.c:188: case 3:
      00381D                       1561 00155$:
                                   1562 ;	main.c:189: user_input_2 = get_buffer_size(ZERO, ARRAY_SIZE, ONE);
      00381D 90 00 00         [24] 1563 	mov	dptr,#_get_buffer_size_PARM_2
      003820 74 0A            [12] 1564 	mov	a,#0x0a
      003822 F0               [24] 1565 	movx	@dptr,a
      003823 E4               [12] 1566 	clr	a
      003824 A3               [24] 1567 	inc	dptr
      003825 F0               [24] 1568 	movx	@dptr,a
      003826 A3               [24] 1569 	inc	dptr
      003827 F0               [24] 1570 	movx	@dptr,a
      003828 A3               [24] 1571 	inc	dptr
      003829 F0               [24] 1572 	movx	@dptr,a
      00382A 90 00 04         [24] 1573 	mov	dptr,#_get_buffer_size_PARM_3
      00382D 04               [12] 1574 	inc	a
      00382E F0               [24] 1575 	movx	@dptr,a
      00382F E4               [12] 1576 	clr	a
      003830 A3               [24] 1577 	inc	dptr
      003831 F0               [24] 1578 	movx	@dptr,a
      003832 A3               [24] 1579 	inc	dptr
      003833 F0               [24] 1580 	movx	@dptr,a
      003834 A3               [24] 1581 	inc	dptr
      003835 F0               [24] 1582 	movx	@dptr,a
      003836 90 00 00         [24] 1583 	mov	dptr,#(0x00&0x00ff)
      003839 E4               [12] 1584 	clr	a
      00383A F5 F0            [12] 1585 	mov	b,a
      00383C 12 30 62         [24] 1586 	lcall	_get_buffer_size
      00383F AC 82            [24] 1587 	mov	r4,dpl
      003841 AD 83            [24] 1588 	mov	r5,dph
                                   1589 ;	main.c:190: if (user_input_2 == 0) {
      003843 EC               [12] 1590 	mov	a,r4
      003844 4D               [12] 1591 	orl	a,r5
      003845 70 18            [24] 1592 	jnz	00161$
                                   1593 ;	main.c:191: printf("Not allowed to remove buffer 0\n\r");
      003847 74 90            [12] 1594 	mov	a,#___str_17
      003849 C0 E0            [24] 1595 	push	acc
      00384B 74 51            [12] 1596 	mov	a,#(___str_17 >> 8)
      00384D C0 E0            [24] 1597 	push	acc
      00384F 74 80            [12] 1598 	mov	a,#0x80
      003851 C0 E0            [24] 1599 	push	acc
      003853 12 44 02         [24] 1600 	lcall	_printf
      003856 15 81            [12] 1601 	dec	sp
      003858 15 81            [12] 1602 	dec	sp
      00385A 15 81            [12] 1603 	dec	sp
      00385C 02 39 4D         [24] 1604 	ljmp	00162$
      00385F                       1605 00161$:
                                   1606 ;	main.c:192: } else if ((user_input_2 < buffer_count) && (buffer_array[user_input_2].buffer_pointer != NULL)) {
      00385F 90 13 D3         [24] 1607 	mov	dptr,#_main_buffer_count_131072_48
      003862 E0               [24] 1608 	movx	a,@dptr
      003863 FA               [12] 1609 	mov	r2,a
      003864 A3               [24] 1610 	inc	dptr
      003865 E0               [24] 1611 	movx	a,@dptr
      003866 FB               [12] 1612 	mov	r3,a
      003867 8C 00            [24] 1613 	mov	ar0,r4
      003869 8D 01            [24] 1614 	mov	ar1,r5
      00386B C3               [12] 1615 	clr	c
      00386C E8               [12] 1616 	mov	a,r0
      00386D 9A               [12] 1617 	subb	a,r2
      00386E E9               [12] 1618 	mov	a,r1
      00386F 64 80            [12] 1619 	xrl	a,#0x80
      003871 8B F0            [24] 1620 	mov	b,r3
      003873 63 F0 80         [24] 1621 	xrl	b,#0x80
      003876 95 F0            [12] 1622 	subb	a,b
      003878 40 03            [24] 1623 	jc	00413$
      00387A 02 39 38         [24] 1624 	ljmp	00157$
      00387D                       1625 00413$:
      00387D 90 13 FC         [24] 1626 	mov	dptr,#__mulint_PARM_2
      003880 EC               [12] 1627 	mov	a,r4
      003881 F0               [24] 1628 	movx	@dptr,a
      003882 ED               [12] 1629 	mov	a,r5
      003883 A3               [24] 1630 	inc	dptr
      003884 F0               [24] 1631 	movx	@dptr,a
      003885 90 00 06         [24] 1632 	mov	dptr,#0x0006
      003888 C0 05            [24] 1633 	push	ar5
      00388A C0 04            [24] 1634 	push	ar4
      00388C C0 03            [24] 1635 	push	ar3
      00388E C0 02            [24] 1636 	push	ar2
      003890 12 42 14         [24] 1637 	lcall	__mulint
      003893 85 82 17         [24] 1638 	mov	_main_sloc0_1_0,dpl
      003896 85 83 18         [24] 1639 	mov	(_main_sloc0_1_0 + 1),dph
      003899 D0 02            [24] 1640 	pop	ar2
      00389B D0 03            [24] 1641 	pop	ar3
      00389D D0 04            [24] 1642 	pop	ar4
      00389F D0 05            [24] 1643 	pop	ar5
      0038A1 E5 17            [12] 1644 	mov	a,_main_sloc0_1_0
      0038A3 24 97            [12] 1645 	add	a,#_main_buffer_array_131072_48
      0038A5 F5 1D            [12] 1646 	mov	_main_sloc2_1_0,a
      0038A7 E5 18            [12] 1647 	mov	a,(_main_sloc0_1_0 + 1)
      0038A9 34 13            [12] 1648 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      0038AB F5 1E            [12] 1649 	mov	(_main_sloc2_1_0 + 1),a
      0038AD 85 1D 82         [24] 1650 	mov	dpl,_main_sloc2_1_0
      0038B0 85 1E 83         [24] 1651 	mov	dph,(_main_sloc2_1_0 + 1)
      0038B3 E0               [24] 1652 	movx	a,@dptr
      0038B4 F5 1B            [12] 1653 	mov	_main_sloc1_1_0,a
      0038B6 A3               [24] 1654 	inc	dptr
      0038B7 E0               [24] 1655 	movx	a,@dptr
      0038B8 F5 1C            [12] 1656 	mov	(_main_sloc1_1_0 + 1),a
      0038BA E5 1B            [12] 1657 	mov	a,_main_sloc1_1_0
      0038BC 45 1C            [12] 1658 	orl	a,(_main_sloc1_1_0 + 1)
      0038BE 60 78            [24] 1659 	jz	00157$
                                   1660 ;	main.c:193: free(buffer_array[user_input_2].buffer_pointer);
      0038C0 AE 1B            [24] 1661 	mov	r6,_main_sloc1_1_0
      0038C2 A9 1C            [24] 1662 	mov	r1,(_main_sloc1_1_0 + 1)
      0038C4 7F 00            [12] 1663 	mov	r7,#0x00
      0038C6 8E 82            [24] 1664 	mov	dpl,r6
      0038C8 89 83            [24] 1665 	mov	dph,r1
      0038CA 8F F0            [24] 1666 	mov	b,r7
      0038CC C0 05            [24] 1667 	push	ar5
      0038CE C0 04            [24] 1668 	push	ar4
      0038D0 C0 03            [24] 1669 	push	ar3
      0038D2 C0 02            [24] 1670 	push	ar2
      0038D4 12 3D D8         [24] 1671 	lcall	_free
      0038D7 D0 02            [24] 1672 	pop	ar2
      0038D9 D0 03            [24] 1673 	pop	ar3
      0038DB D0 04            [24] 1674 	pop	ar4
      0038DD D0 05            [24] 1675 	pop	ar5
                                   1676 ;	main.c:194: buffer_array[user_input_2].buffer_pointer = NULL;
      0038DF 85 1D 82         [24] 1677 	mov	dpl,_main_sloc2_1_0
      0038E2 85 1E 83         [24] 1678 	mov	dph,(_main_sloc2_1_0 + 1)
      0038E5 E4               [12] 1679 	clr	a
      0038E6 F0               [24] 1680 	movx	@dptr,a
      0038E7 A3               [24] 1681 	inc	dptr
      0038E8 F0               [24] 1682 	movx	@dptr,a
                                   1683 ;	main.c:195: buffer_array[user_input_2].buffer_size = 0;
      0038E9 E5 17            [12] 1684 	mov	a,_main_sloc0_1_0
      0038EB 24 97            [12] 1685 	add	a,#_main_buffer_array_131072_48
      0038ED FE               [12] 1686 	mov	r6,a
      0038EE E5 18            [12] 1687 	mov	a,(_main_sloc0_1_0 + 1)
      0038F0 34 13            [12] 1688 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      0038F2 FF               [12] 1689 	mov	r7,a
      0038F3 8E 82            [24] 1690 	mov	dpl,r6
      0038F5 8F 83            [24] 1691 	mov	dph,r7
      0038F7 A3               [24] 1692 	inc	dptr
      0038F8 A3               [24] 1693 	inc	dptr
      0038F9 E4               [12] 1694 	clr	a
      0038FA F0               [24] 1695 	movx	@dptr,a
      0038FB A3               [24] 1696 	inc	dptr
      0038FC F0               [24] 1697 	movx	@dptr,a
                                   1698 ;	main.c:196: buffer_array[user_input_2].buffer_occupied = 0;
      0038FD 8E 82            [24] 1699 	mov	dpl,r6
      0038FF 8F 83            [24] 1700 	mov	dph,r7
      003901 A3               [24] 1701 	inc	dptr
      003902 A3               [24] 1702 	inc	dptr
      003903 A3               [24] 1703 	inc	dptr
      003904 A3               [24] 1704 	inc	dptr
      003905 F0               [24] 1705 	movx	@dptr,a
      003906 A3               [24] 1706 	inc	dptr
      003907 F0               [24] 1707 	movx	@dptr,a
                                   1708 ;	main.c:197: printf("Freed buffer #%d, try '?' to get info of existing buffers  \n\r", user_input_2);
      003908 C0 03            [24] 1709 	push	ar3
      00390A C0 02            [24] 1710 	push	ar2
      00390C C0 04            [24] 1711 	push	ar4
      00390E C0 05            [24] 1712 	push	ar5
      003910 74 B1            [12] 1713 	mov	a,#___str_18
      003912 C0 E0            [24] 1714 	push	acc
      003914 74 51            [12] 1715 	mov	a,#(___str_18 >> 8)
      003916 C0 E0            [24] 1716 	push	acc
      003918 74 80            [12] 1717 	mov	a,#0x80
      00391A C0 E0            [24] 1718 	push	acc
      00391C 12 44 02         [24] 1719 	lcall	_printf
      00391F E5 81            [12] 1720 	mov	a,sp
      003921 24 FB            [12] 1721 	add	a,#0xfb
      003923 F5 81            [12] 1722 	mov	sp,a
      003925 D0 02            [24] 1723 	pop	ar2
      003927 D0 03            [24] 1724 	pop	ar3
                                   1725 ;	main.c:198: buffer_count--;
      003929 1A               [12] 1726 	dec	r2
      00392A BA FF 01         [24] 1727 	cjne	r2,#0xff,00415$
      00392D 1B               [12] 1728 	dec	r3
      00392E                       1729 00415$:
      00392E 90 13 D3         [24] 1730 	mov	dptr,#_main_buffer_count_131072_48
      003931 EA               [12] 1731 	mov	a,r2
      003932 F0               [24] 1732 	movx	@dptr,a
      003933 EB               [12] 1733 	mov	a,r3
      003934 A3               [24] 1734 	inc	dptr
      003935 F0               [24] 1735 	movx	@dptr,a
      003936 80 15            [24] 1736 	sjmp	00162$
      003938                       1737 00157$:
                                   1738 ;	main.c:200: printf("No such buffer exists, try '?' to get info of existing buffers \n\r");
      003938 74 EF            [12] 1739 	mov	a,#___str_19
      00393A C0 E0            [24] 1740 	push	acc
      00393C 74 51            [12] 1741 	mov	a,#(___str_19 >> 8)
      00393E C0 E0            [24] 1742 	push	acc
      003940 74 80            [12] 1743 	mov	a,#0x80
      003942 C0 E0            [24] 1744 	push	acc
      003944 12 44 02         [24] 1745 	lcall	_printf
      003947 15 81            [12] 1746 	dec	sp
      003949 15 81            [12] 1747 	dec	sp
      00394B 15 81            [12] 1748 	dec	sp
      00394D                       1749 00162$:
                                   1750 ;	main.c:202: switch_case = 0;
      00394D 90 13 D9         [24] 1751 	mov	dptr,#_main_switch_case_131074_52
      003950 E4               [12] 1752 	clr	a
      003951 F0               [24] 1753 	movx	@dptr,a
      003952 A3               [24] 1754 	inc	dptr
      003953 F0               [24] 1755 	movx	@dptr,a
      003954 A3               [24] 1756 	inc	dptr
      003955 F0               [24] 1757 	movx	@dptr,a
      003956 A3               [24] 1758 	inc	dptr
      003957 F0               [24] 1759 	movx	@dptr,a
                                   1760 ;	main.c:203: break;
      003958 02 33 EB         [24] 1761 	ljmp	00179$
                                   1762 ;	main.c:204: case 4:
      00395B                       1763 00163$:
                                   1764 ;	main.c:206: printf("Total characters count: %d \n\r", total_characters_count);
      00395B 90 14 42         [24] 1765 	mov	dptr,#_total_characters_count
      00395E E0               [24] 1766 	movx	a,@dptr
      00395F C0 E0            [24] 1767 	push	acc
      003961 A3               [24] 1768 	inc	dptr
      003962 E0               [24] 1769 	movx	a,@dptr
      003963 C0 E0            [24] 1770 	push	acc
      003965 74 31            [12] 1771 	mov	a,#___str_20
      003967 C0 E0            [24] 1772 	push	acc
      003969 74 52            [12] 1773 	mov	a,#(___str_20 >> 8)
      00396B C0 E0            [24] 1774 	push	acc
      00396D 74 80            [12] 1775 	mov	a,#0x80
      00396F C0 E0            [24] 1776 	push	acc
      003971 12 44 02         [24] 1777 	lcall	_printf
      003974 E5 81            [12] 1778 	mov	a,sp
      003976 24 FB            [12] 1779 	add	a,#0xfb
      003978 F5 81            [12] 1780 	mov	sp,a
                                   1781 ;	main.c:207: printf("Since last '?': %d \n\r", (total_characters_count - since_last));
      00397A 90 13 D7         [24] 1782 	mov	dptr,#_main_since_last_131073_49
      00397D E0               [24] 1783 	movx	a,@dptr
      00397E FC               [12] 1784 	mov	r4,a
      00397F A3               [24] 1785 	inc	dptr
      003980 E0               [24] 1786 	movx	a,@dptr
      003981 FD               [12] 1787 	mov	r5,a
      003982 90 14 42         [24] 1788 	mov	dptr,#_total_characters_count
      003985 E0               [24] 1789 	movx	a,@dptr
      003986 FA               [12] 1790 	mov	r2,a
      003987 A3               [24] 1791 	inc	dptr
      003988 E0               [24] 1792 	movx	a,@dptr
      003989 FB               [12] 1793 	mov	r3,a
      00398A EA               [12] 1794 	mov	a,r2
      00398B C3               [12] 1795 	clr	c
      00398C 9C               [12] 1796 	subb	a,r4
      00398D FC               [12] 1797 	mov	r4,a
      00398E EB               [12] 1798 	mov	a,r3
      00398F 9D               [12] 1799 	subb	a,r5
      003990 FD               [12] 1800 	mov	r5,a
      003991 C0 04            [24] 1801 	push	ar4
      003993 C0 05            [24] 1802 	push	ar5
      003995 74 4F            [12] 1803 	mov	a,#___str_21
      003997 C0 E0            [24] 1804 	push	acc
      003999 74 52            [12] 1805 	mov	a,#(___str_21 >> 8)
      00399B C0 E0            [24] 1806 	push	acc
      00399D 74 80            [12] 1807 	mov	a,#0x80
      00399F C0 E0            [24] 1808 	push	acc
      0039A1 12 44 02         [24] 1809 	lcall	_printf
      0039A4 E5 81            [12] 1810 	mov	a,sp
      0039A6 24 FB            [12] 1811 	add	a,#0xfb
      0039A8 F5 81            [12] 1812 	mov	sp,a
                                   1813 ;	main.c:208: since_last = total_characters_count;
      0039AA 90 14 42         [24] 1814 	mov	dptr,#_total_characters_count
      0039AD E0               [24] 1815 	movx	a,@dptr
      0039AE FC               [12] 1816 	mov	r4,a
      0039AF A3               [24] 1817 	inc	dptr
      0039B0 E0               [24] 1818 	movx	a,@dptr
      0039B1 FD               [12] 1819 	mov	r5,a
      0039B2 90 13 D7         [24] 1820 	mov	dptr,#_main_since_last_131073_49
      0039B5 EC               [12] 1821 	mov	a,r4
      0039B6 F0               [24] 1822 	movx	@dptr,a
      0039B7 ED               [12] 1823 	mov	a,r5
      0039B8 A3               [24] 1824 	inc	dptr
      0039B9 F0               [24] 1825 	movx	@dptr,a
                                   1826 ;	main.c:209: for (int8_t index = 0; index <= buffer_count; index++) {
      0039BA 90 13 D3         [24] 1827 	mov	dptr,#_main_buffer_count_131072_48
      0039BD E0               [24] 1828 	movx	a,@dptr
      0039BE FC               [12] 1829 	mov	r4,a
      0039BF A3               [24] 1830 	inc	dptr
      0039C0 E0               [24] 1831 	movx	a,@dptr
      0039C1 FD               [12] 1832 	mov	r5,a
      0039C2 75 1B 00         [24] 1833 	mov	_main_sloc1_1_0,#0x00
      0039C5                       1834 00192$:
      0039C5 E5 1B            [12] 1835 	mov	a,_main_sloc1_1_0
      0039C7 F9               [12] 1836 	mov	r1,a
      0039C8 33               [12] 1837 	rlc	a
      0039C9 95 E0            [12] 1838 	subb	a,acc
      0039CB FA               [12] 1839 	mov	r2,a
      0039CC C3               [12] 1840 	clr	c
      0039CD EC               [12] 1841 	mov	a,r4
      0039CE 99               [12] 1842 	subb	a,r1
      0039CF ED               [12] 1843 	mov	a,r5
      0039D0 64 80            [12] 1844 	xrl	a,#0x80
      0039D2 8A F0            [24] 1845 	mov	b,r2
      0039D4 63 F0 80         [24] 1846 	xrl	b,#0x80
      0039D7 95 F0            [12] 1847 	subb	a,b
      0039D9 50 03            [24] 1848 	jnc	00416$
      0039DB 02 3B D1         [24] 1849 	ljmp	00171$
      0039DE                       1850 00416$:
                                   1851 ;	main.c:210: if (buffer_array[index].buffer_pointer == NULL) {
      0039DE C2 D5            [12] 1852 	clr	F0
      0039E0 75 F0 06         [24] 1853 	mov	b,#0x06
      0039E3 E5 1B            [12] 1854 	mov	a,_main_sloc1_1_0
      0039E5 30 E7 04         [24] 1855 	jnb	acc.7,00417$
      0039E8 B2 D5            [12] 1856 	cpl	F0
      0039EA F4               [12] 1857 	cpl	a
      0039EB 04               [12] 1858 	inc	a
      0039EC                       1859 00417$:
      0039EC A4               [48] 1860 	mul	ab
      0039ED 30 D5 0A         [24] 1861 	jnb	F0,00418$
      0039F0 F4               [12] 1862 	cpl	a
      0039F1 24 01            [12] 1863 	add	a,#0x01
      0039F3 C5 F0            [12] 1864 	xch	a,b
      0039F5 F4               [12] 1865 	cpl	a
      0039F6 34 00            [12] 1866 	addc	a,#0x00
      0039F8 C5 F0            [12] 1867 	xch	a,b
      0039FA                       1868 00418$:
      0039FA F5 1D            [12] 1869 	mov	_main_sloc2_1_0,a
      0039FC 85 F0 1E         [24] 1870 	mov	(_main_sloc2_1_0 + 1),b
      0039FF 24 97            [12] 1871 	add	a,#_main_buffer_array_131072_48
      003A01 F5 82            [12] 1872 	mov	dpl,a
      003A03 E5 1E            [12] 1873 	mov	a,(_main_sloc2_1_0 + 1)
      003A05 34 13            [12] 1874 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003A07 F5 83            [12] 1875 	mov	dph,a
      003A09 E0               [24] 1876 	movx	a,@dptr
      003A0A F8               [12] 1877 	mov	r0,a
      003A0B A3               [24] 1878 	inc	dptr
      003A0C E0               [24] 1879 	movx	a,@dptr
      003A0D FF               [12] 1880 	mov	r7,a
      003A0E 48               [12] 1881 	orl	a,r0
      003A0F 70 03            [24] 1882 	jnz	00419$
      003A11 02 3B CC         [24] 1883 	ljmp	00170$
      003A14                       1884 00419$:
                                   1885 ;	main.c:218: (buffer_array[index].buffer_size - buffer_array[index].buffer_occupied));
      003A14 C0 04            [24] 1886 	push	ar4
      003A16 C0 05            [24] 1887 	push	ar5
      003A18 E5 1D            [12] 1888 	mov	a,_main_sloc2_1_0
      003A1A 24 97            [12] 1889 	add	a,#_main_buffer_array_131072_48
      003A1C FE               [12] 1890 	mov	r6,a
      003A1D E5 1E            [12] 1891 	mov	a,(_main_sloc2_1_0 + 1)
      003A1F 34 13            [12] 1892 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003A21 FF               [12] 1893 	mov	r7,a
      003A22 8E 82            [24] 1894 	mov	dpl,r6
      003A24 8F 83            [24] 1895 	mov	dph,r7
      003A26 A3               [24] 1896 	inc	dptr
      003A27 A3               [24] 1897 	inc	dptr
      003A28 E0               [24] 1898 	movx	a,@dptr
      003A29 F8               [12] 1899 	mov	r0,a
      003A2A A3               [24] 1900 	inc	dptr
      003A2B E0               [24] 1901 	movx	a,@dptr
      003A2C FD               [12] 1902 	mov	r5,a
      003A2D 8E 82            [24] 1903 	mov	dpl,r6
      003A2F 8F 83            [24] 1904 	mov	dph,r7
      003A31 A3               [24] 1905 	inc	dptr
      003A32 A3               [24] 1906 	inc	dptr
      003A33 A3               [24] 1907 	inc	dptr
      003A34 A3               [24] 1908 	inc	dptr
      003A35 E0               [24] 1909 	movx	a,@dptr
      003A36 F5 17            [12] 1910 	mov	_main_sloc0_1_0,a
      003A38 A3               [24] 1911 	inc	dptr
      003A39 E0               [24] 1912 	movx	a,@dptr
      003A3A F5 18            [12] 1913 	mov	(_main_sloc0_1_0 + 1),a
      003A3C E8               [12] 1914 	mov	a,r0
      003A3D C3               [12] 1915 	clr	c
      003A3E 95 17            [12] 1916 	subb	a,_main_sloc0_1_0
      003A40 F5 21            [12] 1917 	mov	_main_sloc4_1_0,a
      003A42 ED               [12] 1918 	mov	a,r5
      003A43 95 18            [12] 1919 	subb	a,(_main_sloc0_1_0 + 1)
      003A45 F5 22            [12] 1920 	mov	(_main_sloc4_1_0 + 1),a
                                   1921 ;	main.c:216: (buffer_array[index].buffer_pointer + buffer_array[index].buffer_size),
      003A47 8E 82            [24] 1922 	mov	dpl,r6
      003A49 8F 83            [24] 1923 	mov	dph,r7
      003A4B E0               [24] 1924 	movx	a,@dptr
      003A4C F5 23            [12] 1925 	mov	_main_sloc5_1_0,a
      003A4E A3               [24] 1926 	inc	dptr
      003A4F E0               [24] 1927 	movx	a,@dptr
      003A50 F5 24            [12] 1928 	mov	(_main_sloc5_1_0 + 1),a
      003A52 E8               [12] 1929 	mov	a,r0
      003A53 25 23            [12] 1930 	add	a,_main_sloc5_1_0
      003A55 FB               [12] 1931 	mov	r3,a
      003A56 ED               [12] 1932 	mov	a,r5
      003A57 35 24            [12] 1933 	addc	a,(_main_sloc5_1_0 + 1)
      003A59 FC               [12] 1934 	mov	r4,a
      003A5A 8B 25            [24] 1935 	mov	_main_sloc6_1_0,r3
      003A5C 8C 26            [24] 1936 	mov	(_main_sloc6_1_0 + 1),r4
      003A5E 75 27 00         [24] 1937 	mov	(_main_sloc6_1_0 + 2),#0x00
                                   1938 ;	main.c:215: buffer_array[index].buffer_pointer,
      003A61 AE 23            [24] 1939 	mov	r6,_main_sloc5_1_0
      003A63 AF 24            [24] 1940 	mov	r7,(_main_sloc5_1_0 + 1)
      003A65 7C 00            [12] 1941 	mov	r4,#0x00
                                   1942 ;	main.c:214: "Storage character counts: %u\n\r Free space available: %u\n\r", index,
      003A67 C0 05            [24] 1943 	push	ar5
      003A69 C0 04            [24] 1944 	push	ar4
      003A6B C0 02            [24] 1945 	push	ar2
      003A6D C0 01            [24] 1946 	push	ar1
      003A6F C0 21            [24] 1947 	push	_main_sloc4_1_0
      003A71 C0 22            [24] 1948 	push	(_main_sloc4_1_0 + 1)
      003A73 C0 17            [24] 1949 	push	_main_sloc0_1_0
      003A75 C0 18            [24] 1950 	push	(_main_sloc0_1_0 + 1)
      003A77 C0 00            [24] 1951 	push	ar0
      003A79 C0 05            [24] 1952 	push	ar5
      003A7B C0 25            [24] 1953 	push	_main_sloc6_1_0
      003A7D C0 26            [24] 1954 	push	(_main_sloc6_1_0 + 1)
      003A7F C0 27            [24] 1955 	push	(_main_sloc6_1_0 + 2)
      003A81 C0 06            [24] 1956 	push	ar6
      003A83 C0 07            [24] 1957 	push	ar7
      003A85 C0 04            [24] 1958 	push	ar4
      003A87 C0 01            [24] 1959 	push	ar1
      003A89 C0 02            [24] 1960 	push	ar2
      003A8B 74 65            [12] 1961 	mov	a,#___str_22
      003A8D C0 E0            [24] 1962 	push	acc
      003A8F 74 52            [12] 1963 	mov	a,#(___str_22 >> 8)
      003A91 C0 E0            [24] 1964 	push	acc
      003A93 74 80            [12] 1965 	mov	a,#0x80
      003A95 C0 E0            [24] 1966 	push	acc
      003A97 12 44 02         [24] 1967 	lcall	_printf
      003A9A E5 81            [12] 1968 	mov	a,sp
      003A9C 24 EF            [12] 1969 	add	a,#0xef
      003A9E F5 81            [12] 1970 	mov	sp,a
      003AA0 D0 01            [24] 1971 	pop	ar1
      003AA2 D0 02            [24] 1972 	pop	ar2
                                   1973 ;	main.c:219: printf("Buffer %d content: \n\r", index);
      003AA4 C0 01            [24] 1974 	push	ar1
      003AA6 C0 02            [24] 1975 	push	ar2
      003AA8 74 EA            [12] 1976 	mov	a,#___str_23
      003AAA C0 E0            [24] 1977 	push	acc
      003AAC 74 52            [12] 1978 	mov	a,#(___str_23 >> 8)
      003AAE C0 E0            [24] 1979 	push	acc
      003AB0 74 80            [12] 1980 	mov	a,#0x80
      003AB2 C0 E0            [24] 1981 	push	acc
      003AB4 12 44 02         [24] 1982 	lcall	_printf
      003AB7 E5 81            [12] 1983 	mov	a,sp
      003AB9 24 FB            [12] 1984 	add	a,#0xfb
      003ABB F5 81            [12] 1985 	mov	sp,a
      003ABD D0 04            [24] 1986 	pop	ar4
      003ABF D0 05            [24] 1987 	pop	ar5
                                   1988 ;	main.c:220: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
      003AC1 E5 1D            [12] 1989 	mov	a,_main_sloc2_1_0
      003AC3 24 97            [12] 1990 	add	a,#_main_buffer_array_131072_48
      003AC5 F5 25            [12] 1991 	mov	_main_sloc6_1_0,a
      003AC7 E5 1E            [12] 1992 	mov	a,(_main_sloc2_1_0 + 1)
      003AC9 34 13            [12] 1993 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003ACB F5 26            [12] 1994 	mov	(_main_sloc6_1_0 + 1),a
      003ACD E5 1D            [12] 1995 	mov	a,_main_sloc2_1_0
      003ACF 24 97            [12] 1996 	add	a,#_main_buffer_array_131072_48
      003AD1 FE               [12] 1997 	mov	r6,a
      003AD2 E5 1E            [12] 1998 	mov	a,(_main_sloc2_1_0 + 1)
      003AD4 34 13            [12] 1999 	addc	a,#(_main_buffer_array_131072_48 >> 8)
      003AD6 FF               [12] 2000 	mov	r7,a
      003AD7 74 04            [12] 2001 	mov	a,#0x04
      003AD9 2E               [12] 2002 	add	a,r6
      003ADA F5 23            [12] 2003 	mov	_main_sloc5_1_0,a
      003ADC E4               [12] 2004 	clr	a
      003ADD 3F               [12] 2005 	addc	a,r7
      003ADE F5 24            [12] 2006 	mov	(_main_sloc5_1_0 + 1),a
      003AE0 E4               [12] 2007 	clr	a
      003AE1 F5 21            [12] 2008 	mov	_main_sloc4_1_0,a
      003AE3 F5 22            [12] 2009 	mov	(_main_sloc4_1_0 + 1),a
                                   2010 ;	main.c:250: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
      003AE5 D0 05            [24] 2011 	pop	ar5
      003AE7 D0 04            [24] 2012 	pop	ar4
                                   2013 ;	main.c:220: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
      003AE9                       2014 00189$:
      003AE9 85 23 82         [24] 2015 	mov	dpl,_main_sloc5_1_0
      003AEC 85 24 83         [24] 2016 	mov	dph,(_main_sloc5_1_0 + 1)
      003AEF E0               [24] 2017 	movx	a,@dptr
      003AF0 FE               [12] 2018 	mov	r6,a
      003AF1 A3               [24] 2019 	inc	dptr
      003AF2 E0               [24] 2020 	movx	a,@dptr
      003AF3 FF               [12] 2021 	mov	r7,a
      003AF4 AA 21            [24] 2022 	mov	r2,_main_sloc4_1_0
      003AF6 AB 22            [24] 2023 	mov	r3,(_main_sloc4_1_0 + 1)
      003AF8 C3               [12] 2024 	clr	c
      003AF9 EA               [12] 2025 	mov	a,r2
      003AFA 9E               [12] 2026 	subb	a,r6
      003AFB EB               [12] 2027 	mov	a,r3
      003AFC 64 80            [12] 2028 	xrl	a,#0x80
      003AFE 8F F0            [24] 2029 	mov	b,r7
      003B00 63 F0 80         [24] 2030 	xrl	b,#0x80
      003B03 95 F0            [12] 2031 	subb	a,b
      003B05 40 03            [24] 2032 	jc	00420$
      003B07 02 3B A5         [24] 2033 	ljmp	00166$
      003B0A                       2034 00420$:
                                   2035 ;	main.c:221: if (!(j % 32)) {
      003B0A 90 14 02         [24] 2036 	mov	dptr,#__modsint_PARM_2
      003B0D 74 20            [12] 2037 	mov	a,#0x20
      003B0F F0               [24] 2038 	movx	@dptr,a
      003B10 E4               [12] 2039 	clr	a
      003B11 A3               [24] 2040 	inc	dptr
      003B12 F0               [24] 2041 	movx	@dptr,a
      003B13 85 21 82         [24] 2042 	mov	dpl,_main_sloc4_1_0
      003B16 85 22 83         [24] 2043 	mov	dph,(_main_sloc4_1_0 + 1)
      003B19 C0 05            [24] 2044 	push	ar5
      003B1B C0 04            [24] 2045 	push	ar4
      003B1D 12 42 A0         [24] 2046 	lcall	__modsint
      003B20 E5 82            [12] 2047 	mov	a,dpl
      003B22 85 83 F0         [24] 2048 	mov	b,dph
      003B25 D0 04            [24] 2049 	pop	ar4
      003B27 D0 05            [24] 2050 	pop	ar5
      003B29 45 F0            [12] 2051 	orl	a,b
      003B2B 70 1D            [24] 2052 	jnz	00165$
                                   2053 ;	main.c:222: printf("\n\r");
      003B2D C0 05            [24] 2054 	push	ar5
      003B2F C0 04            [24] 2055 	push	ar4
      003B31 74 CC            [12] 2056 	mov	a,#___str_12
      003B33 C0 E0            [24] 2057 	push	acc
      003B35 74 50            [12] 2058 	mov	a,#(___str_12 >> 8)
      003B37 C0 E0            [24] 2059 	push	acc
      003B39 74 80            [12] 2060 	mov	a,#0x80
      003B3B C0 E0            [24] 2061 	push	acc
      003B3D 12 44 02         [24] 2062 	lcall	_printf
      003B40 15 81            [12] 2063 	dec	sp
      003B42 15 81            [12] 2064 	dec	sp
      003B44 15 81            [12] 2065 	dec	sp
      003B46 D0 04            [24] 2066 	pop	ar4
      003B48 D0 05            [24] 2067 	pop	ar5
      003B4A                       2068 00165$:
                                   2069 ;	main.c:224: printf("%c", buffer_array[index].buffer_pointer[j]);
      003B4A 85 25 82         [24] 2070 	mov	dpl,_main_sloc6_1_0
      003B4D 85 26 83         [24] 2071 	mov	dph,(_main_sloc6_1_0 + 1)
      003B50 E0               [24] 2072 	movx	a,@dptr
      003B51 FE               [12] 2073 	mov	r6,a
      003B52 A3               [24] 2074 	inc	dptr
      003B53 E0               [24] 2075 	movx	a,@dptr
      003B54 FF               [12] 2076 	mov	r7,a
      003B55 E5 21            [12] 2077 	mov	a,_main_sloc4_1_0
      003B57 2E               [12] 2078 	add	a,r6
      003B58 F5 82            [12] 2079 	mov	dpl,a
      003B5A E5 22            [12] 2080 	mov	a,(_main_sloc4_1_0 + 1)
      003B5C 3F               [12] 2081 	addc	a,r7
      003B5D F5 83            [12] 2082 	mov	dph,a
      003B5F E0               [24] 2083 	movx	a,@dptr
      003B60 FF               [12] 2084 	mov	r7,a
      003B61 7E 00            [12] 2085 	mov	r6,#0x00
      003B63 C0 05            [24] 2086 	push	ar5
      003B65 C0 04            [24] 2087 	push	ar4
      003B67 C0 07            [24] 2088 	push	ar7
      003B69 C0 06            [24] 2089 	push	ar6
      003B6B 74 00            [12] 2090 	mov	a,#___str_24
      003B6D C0 E0            [24] 2091 	push	acc
      003B6F 74 53            [12] 2092 	mov	a,#(___str_24 >> 8)
      003B71 C0 E0            [24] 2093 	push	acc
      003B73 74 80            [12] 2094 	mov	a,#0x80
      003B75 C0 E0            [24] 2095 	push	acc
      003B77 12 44 02         [24] 2096 	lcall	_printf
      003B7A E5 81            [12] 2097 	mov	a,sp
      003B7C 24 FB            [12] 2098 	add	a,#0xfb
      003B7E F5 81            [12] 2099 	mov	sp,a
      003B80 D0 04            [24] 2100 	pop	ar4
      003B82 D0 05            [24] 2101 	pop	ar5
                                   2102 ;	main.c:225: buffer_array[index].buffer_pointer[j] = 0;
      003B84 85 25 82         [24] 2103 	mov	dpl,_main_sloc6_1_0
      003B87 85 26 83         [24] 2104 	mov	dph,(_main_sloc6_1_0 + 1)
      003B8A E0               [24] 2105 	movx	a,@dptr
      003B8B FE               [12] 2106 	mov	r6,a
      003B8C A3               [24] 2107 	inc	dptr
      003B8D E0               [24] 2108 	movx	a,@dptr
      003B8E FF               [12] 2109 	mov	r7,a
      003B8F E5 21            [12] 2110 	mov	a,_main_sloc4_1_0
      003B91 2E               [12] 2111 	add	a,r6
      003B92 F5 82            [12] 2112 	mov	dpl,a
      003B94 E5 22            [12] 2113 	mov	a,(_main_sloc4_1_0 + 1)
      003B96 3F               [12] 2114 	addc	a,r7
      003B97 F5 83            [12] 2115 	mov	dph,a
      003B99 E4               [12] 2116 	clr	a
      003B9A F0               [24] 2117 	movx	@dptr,a
                                   2118 ;	main.c:220: for (int j = 0; j < buffer_array[index].buffer_occupied; j++) {
      003B9B 05 21            [12] 2119 	inc	_main_sloc4_1_0
                                   2120 ;	genFromRTrack removed	clr	a
      003B9D B5 21 02         [24] 2121 	cjne	a,_main_sloc4_1_0,00422$
      003BA0 05 22            [12] 2122 	inc	(_main_sloc4_1_0 + 1)
      003BA2                       2123 00422$:
      003BA2 02 3A E9         [24] 2124 	ljmp	00189$
      003BA5                       2125 00166$:
                                   2126 ;	main.c:227: printf("\n\r\n\r");
      003BA5 C0 05            [24] 2127 	push	ar5
      003BA7 C0 04            [24] 2128 	push	ar4
      003BA9 74 03            [12] 2129 	mov	a,#___str_25
      003BAB C0 E0            [24] 2130 	push	acc
      003BAD 74 53            [12] 2131 	mov	a,#(___str_25 >> 8)
      003BAF C0 E0            [24] 2132 	push	acc
      003BB1 74 80            [12] 2133 	mov	a,#0x80
      003BB3 C0 E0            [24] 2134 	push	acc
      003BB5 12 44 02         [24] 2135 	lcall	_printf
      003BB8 15 81            [12] 2136 	dec	sp
      003BBA 15 81            [12] 2137 	dec	sp
      003BBC 15 81            [12] 2138 	dec	sp
      003BBE D0 04            [24] 2139 	pop	ar4
      003BC0 D0 05            [24] 2140 	pop	ar5
                                   2141 ;	main.c:228: buffer_array[index].buffer_occupied = 0;
      003BC2 85 23 82         [24] 2142 	mov	dpl,_main_sloc5_1_0
      003BC5 85 24 83         [24] 2143 	mov	dph,(_main_sloc5_1_0 + 1)
      003BC8 E4               [12] 2144 	clr	a
      003BC9 F0               [24] 2145 	movx	@dptr,a
      003BCA A3               [24] 2146 	inc	dptr
      003BCB F0               [24] 2147 	movx	@dptr,a
      003BCC                       2148 00170$:
                                   2149 ;	main.c:209: for (int8_t index = 0; index <= buffer_count; index++) {
      003BCC 05 1B            [12] 2150 	inc	_main_sloc1_1_0
      003BCE 02 39 C5         [24] 2151 	ljmp	00192$
      003BD1                       2152 00171$:
                                   2153 ;	main.c:231: switch_case = 0;
      003BD1 90 13 D9         [24] 2154 	mov	dptr,#_main_switch_case_131074_52
      003BD4 E4               [12] 2155 	clr	a
      003BD5 F0               [24] 2156 	movx	@dptr,a
      003BD6 A3               [24] 2157 	inc	dptr
      003BD7 F0               [24] 2158 	movx	@dptr,a
      003BD8 A3               [24] 2159 	inc	dptr
      003BD9 F0               [24] 2160 	movx	@dptr,a
      003BDA A3               [24] 2161 	inc	dptr
      003BDB F0               [24] 2162 	movx	@dptr,a
                                   2163 ;	main.c:232: break;
      003BDC 02 33 EB         [24] 2164 	ljmp	00179$
                                   2165 ;	main.c:235: for (int k = 0; k < buffer_array[0].buffer_size; k++) {
      003BDF                       2166 00241$:
      003BDF 7E 00            [12] 2167 	mov	r6,#0x00
      003BE1 7F 00            [12] 2168 	mov	r7,#0x00
      003BE3                       2169 00194$:
      003BE3 90 13 99         [24] 2170 	mov	dptr,#(_main_buffer_array_131072_48 + 0x0002)
      003BE6 E0               [24] 2171 	movx	a,@dptr
      003BE7 FC               [12] 2172 	mov	r4,a
      003BE8 A3               [24] 2173 	inc	dptr
      003BE9 E0               [24] 2174 	movx	a,@dptr
      003BEA FD               [12] 2175 	mov	r5,a
      003BEB 8E 02            [24] 2176 	mov	ar2,r6
      003BED 8F 03            [24] 2177 	mov	ar3,r7
      003BEF C3               [12] 2178 	clr	c
      003BF0 EA               [12] 2179 	mov	a,r2
      003BF1 9C               [12] 2180 	subb	a,r4
      003BF2 EB               [12] 2181 	mov	a,r3
      003BF3 64 80            [12] 2182 	xrl	a,#0x80
      003BF5 8D F0            [24] 2183 	mov	b,r5
      003BF7 63 F0 80         [24] 2184 	xrl	b,#0x80
      003BFA 95 F0            [12] 2185 	subb	a,b
      003BFC 40 03            [24] 2186 	jc	00423$
      003BFE 02 3C 92         [24] 2187 	ljmp	00175$
      003C01                       2188 00423$:
                                   2189 ;	main.c:236: if (!(k % 16)) {
      003C01 90 14 02         [24] 2190 	mov	dptr,#__modsint_PARM_2
      003C04 74 10            [12] 2191 	mov	a,#0x10
      003C06 F0               [24] 2192 	movx	@dptr,a
      003C07 E4               [12] 2193 	clr	a
      003C08 A3               [24] 2194 	inc	dptr
      003C09 F0               [24] 2195 	movx	@dptr,a
      003C0A 8E 82            [24] 2196 	mov	dpl,r6
      003C0C 8F 83            [24] 2197 	mov	dph,r7
      003C0E C0 07            [24] 2198 	push	ar7
      003C10 C0 06            [24] 2199 	push	ar6
      003C12 12 42 A0         [24] 2200 	lcall	__modsint
      003C15 E5 82            [12] 2201 	mov	a,dpl
      003C17 85 83 F0         [24] 2202 	mov	b,dph
      003C1A D0 06            [24] 2203 	pop	ar6
      003C1C D0 07            [24] 2204 	pop	ar7
      003C1E 45 F0            [12] 2205 	orl	a,b
      003C20 70 33            [24] 2206 	jnz	00174$
                                   2207 ;	main.c:237: printf("\n\r%p :", &buffer_array[0].buffer_pointer[k]);
      003C22 90 13 97         [24] 2208 	mov	dptr,#_main_buffer_array_131072_48
      003C25 E0               [24] 2209 	movx	a,@dptr
      003C26 FC               [12] 2210 	mov	r4,a
      003C27 A3               [24] 2211 	inc	dptr
      003C28 E0               [24] 2212 	movx	a,@dptr
      003C29 FD               [12] 2213 	mov	r5,a
      003C2A EE               [12] 2214 	mov	a,r6
      003C2B 2C               [12] 2215 	add	a,r4
      003C2C FC               [12] 2216 	mov	r4,a
      003C2D EF               [12] 2217 	mov	a,r7
      003C2E 3D               [12] 2218 	addc	a,r5
      003C2F FD               [12] 2219 	mov	r5,a
      003C30 7B 00            [12] 2220 	mov	r3,#0x00
      003C32 C0 07            [24] 2221 	push	ar7
      003C34 C0 06            [24] 2222 	push	ar6
      003C36 C0 04            [24] 2223 	push	ar4
      003C38 C0 05            [24] 2224 	push	ar5
      003C3A C0 03            [24] 2225 	push	ar3
      003C3C 74 08            [12] 2226 	mov	a,#___str_26
      003C3E C0 E0            [24] 2227 	push	acc
      003C40 74 53            [12] 2228 	mov	a,#(___str_26 >> 8)
      003C42 C0 E0            [24] 2229 	push	acc
      003C44 74 80            [12] 2230 	mov	a,#0x80
      003C46 C0 E0            [24] 2231 	push	acc
      003C48 12 44 02         [24] 2232 	lcall	_printf
      003C4B E5 81            [12] 2233 	mov	a,sp
      003C4D 24 FA            [12] 2234 	add	a,#0xfa
      003C4F F5 81            [12] 2235 	mov	sp,a
      003C51 D0 06            [24] 2236 	pop	ar6
      003C53 D0 07            [24] 2237 	pop	ar7
      003C55                       2238 00174$:
                                   2239 ;	main.c:239: printf(" %x", buffer_array[0].buffer_pointer[k]);
      003C55 90 13 97         [24] 2240 	mov	dptr,#_main_buffer_array_131072_48
      003C58 E0               [24] 2241 	movx	a,@dptr
      003C59 FC               [12] 2242 	mov	r4,a
      003C5A A3               [24] 2243 	inc	dptr
      003C5B E0               [24] 2244 	movx	a,@dptr
      003C5C FD               [12] 2245 	mov	r5,a
      003C5D EE               [12] 2246 	mov	a,r6
      003C5E 2C               [12] 2247 	add	a,r4
      003C5F F5 82            [12] 2248 	mov	dpl,a
      003C61 EF               [12] 2249 	mov	a,r7
      003C62 3D               [12] 2250 	addc	a,r5
      003C63 F5 83            [12] 2251 	mov	dph,a
      003C65 E0               [24] 2252 	movx	a,@dptr
      003C66 FD               [12] 2253 	mov	r5,a
      003C67 7C 00            [12] 2254 	mov	r4,#0x00
      003C69 C0 07            [24] 2255 	push	ar7
      003C6B C0 06            [24] 2256 	push	ar6
      003C6D C0 05            [24] 2257 	push	ar5
      003C6F C0 04            [24] 2258 	push	ar4
      003C71 74 0F            [12] 2259 	mov	a,#___str_27
      003C73 C0 E0            [24] 2260 	push	acc
      003C75 74 53            [12] 2261 	mov	a,#(___str_27 >> 8)
      003C77 C0 E0            [24] 2262 	push	acc
      003C79 74 80            [12] 2263 	mov	a,#0x80
      003C7B C0 E0            [24] 2264 	push	acc
      003C7D 12 44 02         [24] 2265 	lcall	_printf
      003C80 E5 81            [12] 2266 	mov	a,sp
      003C82 24 FB            [12] 2267 	add	a,#0xfb
      003C84 F5 81            [12] 2268 	mov	sp,a
      003C86 D0 06            [24] 2269 	pop	ar6
      003C88 D0 07            [24] 2270 	pop	ar7
                                   2271 ;	main.c:235: for (int k = 0; k < buffer_array[0].buffer_size; k++) {
      003C8A 0E               [12] 2272 	inc	r6
      003C8B BE 00 01         [24] 2273 	cjne	r6,#0x00,00425$
      003C8E 0F               [12] 2274 	inc	r7
      003C8F                       2275 00425$:
      003C8F 02 3B E3         [24] 2276 	ljmp	00194$
      003C92                       2277 00175$:
                                   2278 ;	main.c:241: printf("\n\r");
      003C92 74 CC            [12] 2279 	mov	a,#___str_12
      003C94 C0 E0            [24] 2280 	push	acc
      003C96 74 50            [12] 2281 	mov	a,#(___str_12 >> 8)
      003C98 C0 E0            [24] 2282 	push	acc
      003C9A 74 80            [12] 2283 	mov	a,#0x80
      003C9C C0 E0            [24] 2284 	push	acc
      003C9E 12 44 02         [24] 2285 	lcall	_printf
      003CA1 15 81            [12] 2286 	dec	sp
      003CA3 15 81            [12] 2287 	dec	sp
      003CA5 15 81            [12] 2288 	dec	sp
                                   2289 ;	main.c:242: switch_case = 0;
      003CA7 90 13 D9         [24] 2290 	mov	dptr,#_main_switch_case_131074_52
      003CAA E4               [12] 2291 	clr	a
      003CAB F0               [24] 2292 	movx	@dptr,a
      003CAC A3               [24] 2293 	inc	dptr
      003CAD F0               [24] 2294 	movx	@dptr,a
      003CAE A3               [24] 2295 	inc	dptr
      003CAF F0               [24] 2296 	movx	@dptr,a
      003CB0 A3               [24] 2297 	inc	dptr
      003CB1 F0               [24] 2298 	movx	@dptr,a
                                   2299 ;	main.c:243: break;
      003CB2 02 33 EB         [24] 2300 	ljmp	00179$
                                   2301 ;	main.c:250: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
      003CB5                       2302 00243$:
      003CB5 7F 00            [12] 2303 	mov	r7,#0x00
      003CB7                       2304 00197$:
      003CB7 C3               [12] 2305 	clr	c
      003CB8 EF               [12] 2306 	mov	a,r7
      003CB9 64 80            [12] 2307 	xrl	a,#0x80
      003CBB 94 8A            [12] 2308 	subb	a,#0x8a
      003CBD 40 03            [24] 2309 	jc	00426$
      003CBF 02 32 60         [24] 2310 	ljmp	00183$
      003CC2                       2311 00426$:
                                   2312 ;	main.c:251: free(buffer_array[l].buffer_pointer);
      003CC2 C2 D5            [12] 2313 	clr	F0
      003CC4 75 F0 06         [24] 2314 	mov	b,#0x06
      003CC7 EF               [12] 2315 	mov	a,r7
      003CC8 30 E7 04         [24] 2316 	jnb	acc.7,00427$
      003CCB B2 D5            [12] 2317 	cpl	F0
      003CCD F4               [12] 2318 	cpl	a
      003CCE 04               [12] 2319 	inc	a
      003CCF                       2320 00427$:
      003CCF A4               [48] 2321 	mul	ab
      003CD0 30 D5 0A         [24] 2322 	jnb	F0,00428$
      003CD3 F4               [12] 2323 	cpl	a
      003CD4 24 01            [12] 2324 	add	a,#0x01
      003CD6 C5 F0            [12] 2325 	xch	a,b
      003CD8 F4               [12] 2326 	cpl	a
      003CD9 34 00            [12] 2327 	addc	a,#0x00
      003CDB C5 F0            [12] 2328 	xch	a,b
      003CDD                       2329 00428$:
      003CDD 24 97            [12] 2330 	add	a,#_main_buffer_array_131072_48
      003CDF FD               [12] 2331 	mov	r5,a
      003CE0 74 13            [12] 2332 	mov	a,#(_main_buffer_array_131072_48 >> 8)
      003CE2 35 F0            [12] 2333 	addc	a,b
      003CE4 FE               [12] 2334 	mov	r6,a
      003CE5 8D 82            [24] 2335 	mov	dpl,r5
      003CE7 8E 83            [24] 2336 	mov	dph,r6
      003CE9 E0               [24] 2337 	movx	a,@dptr
      003CEA FB               [12] 2338 	mov	r3,a
      003CEB A3               [24] 2339 	inc	dptr
      003CEC E0               [24] 2340 	movx	a,@dptr
      003CED FC               [12] 2341 	mov	r4,a
      003CEE 7A 00            [12] 2342 	mov	r2,#0x00
      003CF0 8B 82            [24] 2343 	mov	dpl,r3
      003CF2 8C 83            [24] 2344 	mov	dph,r4
      003CF4 8A F0            [24] 2345 	mov	b,r2
      003CF6 C0 07            [24] 2346 	push	ar7
      003CF8 C0 06            [24] 2347 	push	ar6
      003CFA C0 05            [24] 2348 	push	ar5
      003CFC 12 3D D8         [24] 2349 	lcall	_free
      003CFF D0 05            [24] 2350 	pop	ar5
      003D01 D0 06            [24] 2351 	pop	ar6
      003D03 D0 07            [24] 2352 	pop	ar7
                                   2353 ;	main.c:252: buffer_array[l].buffer_pointer = NULL;
      003D05 8D 82            [24] 2354 	mov	dpl,r5
      003D07 8E 83            [24] 2355 	mov	dph,r6
      003D09 E4               [12] 2356 	clr	a
      003D0A F0               [24] 2357 	movx	@dptr,a
      003D0B A3               [24] 2358 	inc	dptr
      003D0C F0               [24] 2359 	movx	@dptr,a
                                   2360 ;	main.c:250: for (int8_t l = 0; l < ARRAY_SIZE; l++) {
      003D0D 0F               [12] 2361 	inc	r7
                                   2362 ;	main.c:255: }
      003D0E 80 A7            [24] 2363 	sjmp	00197$
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area CONST   (CODE)
      004EE3                       2366 ___sdcc_heap_size:
      004EE3 88 13                 2367 	.byte #0x88, #0x13	; 5000
                                   2368 	.area CONST   (CODE)
      004EE5                       2369 ___str_0:
      004EE5 53 70 65 63 69 66 79  2370 	.ascii "Specify the buffer size (range 32 to 4800) divisible by 16: "
             20 74 68 65 20 62 75
             66 66 65 72 20 73 69
             7A 65 20 28 72 61 6E
             67 65 20 33 32 20 74
             6F 20 34 38 30 30 29
             20 64 69 76 69 73 69
             62 6C 65 20 62 79 20
             31 36 3A 20
      004F21 0A                    2371 	.db 0x0a
      004F22 0D                    2372 	.db 0x0d
      004F23 00                    2373 	.db 0x00
                                   2374 	.area CSEG    (CODE)
                                   2375 	.area CONST   (CODE)
      004F24                       2376 ___str_1:
      004F24 46 61 69 6C 65 64 20  2377 	.ascii "Failed to allocate memory"
             74 6F 20 61 6C 6C 6F
             63 61 74 65 20 6D 65
             6D 6F 72 79
      004F3D 0A                    2378 	.db 0x0a
      004F3E 0D                    2379 	.db 0x0d
      004F3F 00                    2380 	.db 0x00
                                   2381 	.area CSEG    (CODE)
                                   2382 	.area CONST   (CODE)
      004F40                       2383 ___str_2:
      004F40 2A 20 45 6E 74 65 72  2384 	.ascii "* Enter any UPPERCASE letter to append characters into buffe"
             20 61 6E 79 20 55 50
             50 45 52 43 41 53 45
             20 6C 65 74 74 65 72
             20 74 6F 20 61 70 70
             65 6E 64 20 63 68 61
             72 61 63 74 65 72 73
             20 69 6E 74 6F 20 62
             75 66 66 65
      004F7C 72 20 30              2385 	.ascii "r 0"
      004F7F 0A                    2386 	.db 0x0a
      004F80 0D                    2387 	.db 0x0d
      004F81 00                    2388 	.db 0x00
                                   2389 	.area CSEG    (CODE)
                                   2390 	.area CONST   (CODE)
      004F82                       2391 ___str_3:
      004F82 2A 20 50 72 65 73 73  2392 	.ascii "* Press '+' to allocate a new buffer "
             20 27 2B 27 20 74 6F
             20 61 6C 6C 6F 63 61
             74 65 20 61 20 6E 65
             77 20 62 75 66 66 65
             72 20
      004FA7 0A                    2393 	.db 0x0a
      004FA8 0D                    2394 	.db 0x0d
      004FA9 00                    2395 	.db 0x00
                                   2396 	.area CSEG    (CODE)
                                   2397 	.area CONST   (CODE)
      004FAA                       2398 ___str_4:
      004FAA 2A 20 50 72 65 73 73  2399 	.ascii "* Press '-' to remove allocated buffers "
             20 27 2D 27 20 74 6F
             20 72 65 6D 6F 76 65
             20 61 6C 6C 6F 63 61
             74 65 64 20 62 75 66
             66 65 72 73 20
      004FD2 0A                    2400 	.db 0x0a
      004FD3 0D                    2401 	.db 0x0d
      004FD4 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                                   2404 	.area CONST   (CODE)
      004FD5                       2405 ___str_5:
      004FD5 2A 20 50 72 65 73 73  2406 	.ascii "* Press '?' to get the heap report "
             20 27 3F 27 20 74 6F
             20 67 65 74 20 74 68
             65 20 68 65 61 70 20
             72 65 70 6F 72 74 20
      004FF8 0A                    2407 	.db 0x0a
      004FF9 0D                    2408 	.db 0x0d
      004FFA 00                    2409 	.db 0x00
                                   2410 	.area CSEG    (CODE)
                                   2411 	.area CONST   (CODE)
      004FFB                       2412 ___str_6:
      004FFB 2A 20 50 72 65 73 73  2413 	.ascii "* Press '=' to get buffer 0 content "
             20 27 3D 27 20 74 6F
             20 67 65 74 20 62 75
             66 66 65 72 20 30 20
             63 6F 6E 74 65 6E 74
             20
      00501F 0A                    2414 	.db 0x0a
      005020 0D                    2415 	.db 0x0d
      005021 00                    2416 	.db 0x00
                                   2417 	.area CSEG    (CODE)
                                   2418 	.area CONST   (CODE)
      005022                       2419 ___str_7:
      005022 2A 20 50 72 65 73 73  2420 	.ascii "* Press '@' to restart the program "
             20 27 40 27 20 74 6F
             20 72 65 73 74 61 72
             74 20 74 68 65 20 70
             72 6F 67 72 61 6D 20
      005045 0A                    2421 	.db 0x0a
      005046 0D                    2422 	.db 0x0d
      005047 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      005048                       2426 ___str_8:
      005048 20 6D 6F 64 65 2C 20  2427 	.ascii " mode, specify buffer size (range 20 to 400): "
             73 70 65 63 69 66 79
             20 62 75 66 66 65 72
             20 73 69 7A 65 20 28
             72 61 6E 67 65 20 32
             30 20 74 6F 20 34 30
             30 29 3A 20
      005076 0A                    2428 	.db 0x0a
      005077 0D                    2429 	.db 0x0d
      005078 00                    2430 	.db 0x00
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
      005079                       2433 ___str_9:
      005079 46 69 72 73 74 20 65  2434 	.ascii "First exit the current mode "
             78 69 74 20 74 68 65
             20 63 75 72 72 65 6E
             74 20 6D 6F 64 65 20
      005095 0A                    2435 	.db 0x0a
      005096 0D                    2436 	.db 0x0d
      005097 00                    2437 	.db 0x00
                                   2438 	.area CSEG    (CODE)
                                   2439 	.area CONST   (CODE)
      005098                       2440 ___str_10:
      005098 20 6D 6F 64 65 2C 20  2441 	.ascii " mode, specify buffer number to destroy: "
             73 70 65 63 69 66 79
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 74 6F 20 64 65 73
             74 72 6F 79 3A 20
      0050C1 0A                    2442 	.db 0x0a
      0050C2 0D                    2443 	.db 0x0d
      0050C3 00                    2444 	.db 0x00
                                   2445 	.area CSEG    (CODE)
                                   2446 	.area CONST   (CODE)
      0050C4                       2447 ___str_11:
      0050C4 20 6D 6F 64 65        2448 	.ascii " mode"
      0050C9 0A                    2449 	.db 0x0a
      0050CA 0D                    2450 	.db 0x0d
      0050CB 00                    2451 	.db 0x00
                                   2452 	.area CSEG    (CODE)
                                   2453 	.area CONST   (CODE)
      0050CC                       2454 ___str_12:
      0050CC 0A                    2455 	.db 0x0a
      0050CD 0D                    2456 	.db 0x0d
      0050CE 00                    2457 	.db 0x00
                                   2458 	.area CSEG    (CODE)
                                   2459 	.area CONST   (CODE)
      0050CF                       2460 ___str_13:
      0050CF 20 6D 6F 64 65 20 2D  2461 	.ascii " mode - restarting program "
             20 72 65 73 74 61 72
             74 69 6E 67 20 70 72
             6F 67 72 61 6D 20
      0050EA 0A                    2462 	.db 0x0a
      0050EB 0D                    2463 	.db 0x0d
      0050EC 00                    2464 	.db 0x00
                                   2465 	.area CSEG    (CODE)
                                   2466 	.area CONST   (CODE)
      0050ED                       2467 ___str_14:
      0050ED 0A                    2468 	.db 0x0a
      0050EE 0D                    2469 	.db 0x0d
      0050EF 4E 6F 74 20 65 6E 6F  2470 	.ascii "Not enough memory to load, echoing to serial output %c"
             75 67 68 20 6D 65 6D
             6F 72 79 20 74 6F 20
             6C 6F 61 64 2C 20 65
             63 68 6F 69 6E 67 20
             74 6F 20 73 65 72 69
             61 6C 20 6F 75 74 70
             75 74 20 25 63
      005125 0A                    2471 	.db 0x0a
      005126 0D                    2472 	.db 0x0d
      005127 00                    2473 	.db 0x00
                                   2474 	.area CSEG    (CODE)
                                   2475 	.area CONST   (CODE)
      005128                       2476 ___str_15:
      005128 46 61 69 6C 65 64 20  2477 	.ascii "Failed to allocate memory for buffer, try deleting some usin"
             74 6F 20 61 6C 6C 6F
             63 61 74 65 20 6D 65
             6D 6F 72 79 20 66 6F
             72 20 62 75 66 66 65
             72 2C 20 74 72 79 20
             64 65 6C 65 74 69 6E
             67 20 73 6F 6D 65 20
             75 73 69 6E
      005164 67 20 27 2D 27 20     2478 	.ascii "g '-' "
      00516A 0A                    2479 	.db 0x0a
      00516B 0D                    2480 	.db 0x0d
      00516C 00                    2481 	.db 0x00
                                   2482 	.area CSEG    (CODE)
                                   2483 	.area CONST   (CODE)
      00516D                       2484 ___str_16:
      00516D 41 6C 6C 6F 63 61 74  2485 	.ascii "Allocated memory for buffer #%d "
             65 64 20 6D 65 6D 6F
             72 79 20 66 6F 72 20
             62 75 66 66 65 72 20
             23 25 64 20
      00518D 0A                    2486 	.db 0x0a
      00518E 0D                    2487 	.db 0x0d
      00518F 00                    2488 	.db 0x00
                                   2489 	.area CSEG    (CODE)
                                   2490 	.area CONST   (CODE)
      005190                       2491 ___str_17:
      005190 4E 6F 74 20 61 6C 6C  2492 	.ascii "Not allowed to remove buffer 0"
             6F 77 65 64 20 74 6F
             20 72 65 6D 6F 76 65
             20 62 75 66 66 65 72
             20 30
      0051AE 0A                    2493 	.db 0x0a
      0051AF 0D                    2494 	.db 0x0d
      0051B0 00                    2495 	.db 0x00
                                   2496 	.area CSEG    (CODE)
                                   2497 	.area CONST   (CODE)
      0051B1                       2498 ___str_18:
      0051B1 46 72 65 65 64 20 62  2499 	.ascii "Freed buffer #%d, try '?' to get info of existing buffers  "
             75 66 66 65 72 20 23
             25 64 2C 20 74 72 79
             20 27 3F 27 20 74 6F
             20 67 65 74 20 69 6E
             66 6F 20 6F 66 20 65
             78 69 73 74 69 6E 67
             20 62 75 66 66 65 72
             73 20 20
      0051EC 0A                    2500 	.db 0x0a
      0051ED 0D                    2501 	.db 0x0d
      0051EE 00                    2502 	.db 0x00
                                   2503 	.area CSEG    (CODE)
                                   2504 	.area CONST   (CODE)
      0051EF                       2505 ___str_19:
      0051EF 4E 6F 20 73 75 63 68  2506 	.ascii "No such buffer exists, try '?' to get info of existing buffe"
             20 62 75 66 66 65 72
             20 65 78 69 73 74 73
             2C 20 74 72 79 20 27
             3F 27 20 74 6F 20 67
             65 74 20 69 6E 66 6F
             20 6F 66 20 65 78 69
             73 74 69 6E 67 20 62
             75 66 66 65
      00522B 72 73 20              2507 	.ascii "rs "
      00522E 0A                    2508 	.db 0x0a
      00522F 0D                    2509 	.db 0x0d
      005230 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
      005231                       2513 ___str_20:
      005231 54 6F 74 61 6C 20 63  2514 	.ascii "Total characters count: %d "
             68 61 72 61 63 74 65
             72 73 20 63 6F 75 6E
             74 3A 20 25 64 20
      00524C 0A                    2515 	.db 0x0a
      00524D 0D                    2516 	.db 0x0d
      00524E 00                    2517 	.db 0x00
                                   2518 	.area CSEG    (CODE)
                                   2519 	.area CONST   (CODE)
      00524F                       2520 ___str_21:
      00524F 53 69 6E 63 65 20 6C  2521 	.ascii "Since last '?': %d "
             61 73 74 20 27 3F 27
             3A 20 25 64 20
      005262 0A                    2522 	.db 0x0a
      005263 0D                    2523 	.db 0x0d
      005264 00                    2524 	.db 0x00
                                   2525 	.area CSEG    (CODE)
                                   2526 	.area CONST   (CODE)
      005265                       2527 ___str_22:
      005265 42 75 66 66 65 72 20  2528 	.ascii "Buffer %d -->"
             25 64 20 2D 2D 3E
      005272 0A                    2529 	.db 0x0a
      005273 0D                    2530 	.db 0x0d
      005274 20 53 74 61 72 74 20  2531 	.ascii " Start address: %p"
             61 64 64 72 65 73 73
             3A 20 25 70
      005286 0A                    2532 	.db 0x0a
      005287 0D                    2533 	.db 0x0d
      005288 20 45 6E 64 20 61 64  2534 	.ascii " End address: %p"
             64 72 65 73 73 3A 20
             25 70
      005298 0A                    2535 	.db 0x0a
      005299 0D                    2536 	.db 0x0d
      00529A 20 41 6C 6C 6F 63 61  2537 	.ascii " Allocated size: %u"
             74 65 64 20 73 69 7A
             65 3A 20 25 75
      0052AD 0A                    2538 	.db 0x0a
      0052AE 0D                    2539 	.db 0x0d
      0052AF 20 53 74 6F 72 61 67  2540 	.ascii " Storage character counts: %u"
             65 20 63 68 61 72 61
             63 74 65 72 20 63 6F
             75 6E 74 73 3A 20 25
             75
      0052CC 0A                    2541 	.db 0x0a
      0052CD 0D                    2542 	.db 0x0d
      0052CE 20 46 72 65 65 20 73  2543 	.ascii " Free space available: %u"
             70 61 63 65 20 61 76
             61 69 6C 61 62 6C 65
             3A 20 25 75
      0052E7 0A                    2544 	.db 0x0a
      0052E8 0D                    2545 	.db 0x0d
      0052E9 00                    2546 	.db 0x00
                                   2547 	.area CSEG    (CODE)
                                   2548 	.area CONST   (CODE)
      0052EA                       2549 ___str_23:
      0052EA 42 75 66 66 65 72 20  2550 	.ascii "Buffer %d content: "
             25 64 20 63 6F 6E 74
             65 6E 74 3A 20
      0052FD 0A                    2551 	.db 0x0a
      0052FE 0D                    2552 	.db 0x0d
      0052FF 00                    2553 	.db 0x00
                                   2554 	.area CSEG    (CODE)
                                   2555 	.area CONST   (CODE)
      005300                       2556 ___str_24:
      005300 25 63                 2557 	.ascii "%c"
      005302 00                    2558 	.db 0x00
                                   2559 	.area CSEG    (CODE)
                                   2560 	.area CONST   (CODE)
      005303                       2561 ___str_25:
      005303 0A                    2562 	.db 0x0a
      005304 0D                    2563 	.db 0x0d
      005305 0A                    2564 	.db 0x0a
      005306 0D                    2565 	.db 0x0d
      005307 00                    2566 	.db 0x00
                                   2567 	.area CSEG    (CODE)
                                   2568 	.area CONST   (CODE)
      005308                       2569 ___str_26:
      005308 0A                    2570 	.db 0x0a
      005309 0D                    2571 	.db 0x0d
      00530A 25 70 20 3A           2572 	.ascii "%p :"
      00530E 00                    2573 	.db 0x00
                                   2574 	.area CSEG    (CODE)
                                   2575 	.area CONST   (CODE)
      00530F                       2576 ___str_27:
      00530F 20 25 78              2577 	.ascii " %x"
      005312 00                    2578 	.db 0x00
                                   2579 	.area CSEG    (CODE)
                                   2580 	.area XINIT   (CODE)
                                   2581 	.area CABS    (ABS,CODE)
