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
                                     11 	.globl _main
                                     12 	.globl __sdcc_external_startup
                                     13 	.globl _menu
                                     14 	.globl _get_hex_value
                                     15 	.globl _spi_single_value
                                     16 	.globl _spi_wave_generator
                                     17 	.globl _spi_init
                                     18 	.globl _echo
                                     19 	.globl _printf_tiny
                                     20 	.globl _TF1
                                     21 	.globl _TR1
                                     22 	.globl _TF0
                                     23 	.globl _TR0
                                     24 	.globl _IE1
                                     25 	.globl _IT1
                                     26 	.globl _IE0
                                     27 	.globl _IT0
                                     28 	.globl _SM0
                                     29 	.globl _SM1
                                     30 	.globl _SM2
                                     31 	.globl _REN
                                     32 	.globl _TB8
                                     33 	.globl _RB8
                                     34 	.globl _TI
                                     35 	.globl _RI
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD0
                                     51 	.globl _TXD
                                     52 	.globl _RXD0
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _PS
                                     87 	.globl _PT1
                                     88 	.globl _PX1
                                     89 	.globl _PT0
                                     90 	.globl _PX0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _BREG_F7
                                     98 	.globl _BREG_F6
                                     99 	.globl _BREG_F5
                                    100 	.globl _BREG_F4
                                    101 	.globl _BREG_F3
                                    102 	.globl _BREG_F2
                                    103 	.globl _BREG_F1
                                    104 	.globl _BREG_F0
                                    105 	.globl _P5_7
                                    106 	.globl _P5_6
                                    107 	.globl _P5_5
                                    108 	.globl _P5_4
                                    109 	.globl _P5_3
                                    110 	.globl _P5_2
                                    111 	.globl _P5_1
                                    112 	.globl _P5_0
                                    113 	.globl _P4_7
                                    114 	.globl _P4_6
                                    115 	.globl _P4_5
                                    116 	.globl _P4_4
                                    117 	.globl _P4_3
                                    118 	.globl _P4_2
                                    119 	.globl _P4_1
                                    120 	.globl _P4_0
                                    121 	.globl _PX0L
                                    122 	.globl _PT0L
                                    123 	.globl _PX1L
                                    124 	.globl _PT1L
                                    125 	.globl _PSL
                                    126 	.globl _PT2L
                                    127 	.globl _PPCL
                                    128 	.globl _EC
                                    129 	.globl _CCF0
                                    130 	.globl _CCF1
                                    131 	.globl _CCF2
                                    132 	.globl _CCF3
                                    133 	.globl _CCF4
                                    134 	.globl _CR
                                    135 	.globl _CF
                                    136 	.globl _TF2
                                    137 	.globl _EXF2
                                    138 	.globl _RCLK
                                    139 	.globl _TCLK
                                    140 	.globl _EXEN2
                                    141 	.globl _TR2
                                    142 	.globl _C_T2
                                    143 	.globl _CP_RL2
                                    144 	.globl _T2CON_7
                                    145 	.globl _T2CON_6
                                    146 	.globl _T2CON_5
                                    147 	.globl _T2CON_4
                                    148 	.globl _T2CON_3
                                    149 	.globl _T2CON_2
                                    150 	.globl _T2CON_1
                                    151 	.globl _T2CON_0
                                    152 	.globl _PT2
                                    153 	.globl _ET2
                                    154 	.globl _TMOD
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TCON
                                    160 	.globl _SP
                                    161 	.globl _SCON
                                    162 	.globl _SBUF0
                                    163 	.globl _SBUF
                                    164 	.globl _PSW
                                    165 	.globl _PCON
                                    166 	.globl _P3
                                    167 	.globl _P2
                                    168 	.globl _P1
                                    169 	.globl _P0
                                    170 	.globl _IP
                                    171 	.globl _IE
                                    172 	.globl _DP0L
                                    173 	.globl _DPL
                                    174 	.globl _DP0H
                                    175 	.globl _DPH
                                    176 	.globl _B
                                    177 	.globl _ACC
                                    178 	.globl _EECON
                                    179 	.globl _KBF
                                    180 	.globl _KBE
                                    181 	.globl _KBLS
                                    182 	.globl _BRL
                                    183 	.globl _BDRCON
                                    184 	.globl _T2MOD
                                    185 	.globl _SPDAT
                                    186 	.globl _SPSTA
                                    187 	.globl _SPCON
                                    188 	.globl _SADEN
                                    189 	.globl _SADDR
                                    190 	.globl _WDTPRG
                                    191 	.globl _WDTRST
                                    192 	.globl _P5
                                    193 	.globl _P4
                                    194 	.globl _IPH1
                                    195 	.globl _IPL1
                                    196 	.globl _IPH0
                                    197 	.globl _IPL0
                                    198 	.globl _IEN1
                                    199 	.globl _IEN0
                                    200 	.globl _CMOD
                                    201 	.globl _CL
                                    202 	.globl _CH
                                    203 	.globl _CCON
                                    204 	.globl _CCAPM4
                                    205 	.globl _CCAPM3
                                    206 	.globl _CCAPM2
                                    207 	.globl _CCAPM1
                                    208 	.globl _CCAPM0
                                    209 	.globl _CCAP4L
                                    210 	.globl _CCAP3L
                                    211 	.globl _CCAP2L
                                    212 	.globl _CCAP1L
                                    213 	.globl _CCAP0L
                                    214 	.globl _CCAP4H
                                    215 	.globl _CCAP3H
                                    216 	.globl _CCAP2H
                                    217 	.globl _CCAP1H
                                    218 	.globl _CCAP0H
                                    219 	.globl _CKCON1
                                    220 	.globl _CKCON0
                                    221 	.globl _CKRL
                                    222 	.globl _AUXR1
                                    223 	.globl _AUXR
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _T2CON
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
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable items in internal ram
                                    459 ;--------------------------------------------------------
                                    460 ;--------------------------------------------------------
                                    461 ; Stack segment in internal ram
                                    462 ;--------------------------------------------------------
                                    463 	.area	SSEG
      000041                        464 __start__stack:
      000041                        465 	.ds	1
                                    466 
                                    467 ;--------------------------------------------------------
                                    468 ; indirectly addressable internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area ISEG    (DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; absolute internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area IABS    (ABS,DATA)
                                    475 	.area IABS    (ABS,DATA)
                                    476 ;--------------------------------------------------------
                                    477 ; bit data
                                    478 ;--------------------------------------------------------
                                    479 	.area BSEG    (BIT)
                                    480 ;--------------------------------------------------------
                                    481 ; paged external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area PSEG    (PAG,XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XSEG    (XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; absolute external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XABS    (ABS,XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; external initialized ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XISEG   (XDATA)
                                    496 	.area HOME    (CODE)
                                    497 	.area GSINIT0 (CODE)
                                    498 	.area GSINIT1 (CODE)
                                    499 	.area GSINIT2 (CODE)
                                    500 	.area GSINIT3 (CODE)
                                    501 	.area GSINIT4 (CODE)
                                    502 	.area GSINIT5 (CODE)
                                    503 	.area GSINIT  (CODE)
                                    504 	.area GSFINAL (CODE)
                                    505 	.area CSEG    (CODE)
                                    506 ;--------------------------------------------------------
                                    507 ; interrupt vector
                                    508 ;--------------------------------------------------------
                                    509 	.area HOME    (CODE)
      005000                        510 __interrupt_vect:
      005000 02 50 06         [24]  511 	ljmp	__sdcc_gsinit_startup
                                    512 ;--------------------------------------------------------
                                    513 ; global & static initialisations
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 	.globl __sdcc_gsinit_startup
                                    520 	.globl __sdcc_program_startup
                                    521 	.globl __start__stack
                                    522 	.globl __mcs51_genXINIT
                                    523 	.globl __mcs51_genXRAMCLEAR
                                    524 	.globl __mcs51_genRAMCLEAR
                                    525 	.area GSFINAL (CODE)
      00505F 02 50 03         [24]  526 	ljmp	__sdcc_program_startup
                                    527 ;--------------------------------------------------------
                                    528 ; Home
                                    529 ;--------------------------------------------------------
                                    530 	.area HOME    (CODE)
                                    531 	.area HOME    (CODE)
      005003                        532 __sdcc_program_startup:
      005003 02 50 69         [24]  533 	ljmp	_main
                                    534 ;	return from main will return to caller
                                    535 ;--------------------------------------------------------
                                    536 ; code
                                    537 ;--------------------------------------------------------
                                    538 	.area CSEG    (CODE)
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    541 ;------------------------------------------------------------
                                    542 ;	main.c:31: _sdcc_external_startup()
                                    543 ;	-----------------------------------------
                                    544 ;	 function _sdcc_external_startup
                                    545 ;	-----------------------------------------
      005062                        546 __sdcc_external_startup:
                           000007   547 	ar7 = 0x07
                           000006   548 	ar6 = 0x06
                           000005   549 	ar5 = 0x05
                           000004   550 	ar4 = 0x04
                           000003   551 	ar3 = 0x03
                           000002   552 	ar2 = 0x02
                           000001   553 	ar1 = 0x01
                           000000   554 	ar0 = 0x00
                                    555 ;	main.c:33: AUXR |= (XRS1 | XRS0); // Configure XRAM (External RAM) for memory extension
      005062 43 8E 0C         [24]  556 	orl	_AUXR,#0x0c
                                    557 ;	main.c:34: return 0;               // Return 0 to indicate successful startup
      005065 90 00 00         [24]  558 	mov	dptr,#0x0000
                                    559 ;	main.c:35: }
      005068 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'main'
                                    563 ;------------------------------------------------------------
                                    564 ;level                     Allocated to registers 
                                    565 ;user_input                Allocated to registers r7 
                                    566 ;------------------------------------------------------------
                                    567 ;	main.c:39: void main(void)
                                    568 ;	-----------------------------------------
                                    569 ;	 function main
                                    570 ;	-----------------------------------------
      005069                        571 _main:
                                    572 ;	main.c:42: spi_init(); // Initialize SPI communication
      005069 12 51 35         [24]  573 	lcall	_spi_init
                                    574 ;	main.c:43: menu();
      00506C 12 50 E9         [24]  575 	lcall	_menu
                                    576 ;	main.c:44: while (1)
      00506F                        577 00112$:
                                    578 ;	main.c:46: int8_t user_input = echo(); // Read user input from UART
      00506F 12 53 5A         [24]  579 	lcall	_echo
      005072 AF 82            [24]  580 	mov	r7,dpl
                                    581 ;	main.c:49: if (((user_input >= '0') && (user_input <= '9')) ||
      005074 C3               [12]  582 	clr	c
      005075 EF               [12]  583 	mov	a,r7
      005076 64 80            [12]  584 	xrl	a,#0x80
      005078 94 B0            [12]  585 	subb	a,#0xb0
      00507A 40 0B            [24]  586 	jc	00106$
      00507C 74 B9            [12]  587 	mov	a,#(0x39 ^ 0x80)
      00507E 8F F0            [24]  588 	mov	b,r7
      005080 63 F0 80         [24]  589 	xrl	b,#0x80
      005083 95 F0            [12]  590 	subb	a,b
      005085 50 13            [24]  591 	jnc	00101$
      005087                        592 00106$:
                                    593 ;	main.c:50: ((user_input >= 'A') && (user_input <= 'Z')))
      005087 C3               [12]  594 	clr	c
      005088 EF               [12]  595 	mov	a,r7
      005089 64 80            [12]  596 	xrl	a,#0x80
      00508B 94 C1            [12]  597 	subb	a,#0xc1
      00508D 40 20            [24]  598 	jc	00102$
      00508F 74 DA            [12]  599 	mov	a,#(0x5a ^ 0x80)
      005091 8F F0            [24]  600 	mov	b,r7
      005093 63 F0 80         [24]  601 	xrl	b,#0x80
      005096 95 F0            [12]  602 	subb	a,b
      005098 40 15            [24]  603 	jc	00102$
      00509A                        604 00101$:
                                    605 ;	main.c:53: printf_tiny("Please enter commands in lowercase\n\r");
      00509A C0 07            [24]  606 	push	ar7
      00509C 74 04            [12]  607 	mov	a,#___str_0
      00509E C0 E0            [24]  608 	push	acc
      0050A0 74 5C            [12]  609 	mov	a,#(___str_0 >> 8)
      0050A2 C0 E0            [24]  610 	push	acc
      0050A4 12 53 73         [24]  611 	lcall	_printf_tiny
      0050A7 15 81            [12]  612 	dec	sp
      0050A9 15 81            [12]  613 	dec	sp
      0050AB D0 07            [24]  614 	pop	ar7
      0050AD 80 13            [24]  615 	sjmp	00103$
      0050AF                        616 00102$:
                                    617 ;	main.c:57: printf_tiny("\n\r"); // Print newline for better output formatting
      0050AF C0 07            [24]  618 	push	ar7
      0050B1 74 29            [12]  619 	mov	a,#___str_1
      0050B3 C0 E0            [24]  620 	push	acc
      0050B5 74 5C            [12]  621 	mov	a,#(___str_1 >> 8)
      0050B7 C0 E0            [24]  622 	push	acc
      0050B9 12 53 73         [24]  623 	lcall	_printf_tiny
      0050BC 15 81            [12]  624 	dec	sp
      0050BE 15 81            [12]  625 	dec	sp
      0050C0 D0 07            [24]  626 	pop	ar7
      0050C2                        627 00103$:
                                    628 ;	main.c:61: switch (user_input)
      0050C2 BF 61 02         [24]  629 	cjne	r7,#0x61,00140$
      0050C5 80 05            [24]  630 	sjmp	00107$
      0050C7                        631 00140$:
                                    632 ;	main.c:63: case 'a':
      0050C7 BF 62 A5         [24]  633 	cjne	r7,#0x62,00112$
      0050CA 80 05            [24]  634 	sjmp	00108$
      0050CC                        635 00107$:
                                    636 ;	main.c:65: spi_wave_generator();
      0050CC 12 51 5A         [24]  637 	lcall	_spi_wave_generator
                                    638 ;	main.c:66: break;
                                    639 ;	main.c:68: case 'b':
      0050CF 80 9E            [24]  640 	sjmp	00112$
      0050D1                        641 00108$:
                                    642 ;	main.c:69: printf_tiny("Enter the level(0-255) in hex format\n\r");
      0050D1 74 2C            [12]  643 	mov	a,#___str_2
      0050D3 C0 E0            [24]  644 	push	acc
      0050D5 74 5C            [12]  645 	mov	a,#(___str_2 >> 8)
      0050D7 C0 E0            [24]  646 	push	acc
      0050D9 12 53 73         [24]  647 	lcall	_printf_tiny
      0050DC 15 81            [12]  648 	dec	sp
      0050DE 15 81            [12]  649 	dec	sp
                                    650 ;	main.c:70: level = get_hex_value(); // Get a hexadecimal value from the user
      0050E0 12 52 16         [24]  651 	lcall	_get_hex_value
                                    652 ;	main.c:72: spi_single_value((uint8_t)level);
      0050E3 12 51 DC         [24]  653 	lcall	_spi_single_value
                                    654 ;	main.c:73: break;
                                    655 ;	main.c:78: }
                                    656 ;	main.c:80: }
      0050E6 02 50 6F         [24]  657 	ljmp	00112$
                                    658 	.area CSEG    (CODE)
                                    659 	.area CONST   (CODE)
                                    660 	.area CONST   (CODE)
      005C04                        661 ___str_0:
      005C04 50 6C 65 61 73 65 20   662 	.ascii "Please enter commands in lowercase"
             65 6E 74 65 72 20 63
             6F 6D 6D 61 6E 64 73
             20 69 6E 20 6C 6F 77
             65 72 63 61 73 65
      005C26 0A                     663 	.db 0x0a
      005C27 0D                     664 	.db 0x0d
      005C28 00                     665 	.db 0x00
                                    666 	.area CSEG    (CODE)
                                    667 	.area CONST   (CODE)
      005C29                        668 ___str_1:
      005C29 0A                     669 	.db 0x0a
      005C2A 0D                     670 	.db 0x0d
      005C2B 00                     671 	.db 0x00
                                    672 	.area CSEG    (CODE)
                                    673 	.area CONST   (CODE)
      005C2C                        674 ___str_2:
      005C2C 45 6E 74 65 72 20 74   675 	.ascii "Enter the level(0-255) in hex format"
             68 65 20 6C 65 76 65
             6C 28 30 2D 32 35 35
             29 20 69 6E 20 68 65
             78 20 66 6F 72 6D 61
             74
      005C50 0A                     676 	.db 0x0a
      005C51 0D                     677 	.db 0x0d
      005C52 00                     678 	.db 0x00
                                    679 	.area CSEG    (CODE)
                                    680 	.area XINIT   (CODE)
                                    681 	.area CABS    (ABS,CODE)
