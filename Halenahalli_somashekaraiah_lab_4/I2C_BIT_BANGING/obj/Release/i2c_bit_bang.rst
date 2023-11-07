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
                                     11 	.globl _sendByte
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
                                    221 	.globl _Byte_Read_Sequential_PARM_3
                                    222 	.globl _Byte_Read_Sequential_PARM_2
                                    223 	.globl _Byte_Read_PARM_2
                                    224 	.globl _Byte_Write_PARM_3
                                    225 	.globl _Byte_Write_PARM_2
                                    226 	.globl _delay
                                    227 	.globl _Byte_Write
                                    228 	.globl _Byte_Read
                                    229 	.globl _Byte_Read_Sequential
                                    230 	.globl _eeprom_reset
                                    231 ;--------------------------------------------------------
                                    232 ; special function registers
                                    233 ;--------------------------------------------------------
                                    234 	.area RSEG    (ABS,DATA)
      000000                        235 	.org 0x0000
                           000083   236 _DP0H	=	0x0083
                           000082   237 _DP0L	=	0x0082
                           000099   238 _SBUF0	=	0x0099
                           000080   239 _P0	=	0x0080
                           000081   240 _SP	=	0x0081
                           000082   241 _DPL	=	0x0082
                           000083   242 _DPH	=	0x0083
                           000087   243 _PCON	=	0x0087
                           000088   244 _TCON	=	0x0088
                           000089   245 _TMOD	=	0x0089
                           00008A   246 _TL0	=	0x008a
                           00008B   247 _TL1	=	0x008b
                           00008C   248 _TH0	=	0x008c
                           00008D   249 _TH1	=	0x008d
                           000090   250 _P1	=	0x0090
                           000098   251 _SCON	=	0x0098
                           000099   252 _SBUF	=	0x0099
                           0000A0   253 _P2	=	0x00a0
                           0000A8   254 _IE	=	0x00a8
                           0000B0   255 _P3	=	0x00b0
                           0000B8   256 _IP	=	0x00b8
                           0000D0   257 _PSW	=	0x00d0
                           0000E0   258 _ACC	=	0x00e0
                           0000F0   259 _B	=	0x00f0
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
                                    311 ;--------------------------------------------------------
                                    312 ; special function bits
                                    313 ;--------------------------------------------------------
                                    314 	.area RSEG    (ABS,DATA)
      000000                        315 	.org 0x0000
                           0000F0   316 _BREG_F0	=	0x00f0
                           0000F1   317 _BREG_F1	=	0x00f1
                           0000F2   318 _BREG_F2	=	0x00f2
                           0000F3   319 _BREG_F3	=	0x00f3
                           0000F4   320 _BREG_F4	=	0x00f4
                           0000F5   321 _BREG_F5	=	0x00f5
                           0000F6   322 _BREG_F6	=	0x00f6
                           0000F7   323 _BREG_F7	=	0x00f7
                           0000B0   324 _RXD0	=	0x00b0
                           0000B1   325 _TXD0	=	0x00b1
                           000080   326 _P0_0	=	0x0080
                           000081   327 _P0_1	=	0x0081
                           000082   328 _P0_2	=	0x0082
                           000083   329 _P0_3	=	0x0083
                           000084   330 _P0_4	=	0x0084
                           000085   331 _P0_5	=	0x0085
                           000086   332 _P0_6	=	0x0086
                           000087   333 _P0_7	=	0x0087
                           000088   334 _IT0	=	0x0088
                           000089   335 _IE0	=	0x0089
                           00008A   336 _IT1	=	0x008a
                           00008B   337 _IE1	=	0x008b
                           00008C   338 _TR0	=	0x008c
                           00008D   339 _TF0	=	0x008d
                           00008E   340 _TR1	=	0x008e
                           00008F   341 _TF1	=	0x008f
                           000090   342 _P1_0	=	0x0090
                           000091   343 _P1_1	=	0x0091
                           000092   344 _P1_2	=	0x0092
                           000093   345 _P1_3	=	0x0093
                           000094   346 _P1_4	=	0x0094
                           000095   347 _P1_5	=	0x0095
                           000096   348 _P1_6	=	0x0096
                           000097   349 _P1_7	=	0x0097
                           000098   350 _RI	=	0x0098
                           000099   351 _TI	=	0x0099
                           00009A   352 _RB8	=	0x009a
                           00009B   353 _TB8	=	0x009b
                           00009C   354 _REN	=	0x009c
                           00009D   355 _SM2	=	0x009d
                           00009E   356 _SM1	=	0x009e
                           00009F   357 _SM0	=	0x009f
                           0000A0   358 _P2_0	=	0x00a0
                           0000A1   359 _P2_1	=	0x00a1
                           0000A2   360 _P2_2	=	0x00a2
                           0000A3   361 _P2_3	=	0x00a3
                           0000A4   362 _P2_4	=	0x00a4
                           0000A5   363 _P2_5	=	0x00a5
                           0000A6   364 _P2_6	=	0x00a6
                           0000A7   365 _P2_7	=	0x00a7
                           0000A8   366 _EX0	=	0x00a8
                           0000A9   367 _ET0	=	0x00a9
                           0000AA   368 _EX1	=	0x00aa
                           0000AB   369 _ET1	=	0x00ab
                           0000AC   370 _ES	=	0x00ac
                           0000AF   371 _EA	=	0x00af
                           0000B0   372 _P3_0	=	0x00b0
                           0000B1   373 _P3_1	=	0x00b1
                           0000B2   374 _P3_2	=	0x00b2
                           0000B3   375 _P3_3	=	0x00b3
                           0000B4   376 _P3_4	=	0x00b4
                           0000B5   377 _P3_5	=	0x00b5
                           0000B6   378 _P3_6	=	0x00b6
                           0000B7   379 _P3_7	=	0x00b7
                           0000B0   380 _RXD	=	0x00b0
                           0000B1   381 _TXD	=	0x00b1
                           0000B2   382 _INT0	=	0x00b2
                           0000B3   383 _INT1	=	0x00b3
                           0000B4   384 _T0	=	0x00b4
                           0000B5   385 _T1	=	0x00b5
                           0000B6   386 _WR	=	0x00b6
                           0000B7   387 _RD	=	0x00b7
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           0000D0   393 _P	=	0x00d0
                           0000D1   394 _F1	=	0x00d1
                           0000D2   395 _OV	=	0x00d2
                           0000D3   396 _RS0	=	0x00d3
                           0000D4   397 _RS1	=	0x00d4
                           0000D5   398 _F0	=	0x00d5
                           0000D6   399 _AC	=	0x00d6
                           0000D7   400 _CY	=	0x00d7
                           0000AD   401 _ET2	=	0x00ad
                           0000BD   402 _PT2	=	0x00bd
                           0000C8   403 _T2CON_0	=	0x00c8
                           0000C9   404 _T2CON_1	=	0x00c9
                           0000CA   405 _T2CON_2	=	0x00ca
                           0000CB   406 _T2CON_3	=	0x00cb
                           0000CC   407 _T2CON_4	=	0x00cc
                           0000CD   408 _T2CON_5	=	0x00cd
                           0000CE   409 _T2CON_6	=	0x00ce
                           0000CF   410 _T2CON_7	=	0x00cf
                           0000C8   411 _CP_RL2	=	0x00c8
                           0000C9   412 _C_T2	=	0x00c9
                           0000CA   413 _TR2	=	0x00ca
                           0000CB   414 _EXEN2	=	0x00cb
                           0000CC   415 _TCLK	=	0x00cc
                           0000CD   416 _RCLK	=	0x00cd
                           0000CE   417 _EXF2	=	0x00ce
                           0000CF   418 _TF2	=	0x00cf
                           0000DF   419 _CF	=	0x00df
                           0000DE   420 _CR	=	0x00de
                           0000DC   421 _CCF4	=	0x00dc
                           0000DB   422 _CCF3	=	0x00db
                           0000DA   423 _CCF2	=	0x00da
                           0000D9   424 _CCF1	=	0x00d9
                           0000D8   425 _CCF0	=	0x00d8
                           0000AE   426 _EC	=	0x00ae
                           0000BE   427 _PPCL	=	0x00be
                           0000BD   428 _PT2L	=	0x00bd
                           0000BC   429 _PSL	=	0x00bc
                           0000BB   430 _PT1L	=	0x00bb
                           0000BA   431 _PX1L	=	0x00ba
                           0000B9   432 _PT0L	=	0x00b9
                           0000B8   433 _PX0L	=	0x00b8
                           0000C0   434 _P4_0	=	0x00c0
                           0000C1   435 _P4_1	=	0x00c1
                           0000C2   436 _P4_2	=	0x00c2
                           0000C3   437 _P4_3	=	0x00c3
                           0000C4   438 _P4_4	=	0x00c4
                           0000C5   439 _P4_5	=	0x00c5
                           0000C6   440 _P4_6	=	0x00c6
                           0000C7   441 _P4_7	=	0x00c7
                           0000E8   442 _P5_0	=	0x00e8
                           0000E9   443 _P5_1	=	0x00e9
                           0000EA   444 _P5_2	=	0x00ea
                           0000EB   445 _P5_3	=	0x00eb
                           0000EC   446 _P5_4	=	0x00ec
                           0000ED   447 _P5_5	=	0x00ed
                           0000EE   448 _P5_6	=	0x00ee
                           0000EF   449 _P5_7	=	0x00ef
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable register banks
                                    452 ;--------------------------------------------------------
                                    453 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        454 	.ds 8
                                    455 ;--------------------------------------------------------
                                    456 ; internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area DSEG    (DATA)
      000008                        459 _Byte_Read_Sequential_l_131073_23:
      000008                        460 	.ds 2
      00000A                        461 _Byte_Read_Sequential_k_262145_25:
      00000A                        462 	.ds 2
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable items in internal ram
                                    465 ;--------------------------------------------------------
                                    466 	.area	OSEG    (OVR,DATA)
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
      000001                        488 _Byte_Write_PARM_2:
      000001                        489 	.ds 1
      000002                        490 _Byte_Write_PARM_3:
      000002                        491 	.ds 1
      000003                        492 _Byte_Write_data_65536_12:
      000003                        493 	.ds 1
      000004                        494 _Byte_Read_PARM_2:
      000004                        495 	.ds 1
      000005                        496 _Byte_Read_block_65536_15:
      000005                        497 	.ds 1
      000006                        498 _Byte_Read_Sequential_PARM_2:
      000006                        499 	.ds 1
      000007                        500 _Byte_Read_Sequential_PARM_3:
      000007                        501 	.ds 1
      000008                        502 _Byte_Read_Sequential_block_65536_20:
      000008                        503 	.ds 1
      000009                        504 _Byte_Read_Sequential_buffer_65536_21:
      000009                        505 	.ds 256
                                    506 ;--------------------------------------------------------
                                    507 ; absolute external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XABS    (ABS,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; external initialized ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XISEG   (XDATA)
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
                                    531 ;--------------------------------------------------------
                                    532 ; Home
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area HOME    (CODE)
                                    536 ;--------------------------------------------------------
                                    537 ; code
                                    538 ;--------------------------------------------------------
                                    539 	.area CSEG    (CODE)
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'delay'
                                    542 ;------------------------------------------------------------
                                    543 ;t                         Allocated to registers 
                                    544 ;------------------------------------------------------------
                                    545 ;	i2c_bit_bang.c:23: void delay(unsigned int t)
                                    546 ;	-----------------------------------------
                                    547 ;	 function delay
                                    548 ;	-----------------------------------------
      0033CC                        549 _delay:
                           000007   550 	ar7 = 0x07
                           000006   551 	ar6 = 0x06
                           000005   552 	ar5 = 0x05
                           000004   553 	ar4 = 0x04
                           000003   554 	ar3 = 0x03
                           000002   555 	ar2 = 0x02
                           000001   556 	ar1 = 0x01
                           000000   557 	ar0 = 0x00
      0033CC AE 82            [24]  558 	mov	r6,dpl
      0033CE AF 83            [24]  559 	mov	r7,dph
                                    560 ;	i2c_bit_bang.c:25: while(t--){
      0033D0                        561 00101$:
      0033D0 8E 04            [24]  562 	mov	ar4,r6
      0033D2 8F 05            [24]  563 	mov	ar5,r7
      0033D4 1E               [12]  564 	dec	r6
      0033D5 BE FF 01         [24]  565 	cjne	r6,#0xff,00115$
      0033D8 1F               [12]  566 	dec	r7
      0033D9                        567 00115$:
      0033D9 EC               [12]  568 	mov	a,r4
      0033DA 4D               [12]  569 	orl	a,r5
      0033DB 60 03            [24]  570 	jz	00104$
                                    571 ;	i2c_bit_bang.c:26: NOP;  // Assembly NOP instruction for delaying program execution.
      0033DD 00               [12]  572 	nop	
      0033DE 80 F0            [24]  573 	sjmp	00101$
      0033E0                        574 00104$:
                                    575 ;	i2c_bit_bang.c:28: }
      0033E0 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'sendByte'
                                    579 ;------------------------------------------------------------
                                    580 ;byte                      Allocated to registers r7 
                                    581 ;i                         Allocated to registers r5 r6 
                                    582 ;------------------------------------------------------------
                                    583 ;	i2c_bit_bang.c:34: void sendByte(uint8_t byte) {
                                    584 ;	-----------------------------------------
                                    585 ;	 function sendByte
                                    586 ;	-----------------------------------------
      0033E1                        587 _sendByte:
      0033E1 AF 82            [24]  588 	mov	r7,dpl
                                    589 ;	i2c_bit_bang.c:35: for(int i = 0; i < BYTE_LENGTH; i++){
      0033E3 7D 00            [12]  590 	mov	r5,#0x00
      0033E5 7E 00            [12]  591 	mov	r6,#0x00
      0033E7                        592 00103$:
      0033E7 C3               [12]  593 	clr	c
      0033E8 ED               [12]  594 	mov	a,r5
      0033E9 94 08            [12]  595 	subb	a,#0x08
      0033EB EE               [12]  596 	mov	a,r6
      0033EC 64 80            [12]  597 	xrl	a,#0x80
      0033EE 94 80            [12]  598 	subb	a,#0x80
      0033F0 50 3C            [24]  599 	jnc	00105$
                                    600 ;	i2c_bit_bang.c:36: SDA = byte & (0b10000000);
      0033F2 EF               [12]  601 	mov	a,r7
      0033F3 23               [12]  602 	rl	a
      0033F4 54 01            [12]  603 	anl	a,#0x01
                                    604 ;	assignBit
      0033F6 24 FF            [12]  605 	add	a,#0xff
      0033F8 92 93            [24]  606 	mov	_P1_3,c
                                    607 ;	i2c_bit_bang.c:37: SCL = PULSE_HIGH;
                                    608 ;	assignBit
      0033FA D2 92            [12]  609 	setb	_P1_2
                                    610 ;	i2c_bit_bang.c:38: delay(2);
      0033FC 90 00 02         [24]  611 	mov	dptr,#0x0002
      0033FF C0 07            [24]  612 	push	ar7
      003401 C0 06            [24]  613 	push	ar6
      003403 C0 05            [24]  614 	push	ar5
      003405 12 33 CC         [24]  615 	lcall	_delay
      003408 D0 05            [24]  616 	pop	ar5
      00340A D0 06            [24]  617 	pop	ar6
      00340C D0 07            [24]  618 	pop	ar7
                                    619 ;	i2c_bit_bang.c:39: SCL = PULSE_LOW;
                                    620 ;	assignBit
      00340E C2 92            [12]  621 	clr	_P1_2
                                    622 ;	i2c_bit_bang.c:40: byte = byte << 1;
      003410 8F 04            [24]  623 	mov	ar4,r7
      003412 EC               [12]  624 	mov	a,r4
      003413 2C               [12]  625 	add	a,r4
      003414 FF               [12]  626 	mov	r7,a
                                    627 ;	i2c_bit_bang.c:41: delay(0);
      003415 90 00 00         [24]  628 	mov	dptr,#0x0000
      003418 C0 07            [24]  629 	push	ar7
      00341A C0 06            [24]  630 	push	ar6
      00341C C0 05            [24]  631 	push	ar5
      00341E 12 33 CC         [24]  632 	lcall	_delay
      003421 D0 05            [24]  633 	pop	ar5
      003423 D0 06            [24]  634 	pop	ar6
      003425 D0 07            [24]  635 	pop	ar7
                                    636 ;	i2c_bit_bang.c:35: for(int i = 0; i < BYTE_LENGTH; i++){
      003427 0D               [12]  637 	inc	r5
      003428 BD 00 BC         [24]  638 	cjne	r5,#0x00,00103$
      00342B 0E               [12]  639 	inc	r6
      00342C 80 B9            [24]  640 	sjmp	00103$
      00342E                        641 00105$:
                                    642 ;	i2c_bit_bang.c:43: }
      00342E 22               [24]  643 	ret
                                    644 ;------------------------------------------------------------
                                    645 ;Allocation info for local variables in function 'Byte_Write'
                                    646 ;------------------------------------------------------------
                                    647 ;byte                      Allocated to registers 
                                    648 ;block                     Allocated with name '_Byte_Write_PARM_2'
                                    649 ;address                   Allocated with name '_Byte_Write_PARM_3'
                                    650 ;data                      Allocated with name '_Byte_Write_data_65536_12'
                                    651 ;------------------------------------------------------------
                                    652 ;	i2c_bit_bang.c:51: void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
                                    653 ;	-----------------------------------------
                                    654 ;	 function Byte_Write
                                    655 ;	-----------------------------------------
      00342F                        656 _Byte_Write:
      00342F E5 82            [12]  657 	mov	a,dpl
      003431 90 00 03         [24]  658 	mov	dptr,#_Byte_Write_data_65536_12
      003434 F0               [24]  659 	movx	@dptr,a
                                    660 ;	i2c_bit_bang.c:53: SCL = PULSE_HIGH;
                                    661 ;	assignBit
      003435 D2 92            [12]  662 	setb	_P1_2
                                    663 ;	i2c_bit_bang.c:54: SDA = PULSE_HIGH;
                                    664 ;	assignBit
      003437 D2 93            [12]  665 	setb	_P1_3
                                    666 ;	i2c_bit_bang.c:57: delay(2);
      003439 90 00 02         [24]  667 	mov	dptr,#0x0002
      00343C 12 33 CC         [24]  668 	lcall	_delay
                                    669 ;	i2c_bit_bang.c:58: SDA = PULSE_LOW;
                                    670 ;	assignBit
      00343F C2 93            [12]  671 	clr	_P1_3
                                    672 ;	i2c_bit_bang.c:59: delay(2);
      003441 90 00 02         [24]  673 	mov	dptr,#0x0002
      003444 12 33 CC         [24]  674 	lcall	_delay
                                    675 ;	i2c_bit_bang.c:60: SCL = PULSE_LOW;
                                    676 ;	assignBit
      003447 C2 92            [12]  677 	clr	_P1_2
                                    678 ;	i2c_bit_bang.c:63: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      003449 90 00 01         [24]  679 	mov	dptr,#_Byte_Write_PARM_2
      00344C E0               [24]  680 	movx	a,@dptr
      00344D 25 E0            [12]  681 	add	a,acc
      00344F FF               [12]  682 	mov	r7,a
      003450 74 A0            [12]  683 	mov	a,#0xa0
      003452 4F               [12]  684 	orl	a,r7
      003453 F5 82            [12]  685 	mov	dpl,a
                                    686 ;	i2c_bit_bang.c:66: sendByte(byte);
      003455 12 33 E1         [24]  687 	lcall	_sendByte
                                    688 ;	i2c_bit_bang.c:67: SDA = PULSE_HIGH;
                                    689 ;	assignBit
      003458 D2 93            [12]  690 	setb	_P1_3
                                    691 ;	i2c_bit_bang.c:68: SCL = PULSE_HIGH;
                                    692 ;	assignBit
      00345A D2 92            [12]  693 	setb	_P1_2
                                    694 ;	i2c_bit_bang.c:69: delay(2);
      00345C 90 00 02         [24]  695 	mov	dptr,#0x0002
      00345F 12 33 CC         [24]  696 	lcall	_delay
                                    697 ;	i2c_bit_bang.c:75: SCL = PULSE_LOW;
                                    698 ;	assignBit
      003462 C2 92            [12]  699 	clr	_P1_2
                                    700 ;	i2c_bit_bang.c:76: delay(0);
      003464 90 00 00         [24]  701 	mov	dptr,#0x0000
      003467 12 33 CC         [24]  702 	lcall	_delay
                                    703 ;	i2c_bit_bang.c:78: sendByte(address);
      00346A 90 00 02         [24]  704 	mov	dptr,#_Byte_Write_PARM_3
      00346D E0               [24]  705 	movx	a,@dptr
      00346E F5 82            [12]  706 	mov	dpl,a
      003470 12 33 E1         [24]  707 	lcall	_sendByte
                                    708 ;	i2c_bit_bang.c:79: SDA = PULSE_HIGH;
                                    709 ;	assignBit
      003473 D2 93            [12]  710 	setb	_P1_3
                                    711 ;	i2c_bit_bang.c:80: SCL = PULSE_HIGH;
                                    712 ;	assignBit
      003475 D2 92            [12]  713 	setb	_P1_2
                                    714 ;	i2c_bit_bang.c:81: delay(2);
      003477 90 00 02         [24]  715 	mov	dptr,#0x0002
      00347A 12 33 CC         [24]  716 	lcall	_delay
                                    717 ;	i2c_bit_bang.c:87: SCL = PULSE_LOW;
                                    718 ;	assignBit
      00347D C2 92            [12]  719 	clr	_P1_2
                                    720 ;	i2c_bit_bang.c:88: delay(0);
      00347F 90 00 00         [24]  721 	mov	dptr,#0x0000
      003482 12 33 CC         [24]  722 	lcall	_delay
                                    723 ;	i2c_bit_bang.c:90: sendByte(data);
      003485 90 00 03         [24]  724 	mov	dptr,#_Byte_Write_data_65536_12
      003488 E0               [24]  725 	movx	a,@dptr
      003489 F5 82            [12]  726 	mov	dpl,a
      00348B 12 33 E1         [24]  727 	lcall	_sendByte
                                    728 ;	i2c_bit_bang.c:93: SDA = PULSE_HIGH;
                                    729 ;	assignBit
      00348E D2 93            [12]  730 	setb	_P1_3
                                    731 ;	i2c_bit_bang.c:94: SCL = PULSE_HIGH;
                                    732 ;	assignBit
      003490 D2 92            [12]  733 	setb	_P1_2
                                    734 ;	i2c_bit_bang.c:95: delay(2);
      003492 90 00 02         [24]  735 	mov	dptr,#0x0002
      003495 12 33 CC         [24]  736 	lcall	_delay
                                    737 ;	i2c_bit_bang.c:104: SCL = PULSE_LOW;
                                    738 ;	assignBit
      003498 C2 92            [12]  739 	clr	_P1_2
                                    740 ;	i2c_bit_bang.c:105: delay(1);
      00349A 90 00 01         [24]  741 	mov	dptr,#0x0001
      00349D 12 33 CC         [24]  742 	lcall	_delay
                                    743 ;	i2c_bit_bang.c:106: SDA = PULSE_LOW;
                                    744 ;	assignBit
      0034A0 C2 93            [12]  745 	clr	_P1_3
                                    746 ;	i2c_bit_bang.c:107: delay(1);
      0034A2 90 00 01         [24]  747 	mov	dptr,#0x0001
      0034A5 12 33 CC         [24]  748 	lcall	_delay
                                    749 ;	i2c_bit_bang.c:108: SCL = PULSE_HIGH;
                                    750 ;	assignBit
      0034A8 D2 92            [12]  751 	setb	_P1_2
                                    752 ;	i2c_bit_bang.c:109: delay(0);
      0034AA 90 00 00         [24]  753 	mov	dptr,#0x0000
      0034AD 12 33 CC         [24]  754 	lcall	_delay
                                    755 ;	i2c_bit_bang.c:110: SDA = PULSE_HIGH;
                                    756 ;	assignBit
      0034B0 D2 93            [12]  757 	setb	_P1_3
                                    758 ;	i2c_bit_bang.c:111: }
      0034B2 22               [24]  759 	ret
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'Byte_Read'
                                    762 ;------------------------------------------------------------
                                    763 ;byte                      Allocated to registers r4 
                                    764 ;k                         Allocated to registers r5 r6 
                                    765 ;address                   Allocated with name '_Byte_Read_PARM_2'
                                    766 ;block                     Allocated with name '_Byte_Read_block_65536_15'
                                    767 ;------------------------------------------------------------
                                    768 ;	i2c_bit_bang.c:119: __xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
                                    769 ;	-----------------------------------------
                                    770 ;	 function Byte_Read
                                    771 ;	-----------------------------------------
      0034B3                        772 _Byte_Read:
      0034B3 E5 82            [12]  773 	mov	a,dpl
      0034B5 90 00 05         [24]  774 	mov	dptr,#_Byte_Read_block_65536_15
      0034B8 F0               [24]  775 	movx	@dptr,a
                                    776 ;	i2c_bit_bang.c:121: SCL = PULSE_HIGH;
                                    777 ;	assignBit
      0034B9 D2 92            [12]  778 	setb	_P1_2
                                    779 ;	i2c_bit_bang.c:122: SDA = PULSE_HIGH;
                                    780 ;	assignBit
      0034BB D2 93            [12]  781 	setb	_P1_3
                                    782 ;	i2c_bit_bang.c:125: delay(2);
      0034BD 90 00 02         [24]  783 	mov	dptr,#0x0002
      0034C0 12 33 CC         [24]  784 	lcall	_delay
                                    785 ;	i2c_bit_bang.c:126: SDA = PULSE_LOW;
                                    786 ;	assignBit
      0034C3 C2 93            [12]  787 	clr	_P1_3
                                    788 ;	i2c_bit_bang.c:127: delay(2);
      0034C5 90 00 02         [24]  789 	mov	dptr,#0x0002
      0034C8 12 33 CC         [24]  790 	lcall	_delay
                                    791 ;	i2c_bit_bang.c:128: SCL = PULSE_LOW;
                                    792 ;	assignBit
      0034CB C2 92            [12]  793 	clr	_P1_2
                                    794 ;	i2c_bit_bang.c:131: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      0034CD 90 00 05         [24]  795 	mov	dptr,#_Byte_Read_block_65536_15
      0034D0 E0               [24]  796 	movx	a,@dptr
      0034D1 25 E0            [12]  797 	add	a,acc
      0034D3 FF               [12]  798 	mov	r7,a
      0034D4 74 A0            [12]  799 	mov	a,#0xa0
      0034D6 4F               [12]  800 	orl	a,r7
      0034D7 F5 82            [12]  801 	mov	dpl,a
                                    802 ;	i2c_bit_bang.c:134: sendByte(byte);
      0034D9 C0 07            [24]  803 	push	ar7
      0034DB 12 33 E1         [24]  804 	lcall	_sendByte
                                    805 ;	i2c_bit_bang.c:135: SDA = PULSE_HIGH;
                                    806 ;	assignBit
      0034DE D2 93            [12]  807 	setb	_P1_3
                                    808 ;	i2c_bit_bang.c:136: SCL = PULSE_HIGH;
                                    809 ;	assignBit
      0034E0 D2 92            [12]  810 	setb	_P1_2
                                    811 ;	i2c_bit_bang.c:137: delay(3);
      0034E2 90 00 03         [24]  812 	mov	dptr,#0x0003
      0034E5 12 33 CC         [24]  813 	lcall	_delay
                                    814 ;	i2c_bit_bang.c:143: SCL = PULSE_LOW;
                                    815 ;	assignBit
      0034E8 C2 92            [12]  816 	clr	_P1_2
                                    817 ;	i2c_bit_bang.c:144: delay(0);
      0034EA 90 00 00         [24]  818 	mov	dptr,#0x0000
      0034ED 12 33 CC         [24]  819 	lcall	_delay
                                    820 ;	i2c_bit_bang.c:146: sendByte(address);
      0034F0 90 00 04         [24]  821 	mov	dptr,#_Byte_Read_PARM_2
      0034F3 E0               [24]  822 	movx	a,@dptr
      0034F4 F5 82            [12]  823 	mov	dpl,a
      0034F6 12 33 E1         [24]  824 	lcall	_sendByte
                                    825 ;	i2c_bit_bang.c:147: SDA = PULSE_HIGH;
                                    826 ;	assignBit
      0034F9 D2 93            [12]  827 	setb	_P1_3
                                    828 ;	i2c_bit_bang.c:148: SCL = PULSE_HIGH;
                                    829 ;	assignBit
      0034FB D2 92            [12]  830 	setb	_P1_2
                                    831 ;	i2c_bit_bang.c:149: delay(2);
      0034FD 90 00 02         [24]  832 	mov	dptr,#0x0002
      003500 12 33 CC         [24]  833 	lcall	_delay
                                    834 ;	i2c_bit_bang.c:155: SCL = PULSE_LOW;
                                    835 ;	assignBit
      003503 C2 92            [12]  836 	clr	_P1_2
                                    837 ;	i2c_bit_bang.c:156: SDA = PULSE_HIGH;
                                    838 ;	assignBit
      003505 D2 93            [12]  839 	setb	_P1_3
                                    840 ;	i2c_bit_bang.c:157: delay(2);
      003507 90 00 02         [24]  841 	mov	dptr,#0x0002
      00350A 12 33 CC         [24]  842 	lcall	_delay
                                    843 ;	i2c_bit_bang.c:158: SCL = PULSE_HIGH;
                                    844 ;	assignBit
      00350D D2 92            [12]  845 	setb	_P1_2
                                    846 ;	i2c_bit_bang.c:159: delay(0);
      00350F 90 00 00         [24]  847 	mov	dptr,#0x0000
      003512 12 33 CC         [24]  848 	lcall	_delay
                                    849 ;	i2c_bit_bang.c:160: SDA = PULSE_LOW;
                                    850 ;	assignBit
      003515 C2 93            [12]  851 	clr	_P1_3
                                    852 ;	i2c_bit_bang.c:161: delay(2);
      003517 90 00 02         [24]  853 	mov	dptr,#0x0002
      00351A 12 33 CC         [24]  854 	lcall	_delay
      00351D D0 07            [24]  855 	pop	ar7
                                    856 ;	i2c_bit_bang.c:162: SCL = PULSE_LOW;
                                    857 ;	assignBit
      00351F C2 92            [12]  858 	clr	_P1_2
                                    859 ;	i2c_bit_bang.c:163: byte = START_BYTE | (block << 1) | READ_BYTE;
      003521 74 A1            [12]  860 	mov	a,#0xa1
      003523 4F               [12]  861 	orl	a,r7
      003524 F5 82            [12]  862 	mov	dpl,a
                                    863 ;	i2c_bit_bang.c:166: sendByte(byte);
      003526 12 33 E1         [24]  864 	lcall	_sendByte
                                    865 ;	i2c_bit_bang.c:168: SDA = PULSE_HIGH;
                                    866 ;	assignBit
      003529 D2 93            [12]  867 	setb	_P1_3
                                    868 ;	i2c_bit_bang.c:169: delay(2);
      00352B 90 00 02         [24]  869 	mov	dptr,#0x0002
      00352E 12 33 CC         [24]  870 	lcall	_delay
                                    871 ;	i2c_bit_bang.c:175: SCL = PULSE_HIGH;
                                    872 ;	assignBit
      003531 D2 92            [12]  873 	setb	_P1_2
                                    874 ;	i2c_bit_bang.c:176: delay(2);
      003533 90 00 02         [24]  875 	mov	dptr,#0x0002
      003536 12 33 CC         [24]  876 	lcall	_delay
                                    877 ;	i2c_bit_bang.c:177: SCL = PULSE_LOW;
                                    878 ;	assignBit
      003539 C2 92            [12]  879 	clr	_P1_2
                                    880 ;	i2c_bit_bang.c:178: delay(2);
      00353B 90 00 02         [24]  881 	mov	dptr,#0x0002
      00353E 12 33 CC         [24]  882 	lcall	_delay
                                    883 ;	i2c_bit_bang.c:179: byte = 0;
      003541 7F 00            [12]  884 	mov	r7,#0x00
                                    885 ;	i2c_bit_bang.c:180: for(int k = 0; k < BYTE_LENGTH; k++){
      003543 7D 00            [12]  886 	mov	r5,#0x00
      003545 7E 00            [12]  887 	mov	r6,#0x00
      003547                        888 00103$:
      003547 C3               [12]  889 	clr	c
      003548 ED               [12]  890 	mov	a,r5
      003549 94 08            [12]  891 	subb	a,#0x08
      00354B EE               [12]  892 	mov	a,r6
      00354C 64 80            [12]  893 	xrl	a,#0x80
      00354E 94 80            [12]  894 	subb	a,#0x80
      003550 50 3A            [24]  895 	jnc	00101$
                                    896 ;	i2c_bit_bang.c:181: byte = byte << 1;
      003552 8F 04            [24]  897 	mov	ar4,r7
      003554 EC               [12]  898 	mov	a,r4
      003555 2C               [12]  899 	add	a,r4
      003556 FC               [12]  900 	mov	r4,a
                                    901 ;	i2c_bit_bang.c:182: SCL = PULSE_HIGH;
                                    902 ;	assignBit
      003557 D2 92            [12]  903 	setb	_P1_2
                                    904 ;	i2c_bit_bang.c:183: delay(2);
      003559 90 00 02         [24]  905 	mov	dptr,#0x0002
      00355C C0 06            [24]  906 	push	ar6
      00355E C0 05            [24]  907 	push	ar5
      003560 C0 04            [24]  908 	push	ar4
      003562 12 33 CC         [24]  909 	lcall	_delay
      003565 D0 04            [24]  910 	pop	ar4
      003567 D0 05            [24]  911 	pop	ar5
      003569 D0 06            [24]  912 	pop	ar6
                                    913 ;	i2c_bit_bang.c:184: byte |= SDA;
      00356B A2 93            [12]  914 	mov	c,_P1_3
      00356D E4               [12]  915 	clr	a
      00356E 33               [12]  916 	rlc	a
      00356F 4C               [12]  917 	orl	a,r4
      003570 FF               [12]  918 	mov	r7,a
                                    919 ;	i2c_bit_bang.c:185: SCL = PULSE_LOW;
                                    920 ;	assignBit
      003571 C2 92            [12]  921 	clr	_P1_2
                                    922 ;	i2c_bit_bang.c:186: delay(1);
      003573 90 00 01         [24]  923 	mov	dptr,#0x0001
      003576 C0 07            [24]  924 	push	ar7
      003578 C0 06            [24]  925 	push	ar6
      00357A C0 05            [24]  926 	push	ar5
      00357C 12 33 CC         [24]  927 	lcall	_delay
      00357F D0 05            [24]  928 	pop	ar5
      003581 D0 06            [24]  929 	pop	ar6
      003583 D0 07            [24]  930 	pop	ar7
                                    931 ;	i2c_bit_bang.c:180: for(int k = 0; k < BYTE_LENGTH; k++){
      003585 0D               [12]  932 	inc	r5
      003586 BD 00 BE         [24]  933 	cjne	r5,#0x00,00103$
      003589 0E               [12]  934 	inc	r6
      00358A 80 BB            [24]  935 	sjmp	00103$
      00358C                        936 00101$:
                                    937 ;	i2c_bit_bang.c:189: SDA = PULSE_HIGH;
                                    938 ;	assignBit
      00358C D2 93            [12]  939 	setb	_P1_3
                                    940 ;	i2c_bit_bang.c:190: delay(2);
      00358E 90 00 02         [24]  941 	mov	dptr,#0x0002
      003591 C0 07            [24]  942 	push	ar7
      003593 12 33 CC         [24]  943 	lcall	_delay
                                    944 ;	i2c_bit_bang.c:191: SCL = PULSE_HIGH;
                                    945 ;	assignBit
      003596 D2 92            [12]  946 	setb	_P1_2
                                    947 ;	i2c_bit_bang.c:192: delay(2);
      003598 90 00 02         [24]  948 	mov	dptr,#0x0002
      00359B 12 33 CC         [24]  949 	lcall	_delay
                                    950 ;	i2c_bit_bang.c:193: SCL = PULSE_LOW;
                                    951 ;	assignBit
      00359E C2 92            [12]  952 	clr	_P1_2
                                    953 ;	i2c_bit_bang.c:194: SDA = PULSE_LOW;
                                    954 ;	assignBit
      0035A0 C2 93            [12]  955 	clr	_P1_3
                                    956 ;	i2c_bit_bang.c:195: delay(2);
      0035A2 90 00 02         [24]  957 	mov	dptr,#0x0002
      0035A5 12 33 CC         [24]  958 	lcall	_delay
                                    959 ;	i2c_bit_bang.c:196: SCL = PULSE_HIGH;
                                    960 ;	assignBit
      0035A8 D2 92            [12]  961 	setb	_P1_2
                                    962 ;	i2c_bit_bang.c:197: delay(2);
      0035AA 90 00 02         [24]  963 	mov	dptr,#0x0002
      0035AD 12 33 CC         [24]  964 	lcall	_delay
                                    965 ;	i2c_bit_bang.c:198: SDA = PULSE_HIGH;
                                    966 ;	assignBit
      0035B0 D2 93            [12]  967 	setb	_P1_3
                                    968 ;	i2c_bit_bang.c:199: delay(2);
      0035B2 90 00 02         [24]  969 	mov	dptr,#0x0002
      0035B5 12 33 CC         [24]  970 	lcall	_delay
                                    971 ;	i2c_bit_bang.c:200: SCL = PULSE_LOW;
                                    972 ;	assignBit
      0035B8 C2 92            [12]  973 	clr	_P1_2
                                    974 ;	i2c_bit_bang.c:201: delay(2);
      0035BA 90 00 02         [24]  975 	mov	dptr,#0x0002
      0035BD 12 33 CC         [24]  976 	lcall	_delay
      0035C0 D0 07            [24]  977 	pop	ar7
                                    978 ;	i2c_bit_bang.c:202: return byte;
      0035C2 8F 82            [24]  979 	mov	dpl,r7
                                    980 ;	i2c_bit_bang.c:203: }
      0035C4 22               [24]  981 	ret
                                    982 ;------------------------------------------------------------
                                    983 ;Allocation info for local variables in function 'Byte_Read_Sequential'
                                    984 ;------------------------------------------------------------
                                    985 ;byte                      Allocated to registers 
                                    986 ;l                         Allocated with name '_Byte_Read_Sequential_l_131073_23'
                                    987 ;k                         Allocated with name '_Byte_Read_Sequential_k_262145_25'
                                    988 ;start_address             Allocated with name '_Byte_Read_Sequential_PARM_2'
                                    989 ;address_range             Allocated with name '_Byte_Read_Sequential_PARM_3'
                                    990 ;block                     Allocated with name '_Byte_Read_Sequential_block_65536_20'
                                    991 ;buffer                    Allocated with name '_Byte_Read_Sequential_buffer_65536_21'
                                    992 ;------------------------------------------------------------
                                    993 ;	i2c_bit_bang.c:213: __xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
                                    994 ;	-----------------------------------------
                                    995 ;	 function Byte_Read_Sequential
                                    996 ;	-----------------------------------------
      0035C5                        997 _Byte_Read_Sequential:
      0035C5 E5 82            [12]  998 	mov	a,dpl
      0035C7 90 00 08         [24]  999 	mov	dptr,#_Byte_Read_Sequential_block_65536_20
      0035CA F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	i2c_bit_bang.c:216: __xdata uint8_t buffer[256] = {0};
      0035CB 90 00 09         [24] 1002 	mov	dptr,#_Byte_Read_Sequential_buffer_65536_21
      0035CE E4               [12] 1003 	clr	a
      0035CF F0               [24] 1004 	movx	@dptr,a
      0035D0 90 00 0A         [24] 1005 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0001)
      0035D3 F0               [24] 1006 	movx	@dptr,a
      0035D4 90 00 0B         [24] 1007 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0002)
      0035D7 F0               [24] 1008 	movx	@dptr,a
      0035D8 90 00 0C         [24] 1009 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0003)
      0035DB F0               [24] 1010 	movx	@dptr,a
      0035DC 90 00 0D         [24] 1011 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0004)
      0035DF F0               [24] 1012 	movx	@dptr,a
      0035E0 90 00 0E         [24] 1013 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0005)
      0035E3 F0               [24] 1014 	movx	@dptr,a
      0035E4 90 00 0F         [24] 1015 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0006)
      0035E7 F0               [24] 1016 	movx	@dptr,a
      0035E8 90 00 10         [24] 1017 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0007)
      0035EB F0               [24] 1018 	movx	@dptr,a
      0035EC 90 00 11         [24] 1019 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0008)
      0035EF F0               [24] 1020 	movx	@dptr,a
      0035F0 90 00 12         [24] 1021 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0009)
      0035F3 F0               [24] 1022 	movx	@dptr,a
      0035F4 90 00 13         [24] 1023 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x000a)
      0035F7 F0               [24] 1024 	movx	@dptr,a
      0035F8 90 00 14         [24] 1025 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x000b)
      0035FB F0               [24] 1026 	movx	@dptr,a
      0035FC 90 00 15         [24] 1027 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x000c)
      0035FF F0               [24] 1028 	movx	@dptr,a
      003600 90 00 16         [24] 1029 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x000d)
      003603 F0               [24] 1030 	movx	@dptr,a
      003604 90 00 17         [24] 1031 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x000e)
      003607 F0               [24] 1032 	movx	@dptr,a
      003608 90 00 18         [24] 1033 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x000f)
      00360B F0               [24] 1034 	movx	@dptr,a
      00360C 90 00 19         [24] 1035 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0010)
      00360F F0               [24] 1036 	movx	@dptr,a
      003610 90 00 1A         [24] 1037 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0011)
      003613 F0               [24] 1038 	movx	@dptr,a
      003614 90 00 1B         [24] 1039 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0012)
      003617 F0               [24] 1040 	movx	@dptr,a
      003618 90 00 1C         [24] 1041 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0013)
      00361B F0               [24] 1042 	movx	@dptr,a
      00361C 90 00 1D         [24] 1043 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0014)
      00361F F0               [24] 1044 	movx	@dptr,a
      003620 90 00 1E         [24] 1045 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0015)
      003623 F0               [24] 1046 	movx	@dptr,a
      003624 90 00 1F         [24] 1047 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0016)
      003627 F0               [24] 1048 	movx	@dptr,a
      003628 90 00 20         [24] 1049 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0017)
      00362B F0               [24] 1050 	movx	@dptr,a
      00362C 90 00 21         [24] 1051 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0018)
      00362F F0               [24] 1052 	movx	@dptr,a
      003630 90 00 22         [24] 1053 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0019)
      003633 F0               [24] 1054 	movx	@dptr,a
      003634 90 00 23         [24] 1055 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x001a)
      003637 F0               [24] 1056 	movx	@dptr,a
      003638 90 00 24         [24] 1057 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x001b)
      00363B F0               [24] 1058 	movx	@dptr,a
      00363C 90 00 25         [24] 1059 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x001c)
      00363F F0               [24] 1060 	movx	@dptr,a
      003640 90 00 26         [24] 1061 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x001d)
      003643 F0               [24] 1062 	movx	@dptr,a
      003644 90 00 27         [24] 1063 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x001e)
      003647 F0               [24] 1064 	movx	@dptr,a
      003648 90 00 28         [24] 1065 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x001f)
      00364B F0               [24] 1066 	movx	@dptr,a
      00364C 90 00 29         [24] 1067 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0020)
      00364F F0               [24] 1068 	movx	@dptr,a
      003650 90 00 2A         [24] 1069 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0021)
      003653 F0               [24] 1070 	movx	@dptr,a
      003654 90 00 2B         [24] 1071 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0022)
      003657 F0               [24] 1072 	movx	@dptr,a
      003658 90 00 2C         [24] 1073 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0023)
      00365B F0               [24] 1074 	movx	@dptr,a
      00365C 90 00 2D         [24] 1075 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0024)
      00365F F0               [24] 1076 	movx	@dptr,a
      003660 90 00 2E         [24] 1077 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0025)
      003663 F0               [24] 1078 	movx	@dptr,a
      003664 90 00 2F         [24] 1079 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0026)
      003667 F0               [24] 1080 	movx	@dptr,a
      003668 90 00 30         [24] 1081 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0027)
      00366B F0               [24] 1082 	movx	@dptr,a
      00366C 90 00 31         [24] 1083 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0028)
      00366F F0               [24] 1084 	movx	@dptr,a
      003670 90 00 32         [24] 1085 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0029)
      003673 F0               [24] 1086 	movx	@dptr,a
      003674 90 00 33         [24] 1087 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x002a)
      003677 F0               [24] 1088 	movx	@dptr,a
      003678 90 00 34         [24] 1089 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x002b)
      00367B F0               [24] 1090 	movx	@dptr,a
      00367C 90 00 35         [24] 1091 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x002c)
      00367F F0               [24] 1092 	movx	@dptr,a
      003680 90 00 36         [24] 1093 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x002d)
      003683 F0               [24] 1094 	movx	@dptr,a
      003684 90 00 37         [24] 1095 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x002e)
      003687 F0               [24] 1096 	movx	@dptr,a
      003688 90 00 38         [24] 1097 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x002f)
      00368B F0               [24] 1098 	movx	@dptr,a
      00368C 90 00 39         [24] 1099 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0030)
      00368F F0               [24] 1100 	movx	@dptr,a
      003690 90 00 3A         [24] 1101 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0031)
      003693 F0               [24] 1102 	movx	@dptr,a
      003694 90 00 3B         [24] 1103 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0032)
      003697 F0               [24] 1104 	movx	@dptr,a
      003698 90 00 3C         [24] 1105 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0033)
      00369B F0               [24] 1106 	movx	@dptr,a
      00369C 90 00 3D         [24] 1107 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0034)
      00369F F0               [24] 1108 	movx	@dptr,a
      0036A0 90 00 3E         [24] 1109 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0035)
      0036A3 F0               [24] 1110 	movx	@dptr,a
      0036A4 90 00 3F         [24] 1111 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0036)
      0036A7 F0               [24] 1112 	movx	@dptr,a
      0036A8 90 00 40         [24] 1113 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0037)
      0036AB F0               [24] 1114 	movx	@dptr,a
      0036AC 90 00 41         [24] 1115 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0038)
      0036AF F0               [24] 1116 	movx	@dptr,a
      0036B0 90 00 42         [24] 1117 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0039)
      0036B3 F0               [24] 1118 	movx	@dptr,a
      0036B4 90 00 43         [24] 1119 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x003a)
      0036B7 F0               [24] 1120 	movx	@dptr,a
      0036B8 90 00 44         [24] 1121 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x003b)
      0036BB F0               [24] 1122 	movx	@dptr,a
      0036BC 90 00 45         [24] 1123 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x003c)
      0036BF F0               [24] 1124 	movx	@dptr,a
      0036C0 90 00 46         [24] 1125 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x003d)
      0036C3 F0               [24] 1126 	movx	@dptr,a
      0036C4 90 00 47         [24] 1127 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x003e)
      0036C7 F0               [24] 1128 	movx	@dptr,a
      0036C8 90 00 48         [24] 1129 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x003f)
      0036CB F0               [24] 1130 	movx	@dptr,a
      0036CC 90 00 49         [24] 1131 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0040)
      0036CF F0               [24] 1132 	movx	@dptr,a
      0036D0 90 00 4A         [24] 1133 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0041)
      0036D3 F0               [24] 1134 	movx	@dptr,a
      0036D4 90 00 4B         [24] 1135 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0042)
      0036D7 F0               [24] 1136 	movx	@dptr,a
      0036D8 90 00 4C         [24] 1137 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0043)
      0036DB F0               [24] 1138 	movx	@dptr,a
      0036DC 90 00 4D         [24] 1139 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0044)
      0036DF F0               [24] 1140 	movx	@dptr,a
      0036E0 90 00 4E         [24] 1141 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0045)
      0036E3 F0               [24] 1142 	movx	@dptr,a
      0036E4 90 00 4F         [24] 1143 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0046)
      0036E7 F0               [24] 1144 	movx	@dptr,a
      0036E8 90 00 50         [24] 1145 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0047)
      0036EB F0               [24] 1146 	movx	@dptr,a
      0036EC 90 00 51         [24] 1147 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0048)
      0036EF F0               [24] 1148 	movx	@dptr,a
      0036F0 90 00 52         [24] 1149 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0049)
      0036F3 F0               [24] 1150 	movx	@dptr,a
      0036F4 90 00 53         [24] 1151 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x004a)
      0036F7 F0               [24] 1152 	movx	@dptr,a
      0036F8 90 00 54         [24] 1153 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x004b)
      0036FB F0               [24] 1154 	movx	@dptr,a
      0036FC 90 00 55         [24] 1155 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x004c)
      0036FF F0               [24] 1156 	movx	@dptr,a
      003700 90 00 56         [24] 1157 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x004d)
      003703 F0               [24] 1158 	movx	@dptr,a
      003704 90 00 57         [24] 1159 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x004e)
      003707 F0               [24] 1160 	movx	@dptr,a
      003708 90 00 58         [24] 1161 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x004f)
      00370B F0               [24] 1162 	movx	@dptr,a
      00370C 90 00 59         [24] 1163 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0050)
      00370F F0               [24] 1164 	movx	@dptr,a
      003710 90 00 5A         [24] 1165 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0051)
      003713 F0               [24] 1166 	movx	@dptr,a
      003714 90 00 5B         [24] 1167 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0052)
      003717 F0               [24] 1168 	movx	@dptr,a
      003718 90 00 5C         [24] 1169 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0053)
      00371B F0               [24] 1170 	movx	@dptr,a
      00371C 90 00 5D         [24] 1171 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0054)
      00371F F0               [24] 1172 	movx	@dptr,a
      003720 90 00 5E         [24] 1173 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0055)
      003723 F0               [24] 1174 	movx	@dptr,a
      003724 90 00 5F         [24] 1175 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0056)
      003727 F0               [24] 1176 	movx	@dptr,a
      003728 90 00 60         [24] 1177 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0057)
      00372B F0               [24] 1178 	movx	@dptr,a
      00372C 90 00 61         [24] 1179 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0058)
      00372F F0               [24] 1180 	movx	@dptr,a
      003730 90 00 62         [24] 1181 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0059)
      003733 F0               [24] 1182 	movx	@dptr,a
      003734 90 00 63         [24] 1183 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x005a)
      003737 F0               [24] 1184 	movx	@dptr,a
      003738 90 00 64         [24] 1185 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x005b)
      00373B F0               [24] 1186 	movx	@dptr,a
      00373C 90 00 65         [24] 1187 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x005c)
      00373F F0               [24] 1188 	movx	@dptr,a
      003740 90 00 66         [24] 1189 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x005d)
      003743 F0               [24] 1190 	movx	@dptr,a
      003744 90 00 67         [24] 1191 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x005e)
      003747 F0               [24] 1192 	movx	@dptr,a
      003748 90 00 68         [24] 1193 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x005f)
      00374B F0               [24] 1194 	movx	@dptr,a
      00374C 90 00 69         [24] 1195 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0060)
      00374F F0               [24] 1196 	movx	@dptr,a
      003750 90 00 6A         [24] 1197 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0061)
      003753 F0               [24] 1198 	movx	@dptr,a
      003754 90 00 6B         [24] 1199 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0062)
      003757 F0               [24] 1200 	movx	@dptr,a
      003758 90 00 6C         [24] 1201 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0063)
      00375B F0               [24] 1202 	movx	@dptr,a
      00375C 90 00 6D         [24] 1203 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0064)
      00375F F0               [24] 1204 	movx	@dptr,a
      003760 90 00 6E         [24] 1205 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0065)
      003763 F0               [24] 1206 	movx	@dptr,a
      003764 90 00 6F         [24] 1207 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0066)
      003767 F0               [24] 1208 	movx	@dptr,a
      003768 90 00 70         [24] 1209 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0067)
      00376B F0               [24] 1210 	movx	@dptr,a
      00376C 90 00 71         [24] 1211 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0068)
      00376F F0               [24] 1212 	movx	@dptr,a
      003770 90 00 72         [24] 1213 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0069)
      003773 F0               [24] 1214 	movx	@dptr,a
      003774 90 00 73         [24] 1215 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x006a)
      003777 F0               [24] 1216 	movx	@dptr,a
      003778 90 00 74         [24] 1217 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x006b)
      00377B F0               [24] 1218 	movx	@dptr,a
      00377C 90 00 75         [24] 1219 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x006c)
      00377F F0               [24] 1220 	movx	@dptr,a
      003780 90 00 76         [24] 1221 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x006d)
      003783 F0               [24] 1222 	movx	@dptr,a
      003784 90 00 77         [24] 1223 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x006e)
      003787 F0               [24] 1224 	movx	@dptr,a
      003788 90 00 78         [24] 1225 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x006f)
      00378B F0               [24] 1226 	movx	@dptr,a
      00378C 90 00 79         [24] 1227 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0070)
      00378F F0               [24] 1228 	movx	@dptr,a
      003790 90 00 7A         [24] 1229 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0071)
      003793 F0               [24] 1230 	movx	@dptr,a
      003794 90 00 7B         [24] 1231 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0072)
      003797 F0               [24] 1232 	movx	@dptr,a
      003798 90 00 7C         [24] 1233 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0073)
      00379B F0               [24] 1234 	movx	@dptr,a
      00379C 90 00 7D         [24] 1235 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0074)
      00379F F0               [24] 1236 	movx	@dptr,a
      0037A0 90 00 7E         [24] 1237 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0075)
      0037A3 F0               [24] 1238 	movx	@dptr,a
      0037A4 90 00 7F         [24] 1239 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0076)
      0037A7 F0               [24] 1240 	movx	@dptr,a
      0037A8 90 00 80         [24] 1241 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0077)
      0037AB F0               [24] 1242 	movx	@dptr,a
      0037AC 90 00 81         [24] 1243 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0078)
      0037AF F0               [24] 1244 	movx	@dptr,a
      0037B0 90 00 82         [24] 1245 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0079)
      0037B3 F0               [24] 1246 	movx	@dptr,a
      0037B4 90 00 83         [24] 1247 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x007a)
      0037B7 F0               [24] 1248 	movx	@dptr,a
      0037B8 90 00 84         [24] 1249 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x007b)
      0037BB F0               [24] 1250 	movx	@dptr,a
      0037BC 90 00 85         [24] 1251 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x007c)
      0037BF F0               [24] 1252 	movx	@dptr,a
      0037C0 90 00 86         [24] 1253 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x007d)
      0037C3 F0               [24] 1254 	movx	@dptr,a
      0037C4 90 00 87         [24] 1255 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x007e)
      0037C7 F0               [24] 1256 	movx	@dptr,a
      0037C8 90 00 88         [24] 1257 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x007f)
      0037CB F0               [24] 1258 	movx	@dptr,a
      0037CC 90 00 89         [24] 1259 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0080)
      0037CF F0               [24] 1260 	movx	@dptr,a
      0037D0 90 00 8A         [24] 1261 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0081)
      0037D3 F0               [24] 1262 	movx	@dptr,a
      0037D4 90 00 8B         [24] 1263 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0082)
      0037D7 F0               [24] 1264 	movx	@dptr,a
      0037D8 90 00 8C         [24] 1265 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0083)
      0037DB F0               [24] 1266 	movx	@dptr,a
      0037DC 90 00 8D         [24] 1267 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0084)
      0037DF F0               [24] 1268 	movx	@dptr,a
      0037E0 90 00 8E         [24] 1269 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0085)
      0037E3 F0               [24] 1270 	movx	@dptr,a
      0037E4 90 00 8F         [24] 1271 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0086)
      0037E7 F0               [24] 1272 	movx	@dptr,a
      0037E8 90 00 90         [24] 1273 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0087)
      0037EB F0               [24] 1274 	movx	@dptr,a
      0037EC 90 00 91         [24] 1275 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0088)
      0037EF F0               [24] 1276 	movx	@dptr,a
      0037F0 90 00 92         [24] 1277 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0089)
      0037F3 F0               [24] 1278 	movx	@dptr,a
      0037F4 90 00 93         [24] 1279 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x008a)
      0037F7 F0               [24] 1280 	movx	@dptr,a
      0037F8 90 00 94         [24] 1281 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x008b)
      0037FB F0               [24] 1282 	movx	@dptr,a
      0037FC 90 00 95         [24] 1283 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x008c)
      0037FF F0               [24] 1284 	movx	@dptr,a
      003800 90 00 96         [24] 1285 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x008d)
      003803 F0               [24] 1286 	movx	@dptr,a
      003804 90 00 97         [24] 1287 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x008e)
      003807 F0               [24] 1288 	movx	@dptr,a
      003808 90 00 98         [24] 1289 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x008f)
      00380B F0               [24] 1290 	movx	@dptr,a
      00380C 90 00 99         [24] 1291 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0090)
      00380F F0               [24] 1292 	movx	@dptr,a
      003810 90 00 9A         [24] 1293 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0091)
      003813 F0               [24] 1294 	movx	@dptr,a
      003814 90 00 9B         [24] 1295 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0092)
      003817 F0               [24] 1296 	movx	@dptr,a
      003818 90 00 9C         [24] 1297 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0093)
      00381B F0               [24] 1298 	movx	@dptr,a
      00381C 90 00 9D         [24] 1299 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0094)
      00381F F0               [24] 1300 	movx	@dptr,a
      003820 90 00 9E         [24] 1301 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0095)
      003823 F0               [24] 1302 	movx	@dptr,a
      003824 90 00 9F         [24] 1303 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0096)
      003827 F0               [24] 1304 	movx	@dptr,a
      003828 90 00 A0         [24] 1305 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0097)
      00382B F0               [24] 1306 	movx	@dptr,a
      00382C 90 00 A1         [24] 1307 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0098)
      00382F F0               [24] 1308 	movx	@dptr,a
      003830 90 00 A2         [24] 1309 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x0099)
      003833 F0               [24] 1310 	movx	@dptr,a
      003834 90 00 A3         [24] 1311 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x009a)
      003837 F0               [24] 1312 	movx	@dptr,a
      003838 90 00 A4         [24] 1313 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x009b)
      00383B F0               [24] 1314 	movx	@dptr,a
      00383C 90 00 A5         [24] 1315 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x009c)
      00383F F0               [24] 1316 	movx	@dptr,a
      003840 90 00 A6         [24] 1317 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x009d)
      003843 F0               [24] 1318 	movx	@dptr,a
      003844 90 00 A7         [24] 1319 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x009e)
      003847 F0               [24] 1320 	movx	@dptr,a
      003848 90 00 A8         [24] 1321 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x009f)
      00384B F0               [24] 1322 	movx	@dptr,a
      00384C 90 00 A9         [24] 1323 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a0)
      00384F F0               [24] 1324 	movx	@dptr,a
      003850 90 00 AA         [24] 1325 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a1)
      003853 F0               [24] 1326 	movx	@dptr,a
      003854 90 00 AB         [24] 1327 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a2)
      003857 F0               [24] 1328 	movx	@dptr,a
      003858 90 00 AC         [24] 1329 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a3)
      00385B F0               [24] 1330 	movx	@dptr,a
      00385C 90 00 AD         [24] 1331 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a4)
      00385F F0               [24] 1332 	movx	@dptr,a
      003860 90 00 AE         [24] 1333 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a5)
      003863 F0               [24] 1334 	movx	@dptr,a
      003864 90 00 AF         [24] 1335 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a6)
      003867 F0               [24] 1336 	movx	@dptr,a
      003868 90 00 B0         [24] 1337 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a7)
      00386B F0               [24] 1338 	movx	@dptr,a
      00386C 90 00 B1         [24] 1339 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a8)
      00386F F0               [24] 1340 	movx	@dptr,a
      003870 90 00 B2         [24] 1341 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00a9)
      003873 F0               [24] 1342 	movx	@dptr,a
      003874 90 00 B3         [24] 1343 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00aa)
      003877 F0               [24] 1344 	movx	@dptr,a
      003878 90 00 B4         [24] 1345 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ab)
      00387B F0               [24] 1346 	movx	@dptr,a
      00387C 90 00 B5         [24] 1347 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ac)
      00387F F0               [24] 1348 	movx	@dptr,a
      003880 90 00 B6         [24] 1349 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ad)
      003883 F0               [24] 1350 	movx	@dptr,a
      003884 90 00 B7         [24] 1351 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ae)
      003887 F0               [24] 1352 	movx	@dptr,a
      003888 90 00 B8         [24] 1353 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00af)
      00388B F0               [24] 1354 	movx	@dptr,a
      00388C 90 00 B9         [24] 1355 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b0)
      00388F F0               [24] 1356 	movx	@dptr,a
      003890 90 00 BA         [24] 1357 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b1)
      003893 F0               [24] 1358 	movx	@dptr,a
      003894 90 00 BB         [24] 1359 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b2)
      003897 F0               [24] 1360 	movx	@dptr,a
      003898 90 00 BC         [24] 1361 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b3)
      00389B F0               [24] 1362 	movx	@dptr,a
      00389C 90 00 BD         [24] 1363 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b4)
      00389F F0               [24] 1364 	movx	@dptr,a
      0038A0 90 00 BE         [24] 1365 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b5)
      0038A3 F0               [24] 1366 	movx	@dptr,a
      0038A4 90 00 BF         [24] 1367 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b6)
      0038A7 F0               [24] 1368 	movx	@dptr,a
      0038A8 90 00 C0         [24] 1369 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b7)
      0038AB F0               [24] 1370 	movx	@dptr,a
      0038AC 90 00 C1         [24] 1371 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b8)
      0038AF F0               [24] 1372 	movx	@dptr,a
      0038B0 90 00 C2         [24] 1373 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00b9)
      0038B3 F0               [24] 1374 	movx	@dptr,a
      0038B4 90 00 C3         [24] 1375 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ba)
      0038B7 F0               [24] 1376 	movx	@dptr,a
      0038B8 90 00 C4         [24] 1377 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00bb)
      0038BB F0               [24] 1378 	movx	@dptr,a
      0038BC 90 00 C5         [24] 1379 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00bc)
      0038BF F0               [24] 1380 	movx	@dptr,a
      0038C0 90 00 C6         [24] 1381 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00bd)
      0038C3 F0               [24] 1382 	movx	@dptr,a
      0038C4 90 00 C7         [24] 1383 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00be)
      0038C7 F0               [24] 1384 	movx	@dptr,a
      0038C8 90 00 C8         [24] 1385 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00bf)
      0038CB F0               [24] 1386 	movx	@dptr,a
      0038CC 90 00 C9         [24] 1387 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c0)
      0038CF F0               [24] 1388 	movx	@dptr,a
      0038D0 90 00 CA         [24] 1389 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c1)
      0038D3 F0               [24] 1390 	movx	@dptr,a
      0038D4 90 00 CB         [24] 1391 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c2)
      0038D7 F0               [24] 1392 	movx	@dptr,a
      0038D8 90 00 CC         [24] 1393 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c3)
      0038DB F0               [24] 1394 	movx	@dptr,a
      0038DC 90 00 CD         [24] 1395 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c4)
      0038DF F0               [24] 1396 	movx	@dptr,a
      0038E0 90 00 CE         [24] 1397 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c5)
      0038E3 F0               [24] 1398 	movx	@dptr,a
      0038E4 90 00 CF         [24] 1399 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c6)
      0038E7 F0               [24] 1400 	movx	@dptr,a
      0038E8 90 00 D0         [24] 1401 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c7)
      0038EB F0               [24] 1402 	movx	@dptr,a
      0038EC 90 00 D1         [24] 1403 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c8)
      0038EF F0               [24] 1404 	movx	@dptr,a
      0038F0 90 00 D2         [24] 1405 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00c9)
      0038F3 F0               [24] 1406 	movx	@dptr,a
      0038F4 90 00 D3         [24] 1407 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ca)
      0038F7 F0               [24] 1408 	movx	@dptr,a
      0038F8 90 00 D4         [24] 1409 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00cb)
      0038FB F0               [24] 1410 	movx	@dptr,a
      0038FC 90 00 D5         [24] 1411 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00cc)
      0038FF F0               [24] 1412 	movx	@dptr,a
      003900 90 00 D6         [24] 1413 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00cd)
      003903 F0               [24] 1414 	movx	@dptr,a
      003904 90 00 D7         [24] 1415 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ce)
      003907 F0               [24] 1416 	movx	@dptr,a
      003908 90 00 D8         [24] 1417 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00cf)
      00390B F0               [24] 1418 	movx	@dptr,a
      00390C 90 00 D9         [24] 1419 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d0)
      00390F F0               [24] 1420 	movx	@dptr,a
      003910 90 00 DA         [24] 1421 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d1)
      003913 F0               [24] 1422 	movx	@dptr,a
      003914 90 00 DB         [24] 1423 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d2)
      003917 F0               [24] 1424 	movx	@dptr,a
      003918 90 00 DC         [24] 1425 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d3)
      00391B F0               [24] 1426 	movx	@dptr,a
      00391C 90 00 DD         [24] 1427 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d4)
      00391F F0               [24] 1428 	movx	@dptr,a
      003920 90 00 DE         [24] 1429 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d5)
      003923 F0               [24] 1430 	movx	@dptr,a
      003924 90 00 DF         [24] 1431 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d6)
      003927 F0               [24] 1432 	movx	@dptr,a
      003928 90 00 E0         [24] 1433 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d7)
      00392B F0               [24] 1434 	movx	@dptr,a
      00392C 90 00 E1         [24] 1435 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d8)
      00392F F0               [24] 1436 	movx	@dptr,a
      003930 90 00 E2         [24] 1437 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00d9)
      003933 F0               [24] 1438 	movx	@dptr,a
      003934 90 00 E3         [24] 1439 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00da)
      003937 F0               [24] 1440 	movx	@dptr,a
      003938 90 00 E4         [24] 1441 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00db)
      00393B F0               [24] 1442 	movx	@dptr,a
      00393C 90 00 E5         [24] 1443 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00dc)
      00393F F0               [24] 1444 	movx	@dptr,a
      003940 90 00 E6         [24] 1445 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00dd)
      003943 F0               [24] 1446 	movx	@dptr,a
      003944 90 00 E7         [24] 1447 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00de)
      003947 F0               [24] 1448 	movx	@dptr,a
      003948 90 00 E8         [24] 1449 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00df)
      00394B F0               [24] 1450 	movx	@dptr,a
      00394C 90 00 E9         [24] 1451 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e0)
      00394F F0               [24] 1452 	movx	@dptr,a
      003950 90 00 EA         [24] 1453 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e1)
      003953 F0               [24] 1454 	movx	@dptr,a
      003954 90 00 EB         [24] 1455 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e2)
      003957 F0               [24] 1456 	movx	@dptr,a
      003958 90 00 EC         [24] 1457 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e3)
      00395B F0               [24] 1458 	movx	@dptr,a
      00395C 90 00 ED         [24] 1459 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e4)
      00395F F0               [24] 1460 	movx	@dptr,a
      003960 90 00 EE         [24] 1461 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e5)
      003963 F0               [24] 1462 	movx	@dptr,a
      003964 90 00 EF         [24] 1463 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e6)
      003967 F0               [24] 1464 	movx	@dptr,a
      003968 90 00 F0         [24] 1465 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e7)
      00396B F0               [24] 1466 	movx	@dptr,a
      00396C 90 00 F1         [24] 1467 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e8)
      00396F F0               [24] 1468 	movx	@dptr,a
      003970 90 00 F2         [24] 1469 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00e9)
      003973 F0               [24] 1470 	movx	@dptr,a
      003974 90 00 F3         [24] 1471 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ea)
      003977 F0               [24] 1472 	movx	@dptr,a
      003978 90 00 F4         [24] 1473 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00eb)
      00397B F0               [24] 1474 	movx	@dptr,a
      00397C 90 00 F5         [24] 1475 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ec)
      00397F F0               [24] 1476 	movx	@dptr,a
      003980 90 00 F6         [24] 1477 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ed)
      003983 F0               [24] 1478 	movx	@dptr,a
      003984 90 00 F7         [24] 1479 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ee)
      003987 F0               [24] 1480 	movx	@dptr,a
      003988 90 00 F8         [24] 1481 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ef)
      00398B F0               [24] 1482 	movx	@dptr,a
      00398C 90 00 F9         [24] 1483 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f0)
      00398F F0               [24] 1484 	movx	@dptr,a
      003990 90 00 FA         [24] 1485 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f1)
      003993 F0               [24] 1486 	movx	@dptr,a
      003994 90 00 FB         [24] 1487 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f2)
      003997 F0               [24] 1488 	movx	@dptr,a
      003998 90 00 FC         [24] 1489 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f3)
      00399B F0               [24] 1490 	movx	@dptr,a
      00399C 90 00 FD         [24] 1491 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f4)
      00399F F0               [24] 1492 	movx	@dptr,a
      0039A0 90 00 FE         [24] 1493 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f5)
      0039A3 F0               [24] 1494 	movx	@dptr,a
      0039A4 90 00 FF         [24] 1495 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f6)
      0039A7 F0               [24] 1496 	movx	@dptr,a
      0039A8 90 01 00         [24] 1497 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f7)
      0039AB F0               [24] 1498 	movx	@dptr,a
      0039AC 90 01 01         [24] 1499 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f8)
      0039AF F0               [24] 1500 	movx	@dptr,a
      0039B0 90 01 02         [24] 1501 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00f9)
      0039B3 F0               [24] 1502 	movx	@dptr,a
      0039B4 90 01 03         [24] 1503 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00fa)
      0039B7 F0               [24] 1504 	movx	@dptr,a
      0039B8 90 01 04         [24] 1505 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00fb)
      0039BB F0               [24] 1506 	movx	@dptr,a
      0039BC 90 01 05         [24] 1507 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00fc)
      0039BF F0               [24] 1508 	movx	@dptr,a
      0039C0 90 01 06         [24] 1509 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00fd)
      0039C3 F0               [24] 1510 	movx	@dptr,a
      0039C4 90 01 07         [24] 1511 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00fe)
      0039C7 F0               [24] 1512 	movx	@dptr,a
      0039C8 90 01 08         [24] 1513 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_21 + 0x00ff)
      0039CB F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	i2c_bit_bang.c:219: SCL = PULSE_HIGH;
                                   1516 ;	assignBit
      0039CC D2 92            [12] 1517 	setb	_P1_2
                                   1518 ;	i2c_bit_bang.c:220: SDA = PULSE_HIGH;
                                   1519 ;	assignBit
      0039CE D2 93            [12] 1520 	setb	_P1_3
                                   1521 ;	i2c_bit_bang.c:221: delay(2);
      0039D0 90 00 02         [24] 1522 	mov	dptr,#0x0002
      0039D3 12 33 CC         [24] 1523 	lcall	_delay
                                   1524 ;	i2c_bit_bang.c:222: SDA = PULSE_LOW;
                                   1525 ;	assignBit
      0039D6 C2 93            [12] 1526 	clr	_P1_3
                                   1527 ;	i2c_bit_bang.c:223: delay(2);
      0039D8 90 00 02         [24] 1528 	mov	dptr,#0x0002
      0039DB 12 33 CC         [24] 1529 	lcall	_delay
                                   1530 ;	i2c_bit_bang.c:224: SCL = PULSE_LOW;
                                   1531 ;	assignBit
      0039DE C2 92            [12] 1532 	clr	_P1_2
                                   1533 ;	i2c_bit_bang.c:227: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      0039E0 90 00 08         [24] 1534 	mov	dptr,#_Byte_Read_Sequential_block_65536_20
      0039E3 E0               [24] 1535 	movx	a,@dptr
      0039E4 25 E0            [12] 1536 	add	a,acc
      0039E6 FF               [12] 1537 	mov	r7,a
      0039E7 74 A0            [12] 1538 	mov	a,#0xa0
      0039E9 4F               [12] 1539 	orl	a,r7
      0039EA F5 82            [12] 1540 	mov	dpl,a
                                   1541 ;	i2c_bit_bang.c:230: sendByte(byte);
      0039EC C0 07            [24] 1542 	push	ar7
      0039EE 12 33 E1         [24] 1543 	lcall	_sendByte
                                   1544 ;	i2c_bit_bang.c:231: SDA = PULSE_HIGH;
                                   1545 ;	assignBit
      0039F1 D2 93            [12] 1546 	setb	_P1_3
                                   1547 ;	i2c_bit_bang.c:232: SCL = PULSE_HIGH;
                                   1548 ;	assignBit
      0039F3 D2 92            [12] 1549 	setb	_P1_2
                                   1550 ;	i2c_bit_bang.c:233: delay(3);
      0039F5 90 00 03         [24] 1551 	mov	dptr,#0x0003
      0039F8 12 33 CC         [24] 1552 	lcall	_delay
                                   1553 ;	i2c_bit_bang.c:239: SCL = PULSE_LOW;
                                   1554 ;	assignBit
      0039FB C2 92            [12] 1555 	clr	_P1_2
                                   1556 ;	i2c_bit_bang.c:240: delay(0);
      0039FD 90 00 00         [24] 1557 	mov	dptr,#0x0000
      003A00 12 33 CC         [24] 1558 	lcall	_delay
                                   1559 ;	i2c_bit_bang.c:242: sendByte(start_address);
      003A03 90 00 06         [24] 1560 	mov	dptr,#_Byte_Read_Sequential_PARM_2
      003A06 E0               [24] 1561 	movx	a,@dptr
      003A07 F5 82            [12] 1562 	mov	dpl,a
      003A09 12 33 E1         [24] 1563 	lcall	_sendByte
                                   1564 ;	i2c_bit_bang.c:244: SDA = PULSE_HIGH;
                                   1565 ;	assignBit
      003A0C D2 93            [12] 1566 	setb	_P1_3
                                   1567 ;	i2c_bit_bang.c:245: SCL = PULSE_HIGH;
                                   1568 ;	assignBit
      003A0E D2 92            [12] 1569 	setb	_P1_2
                                   1570 ;	i2c_bit_bang.c:246: delay(2);
      003A10 90 00 02         [24] 1571 	mov	dptr,#0x0002
      003A13 12 33 CC         [24] 1572 	lcall	_delay
                                   1573 ;	i2c_bit_bang.c:252: SCL = PULSE_LOW;
                                   1574 ;	assignBit
      003A16 C2 92            [12] 1575 	clr	_P1_2
                                   1576 ;	i2c_bit_bang.c:253: SDA = PULSE_HIGH;
                                   1577 ;	assignBit
      003A18 D2 93            [12] 1578 	setb	_P1_3
                                   1579 ;	i2c_bit_bang.c:254: delay(2);
      003A1A 90 00 02         [24] 1580 	mov	dptr,#0x0002
      003A1D 12 33 CC         [24] 1581 	lcall	_delay
                                   1582 ;	i2c_bit_bang.c:255: SCL = PULSE_HIGH;
                                   1583 ;	assignBit
      003A20 D2 92            [12] 1584 	setb	_P1_2
                                   1585 ;	i2c_bit_bang.c:256: delay(0);
      003A22 90 00 00         [24] 1586 	mov	dptr,#0x0000
      003A25 12 33 CC         [24] 1587 	lcall	_delay
                                   1588 ;	i2c_bit_bang.c:257: SDA = PULSE_LOW;
                                   1589 ;	assignBit
      003A28 C2 93            [12] 1590 	clr	_P1_3
                                   1591 ;	i2c_bit_bang.c:258: delay(2);
      003A2A 90 00 02         [24] 1592 	mov	dptr,#0x0002
      003A2D 12 33 CC         [24] 1593 	lcall	_delay
      003A30 D0 07            [24] 1594 	pop	ar7
                                   1595 ;	i2c_bit_bang.c:259: SCL = PULSE_LOW;
                                   1596 ;	assignBit
      003A32 C2 92            [12] 1597 	clr	_P1_2
                                   1598 ;	i2c_bit_bang.c:260: byte = START_BYTE | (block << 1) | READ_BYTE;
      003A34 74 A1            [12] 1599 	mov	a,#0xa1
      003A36 4F               [12] 1600 	orl	a,r7
      003A37 F5 82            [12] 1601 	mov	dpl,a
                                   1602 ;	i2c_bit_bang.c:263: sendByte(byte);
      003A39 12 33 E1         [24] 1603 	lcall	_sendByte
                                   1604 ;	i2c_bit_bang.c:264: SDA = PULSE_HIGH;
                                   1605 ;	assignBit
      003A3C D2 93            [12] 1606 	setb	_P1_3
                                   1607 ;	i2c_bit_bang.c:265: delay(2);
      003A3E 90 00 02         [24] 1608 	mov	dptr,#0x0002
      003A41 12 33 CC         [24] 1609 	lcall	_delay
                                   1610 ;	i2c_bit_bang.c:271: SCL = PULSE_HIGH;
                                   1611 ;	assignBit
      003A44 D2 92            [12] 1612 	setb	_P1_2
                                   1613 ;	i2c_bit_bang.c:272: delay(2);
      003A46 90 00 02         [24] 1614 	mov	dptr,#0x0002
      003A49 12 33 CC         [24] 1615 	lcall	_delay
                                   1616 ;	i2c_bit_bang.c:273: SCL = PULSE_LOW;
                                   1617 ;	assignBit
      003A4C C2 92            [12] 1618 	clr	_P1_2
                                   1619 ;	i2c_bit_bang.c:274: delay(2);
      003A4E 90 00 02         [24] 1620 	mov	dptr,#0x0002
      003A51 12 33 CC         [24] 1621 	lcall	_delay
                                   1622 ;	i2c_bit_bang.c:276: for(int l = 0; l < (address_range + 1); l++){
      003A54 90 00 07         [24] 1623 	mov	dptr,#_Byte_Read_Sequential_PARM_3
      003A57 E0               [24] 1624 	movx	a,@dptr
      003A58 FF               [12] 1625 	mov	r7,a
      003A59 E4               [12] 1626 	clr	a
      003A5A F5 08            [12] 1627 	mov	_Byte_Read_Sequential_l_131073_23,a
      003A5C F5 09            [12] 1628 	mov	(_Byte_Read_Sequential_l_131073_23 + 1),a
      003A5E                       1629 00109$:
      003A5E 8F 03            [24] 1630 	mov	ar3,r7
      003A60 7C 00            [12] 1631 	mov	r4,#0x00
      003A62 74 01            [12] 1632 	mov	a,#0x01
      003A64 2B               [12] 1633 	add	a,r3
      003A65 F9               [12] 1634 	mov	r1,a
      003A66 E4               [12] 1635 	clr	a
      003A67 3C               [12] 1636 	addc	a,r4
      003A68 FA               [12] 1637 	mov	r2,a
      003A69 C3               [12] 1638 	clr	c
      003A6A E5 08            [12] 1639 	mov	a,_Byte_Read_Sequential_l_131073_23
      003A6C 99               [12] 1640 	subb	a,r1
      003A6D E5 09            [12] 1641 	mov	a,(_Byte_Read_Sequential_l_131073_23 + 1)
      003A6F 64 80            [12] 1642 	xrl	a,#0x80
      003A71 8A F0            [24] 1643 	mov	b,r2
      003A73 63 F0 80         [24] 1644 	xrl	b,#0x80
      003A76 95 F0            [12] 1645 	subb	a,b
      003A78 40 03            [24] 1646 	jc	00140$
      003A7A 02 3B 1F         [24] 1647 	ljmp	00104$
      003A7D                       1648 00140$:
                                   1649 ;	i2c_bit_bang.c:277: for(int k = 0; k < BYTE_LENGTH; k++){
      003A7D E4               [12] 1650 	clr	a
      003A7E F5 0A            [12] 1651 	mov	_Byte_Read_Sequential_k_262145_25,a
      003A80 F5 0B            [12] 1652 	mov	(_Byte_Read_Sequential_k_262145_25 + 1),a
      003A82                       1653 00106$:
      003A82 C3               [12] 1654 	clr	c
      003A83 E5 0A            [12] 1655 	mov	a,_Byte_Read_Sequential_k_262145_25
      003A85 94 08            [12] 1656 	subb	a,#0x08
      003A87 E5 0B            [12] 1657 	mov	a,(_Byte_Read_Sequential_k_262145_25 + 1)
      003A89 64 80            [12] 1658 	xrl	a,#0x80
      003A8B 94 80            [12] 1659 	subb	a,#0x80
      003A8D 50 58            [24] 1660 	jnc	00101$
                                   1661 ;	i2c_bit_bang.c:278: SDA= PULSE_HIGH;
                                   1662 ;	assignBit
      003A8F D2 93            [12] 1663 	setb	_P1_3
                                   1664 ;	i2c_bit_bang.c:279: buffer[l] = buffer[l] << 1;
      003A91 E5 08            [12] 1665 	mov	a,_Byte_Read_Sequential_l_131073_23
      003A93 24 09            [12] 1666 	add	a,#_Byte_Read_Sequential_buffer_65536_21
      003A95 F8               [12] 1667 	mov	r0,a
      003A96 E5 09            [12] 1668 	mov	a,(_Byte_Read_Sequential_l_131073_23 + 1)
      003A98 34 00            [12] 1669 	addc	a,#(_Byte_Read_Sequential_buffer_65536_21 >> 8)
      003A9A FA               [12] 1670 	mov	r2,a
      003A9B 88 82            [24] 1671 	mov	dpl,r0
      003A9D 8A 83            [24] 1672 	mov	dph,r2
      003A9F E0               [24] 1673 	movx	a,@dptr
      003AA0 25 E0            [12] 1674 	add	a,acc
      003AA2 88 82            [24] 1675 	mov	dpl,r0
      003AA4 8A 83            [24] 1676 	mov	dph,r2
      003AA6 F0               [24] 1677 	movx	@dptr,a
                                   1678 ;	i2c_bit_bang.c:280: SCL = PULSE_HIGH;
                                   1679 ;	assignBit
      003AA7 D2 92            [12] 1680 	setb	_P1_2
                                   1681 ;	i2c_bit_bang.c:281: delay(1);
      003AA9 90 00 01         [24] 1682 	mov	dptr,#0x0001
      003AAC C0 07            [24] 1683 	push	ar7
      003AAE C0 04            [24] 1684 	push	ar4
      003AB0 C0 03            [24] 1685 	push	ar3
      003AB2 C0 02            [24] 1686 	push	ar2
      003AB4 C0 00            [24] 1687 	push	ar0
      003AB6 12 33 CC         [24] 1688 	lcall	_delay
      003AB9 D0 00            [24] 1689 	pop	ar0
      003ABB D0 02            [24] 1690 	pop	ar2
                                   1691 ;	i2c_bit_bang.c:282: buffer[l] |= SDA;
      003ABD 88 82            [24] 1692 	mov	dpl,r0
      003ABF 8A 83            [24] 1693 	mov	dph,r2
      003AC1 E0               [24] 1694 	movx	a,@dptr
      003AC2 F9               [12] 1695 	mov	r1,a
      003AC3 A2 93            [12] 1696 	mov	c,_P1_3
      003AC5 E4               [12] 1697 	clr	a
      003AC6 33               [12] 1698 	rlc	a
      003AC7 42 01            [12] 1699 	orl	ar1,a
      003AC9 88 82            [24] 1700 	mov	dpl,r0
      003ACB 8A 83            [24] 1701 	mov	dph,r2
      003ACD E9               [12] 1702 	mov	a,r1
      003ACE F0               [24] 1703 	movx	@dptr,a
                                   1704 ;	i2c_bit_bang.c:283: SCL = PULSE_LOW;
                                   1705 ;	assignBit
      003ACF C2 92            [12] 1706 	clr	_P1_2
                                   1707 ;	i2c_bit_bang.c:284: delay(1);
      003AD1 90 00 01         [24] 1708 	mov	dptr,#0x0001
      003AD4 12 33 CC         [24] 1709 	lcall	_delay
      003AD7 D0 03            [24] 1710 	pop	ar3
      003AD9 D0 04            [24] 1711 	pop	ar4
      003ADB D0 07            [24] 1712 	pop	ar7
                                   1713 ;	i2c_bit_bang.c:277: for(int k = 0; k < BYTE_LENGTH; k++){
      003ADD 05 0A            [12] 1714 	inc	_Byte_Read_Sequential_k_262145_25
      003ADF E4               [12] 1715 	clr	a
      003AE0 B5 0A 9F         [24] 1716 	cjne	a,_Byte_Read_Sequential_k_262145_25,00106$
      003AE3 05 0B            [12] 1717 	inc	(_Byte_Read_Sequential_k_262145_25 + 1)
      003AE5 80 9B            [24] 1718 	sjmp	00106$
      003AE7                       1719 00101$:
                                   1720 ;	i2c_bit_bang.c:287: if(l < address_range){
      003AE7 C3               [12] 1721 	clr	c
      003AE8 E5 08            [12] 1722 	mov	a,_Byte_Read_Sequential_l_131073_23
      003AEA 9B               [12] 1723 	subb	a,r3
      003AEB E5 09            [12] 1724 	mov	a,(_Byte_Read_Sequential_l_131073_23 + 1)
      003AED 64 80            [12] 1725 	xrl	a,#0x80
      003AEF 8C F0            [24] 1726 	mov	b,r4
      003AF1 63 F0 80         [24] 1727 	xrl	b,#0x80
      003AF4 95 F0            [12] 1728 	subb	a,b
      003AF6 50 1C            [24] 1729 	jnc	00110$
                                   1730 ;	i2c_bit_bang.c:288: SDA = PULSE_LOW;
                                   1731 ;	assignBit
      003AF8 C2 93            [12] 1732 	clr	_P1_3
                                   1733 ;	i2c_bit_bang.c:289: delay(0);
      003AFA 90 00 00         [24] 1734 	mov	dptr,#0x0000
      003AFD C0 07            [24] 1735 	push	ar7
      003AFF 12 33 CC         [24] 1736 	lcall	_delay
                                   1737 ;	i2c_bit_bang.c:290: SCL = PULSE_HIGH;
                                   1738 ;	assignBit
      003B02 D2 92            [12] 1739 	setb	_P1_2
                                   1740 ;	i2c_bit_bang.c:291: delay(2);
      003B04 90 00 02         [24] 1741 	mov	dptr,#0x0002
      003B07 12 33 CC         [24] 1742 	lcall	_delay
                                   1743 ;	i2c_bit_bang.c:292: SCL = PULSE_LOW;
                                   1744 ;	assignBit
      003B0A C2 92            [12] 1745 	clr	_P1_2
                                   1746 ;	i2c_bit_bang.c:293: delay(1);
      003B0C 90 00 01         [24] 1747 	mov	dptr,#0x0001
      003B0F 12 33 CC         [24] 1748 	lcall	_delay
      003B12 D0 07            [24] 1749 	pop	ar7
      003B14                       1750 00110$:
                                   1751 ;	i2c_bit_bang.c:276: for(int l = 0; l < (address_range + 1); l++){
      003B14 05 08            [12] 1752 	inc	_Byte_Read_Sequential_l_131073_23
      003B16 E4               [12] 1753 	clr	a
      003B17 B5 08 02         [24] 1754 	cjne	a,_Byte_Read_Sequential_l_131073_23,00144$
      003B1A 05 09            [12] 1755 	inc	(_Byte_Read_Sequential_l_131073_23 + 1)
      003B1C                       1756 00144$:
      003B1C 02 3A 5E         [24] 1757 	ljmp	00109$
      003B1F                       1758 00104$:
                                   1759 ;	i2c_bit_bang.c:297: SDA = PULSE_HIGH;
                                   1760 ;	assignBit
      003B1F D2 93            [12] 1761 	setb	_P1_3
                                   1762 ;	i2c_bit_bang.c:298: delay(2);
      003B21 90 00 02         [24] 1763 	mov	dptr,#0x0002
      003B24 12 33 CC         [24] 1764 	lcall	_delay
                                   1765 ;	i2c_bit_bang.c:299: SCL = PULSE_HIGH;
                                   1766 ;	assignBit
      003B27 D2 92            [12] 1767 	setb	_P1_2
                                   1768 ;	i2c_bit_bang.c:300: delay(2);
      003B29 90 00 02         [24] 1769 	mov	dptr,#0x0002
      003B2C 12 33 CC         [24] 1770 	lcall	_delay
                                   1771 ;	i2c_bit_bang.c:301: SCL = PULSE_LOW;
                                   1772 ;	assignBit
      003B2F C2 92            [12] 1773 	clr	_P1_2
                                   1774 ;	i2c_bit_bang.c:302: SDA = PULSE_LOW;
                                   1775 ;	assignBit
      003B31 C2 93            [12] 1776 	clr	_P1_3
                                   1777 ;	i2c_bit_bang.c:303: delay(2);
      003B33 90 00 02         [24] 1778 	mov	dptr,#0x0002
      003B36 12 33 CC         [24] 1779 	lcall	_delay
                                   1780 ;	i2c_bit_bang.c:304: SCL = PULSE_HIGH;
                                   1781 ;	assignBit
      003B39 D2 92            [12] 1782 	setb	_P1_2
                                   1783 ;	i2c_bit_bang.c:305: delay(2);
      003B3B 90 00 02         [24] 1784 	mov	dptr,#0x0002
      003B3E 12 33 CC         [24] 1785 	lcall	_delay
                                   1786 ;	i2c_bit_bang.c:306: SDA = PULSE_HIGH;
                                   1787 ;	assignBit
      003B41 D2 93            [12] 1788 	setb	_P1_3
                                   1789 ;	i2c_bit_bang.c:307: delay(2);
      003B43 90 00 02         [24] 1790 	mov	dptr,#0x0002
      003B46 12 33 CC         [24] 1791 	lcall	_delay
                                   1792 ;	i2c_bit_bang.c:308: SCL = PULSE_LOW;
                                   1793 ;	assignBit
      003B49 C2 92            [12] 1794 	clr	_P1_2
                                   1795 ;	i2c_bit_bang.c:309: delay(2);
      003B4B 90 00 02         [24] 1796 	mov	dptr,#0x0002
      003B4E 12 33 CC         [24] 1797 	lcall	_delay
                                   1798 ;	i2c_bit_bang.c:312: return buffer;
      003B51 90 00 09         [24] 1799 	mov	dptr,#_Byte_Read_Sequential_buffer_65536_21
                                   1800 ;	i2c_bit_bang.c:313: }
      003B54 22               [24] 1801 	ret
                                   1802 ;------------------------------------------------------------
                                   1803 ;Allocation info for local variables in function 'eeprom_reset'
                                   1804 ;------------------------------------------------------------
                                   1805 ;i                         Allocated to registers r6 r7 
                                   1806 ;------------------------------------------------------------
                                   1807 ;	i2c_bit_bang.c:318: void eeprom_reset(){
                                   1808 ;	-----------------------------------------
                                   1809 ;	 function eeprom_reset
                                   1810 ;	-----------------------------------------
      003B55                       1811 _eeprom_reset:
                                   1812 ;	i2c_bit_bang.c:320: SCL = PULSE_HIGH;
                                   1813 ;	assignBit
      003B55 D2 92            [12] 1814 	setb	_P1_2
                                   1815 ;	i2c_bit_bang.c:321: SDA = PULSE_HIGH;
                                   1816 ;	assignBit
      003B57 D2 93            [12] 1817 	setb	_P1_3
                                   1818 ;	i2c_bit_bang.c:322: delay(2);
      003B59 90 00 02         [24] 1819 	mov	dptr,#0x0002
      003B5C 12 33 CC         [24] 1820 	lcall	_delay
                                   1821 ;	i2c_bit_bang.c:323: SDA = PULSE_LOW;
                                   1822 ;	assignBit
      003B5F C2 93            [12] 1823 	clr	_P1_3
                                   1824 ;	i2c_bit_bang.c:324: delay(0);
      003B61 90 00 00         [24] 1825 	mov	dptr,#0x0000
      003B64 12 33 CC         [24] 1826 	lcall	_delay
                                   1827 ;	i2c_bit_bang.c:325: SCL = PULSE_LOW;
                                   1828 ;	assignBit
      003B67 C2 92            [12] 1829 	clr	_P1_2
                                   1830 ;	i2c_bit_bang.c:326: delay(0);
      003B69 90 00 00         [24] 1831 	mov	dptr,#0x0000
      003B6C 12 33 CC         [24] 1832 	lcall	_delay
                                   1833 ;	i2c_bit_bang.c:329: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
      003B6F 7E 00            [12] 1834 	mov	r6,#0x00
      003B71 7F 00            [12] 1835 	mov	r7,#0x00
      003B73                       1836 00103$:
      003B73 C3               [12] 1837 	clr	c
      003B74 EE               [12] 1838 	mov	a,r6
      003B75 94 09            [12] 1839 	subb	a,#0x09
      003B77 EF               [12] 1840 	mov	a,r7
      003B78 64 80            [12] 1841 	xrl	a,#0x80
      003B7A 94 80            [12] 1842 	subb	a,#0x80
      003B7C 50 21            [24] 1843 	jnc	00101$
                                   1844 ;	i2c_bit_bang.c:330: SDA = PULSE_HIGH;
                                   1845 ;	assignBit
      003B7E D2 93            [12] 1846 	setb	_P1_3
                                   1847 ;	i2c_bit_bang.c:331: SCL = PULSE_HIGH;
                                   1848 ;	assignBit
      003B80 D2 92            [12] 1849 	setb	_P1_2
                                   1850 ;	i2c_bit_bang.c:332: delay(2);
      003B82 90 00 02         [24] 1851 	mov	dptr,#0x0002
      003B85 C0 07            [24] 1852 	push	ar7
      003B87 C0 06            [24] 1853 	push	ar6
      003B89 12 33 CC         [24] 1854 	lcall	_delay
                                   1855 ;	i2c_bit_bang.c:333: SCL = PULSE_LOW;
                                   1856 ;	assignBit
      003B8C C2 92            [12] 1857 	clr	_P1_2
                                   1858 ;	i2c_bit_bang.c:334: delay(1);
      003B8E 90 00 01         [24] 1859 	mov	dptr,#0x0001
      003B91 12 33 CC         [24] 1860 	lcall	_delay
      003B94 D0 06            [24] 1861 	pop	ar6
      003B96 D0 07            [24] 1862 	pop	ar7
                                   1863 ;	i2c_bit_bang.c:329: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
      003B98 0E               [12] 1864 	inc	r6
      003B99 BE 00 D7         [24] 1865 	cjne	r6,#0x00,00103$
      003B9C 0F               [12] 1866 	inc	r7
      003B9D 80 D4            [24] 1867 	sjmp	00103$
      003B9F                       1868 00101$:
                                   1869 ;	i2c_bit_bang.c:339: SCL = PULSE_HIGH;
                                   1870 ;	assignBit
      003B9F D2 92            [12] 1871 	setb	_P1_2
                                   1872 ;	i2c_bit_bang.c:340: delay(0);
      003BA1 90 00 00         [24] 1873 	mov	dptr,#0x0000
      003BA4 12 33 CC         [24] 1874 	lcall	_delay
                                   1875 ;	i2c_bit_bang.c:341: SDA = PULSE_LOW;
                                   1876 ;	assignBit
      003BA7 C2 93            [12] 1877 	clr	_P1_3
                                   1878 ;	i2c_bit_bang.c:342: delay(0);
      003BA9 90 00 00         [24] 1879 	mov	dptr,#0x0000
      003BAC 12 33 CC         [24] 1880 	lcall	_delay
                                   1881 ;	i2c_bit_bang.c:343: SCL = PULSE_LOW;
                                   1882 ;	assignBit
      003BAF C2 92            [12] 1883 	clr	_P1_2
                                   1884 ;	i2c_bit_bang.c:344: SDA = PULSE_LOW;
                                   1885 ;	assignBit
      003BB1 C2 93            [12] 1886 	clr	_P1_3
                                   1887 ;	i2c_bit_bang.c:345: delay(1);
      003BB3 90 00 01         [24] 1888 	mov	dptr,#0x0001
      003BB6 12 33 CC         [24] 1889 	lcall	_delay
                                   1890 ;	i2c_bit_bang.c:346: SCL = PULSE_HIGH;
                                   1891 ;	assignBit
      003BB9 D2 92            [12] 1892 	setb	_P1_2
                                   1893 ;	i2c_bit_bang.c:347: delay(0);
      003BBB 90 00 00         [24] 1894 	mov	dptr,#0x0000
      003BBE 12 33 CC         [24] 1895 	lcall	_delay
                                   1896 ;	i2c_bit_bang.c:348: SDA = PULSE_HIGH;
                                   1897 ;	assignBit
      003BC1 D2 93            [12] 1898 	setb	_P1_3
                                   1899 ;	i2c_bit_bang.c:349: delay(0);
      003BC3 90 00 00         [24] 1900 	mov	dptr,#0x0000
      003BC6 12 33 CC         [24] 1901 	lcall	_delay
                                   1902 ;	i2c_bit_bang.c:350: SCL = PULSE_LOW;
                                   1903 ;	assignBit
      003BC9 C2 92            [12] 1904 	clr	_P1_2
                                   1905 ;	i2c_bit_bang.c:351: }
      003BCB 22               [24] 1906 	ret
                                   1907 	.area CSEG    (CODE)
                                   1908 	.area CONST   (CODE)
                                   1909 	.area XINIT   (CODE)
                                   1910 	.area CABS    (ABS,CODE)
