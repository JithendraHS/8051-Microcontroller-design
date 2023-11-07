                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c_bit_bang
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _HSO_Init
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _TXD0
                                    137 	.globl _RXD0
                                    138 	.globl _BREG_F7
                                    139 	.globl _BREG_F6
                                    140 	.globl _BREG_F5
                                    141 	.globl _BREG_F4
                                    142 	.globl _BREG_F3
                                    143 	.globl _BREG_F2
                                    144 	.globl _BREG_F1
                                    145 	.globl _BREG_F0
                                    146 	.globl _EECON
                                    147 	.globl _KBF
                                    148 	.globl _KBE
                                    149 	.globl _KBLS
                                    150 	.globl _BRL
                                    151 	.globl _BDRCON
                                    152 	.globl _T2MOD
                                    153 	.globl _SPDAT
                                    154 	.globl _SPSTA
                                    155 	.globl _SPCON
                                    156 	.globl _SADEN
                                    157 	.globl _SADDR
                                    158 	.globl _WDTPRG
                                    159 	.globl _WDTRST
                                    160 	.globl _P5
                                    161 	.globl _P4
                                    162 	.globl _IPH1
                                    163 	.globl _IPL1
                                    164 	.globl _IPH0
                                    165 	.globl _IPL0
                                    166 	.globl _IEN1
                                    167 	.globl _IEN0
                                    168 	.globl _CMOD
                                    169 	.globl _CL
                                    170 	.globl _CH
                                    171 	.globl _CCON
                                    172 	.globl _CCAPM4
                                    173 	.globl _CCAPM3
                                    174 	.globl _CCAPM2
                                    175 	.globl _CCAPM1
                                    176 	.globl _CCAPM0
                                    177 	.globl _CCAP4L
                                    178 	.globl _CCAP3L
                                    179 	.globl _CCAP2L
                                    180 	.globl _CCAP1L
                                    181 	.globl _CCAP0L
                                    182 	.globl _CCAP4H
                                    183 	.globl _CCAP3H
                                    184 	.globl _CCAP2H
                                    185 	.globl _CCAP1H
                                    186 	.globl _CCAP0H
                                    187 	.globl _CKCON1
                                    188 	.globl _CKCON0
                                    189 	.globl _CKRL
                                    190 	.globl _AUXR1
                                    191 	.globl _AUXR
                                    192 	.globl _TH2
                                    193 	.globl _TL2
                                    194 	.globl _RCAP2H
                                    195 	.globl _RCAP2L
                                    196 	.globl _T2CON
                                    197 	.globl _B
                                    198 	.globl _ACC
                                    199 	.globl _PSW
                                    200 	.globl _IP
                                    201 	.globl _P3
                                    202 	.globl _IE
                                    203 	.globl _P2
                                    204 	.globl _SBUF
                                    205 	.globl _SCON
                                    206 	.globl _P1
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TMOD
                                    212 	.globl _TCON
                                    213 	.globl _PCON
                                    214 	.globl _DPH
                                    215 	.globl _DPL
                                    216 	.globl _SP
                                    217 	.globl _P0
                                    218 	.globl _SBUF0
                                    219 	.globl _DP0L
                                    220 	.globl _DP0H
                                    221 	.globl _Byte_Read_PARM_2
                                    222 	.globl _Byte_Write_PARM_3
                                    223 	.globl _Byte_Write_PARM_2
                                    224 	.globl _delay
                                    225 	.globl _Byte_Write
                                    226 	.globl _Byte_Read
                                    227 	.globl _eeprom_reset
                                    228 ;--------------------------------------------------------
                                    229 ; special function registers
                                    230 ;--------------------------------------------------------
                                    231 	.area RSEG    (ABS,DATA)
      000000                        232 	.org 0x0000
                           000083   233 _DP0H	=	0x0083
                           000082   234 _DP0L	=	0x0082
                           000099   235 _SBUF0	=	0x0099
                           000080   236 _P0	=	0x0080
                           000081   237 _SP	=	0x0081
                           000082   238 _DPL	=	0x0082
                           000083   239 _DPH	=	0x0083
                           000087   240 _PCON	=	0x0087
                           000088   241 _TCON	=	0x0088
                           000089   242 _TMOD	=	0x0089
                           00008A   243 _TL0	=	0x008a
                           00008B   244 _TL1	=	0x008b
                           00008C   245 _TH0	=	0x008c
                           00008D   246 _TH1	=	0x008d
                           000090   247 _P1	=	0x0090
                           000098   248 _SCON	=	0x0098
                           000099   249 _SBUF	=	0x0099
                           0000A0   250 _P2	=	0x00a0
                           0000A8   251 _IE	=	0x00a8
                           0000B0   252 _P3	=	0x00b0
                           0000B8   253 _IP	=	0x00b8
                           0000D0   254 _PSW	=	0x00d0
                           0000E0   255 _ACC	=	0x00e0
                           0000F0   256 _B	=	0x00f0
                           0000C8   257 _T2CON	=	0x00c8
                           0000CA   258 _RCAP2L	=	0x00ca
                           0000CB   259 _RCAP2H	=	0x00cb
                           0000CC   260 _TL2	=	0x00cc
                           0000CD   261 _TH2	=	0x00cd
                           00008E   262 _AUXR	=	0x008e
                           0000A2   263 _AUXR1	=	0x00a2
                           000097   264 _CKRL	=	0x0097
                           00008F   265 _CKCON0	=	0x008f
                           0000AF   266 _CKCON1	=	0x00af
                           0000FA   267 _CCAP0H	=	0x00fa
                           0000FB   268 _CCAP1H	=	0x00fb
                           0000FC   269 _CCAP2H	=	0x00fc
                           0000FD   270 _CCAP3H	=	0x00fd
                           0000FE   271 _CCAP4H	=	0x00fe
                           0000EA   272 _CCAP0L	=	0x00ea
                           0000EB   273 _CCAP1L	=	0x00eb
                           0000EC   274 _CCAP2L	=	0x00ec
                           0000ED   275 _CCAP3L	=	0x00ed
                           0000EE   276 _CCAP4L	=	0x00ee
                           0000DA   277 _CCAPM0	=	0x00da
                           0000DB   278 _CCAPM1	=	0x00db
                           0000DC   279 _CCAPM2	=	0x00dc
                           0000DD   280 _CCAPM3	=	0x00dd
                           0000DE   281 _CCAPM4	=	0x00de
                           0000D8   282 _CCON	=	0x00d8
                           0000F9   283 _CH	=	0x00f9
                           0000E9   284 _CL	=	0x00e9
                           0000D9   285 _CMOD	=	0x00d9
                           0000A8   286 _IEN0	=	0x00a8
                           0000B1   287 _IEN1	=	0x00b1
                           0000B8   288 _IPL0	=	0x00b8
                           0000B7   289 _IPH0	=	0x00b7
                           0000B2   290 _IPL1	=	0x00b2
                           0000B3   291 _IPH1	=	0x00b3
                           0000C0   292 _P4	=	0x00c0
                           0000E8   293 _P5	=	0x00e8
                           0000A6   294 _WDTRST	=	0x00a6
                           0000A7   295 _WDTPRG	=	0x00a7
                           0000A9   296 _SADDR	=	0x00a9
                           0000B9   297 _SADEN	=	0x00b9
                           0000C3   298 _SPCON	=	0x00c3
                           0000C4   299 _SPSTA	=	0x00c4
                           0000C5   300 _SPDAT	=	0x00c5
                           0000C9   301 _T2MOD	=	0x00c9
                           00009B   302 _BDRCON	=	0x009b
                           00009A   303 _BRL	=	0x009a
                           00009C   304 _KBLS	=	0x009c
                           00009D   305 _KBE	=	0x009d
                           00009E   306 _KBF	=	0x009e
                           0000D2   307 _EECON	=	0x00d2
                                    308 ;--------------------------------------------------------
                                    309 ; special function bits
                                    310 ;--------------------------------------------------------
                                    311 	.area RSEG    (ABS,DATA)
      000000                        312 	.org 0x0000
                           0000F0   313 _BREG_F0	=	0x00f0
                           0000F1   314 _BREG_F1	=	0x00f1
                           0000F2   315 _BREG_F2	=	0x00f2
                           0000F3   316 _BREG_F3	=	0x00f3
                           0000F4   317 _BREG_F4	=	0x00f4
                           0000F5   318 _BREG_F5	=	0x00f5
                           0000F6   319 _BREG_F6	=	0x00f6
                           0000F7   320 _BREG_F7	=	0x00f7
                           0000B0   321 _RXD0	=	0x00b0
                           0000B1   322 _TXD0	=	0x00b1
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
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable items in internal ram
                                    458 ;--------------------------------------------------------
                                    459 	.area	OSEG    (OVR,DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; indirectly addressable internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area ISEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; absolute internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area IABS    (ABS,DATA)
                                    468 	.area IABS    (ABS,DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; bit data
                                    471 ;--------------------------------------------------------
                                    472 	.area BSEG    (BIT)
                                    473 ;--------------------------------------------------------
                                    474 ; paged external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area PSEG    (PAG,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XSEG    (XDATA)
      000000                        481 _Byte_Write_PARM_2:
      000000                        482 	.ds 1
      000001                        483 _Byte_Write_PARM_3:
      000001                        484 	.ds 1
      000002                        485 _Byte_Write_data_65536_8:
      000002                        486 	.ds 1
      000003                        487 _Byte_Read_PARM_2:
      000003                        488 	.ds 1
      000004                        489 _Byte_Read_block_65536_17:
      000004                        490 	.ds 1
                                    491 ;--------------------------------------------------------
                                    492 ; absolute external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XABS    (ABS,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external initialized ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XISEG   (XDATA)
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT0 (CODE)
                                    501 	.area GSINIT1 (CODE)
                                    502 	.area GSINIT2 (CODE)
                                    503 	.area GSINIT3 (CODE)
                                    504 	.area GSINIT4 (CODE)
                                    505 	.area GSINIT5 (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area CSEG    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; global & static initialisations
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.area GSFINAL (CODE)
                                    515 	.area GSINIT  (CODE)
                                    516 ;--------------------------------------------------------
                                    517 ; Home
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
                                    520 	.area HOME    (CODE)
                                    521 ;--------------------------------------------------------
                                    522 ; code
                                    523 ;--------------------------------------------------------
                                    524 	.area CSEG    (CODE)
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'HSO_Init'
                                    527 ;------------------------------------------------------------
                                    528 ;	i2c_bit_bang.c:24: void HSO_Init()
                                    529 ;	-----------------------------------------
                                    530 ;	 function HSO_Init
                                    531 ;	-----------------------------------------
      003062                        532 _HSO_Init:
                           000007   533 	ar7 = 0x07
                           000006   534 	ar6 = 0x06
                           000005   535 	ar5 = 0x05
                           000004   536 	ar4 = 0x04
                           000003   537 	ar3 = 0x03
                           000002   538 	ar2 = 0x02
                           000001   539 	ar1 = 0x01
                           000000   540 	ar0 = 0x00
                                    541 ;	i2c_bit_bang.c:26: CMOD &= ~SET_CIDL;   // clear CIDL bit to allow PCA to run in idle mode
      003062 53 D9 7F         [24]  542 	anl	_CMOD,#0x7f
                                    543 ;	i2c_bit_bang.c:27: CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
      003065 43 D9 02         [24]  544 	orl	_CMOD,#0x02
                                    545 ;	i2c_bit_bang.c:28: CCAP0L = 0xFF; // Set low byte of CCAP1
      003068 75 EA FF         [24]  546 	mov	_CCAP0L,#0xff
                                    547 ;	i2c_bit_bang.c:29: CCAP0H = 0xFF; // Set high byte of CCAP1
      00306B 75 FA FF         [24]  548 	mov	_CCAP0H,#0xff
                                    549 ;	i2c_bit_bang.c:32: CCAPM0 |= SET_TOG;
      00306E 43 DA 04         [24]  550 	orl	_CCAPM0,#0x04
                                    551 ;	i2c_bit_bang.c:33: CCAPM0 |= SET_MATCH;
      003071 43 DA 08         [24]  552 	orl	_CCAPM0,#0x08
                                    553 ;	i2c_bit_bang.c:34: CCAPM0 |= SET_ECOM; // Enable HS for module 1 (bit ECOM1)
      003074 43 DA 40         [24]  554 	orl	_CCAPM0,#0x40
                                    555 ;	i2c_bit_bang.c:36: CR =1;  // Enable PCA counter
                                    556 ;	assignBit
      003077 D2 DE            [12]  557 	setb	_CR
                                    558 ;	i2c_bit_bang.c:37: }
      003079 22               [24]  559 	ret
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'delay'
                                    562 ;------------------------------------------------------------
                                    563 ;t                         Allocated to registers 
                                    564 ;------------------------------------------------------------
                                    565 ;	i2c_bit_bang.c:39: void delay(unsigned int t)
                                    566 ;	-----------------------------------------
                                    567 ;	 function delay
                                    568 ;	-----------------------------------------
      00307A                        569 _delay:
      00307A AE 82            [24]  570 	mov	r6,dpl
      00307C AF 83            [24]  571 	mov	r7,dph
                                    572 ;	i2c_bit_bang.c:41: while(t--){
      00307E                        573 00101$:
      00307E 8E 04            [24]  574 	mov	ar4,r6
      003080 8F 05            [24]  575 	mov	ar5,r7
      003082 1E               [12]  576 	dec	r6
      003083 BE FF 01         [24]  577 	cjne	r6,#0xff,00115$
      003086 1F               [12]  578 	dec	r7
      003087                        579 00115$:
      003087 EC               [12]  580 	mov	a,r4
      003088 4D               [12]  581 	orl	a,r5
      003089 60 03            [24]  582 	jz	00104$
                                    583 ;	i2c_bit_bang.c:42: NOP;
      00308B 00               [12]  584 	nop	
      00308C 80 F0            [24]  585 	sjmp	00101$
      00308E                        586 00104$:
                                    587 ;	i2c_bit_bang.c:44: }
      00308E 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'Byte_Write'
                                    591 ;------------------------------------------------------------
                                    592 ;byte                      Allocated to registers r7 
                                    593 ;i                         Allocated to registers r5 r6 
                                    594 ;j                         Allocated to registers r6 r7 
                                    595 ;k                         Allocated to registers r6 r7 
                                    596 ;block                     Allocated with name '_Byte_Write_PARM_2'
                                    597 ;address                   Allocated with name '_Byte_Write_PARM_3'
                                    598 ;data                      Allocated with name '_Byte_Write_data_65536_8'
                                    599 ;------------------------------------------------------------
                                    600 ;	i2c_bit_bang.c:46: void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
                                    601 ;	-----------------------------------------
                                    602 ;	 function Byte_Write
                                    603 ;	-----------------------------------------
      00308F                        604 _Byte_Write:
      00308F E5 82            [12]  605 	mov	a,dpl
      003091 90 00 02         [24]  606 	mov	dptr,#_Byte_Write_data_65536_8
      003094 F0               [24]  607 	movx	@dptr,a
                                    608 ;	i2c_bit_bang.c:47: SCL = PULSE_HIGH;
                                    609 ;	assignBit
      003095 D2 92            [12]  610 	setb	_P1_2
                                    611 ;	i2c_bit_bang.c:48: SDA = PULSE_HIGH;
                                    612 ;	assignBit
      003097 D2 93            [12]  613 	setb	_P1_3
                                    614 ;	i2c_bit_bang.c:49: delay(2);
      003099 90 00 02         [24]  615 	mov	dptr,#0x0002
      00309C 12 30 7A         [24]  616 	lcall	_delay
                                    617 ;	i2c_bit_bang.c:50: SDA = PULSE_LOW;
                                    618 ;	assignBit
      00309F C2 93            [12]  619 	clr	_P1_3
                                    620 ;	i2c_bit_bang.c:51: delay(2);
      0030A1 90 00 02         [24]  621 	mov	dptr,#0x0002
      0030A4 12 30 7A         [24]  622 	lcall	_delay
                                    623 ;	i2c_bit_bang.c:52: SCL = PULSE_LOW;
                                    624 ;	assignBit
      0030A7 C2 92            [12]  625 	clr	_P1_2
                                    626 ;	i2c_bit_bang.c:53: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      0030A9 90 00 00         [24]  627 	mov	dptr,#_Byte_Write_PARM_2
      0030AC E0               [24]  628 	movx	a,@dptr
      0030AD 25 E0            [12]  629 	add	a,acc
      0030AF FF               [12]  630 	mov	r7,a
      0030B0 43 07 A0         [24]  631 	orl	ar7,#0xa0
                                    632 ;	i2c_bit_bang.c:54: for(int i = 0; i < BYTE_LENGTH; i++){
      0030B3 7D 00            [12]  633 	mov	r5,#0x00
      0030B5 7E 00            [12]  634 	mov	r6,#0x00
      0030B7                        635 00105$:
      0030B7 C3               [12]  636 	clr	c
      0030B8 ED               [12]  637 	mov	a,r5
      0030B9 94 08            [12]  638 	subb	a,#0x08
      0030BB EE               [12]  639 	mov	a,r6
      0030BC 64 80            [12]  640 	xrl	a,#0x80
      0030BE 94 80            [12]  641 	subb	a,#0x80
      0030C0 50 3C            [24]  642 	jnc	00101$
                                    643 ;	i2c_bit_bang.c:55: SDA = byte & (0b10000000);
      0030C2 EF               [12]  644 	mov	a,r7
      0030C3 23               [12]  645 	rl	a
      0030C4 54 01            [12]  646 	anl	a,#0x01
                                    647 ;	assignBit
      0030C6 24 FF            [12]  648 	add	a,#0xff
      0030C8 92 93            [24]  649 	mov	_P1_3,c
                                    650 ;	i2c_bit_bang.c:56: SCL = PULSE_HIGH;
                                    651 ;	assignBit
      0030CA D2 92            [12]  652 	setb	_P1_2
                                    653 ;	i2c_bit_bang.c:57: delay(2);
      0030CC 90 00 02         [24]  654 	mov	dptr,#0x0002
      0030CF C0 07            [24]  655 	push	ar7
      0030D1 C0 06            [24]  656 	push	ar6
      0030D3 C0 05            [24]  657 	push	ar5
      0030D5 12 30 7A         [24]  658 	lcall	_delay
      0030D8 D0 05            [24]  659 	pop	ar5
      0030DA D0 06            [24]  660 	pop	ar6
      0030DC D0 07            [24]  661 	pop	ar7
                                    662 ;	i2c_bit_bang.c:58: SCL = PULSE_LOW;
                                    663 ;	assignBit
      0030DE C2 92            [12]  664 	clr	_P1_2
                                    665 ;	i2c_bit_bang.c:59: byte = byte << 1;
      0030E0 8F 04            [24]  666 	mov	ar4,r7
      0030E2 EC               [12]  667 	mov	a,r4
      0030E3 2C               [12]  668 	add	a,r4
      0030E4 FF               [12]  669 	mov	r7,a
                                    670 ;	i2c_bit_bang.c:60: delay(0);
      0030E5 90 00 00         [24]  671 	mov	dptr,#0x0000
      0030E8 C0 07            [24]  672 	push	ar7
      0030EA C0 06            [24]  673 	push	ar6
      0030EC C0 05            [24]  674 	push	ar5
      0030EE 12 30 7A         [24]  675 	lcall	_delay
      0030F1 D0 05            [24]  676 	pop	ar5
      0030F3 D0 06            [24]  677 	pop	ar6
      0030F5 D0 07            [24]  678 	pop	ar7
                                    679 ;	i2c_bit_bang.c:54: for(int i = 0; i < BYTE_LENGTH; i++){
      0030F7 0D               [12]  680 	inc	r5
      0030F8 BD 00 BC         [24]  681 	cjne	r5,#0x00,00105$
      0030FB 0E               [12]  682 	inc	r6
      0030FC 80 B9            [24]  683 	sjmp	00105$
      0030FE                        684 00101$:
                                    685 ;	i2c_bit_bang.c:62: SDA = PULSE_HIGH;
                                    686 ;	assignBit
      0030FE D2 93            [12]  687 	setb	_P1_3
                                    688 ;	i2c_bit_bang.c:63: SDA = PULSE_LOW;
                                    689 ;	assignBit
      003100 C2 93            [12]  690 	clr	_P1_3
                                    691 ;	i2c_bit_bang.c:64: SCL = PULSE_HIGH;
                                    692 ;	assignBit
      003102 D2 92            [12]  693 	setb	_P1_2
                                    694 ;	i2c_bit_bang.c:65: delay(2);
      003104 90 00 02         [24]  695 	mov	dptr,#0x0002
      003107 12 30 7A         [24]  696 	lcall	_delay
                                    697 ;	i2c_bit_bang.c:66: SCL = PULSE_LOW;
                                    698 ;	assignBit
      00310A C2 92            [12]  699 	clr	_P1_2
                                    700 ;	i2c_bit_bang.c:67: delay(0);
      00310C 90 00 00         [24]  701 	mov	dptr,#0x0000
      00310F 12 30 7A         [24]  702 	lcall	_delay
                                    703 ;	i2c_bit_bang.c:68: for(int j = 0; j < BYTE_LENGTH; j++){
      003112 7E 00            [12]  704 	mov	r6,#0x00
      003114 7F 00            [12]  705 	mov	r7,#0x00
      003116                        706 00108$:
      003116 C3               [12]  707 	clr	c
      003117 EE               [12]  708 	mov	a,r6
      003118 94 08            [12]  709 	subb	a,#0x08
      00311A EF               [12]  710 	mov	a,r7
      00311B 64 80            [12]  711 	xrl	a,#0x80
      00311D 94 80            [12]  712 	subb	a,#0x80
      00311F 50 35            [24]  713 	jnc	00102$
                                    714 ;	i2c_bit_bang.c:69: SDA = address & (0b10000000);
      003121 90 00 01         [24]  715 	mov	dptr,#_Byte_Write_PARM_3
      003124 E0               [24]  716 	movx	a,@dptr
      003125 FD               [12]  717 	mov	r5,a
      003126 23               [12]  718 	rl	a
      003127 54 01            [12]  719 	anl	a,#0x01
                                    720 ;	assignBit
      003129 24 FF            [12]  721 	add	a,#0xff
      00312B 92 93            [24]  722 	mov	_P1_3,c
                                    723 ;	i2c_bit_bang.c:70: SCL = PULSE_HIGH;
                                    724 ;	assignBit
      00312D D2 92            [12]  725 	setb	_P1_2
                                    726 ;	i2c_bit_bang.c:71: delay(2);
      00312F 90 00 02         [24]  727 	mov	dptr,#0x0002
      003132 C0 07            [24]  728 	push	ar7
      003134 C0 06            [24]  729 	push	ar6
      003136 C0 05            [24]  730 	push	ar5
      003138 12 30 7A         [24]  731 	lcall	_delay
      00313B D0 05            [24]  732 	pop	ar5
                                    733 ;	i2c_bit_bang.c:72: SCL = PULSE_LOW;
                                    734 ;	assignBit
      00313D C2 92            [12]  735 	clr	_P1_2
                                    736 ;	i2c_bit_bang.c:73: address = address << 1;
      00313F ED               [12]  737 	mov	a,r5
      003140 2D               [12]  738 	add	a,r5
      003141 90 00 01         [24]  739 	mov	dptr,#_Byte_Write_PARM_3
      003144 F0               [24]  740 	movx	@dptr,a
                                    741 ;	i2c_bit_bang.c:74: delay(0);
      003145 90 00 00         [24]  742 	mov	dptr,#0x0000
      003148 12 30 7A         [24]  743 	lcall	_delay
      00314B D0 06            [24]  744 	pop	ar6
      00314D D0 07            [24]  745 	pop	ar7
                                    746 ;	i2c_bit_bang.c:68: for(int j = 0; j < BYTE_LENGTH; j++){
      00314F 0E               [12]  747 	inc	r6
      003150 BE 00 C3         [24]  748 	cjne	r6,#0x00,00108$
      003153 0F               [12]  749 	inc	r7
      003154 80 C0            [24]  750 	sjmp	00108$
      003156                        751 00102$:
                                    752 ;	i2c_bit_bang.c:76: SDA = PULSE_HIGH;
                                    753 ;	assignBit
      003156 D2 93            [12]  754 	setb	_P1_3
                                    755 ;	i2c_bit_bang.c:77: SDA = PULSE_LOW;
                                    756 ;	assignBit
      003158 C2 93            [12]  757 	clr	_P1_3
                                    758 ;	i2c_bit_bang.c:78: SCL = PULSE_HIGH;
                                    759 ;	assignBit
      00315A D2 92            [12]  760 	setb	_P1_2
                                    761 ;	i2c_bit_bang.c:79: delay(2);
      00315C 90 00 02         [24]  762 	mov	dptr,#0x0002
      00315F 12 30 7A         [24]  763 	lcall	_delay
                                    764 ;	i2c_bit_bang.c:80: SCL = PULSE_LOW;
                                    765 ;	assignBit
      003162 C2 92            [12]  766 	clr	_P1_2
                                    767 ;	i2c_bit_bang.c:81: delay(0);
      003164 90 00 00         [24]  768 	mov	dptr,#0x0000
      003167 12 30 7A         [24]  769 	lcall	_delay
                                    770 ;	i2c_bit_bang.c:82: for(int k = 0; k < BYTE_LENGTH; k++){
      00316A 7E 00            [12]  771 	mov	r6,#0x00
      00316C 7F 00            [12]  772 	mov	r7,#0x00
      00316E                        773 00111$:
      00316E C3               [12]  774 	clr	c
      00316F EE               [12]  775 	mov	a,r6
      003170 94 08            [12]  776 	subb	a,#0x08
      003172 EF               [12]  777 	mov	a,r7
      003173 64 80            [12]  778 	xrl	a,#0x80
      003175 94 80            [12]  779 	subb	a,#0x80
      003177 50 35            [24]  780 	jnc	00103$
                                    781 ;	i2c_bit_bang.c:83: SDA = data & (0b10000000);
      003179 90 00 02         [24]  782 	mov	dptr,#_Byte_Write_data_65536_8
      00317C E0               [24]  783 	movx	a,@dptr
      00317D FD               [12]  784 	mov	r5,a
      00317E 23               [12]  785 	rl	a
      00317F 54 01            [12]  786 	anl	a,#0x01
                                    787 ;	assignBit
      003181 24 FF            [12]  788 	add	a,#0xff
      003183 92 93            [24]  789 	mov	_P1_3,c
                                    790 ;	i2c_bit_bang.c:84: SCL = PULSE_HIGH;
                                    791 ;	assignBit
      003185 D2 92            [12]  792 	setb	_P1_2
                                    793 ;	i2c_bit_bang.c:85: delay(2);
      003187 90 00 02         [24]  794 	mov	dptr,#0x0002
      00318A C0 07            [24]  795 	push	ar7
      00318C C0 06            [24]  796 	push	ar6
      00318E C0 05            [24]  797 	push	ar5
      003190 12 30 7A         [24]  798 	lcall	_delay
      003193 D0 05            [24]  799 	pop	ar5
                                    800 ;	i2c_bit_bang.c:86: SCL = PULSE_LOW;
                                    801 ;	assignBit
      003195 C2 92            [12]  802 	clr	_P1_2
                                    803 ;	i2c_bit_bang.c:87: data = data << 1;
      003197 ED               [12]  804 	mov	a,r5
      003198 2D               [12]  805 	add	a,r5
      003199 90 00 02         [24]  806 	mov	dptr,#_Byte_Write_data_65536_8
      00319C F0               [24]  807 	movx	@dptr,a
                                    808 ;	i2c_bit_bang.c:88: delay(0);
      00319D 90 00 00         [24]  809 	mov	dptr,#0x0000
      0031A0 12 30 7A         [24]  810 	lcall	_delay
      0031A3 D0 06            [24]  811 	pop	ar6
      0031A5 D0 07            [24]  812 	pop	ar7
                                    813 ;	i2c_bit_bang.c:82: for(int k = 0; k < BYTE_LENGTH; k++){
      0031A7 0E               [12]  814 	inc	r6
      0031A8 BE 00 C3         [24]  815 	cjne	r6,#0x00,00111$
      0031AB 0F               [12]  816 	inc	r7
      0031AC 80 C0            [24]  817 	sjmp	00111$
      0031AE                        818 00103$:
                                    819 ;	i2c_bit_bang.c:90: SDA = PULSE_HIGH;
                                    820 ;	assignBit
      0031AE D2 93            [12]  821 	setb	_P1_3
                                    822 ;	i2c_bit_bang.c:91: SDA = PULSE_LOW;
                                    823 ;	assignBit
      0031B0 C2 93            [12]  824 	clr	_P1_3
                                    825 ;	i2c_bit_bang.c:92: SCL = PULSE_HIGH;
                                    826 ;	assignBit
      0031B2 D2 92            [12]  827 	setb	_P1_2
                                    828 ;	i2c_bit_bang.c:93: delay(2);
      0031B4 90 00 02         [24]  829 	mov	dptr,#0x0002
      0031B7 12 30 7A         [24]  830 	lcall	_delay
                                    831 ;	i2c_bit_bang.c:94: SCL = PULSE_LOW;
                                    832 ;	assignBit
      0031BA C2 92            [12]  833 	clr	_P1_2
                                    834 ;	i2c_bit_bang.c:95: delay(2);
      0031BC 90 00 02         [24]  835 	mov	dptr,#0x0002
      0031BF 12 30 7A         [24]  836 	lcall	_delay
                                    837 ;	i2c_bit_bang.c:96: SCL = PULSE_HIGH;
                                    838 ;	assignBit
      0031C2 D2 92            [12]  839 	setb	_P1_2
                                    840 ;	i2c_bit_bang.c:97: SDA = PULSE_HIGH;
                                    841 ;	assignBit
      0031C4 D2 93            [12]  842 	setb	_P1_3
                                    843 ;	i2c_bit_bang.c:98: }
      0031C6 22               [24]  844 	ret
                                    845 ;------------------------------------------------------------
                                    846 ;Allocation info for local variables in function 'Byte_Read'
                                    847 ;------------------------------------------------------------
                                    848 ;byte                      Allocated to registers r4 
                                    849 ;i                         Allocated to registers r4 r5 
                                    850 ;j                         Allocated to registers r5 r6 
                                    851 ;i                         Allocated to registers r5 r6 
                                    852 ;k                         Allocated to registers r5 r6 
                                    853 ;address                   Allocated with name '_Byte_Read_PARM_2'
                                    854 ;block                     Allocated with name '_Byte_Read_block_65536_17'
                                    855 ;------------------------------------------------------------
                                    856 ;	i2c_bit_bang.c:99: __xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
                                    857 ;	-----------------------------------------
                                    858 ;	 function Byte_Read
                                    859 ;	-----------------------------------------
      0031C7                        860 _Byte_Read:
      0031C7 E5 82            [12]  861 	mov	a,dpl
      0031C9 90 00 04         [24]  862 	mov	dptr,#_Byte_Read_block_65536_17
      0031CC F0               [24]  863 	movx	@dptr,a
                                    864 ;	i2c_bit_bang.c:100: SCL = PULSE_HIGH;
                                    865 ;	assignBit
      0031CD D2 92            [12]  866 	setb	_P1_2
                                    867 ;	i2c_bit_bang.c:101: SDA = PULSE_HIGH;
                                    868 ;	assignBit
      0031CF D2 93            [12]  869 	setb	_P1_3
                                    870 ;	i2c_bit_bang.c:102: delay(2);
      0031D1 90 00 02         [24]  871 	mov	dptr,#0x0002
      0031D4 12 30 7A         [24]  872 	lcall	_delay
                                    873 ;	i2c_bit_bang.c:103: SDA = PULSE_LOW;
                                    874 ;	assignBit
      0031D7 C2 93            [12]  875 	clr	_P1_3
                                    876 ;	i2c_bit_bang.c:104: delay(2);
      0031D9 90 00 02         [24]  877 	mov	dptr,#0x0002
      0031DC 12 30 7A         [24]  878 	lcall	_delay
                                    879 ;	i2c_bit_bang.c:105: SCL = PULSE_LOW;
                                    880 ;	assignBit
      0031DF C2 92            [12]  881 	clr	_P1_2
                                    882 ;	i2c_bit_bang.c:106: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      0031E1 90 00 04         [24]  883 	mov	dptr,#_Byte_Read_block_65536_17
      0031E4 E0               [24]  884 	movx	a,@dptr
      0031E5 25 E0            [12]  885 	add	a,acc
      0031E7 FF               [12]  886 	mov	r7,a
      0031E8 74 A0            [12]  887 	mov	a,#0xa0
      0031EA 4F               [12]  888 	orl	a,r7
      0031EB FE               [12]  889 	mov	r6,a
                                    890 ;	i2c_bit_bang.c:107: for(int i = 0; i < BYTE_LENGTH; i++){
      0031EC 7C 00            [12]  891 	mov	r4,#0x00
      0031EE 7D 00            [12]  892 	mov	r5,#0x00
      0031F0                        893 00106$:
      0031F0 C3               [12]  894 	clr	c
      0031F1 EC               [12]  895 	mov	a,r4
      0031F2 94 08            [12]  896 	subb	a,#0x08
      0031F4 ED               [12]  897 	mov	a,r5
      0031F5 64 80            [12]  898 	xrl	a,#0x80
      0031F7 94 80            [12]  899 	subb	a,#0x80
      0031F9 50 40            [24]  900 	jnc	00101$
                                    901 ;	i2c_bit_bang.c:108: SDA = byte & (0b10000000);
      0031FB EE               [12]  902 	mov	a,r6
      0031FC 23               [12]  903 	rl	a
      0031FD 54 01            [12]  904 	anl	a,#0x01
                                    905 ;	assignBit
      0031FF 24 FF            [12]  906 	add	a,#0xff
      003201 92 93            [24]  907 	mov	_P1_3,c
                                    908 ;	i2c_bit_bang.c:109: SCL = PULSE_HIGH;
                                    909 ;	assignBit
      003203 D2 92            [12]  910 	setb	_P1_2
                                    911 ;	i2c_bit_bang.c:110: delay(2);
      003205 90 00 02         [24]  912 	mov	dptr,#0x0002
      003208 C0 07            [24]  913 	push	ar7
      00320A C0 06            [24]  914 	push	ar6
      00320C C0 05            [24]  915 	push	ar5
      00320E C0 04            [24]  916 	push	ar4
      003210 12 30 7A         [24]  917 	lcall	_delay
      003213 D0 04            [24]  918 	pop	ar4
      003215 D0 05            [24]  919 	pop	ar5
      003217 D0 06            [24]  920 	pop	ar6
                                    921 ;	i2c_bit_bang.c:111: SCL = PULSE_LOW;
                                    922 ;	assignBit
      003219 C2 92            [12]  923 	clr	_P1_2
                                    924 ;	i2c_bit_bang.c:112: byte = byte << 1;
      00321B 8E 03            [24]  925 	mov	ar3,r6
      00321D EB               [12]  926 	mov	a,r3
      00321E 2B               [12]  927 	add	a,r3
      00321F FE               [12]  928 	mov	r6,a
                                    929 ;	i2c_bit_bang.c:113: delay(0);
      003220 90 00 00         [24]  930 	mov	dptr,#0x0000
      003223 C0 06            [24]  931 	push	ar6
      003225 C0 05            [24]  932 	push	ar5
      003227 C0 04            [24]  933 	push	ar4
      003229 12 30 7A         [24]  934 	lcall	_delay
      00322C D0 04            [24]  935 	pop	ar4
      00322E D0 05            [24]  936 	pop	ar5
      003230 D0 06            [24]  937 	pop	ar6
      003232 D0 07            [24]  938 	pop	ar7
                                    939 ;	i2c_bit_bang.c:107: for(int i = 0; i < BYTE_LENGTH; i++){
      003234 0C               [12]  940 	inc	r4
      003235 BC 00 B8         [24]  941 	cjne	r4,#0x00,00106$
      003238 0D               [12]  942 	inc	r5
      003239 80 B5            [24]  943 	sjmp	00106$
      00323B                        944 00101$:
                                    945 ;	i2c_bit_bang.c:115: SDA = PULSE_HIGH;
                                    946 ;	assignBit
      00323B D2 93            [12]  947 	setb	_P1_3
                                    948 ;	i2c_bit_bang.c:117: SCL = PULSE_HIGH;
                                    949 ;	assignBit
      00323D D2 92            [12]  950 	setb	_P1_2
                                    951 ;	i2c_bit_bang.c:118: delay(3);
      00323F 90 00 03         [24]  952 	mov	dptr,#0x0003
      003242 C0 07            [24]  953 	push	ar7
      003244 12 30 7A         [24]  954 	lcall	_delay
                                    955 ;	i2c_bit_bang.c:119: SCL = PULSE_LOW;
                                    956 ;	assignBit
      003247 C2 92            [12]  957 	clr	_P1_2
                                    958 ;	i2c_bit_bang.c:120: delay(0);
      003249 90 00 00         [24]  959 	mov	dptr,#0x0000
      00324C 12 30 7A         [24]  960 	lcall	_delay
      00324F D0 07            [24]  961 	pop	ar7
                                    962 ;	i2c_bit_bang.c:121: for(int j = 0; j < BYTE_LENGTH; j++){
      003251 7D 00            [12]  963 	mov	r5,#0x00
      003253 7E 00            [12]  964 	mov	r6,#0x00
      003255                        965 00109$:
      003255 C3               [12]  966 	clr	c
      003256 ED               [12]  967 	mov	a,r5
      003257 94 08            [12]  968 	subb	a,#0x08
      003259 EE               [12]  969 	mov	a,r6
      00325A 64 80            [12]  970 	xrl	a,#0x80
      00325C 94 80            [12]  971 	subb	a,#0x80
      00325E 50 39            [24]  972 	jnc	00102$
                                    973 ;	i2c_bit_bang.c:122: SDA = address & (0b10000000);
      003260 90 00 03         [24]  974 	mov	dptr,#_Byte_Read_PARM_2
      003263 E0               [24]  975 	movx	a,@dptr
      003264 FC               [12]  976 	mov	r4,a
      003265 23               [12]  977 	rl	a
      003266 54 01            [12]  978 	anl	a,#0x01
                                    979 ;	assignBit
      003268 24 FF            [12]  980 	add	a,#0xff
      00326A 92 93            [24]  981 	mov	_P1_3,c
                                    982 ;	i2c_bit_bang.c:123: SCL = PULSE_HIGH;
                                    983 ;	assignBit
      00326C D2 92            [12]  984 	setb	_P1_2
                                    985 ;	i2c_bit_bang.c:124: delay(2);
      00326E 90 00 02         [24]  986 	mov	dptr,#0x0002
      003271 C0 07            [24]  987 	push	ar7
      003273 C0 06            [24]  988 	push	ar6
      003275 C0 05            [24]  989 	push	ar5
      003277 C0 04            [24]  990 	push	ar4
      003279 12 30 7A         [24]  991 	lcall	_delay
      00327C D0 04            [24]  992 	pop	ar4
                                    993 ;	i2c_bit_bang.c:125: SCL = PULSE_LOW;
                                    994 ;	assignBit
      00327E C2 92            [12]  995 	clr	_P1_2
                                    996 ;	i2c_bit_bang.c:126: address = address << 1;
      003280 EC               [12]  997 	mov	a,r4
      003281 2C               [12]  998 	add	a,r4
      003282 90 00 03         [24]  999 	mov	dptr,#_Byte_Read_PARM_2
      003285 F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	i2c_bit_bang.c:127: delay(0);
      003286 90 00 00         [24] 1002 	mov	dptr,#0x0000
      003289 12 30 7A         [24] 1003 	lcall	_delay
      00328C D0 05            [24] 1004 	pop	ar5
      00328E D0 06            [24] 1005 	pop	ar6
      003290 D0 07            [24] 1006 	pop	ar7
                                   1007 ;	i2c_bit_bang.c:121: for(int j = 0; j < BYTE_LENGTH; j++){
      003292 0D               [12] 1008 	inc	r5
      003293 BD 00 BF         [24] 1009 	cjne	r5,#0x00,00109$
      003296 0E               [12] 1010 	inc	r6
      003297 80 BC            [24] 1011 	sjmp	00109$
      003299                       1012 00102$:
                                   1013 ;	i2c_bit_bang.c:129: SDA = PULSE_HIGH;
                                   1014 ;	assignBit
      003299 D2 93            [12] 1015 	setb	_P1_3
                                   1016 ;	i2c_bit_bang.c:131: SCL = PULSE_HIGH;
                                   1017 ;	assignBit
      00329B D2 92            [12] 1018 	setb	_P1_2
                                   1019 ;	i2c_bit_bang.c:132: delay(2);
      00329D 90 00 02         [24] 1020 	mov	dptr,#0x0002
      0032A0 C0 07            [24] 1021 	push	ar7
      0032A2 12 30 7A         [24] 1022 	lcall	_delay
                                   1023 ;	i2c_bit_bang.c:133: SCL = PULSE_LOW;
                                   1024 ;	assignBit
      0032A5 C2 92            [12] 1025 	clr	_P1_2
                                   1026 ;	i2c_bit_bang.c:134: SDA = PULSE_HIGH;
                                   1027 ;	assignBit
      0032A7 D2 93            [12] 1028 	setb	_P1_3
                                   1029 ;	i2c_bit_bang.c:135: delay(2);
      0032A9 90 00 02         [24] 1030 	mov	dptr,#0x0002
      0032AC 12 30 7A         [24] 1031 	lcall	_delay
                                   1032 ;	i2c_bit_bang.c:136: SCL = PULSE_HIGH;
                                   1033 ;	assignBit
      0032AF D2 92            [12] 1034 	setb	_P1_2
                                   1035 ;	i2c_bit_bang.c:137: delay(0);
      0032B1 90 00 00         [24] 1036 	mov	dptr,#0x0000
      0032B4 12 30 7A         [24] 1037 	lcall	_delay
                                   1038 ;	i2c_bit_bang.c:138: SDA = PULSE_LOW;
                                   1039 ;	assignBit
      0032B7 C2 93            [12] 1040 	clr	_P1_3
                                   1041 ;	i2c_bit_bang.c:139: delay(2);
      0032B9 90 00 02         [24] 1042 	mov	dptr,#0x0002
      0032BC 12 30 7A         [24] 1043 	lcall	_delay
      0032BF D0 07            [24] 1044 	pop	ar7
                                   1045 ;	i2c_bit_bang.c:140: SCL = PULSE_LOW;
                                   1046 ;	assignBit
      0032C1 C2 92            [12] 1047 	clr	_P1_2
                                   1048 ;	i2c_bit_bang.c:141: byte = START_BYTE | (block << 1) | READ_BYTE;
      0032C3 43 07 A1         [24] 1049 	orl	ar7,#0xa1
                                   1050 ;	i2c_bit_bang.c:142: for(int i = 0; i < BYTE_LENGTH; i++){
      0032C6 7D 00            [12] 1051 	mov	r5,#0x00
      0032C8 7E 00            [12] 1052 	mov	r6,#0x00
      0032CA                       1053 00112$:
      0032CA C3               [12] 1054 	clr	c
      0032CB ED               [12] 1055 	mov	a,r5
      0032CC 94 08            [12] 1056 	subb	a,#0x08
      0032CE EE               [12] 1057 	mov	a,r6
      0032CF 64 80            [12] 1058 	xrl	a,#0x80
      0032D1 94 80            [12] 1059 	subb	a,#0x80
      0032D3 50 3C            [24] 1060 	jnc	00103$
                                   1061 ;	i2c_bit_bang.c:143: SDA = byte & (0b10000000);
      0032D5 EF               [12] 1062 	mov	a,r7
      0032D6 23               [12] 1063 	rl	a
      0032D7 54 01            [12] 1064 	anl	a,#0x01
                                   1065 ;	assignBit
      0032D9 24 FF            [12] 1066 	add	a,#0xff
      0032DB 92 93            [24] 1067 	mov	_P1_3,c
                                   1068 ;	i2c_bit_bang.c:144: SCL = PULSE_HIGH;
                                   1069 ;	assignBit
      0032DD D2 92            [12] 1070 	setb	_P1_2
                                   1071 ;	i2c_bit_bang.c:145: delay(2);
      0032DF 90 00 02         [24] 1072 	mov	dptr,#0x0002
      0032E2 C0 07            [24] 1073 	push	ar7
      0032E4 C0 06            [24] 1074 	push	ar6
      0032E6 C0 05            [24] 1075 	push	ar5
      0032E8 12 30 7A         [24] 1076 	lcall	_delay
      0032EB D0 05            [24] 1077 	pop	ar5
      0032ED D0 06            [24] 1078 	pop	ar6
      0032EF D0 07            [24] 1079 	pop	ar7
                                   1080 ;	i2c_bit_bang.c:146: SCL = PULSE_LOW;
                                   1081 ;	assignBit
      0032F1 C2 92            [12] 1082 	clr	_P1_2
                                   1083 ;	i2c_bit_bang.c:147: byte = byte << 1;
      0032F3 8F 04            [24] 1084 	mov	ar4,r7
      0032F5 EC               [12] 1085 	mov	a,r4
      0032F6 2C               [12] 1086 	add	a,r4
      0032F7 FF               [12] 1087 	mov	r7,a
                                   1088 ;	i2c_bit_bang.c:148: delay(0);
      0032F8 90 00 00         [24] 1089 	mov	dptr,#0x0000
      0032FB C0 07            [24] 1090 	push	ar7
      0032FD C0 06            [24] 1091 	push	ar6
      0032FF C0 05            [24] 1092 	push	ar5
      003301 12 30 7A         [24] 1093 	lcall	_delay
      003304 D0 05            [24] 1094 	pop	ar5
      003306 D0 06            [24] 1095 	pop	ar6
      003308 D0 07            [24] 1096 	pop	ar7
                                   1097 ;	i2c_bit_bang.c:142: for(int i = 0; i < BYTE_LENGTH; i++){
      00330A 0D               [12] 1098 	inc	r5
      00330B BD 00 BC         [24] 1099 	cjne	r5,#0x00,00112$
      00330E 0E               [12] 1100 	inc	r6
      00330F 80 B9            [24] 1101 	sjmp	00112$
      003311                       1102 00103$:
                                   1103 ;	i2c_bit_bang.c:150: SDA = PULSE_HIGH;
                                   1104 ;	assignBit
      003311 D2 93            [12] 1105 	setb	_P1_3
                                   1106 ;	i2c_bit_bang.c:151: delay(2);
      003313 90 00 02         [24] 1107 	mov	dptr,#0x0002
      003316 12 30 7A         [24] 1108 	lcall	_delay
                                   1109 ;	i2c_bit_bang.c:153: SCL = PULSE_HIGH;
                                   1110 ;	assignBit
      003319 D2 92            [12] 1111 	setb	_P1_2
                                   1112 ;	i2c_bit_bang.c:154: delay(2);
      00331B 90 00 02         [24] 1113 	mov	dptr,#0x0002
      00331E 12 30 7A         [24] 1114 	lcall	_delay
                                   1115 ;	i2c_bit_bang.c:155: SCL = PULSE_LOW;
                                   1116 ;	assignBit
      003321 C2 92            [12] 1117 	clr	_P1_2
                                   1118 ;	i2c_bit_bang.c:156: delay(2);
      003323 90 00 02         [24] 1119 	mov	dptr,#0x0002
      003326 12 30 7A         [24] 1120 	lcall	_delay
                                   1121 ;	i2c_bit_bang.c:157: byte = 0;
      003329 7F 00            [12] 1122 	mov	r7,#0x00
                                   1123 ;	i2c_bit_bang.c:158: for(int k = 0; k < BYTE_LENGTH; k++){
      00332B 7D 00            [12] 1124 	mov	r5,#0x00
      00332D 7E 00            [12] 1125 	mov	r6,#0x00
      00332F                       1126 00115$:
      00332F C3               [12] 1127 	clr	c
      003330 ED               [12] 1128 	mov	a,r5
      003331 94 08            [12] 1129 	subb	a,#0x08
      003333 EE               [12] 1130 	mov	a,r6
      003334 64 80            [12] 1131 	xrl	a,#0x80
      003336 94 80            [12] 1132 	subb	a,#0x80
      003338 50 3A            [24] 1133 	jnc	00104$
                                   1134 ;	i2c_bit_bang.c:159: byte = byte << 1;
      00333A 8F 04            [24] 1135 	mov	ar4,r7
      00333C EC               [12] 1136 	mov	a,r4
      00333D 2C               [12] 1137 	add	a,r4
      00333E FC               [12] 1138 	mov	r4,a
                                   1139 ;	i2c_bit_bang.c:160: SCL = PULSE_HIGH;
                                   1140 ;	assignBit
      00333F D2 92            [12] 1141 	setb	_P1_2
                                   1142 ;	i2c_bit_bang.c:161: delay(2);
      003341 90 00 02         [24] 1143 	mov	dptr,#0x0002
      003344 C0 06            [24] 1144 	push	ar6
      003346 C0 05            [24] 1145 	push	ar5
      003348 C0 04            [24] 1146 	push	ar4
      00334A 12 30 7A         [24] 1147 	lcall	_delay
      00334D D0 04            [24] 1148 	pop	ar4
      00334F D0 05            [24] 1149 	pop	ar5
      003351 D0 06            [24] 1150 	pop	ar6
                                   1151 ;	i2c_bit_bang.c:162: byte |= SDA;
      003353 A2 93            [12] 1152 	mov	c,_P1_3
      003355 E4               [12] 1153 	clr	a
      003356 33               [12] 1154 	rlc	a
      003357 4C               [12] 1155 	orl	a,r4
      003358 FF               [12] 1156 	mov	r7,a
                                   1157 ;	i2c_bit_bang.c:163: SCL = PULSE_LOW;
                                   1158 ;	assignBit
      003359 C2 92            [12] 1159 	clr	_P1_2
                                   1160 ;	i2c_bit_bang.c:164: delay(1);
      00335B 90 00 01         [24] 1161 	mov	dptr,#0x0001
      00335E C0 07            [24] 1162 	push	ar7
      003360 C0 06            [24] 1163 	push	ar6
      003362 C0 05            [24] 1164 	push	ar5
      003364 12 30 7A         [24] 1165 	lcall	_delay
      003367 D0 05            [24] 1166 	pop	ar5
      003369 D0 06            [24] 1167 	pop	ar6
      00336B D0 07            [24] 1168 	pop	ar7
                                   1169 ;	i2c_bit_bang.c:158: for(int k = 0; k < BYTE_LENGTH; k++){
      00336D 0D               [12] 1170 	inc	r5
      00336E BD 00 BE         [24] 1171 	cjne	r5,#0x00,00115$
      003371 0E               [12] 1172 	inc	r6
      003372 80 BB            [24] 1173 	sjmp	00115$
      003374                       1174 00104$:
                                   1175 ;	i2c_bit_bang.c:166: SDA = PULSE_HIGH;
                                   1176 ;	assignBit
      003374 D2 93            [12] 1177 	setb	_P1_3
                                   1178 ;	i2c_bit_bang.c:167: delay(2);
      003376 90 00 02         [24] 1179 	mov	dptr,#0x0002
      003379 C0 07            [24] 1180 	push	ar7
      00337B 12 30 7A         [24] 1181 	lcall	_delay
                                   1182 ;	i2c_bit_bang.c:168: SCL = PULSE_HIGH;
                                   1183 ;	assignBit
      00337E D2 92            [12] 1184 	setb	_P1_2
                                   1185 ;	i2c_bit_bang.c:169: delay(2);
      003380 90 00 02         [24] 1186 	mov	dptr,#0x0002
      003383 12 30 7A         [24] 1187 	lcall	_delay
                                   1188 ;	i2c_bit_bang.c:170: SCL = PULSE_LOW;
                                   1189 ;	assignBit
      003386 C2 92            [12] 1190 	clr	_P1_2
                                   1191 ;	i2c_bit_bang.c:171: SDA = PULSE_LOW;
                                   1192 ;	assignBit
      003388 C2 93            [12] 1193 	clr	_P1_3
                                   1194 ;	i2c_bit_bang.c:172: delay(2);
      00338A 90 00 02         [24] 1195 	mov	dptr,#0x0002
      00338D 12 30 7A         [24] 1196 	lcall	_delay
                                   1197 ;	i2c_bit_bang.c:173: SCL = PULSE_HIGH;
                                   1198 ;	assignBit
      003390 D2 92            [12] 1199 	setb	_P1_2
                                   1200 ;	i2c_bit_bang.c:174: delay(2);
      003392 90 00 02         [24] 1201 	mov	dptr,#0x0002
      003395 12 30 7A         [24] 1202 	lcall	_delay
                                   1203 ;	i2c_bit_bang.c:175: SDA = PULSE_HIGH;
                                   1204 ;	assignBit
      003398 D2 93            [12] 1205 	setb	_P1_3
                                   1206 ;	i2c_bit_bang.c:176: delay(2);
      00339A 90 00 02         [24] 1207 	mov	dptr,#0x0002
      00339D 12 30 7A         [24] 1208 	lcall	_delay
                                   1209 ;	i2c_bit_bang.c:177: SCL = PULSE_LOW;
                                   1210 ;	assignBit
      0033A0 C2 92            [12] 1211 	clr	_P1_2
                                   1212 ;	i2c_bit_bang.c:178: delay(2);
      0033A2 90 00 02         [24] 1213 	mov	dptr,#0x0002
      0033A5 12 30 7A         [24] 1214 	lcall	_delay
      0033A8 D0 07            [24] 1215 	pop	ar7
                                   1216 ;	i2c_bit_bang.c:179: return byte;
      0033AA 8F 82            [24] 1217 	mov	dpl,r7
                                   1218 ;	i2c_bit_bang.c:180: }
      0033AC 22               [24] 1219 	ret
                                   1220 ;------------------------------------------------------------
                                   1221 ;Allocation info for local variables in function 'eeprom_reset'
                                   1222 ;------------------------------------------------------------
                                   1223 ;i                         Allocated to registers r6 r7 
                                   1224 ;------------------------------------------------------------
                                   1225 ;	i2c_bit_bang.c:182: void eeprom_reset(){
                                   1226 ;	-----------------------------------------
                                   1227 ;	 function eeprom_reset
                                   1228 ;	-----------------------------------------
      0033AD                       1229 _eeprom_reset:
                                   1230 ;	i2c_bit_bang.c:183: SCL = PULSE_HIGH;
                                   1231 ;	assignBit
      0033AD D2 92            [12] 1232 	setb	_P1_2
                                   1233 ;	i2c_bit_bang.c:184: SDA = PULSE_HIGH;
                                   1234 ;	assignBit
      0033AF D2 93            [12] 1235 	setb	_P1_3
                                   1236 ;	i2c_bit_bang.c:185: delay(2);
      0033B1 90 00 02         [24] 1237 	mov	dptr,#0x0002
      0033B4 12 30 7A         [24] 1238 	lcall	_delay
                                   1239 ;	i2c_bit_bang.c:186: SDA = PULSE_LOW;
                                   1240 ;	assignBit
      0033B7 C2 93            [12] 1241 	clr	_P1_3
                                   1242 ;	i2c_bit_bang.c:187: delay(0);
      0033B9 90 00 00         [24] 1243 	mov	dptr,#0x0000
      0033BC 12 30 7A         [24] 1244 	lcall	_delay
                                   1245 ;	i2c_bit_bang.c:188: SCL = PULSE_LOW;
                                   1246 ;	assignBit
      0033BF C2 92            [12] 1247 	clr	_P1_2
                                   1248 ;	i2c_bit_bang.c:189: delay(0);
      0033C1 90 00 00         [24] 1249 	mov	dptr,#0x0000
      0033C4 12 30 7A         [24] 1250 	lcall	_delay
                                   1251 ;	i2c_bit_bang.c:190: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
      0033C7 7E 00            [12] 1252 	mov	r6,#0x00
      0033C9 7F 00            [12] 1253 	mov	r7,#0x00
      0033CB                       1254 00103$:
      0033CB C3               [12] 1255 	clr	c
      0033CC EE               [12] 1256 	mov	a,r6
      0033CD 94 09            [12] 1257 	subb	a,#0x09
      0033CF EF               [12] 1258 	mov	a,r7
      0033D0 64 80            [12] 1259 	xrl	a,#0x80
      0033D2 94 80            [12] 1260 	subb	a,#0x80
      0033D4 50 21            [24] 1261 	jnc	00101$
                                   1262 ;	i2c_bit_bang.c:191: SDA = PULSE_HIGH;
                                   1263 ;	assignBit
      0033D6 D2 93            [12] 1264 	setb	_P1_3
                                   1265 ;	i2c_bit_bang.c:192: SCL = PULSE_HIGH;
                                   1266 ;	assignBit
      0033D8 D2 92            [12] 1267 	setb	_P1_2
                                   1268 ;	i2c_bit_bang.c:193: delay(2);
      0033DA 90 00 02         [24] 1269 	mov	dptr,#0x0002
      0033DD C0 07            [24] 1270 	push	ar7
      0033DF C0 06            [24] 1271 	push	ar6
      0033E1 12 30 7A         [24] 1272 	lcall	_delay
                                   1273 ;	i2c_bit_bang.c:194: SCL = PULSE_LOW;
                                   1274 ;	assignBit
      0033E4 C2 92            [12] 1275 	clr	_P1_2
                                   1276 ;	i2c_bit_bang.c:195: delay(1);
      0033E6 90 00 01         [24] 1277 	mov	dptr,#0x0001
      0033E9 12 30 7A         [24] 1278 	lcall	_delay
      0033EC D0 06            [24] 1279 	pop	ar6
      0033EE D0 07            [24] 1280 	pop	ar7
                                   1281 ;	i2c_bit_bang.c:190: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
      0033F0 0E               [12] 1282 	inc	r6
      0033F1 BE 00 D7         [24] 1283 	cjne	r6,#0x00,00103$
      0033F4 0F               [12] 1284 	inc	r7
      0033F5 80 D4            [24] 1285 	sjmp	00103$
      0033F7                       1286 00101$:
                                   1287 ;	i2c_bit_bang.c:197: SCL = PULSE_HIGH;
                                   1288 ;	assignBit
      0033F7 D2 92            [12] 1289 	setb	_P1_2
                                   1290 ;	i2c_bit_bang.c:198: delay(0);
      0033F9 90 00 00         [24] 1291 	mov	dptr,#0x0000
      0033FC 12 30 7A         [24] 1292 	lcall	_delay
                                   1293 ;	i2c_bit_bang.c:199: SDA = PULSE_LOW;
                                   1294 ;	assignBit
      0033FF C2 93            [12] 1295 	clr	_P1_3
                                   1296 ;	i2c_bit_bang.c:200: delay(0);
      003401 90 00 00         [24] 1297 	mov	dptr,#0x0000
      003404 12 30 7A         [24] 1298 	lcall	_delay
                                   1299 ;	i2c_bit_bang.c:201: SCL = PULSE_LOW;
                                   1300 ;	assignBit
      003407 C2 92            [12] 1301 	clr	_P1_2
                                   1302 ;	i2c_bit_bang.c:202: SDA = PULSE_LOW;
                                   1303 ;	assignBit
      003409 C2 93            [12] 1304 	clr	_P1_3
                                   1305 ;	i2c_bit_bang.c:203: delay(1);
      00340B 90 00 01         [24] 1306 	mov	dptr,#0x0001
      00340E 12 30 7A         [24] 1307 	lcall	_delay
                                   1308 ;	i2c_bit_bang.c:204: SCL = PULSE_HIGH;
                                   1309 ;	assignBit
      003411 D2 92            [12] 1310 	setb	_P1_2
                                   1311 ;	i2c_bit_bang.c:205: delay(0);
      003413 90 00 00         [24] 1312 	mov	dptr,#0x0000
      003416 12 30 7A         [24] 1313 	lcall	_delay
                                   1314 ;	i2c_bit_bang.c:206: SDA = PULSE_HIGH;
                                   1315 ;	assignBit
      003419 D2 93            [12] 1316 	setb	_P1_3
                                   1317 ;	i2c_bit_bang.c:207: delay(0);
      00341B 90 00 00         [24] 1318 	mov	dptr,#0x0000
      00341E 12 30 7A         [24] 1319 	lcall	_delay
                                   1320 ;	i2c_bit_bang.c:208: SCL = PULSE_LOW;
                                   1321 ;	assignBit
      003421 C2 92            [12] 1322 	clr	_P1_2
                                   1323 ;	i2c_bit_bang.c:209: }
      003423 22               [24] 1324 	ret
                                   1325 	.area CSEG    (CODE)
                                   1326 	.area CONST   (CODE)
                                   1327 	.area XINIT   (CODE)
                                   1328 	.area CABS    (ABS,CODE)
