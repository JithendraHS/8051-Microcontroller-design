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
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _TXD0
                                    136 	.globl _RXD0
                                    137 	.globl _BREG_F7
                                    138 	.globl _BREG_F6
                                    139 	.globl _BREG_F5
                                    140 	.globl _BREG_F4
                                    141 	.globl _BREG_F3
                                    142 	.globl _BREG_F2
                                    143 	.globl _BREG_F1
                                    144 	.globl _BREG_F0
                                    145 	.globl _EECON
                                    146 	.globl _KBF
                                    147 	.globl _KBE
                                    148 	.globl _KBLS
                                    149 	.globl _BRL
                                    150 	.globl _BDRCON
                                    151 	.globl _T2MOD
                                    152 	.globl _SPDAT
                                    153 	.globl _SPSTA
                                    154 	.globl _SPCON
                                    155 	.globl _SADEN
                                    156 	.globl _SADDR
                                    157 	.globl _WDTPRG
                                    158 	.globl _WDTRST
                                    159 	.globl _P5
                                    160 	.globl _P4
                                    161 	.globl _IPH1
                                    162 	.globl _IPL1
                                    163 	.globl _IPH0
                                    164 	.globl _IPL0
                                    165 	.globl _IEN1
                                    166 	.globl _IEN0
                                    167 	.globl _CMOD
                                    168 	.globl _CL
                                    169 	.globl _CH
                                    170 	.globl _CCON
                                    171 	.globl _CCAPM4
                                    172 	.globl _CCAPM3
                                    173 	.globl _CCAPM2
                                    174 	.globl _CCAPM1
                                    175 	.globl _CCAPM0
                                    176 	.globl _CCAP4L
                                    177 	.globl _CCAP3L
                                    178 	.globl _CCAP2L
                                    179 	.globl _CCAP1L
                                    180 	.globl _CCAP0L
                                    181 	.globl _CCAP4H
                                    182 	.globl _CCAP3H
                                    183 	.globl _CCAP2H
                                    184 	.globl _CCAP1H
                                    185 	.globl _CCAP0H
                                    186 	.globl _CKCON1
                                    187 	.globl _CKCON0
                                    188 	.globl _CKRL
                                    189 	.globl _AUXR1
                                    190 	.globl _AUXR
                                    191 	.globl _TH2
                                    192 	.globl _TL2
                                    193 	.globl _RCAP2H
                                    194 	.globl _RCAP2L
                                    195 	.globl _T2CON
                                    196 	.globl _B
                                    197 	.globl _ACC
                                    198 	.globl _PSW
                                    199 	.globl _IP
                                    200 	.globl _P3
                                    201 	.globl _IE
                                    202 	.globl _P2
                                    203 	.globl _SBUF
                                    204 	.globl _SCON
                                    205 	.globl _P1
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TL1
                                    209 	.globl _TL0
                                    210 	.globl _TMOD
                                    211 	.globl _TCON
                                    212 	.globl _PCON
                                    213 	.globl _DPH
                                    214 	.globl _DPL
                                    215 	.globl _SP
                                    216 	.globl _P0
                                    217 	.globl _SBUF0
                                    218 	.globl _DP0L
                                    219 	.globl _DP0H
                                    220 	.globl _Byte_Read_Sequential_PARM_3
                                    221 	.globl _Byte_Read_Sequential_PARM_2
                                    222 	.globl _Byte_Read_PARM_2
                                    223 	.globl _Byte_Write_PARM_3
                                    224 	.globl _Byte_Write_PARM_2
                                    225 	.globl _delay
                                    226 	.globl _Byte_Write
                                    227 	.globl _Byte_Read
                                    228 	.globl _Byte_Read_Sequential
                                    229 	.globl _eeprom_reset
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           000083   235 _DP0H	=	0x0083
                           000082   236 _DP0L	=	0x0082
                           000099   237 _SBUF0	=	0x0099
                           000080   238 _P0	=	0x0080
                           000081   239 _SP	=	0x0081
                           000082   240 _DPL	=	0x0082
                           000083   241 _DPH	=	0x0083
                           000087   242 _PCON	=	0x0087
                           000088   243 _TCON	=	0x0088
                           000089   244 _TMOD	=	0x0089
                           00008A   245 _TL0	=	0x008a
                           00008B   246 _TL1	=	0x008b
                           00008C   247 _TH0	=	0x008c
                           00008D   248 _TH1	=	0x008d
                           000090   249 _P1	=	0x0090
                           000098   250 _SCON	=	0x0098
                           000099   251 _SBUF	=	0x0099
                           0000A0   252 _P2	=	0x00a0
                           0000A8   253 _IE	=	0x00a8
                           0000B0   254 _P3	=	0x00b0
                           0000B8   255 _IP	=	0x00b8
                           0000D0   256 _PSW	=	0x00d0
                           0000E0   257 _ACC	=	0x00e0
                           0000F0   258 _B	=	0x00f0
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
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           0000F0   315 _BREG_F0	=	0x00f0
                           0000F1   316 _BREG_F1	=	0x00f1
                           0000F2   317 _BREG_F2	=	0x00f2
                           0000F3   318 _BREG_F3	=	0x00f3
                           0000F4   319 _BREG_F4	=	0x00f4
                           0000F5   320 _BREG_F5	=	0x00f5
                           0000F6   321 _BREG_F6	=	0x00f6
                           0000F7   322 _BREG_F7	=	0x00f7
                           0000B0   323 _RXD0	=	0x00b0
                           0000B1   324 _TXD0	=	0x00b1
                           000080   325 _P0_0	=	0x0080
                           000081   326 _P0_1	=	0x0081
                           000082   327 _P0_2	=	0x0082
                           000083   328 _P0_3	=	0x0083
                           000084   329 _P0_4	=	0x0084
                           000085   330 _P0_5	=	0x0085
                           000086   331 _P0_6	=	0x0086
                           000087   332 _P0_7	=	0x0087
                           000088   333 _IT0	=	0x0088
                           000089   334 _IE0	=	0x0089
                           00008A   335 _IT1	=	0x008a
                           00008B   336 _IE1	=	0x008b
                           00008C   337 _TR0	=	0x008c
                           00008D   338 _TF0	=	0x008d
                           00008E   339 _TR1	=	0x008e
                           00008F   340 _TF1	=	0x008f
                           000090   341 _P1_0	=	0x0090
                           000091   342 _P1_1	=	0x0091
                           000092   343 _P1_2	=	0x0092
                           000093   344 _P1_3	=	0x0093
                           000094   345 _P1_4	=	0x0094
                           000095   346 _P1_5	=	0x0095
                           000096   347 _P1_6	=	0x0096
                           000097   348 _P1_7	=	0x0097
                           000098   349 _RI	=	0x0098
                           000099   350 _TI	=	0x0099
                           00009A   351 _RB8	=	0x009a
                           00009B   352 _TB8	=	0x009b
                           00009C   353 _REN	=	0x009c
                           00009D   354 _SM2	=	0x009d
                           00009E   355 _SM1	=	0x009e
                           00009F   356 _SM0	=	0x009f
                           0000A0   357 _P2_0	=	0x00a0
                           0000A1   358 _P2_1	=	0x00a1
                           0000A2   359 _P2_2	=	0x00a2
                           0000A3   360 _P2_3	=	0x00a3
                           0000A4   361 _P2_4	=	0x00a4
                           0000A5   362 _P2_5	=	0x00a5
                           0000A6   363 _P2_6	=	0x00a6
                           0000A7   364 _P2_7	=	0x00a7
                           0000A8   365 _EX0	=	0x00a8
                           0000A9   366 _ET0	=	0x00a9
                           0000AA   367 _EX1	=	0x00aa
                           0000AB   368 _ET1	=	0x00ab
                           0000AC   369 _ES	=	0x00ac
                           0000AF   370 _EA	=	0x00af
                           0000B0   371 _P3_0	=	0x00b0
                           0000B1   372 _P3_1	=	0x00b1
                           0000B2   373 _P3_2	=	0x00b2
                           0000B3   374 _P3_3	=	0x00b3
                           0000B4   375 _P3_4	=	0x00b4
                           0000B5   376 _P3_5	=	0x00b5
                           0000B6   377 _P3_6	=	0x00b6
                           0000B7   378 _P3_7	=	0x00b7
                           0000B0   379 _RXD	=	0x00b0
                           0000B1   380 _TXD	=	0x00b1
                           0000B2   381 _INT0	=	0x00b2
                           0000B3   382 _INT1	=	0x00b3
                           0000B4   383 _T0	=	0x00b4
                           0000B5   384 _T1	=	0x00b5
                           0000B6   385 _WR	=	0x00b6
                           0000B7   386 _RD	=	0x00b7
                           0000B8   387 _PX0	=	0x00b8
                           0000B9   388 _PT0	=	0x00b9
                           0000BA   389 _PX1	=	0x00ba
                           0000BB   390 _PT1	=	0x00bb
                           0000BC   391 _PS	=	0x00bc
                           0000D0   392 _P	=	0x00d0
                           0000D1   393 _F1	=	0x00d1
                           0000D2   394 _OV	=	0x00d2
                           0000D3   395 _RS0	=	0x00d3
                           0000D4   396 _RS1	=	0x00d4
                           0000D5   397 _F0	=	0x00d5
                           0000D6   398 _AC	=	0x00d6
                           0000D7   399 _CY	=	0x00d7
                           0000AD   400 _ET2	=	0x00ad
                           0000BD   401 _PT2	=	0x00bd
                           0000C8   402 _T2CON_0	=	0x00c8
                           0000C9   403 _T2CON_1	=	0x00c9
                           0000CA   404 _T2CON_2	=	0x00ca
                           0000CB   405 _T2CON_3	=	0x00cb
                           0000CC   406 _T2CON_4	=	0x00cc
                           0000CD   407 _T2CON_5	=	0x00cd
                           0000CE   408 _T2CON_6	=	0x00ce
                           0000CF   409 _T2CON_7	=	0x00cf
                           0000C8   410 _CP_RL2	=	0x00c8
                           0000C9   411 _C_T2	=	0x00c9
                           0000CA   412 _TR2	=	0x00ca
                           0000CB   413 _EXEN2	=	0x00cb
                           0000CC   414 _TCLK	=	0x00cc
                           0000CD   415 _RCLK	=	0x00cd
                           0000CE   416 _EXF2	=	0x00ce
                           0000CF   417 _TF2	=	0x00cf
                           0000DF   418 _CF	=	0x00df
                           0000DE   419 _CR	=	0x00de
                           0000DC   420 _CCF4	=	0x00dc
                           0000DB   421 _CCF3	=	0x00db
                           0000DA   422 _CCF2	=	0x00da
                           0000D9   423 _CCF1	=	0x00d9
                           0000D8   424 _CCF0	=	0x00d8
                           0000AE   425 _EC	=	0x00ae
                           0000BE   426 _PPCL	=	0x00be
                           0000BD   427 _PT2L	=	0x00bd
                           0000BC   428 _PSL	=	0x00bc
                           0000BB   429 _PT1L	=	0x00bb
                           0000BA   430 _PX1L	=	0x00ba
                           0000B9   431 _PT0L	=	0x00b9
                           0000B8   432 _PX0L	=	0x00b8
                           0000C0   433 _P4_0	=	0x00c0
                           0000C1   434 _P4_1	=	0x00c1
                           0000C2   435 _P4_2	=	0x00c2
                           0000C3   436 _P4_3	=	0x00c3
                           0000C4   437 _P4_4	=	0x00c4
                           0000C5   438 _P4_5	=	0x00c5
                           0000C6   439 _P4_6	=	0x00c6
                           0000C7   440 _P4_7	=	0x00c7
                           0000E8   441 _P5_0	=	0x00e8
                           0000E9   442 _P5_1	=	0x00e9
                           0000EA   443 _P5_2	=	0x00ea
                           0000EB   444 _P5_3	=	0x00eb
                           0000EC   445 _P5_4	=	0x00ec
                           0000ED   446 _P5_5	=	0x00ed
                           0000EE   447 _P5_6	=	0x00ee
                           0000EF   448 _P5_7	=	0x00ef
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
      000008                        458 _Byte_Read_Sequential_l_131073_37:
      000008                        459 	.ds 2
      00000A                        460 _Byte_Read_Sequential_k_262145_39:
      00000A                        461 	.ds 2
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable items in internal ram
                                    464 ;--------------------------------------------------------
                                    465 	.area	OSEG    (OVR,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; indirectly addressable internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area ISEG    (DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; absolute internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area IABS    (ABS,DATA)
                                    474 	.area IABS    (ABS,DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; bit data
                                    477 ;--------------------------------------------------------
                                    478 	.area BSEG    (BIT)
                                    479 ;--------------------------------------------------------
                                    480 ; paged external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area PSEG    (PAG,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XSEG    (XDATA)
      000001                        487 _Byte_Write_PARM_2:
      000001                        488 	.ds 1
      000002                        489 _Byte_Write_PARM_3:
      000002                        490 	.ds 1
      000003                        491 _Byte_Write_data_65536_8:
      000003                        492 	.ds 1
      000004                        493 _Byte_Read_PARM_2:
      000004                        494 	.ds 1
      000005                        495 _Byte_Read_block_65536_17:
      000005                        496 	.ds 1
      000006                        497 _Byte_Read_Sequential_PARM_2:
      000006                        498 	.ds 1
      000007                        499 _Byte_Read_Sequential_PARM_3:
      000007                        500 	.ds 1
      000008                        501 _Byte_Read_Sequential_block_65536_28:
      000008                        502 	.ds 1
      000009                        503 _Byte_Read_Sequential_buffer_65536_29:
      000009                        504 	.ds 256
                                    505 ;--------------------------------------------------------
                                    506 ; absolute external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XABS    (ABS,XDATA)
                                    509 ;--------------------------------------------------------
                                    510 ; external initialized ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area XISEG   (XDATA)
                                    513 	.area HOME    (CODE)
                                    514 	.area GSINIT0 (CODE)
                                    515 	.area GSINIT1 (CODE)
                                    516 	.area GSINIT2 (CODE)
                                    517 	.area GSINIT3 (CODE)
                                    518 	.area GSINIT4 (CODE)
                                    519 	.area GSINIT5 (CODE)
                                    520 	.area GSINIT  (CODE)
                                    521 	.area GSFINAL (CODE)
                                    522 	.area CSEG    (CODE)
                                    523 ;--------------------------------------------------------
                                    524 ; global & static initialisations
                                    525 ;--------------------------------------------------------
                                    526 	.area HOME    (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.area GSFINAL (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 ;--------------------------------------------------------
                                    531 ; Home
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
                                    534 	.area HOME    (CODE)
                                    535 ;--------------------------------------------------------
                                    536 ; code
                                    537 ;--------------------------------------------------------
                                    538 	.area CSEG    (CODE)
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'delay'
                                    541 ;------------------------------------------------------------
                                    542 ;t                         Allocated to registers 
                                    543 ;------------------------------------------------------------
                                    544 ;	i2c_bit_bang.c:25: void delay(unsigned int t)
                                    545 ;	-----------------------------------------
                                    546 ;	 function delay
                                    547 ;	-----------------------------------------
      0033CC                        548 _delay:
                           000007   549 	ar7 = 0x07
                           000006   550 	ar6 = 0x06
                           000005   551 	ar5 = 0x05
                           000004   552 	ar4 = 0x04
                           000003   553 	ar3 = 0x03
                           000002   554 	ar2 = 0x02
                           000001   555 	ar1 = 0x01
                           000000   556 	ar0 = 0x00
      0033CC AE 82            [24]  557 	mov	r6,dpl
      0033CE AF 83            [24]  558 	mov	r7,dph
                                    559 ;	i2c_bit_bang.c:27: while(t--){
      0033D0                        560 00101$:
      0033D0 8E 04            [24]  561 	mov	ar4,r6
      0033D2 8F 05            [24]  562 	mov	ar5,r7
      0033D4 1E               [12]  563 	dec	r6
      0033D5 BE FF 01         [24]  564 	cjne	r6,#0xff,00115$
      0033D8 1F               [12]  565 	dec	r7
      0033D9                        566 00115$:
      0033D9 EC               [12]  567 	mov	a,r4
      0033DA 4D               [12]  568 	orl	a,r5
      0033DB 60 03            [24]  569 	jz	00104$
                                    570 ;	i2c_bit_bang.c:28: NOP;
      0033DD 00               [12]  571 	nop	
      0033DE 80 F0            [24]  572 	sjmp	00101$
      0033E0                        573 00104$:
                                    574 ;	i2c_bit_bang.c:30: }
      0033E0 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'Byte_Write'
                                    578 ;------------------------------------------------------------
                                    579 ;byte                      Allocated to registers r7 
                                    580 ;i                         Allocated to registers r5 r6 
                                    581 ;j                         Allocated to registers r6 r7 
                                    582 ;k                         Allocated to registers r6 r7 
                                    583 ;block                     Allocated with name '_Byte_Write_PARM_2'
                                    584 ;address                   Allocated with name '_Byte_Write_PARM_3'
                                    585 ;data                      Allocated with name '_Byte_Write_data_65536_8'
                                    586 ;------------------------------------------------------------
                                    587 ;	i2c_bit_bang.c:32: void Byte_Write(__xdata uint8_t data, __xdata uint8_t block, __xdata uint8_t address){
                                    588 ;	-----------------------------------------
                                    589 ;	 function Byte_Write
                                    590 ;	-----------------------------------------
      0033E1                        591 _Byte_Write:
      0033E1 E5 82            [12]  592 	mov	a,dpl
      0033E3 90 00 03         [24]  593 	mov	dptr,#_Byte_Write_data_65536_8
      0033E6 F0               [24]  594 	movx	@dptr,a
                                    595 ;	i2c_bit_bang.c:33: SCL = PULSE_HIGH;
                                    596 ;	assignBit
      0033E7 D2 92            [12]  597 	setb	_P1_2
                                    598 ;	i2c_bit_bang.c:34: SDA = PULSE_HIGH;
                                    599 ;	assignBit
      0033E9 D2 93            [12]  600 	setb	_P1_3
                                    601 ;	i2c_bit_bang.c:35: delay(2);
      0033EB 90 00 02         [24]  602 	mov	dptr,#0x0002
      0033EE 12 33 CC         [24]  603 	lcall	_delay
                                    604 ;	i2c_bit_bang.c:36: SDA = PULSE_LOW;
                                    605 ;	assignBit
      0033F1 C2 93            [12]  606 	clr	_P1_3
                                    607 ;	i2c_bit_bang.c:37: delay(2);
      0033F3 90 00 02         [24]  608 	mov	dptr,#0x0002
      0033F6 12 33 CC         [24]  609 	lcall	_delay
                                    610 ;	i2c_bit_bang.c:38: SCL = PULSE_LOW;
                                    611 ;	assignBit
      0033F9 C2 92            [12]  612 	clr	_P1_2
                                    613 ;	i2c_bit_bang.c:39: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      0033FB 90 00 01         [24]  614 	mov	dptr,#_Byte_Write_PARM_2
      0033FE E0               [24]  615 	movx	a,@dptr
      0033FF 25 E0            [12]  616 	add	a,acc
      003401 FF               [12]  617 	mov	r7,a
      003402 43 07 A0         [24]  618 	orl	ar7,#0xa0
                                    619 ;	i2c_bit_bang.c:40: for(int i = 0; i < BYTE_LENGTH; i++){
      003405 7D 00            [12]  620 	mov	r5,#0x00
      003407 7E 00            [12]  621 	mov	r6,#0x00
      003409                        622 00105$:
      003409 C3               [12]  623 	clr	c
      00340A ED               [12]  624 	mov	a,r5
      00340B 94 08            [12]  625 	subb	a,#0x08
      00340D EE               [12]  626 	mov	a,r6
      00340E 64 80            [12]  627 	xrl	a,#0x80
      003410 94 80            [12]  628 	subb	a,#0x80
      003412 50 3C            [24]  629 	jnc	00101$
                                    630 ;	i2c_bit_bang.c:41: SDA = byte & (0b10000000);
      003414 EF               [12]  631 	mov	a,r7
      003415 23               [12]  632 	rl	a
      003416 54 01            [12]  633 	anl	a,#0x01
                                    634 ;	assignBit
      003418 24 FF            [12]  635 	add	a,#0xff
      00341A 92 93            [24]  636 	mov	_P1_3,c
                                    637 ;	i2c_bit_bang.c:42: SCL = PULSE_HIGH;
                                    638 ;	assignBit
      00341C D2 92            [12]  639 	setb	_P1_2
                                    640 ;	i2c_bit_bang.c:43: delay(2);
      00341E 90 00 02         [24]  641 	mov	dptr,#0x0002
      003421 C0 07            [24]  642 	push	ar7
      003423 C0 06            [24]  643 	push	ar6
      003425 C0 05            [24]  644 	push	ar5
      003427 12 33 CC         [24]  645 	lcall	_delay
      00342A D0 05            [24]  646 	pop	ar5
      00342C D0 06            [24]  647 	pop	ar6
      00342E D0 07            [24]  648 	pop	ar7
                                    649 ;	i2c_bit_bang.c:44: SCL = PULSE_LOW;
                                    650 ;	assignBit
      003430 C2 92            [12]  651 	clr	_P1_2
                                    652 ;	i2c_bit_bang.c:45: byte = byte << 1;
      003432 8F 04            [24]  653 	mov	ar4,r7
      003434 EC               [12]  654 	mov	a,r4
      003435 2C               [12]  655 	add	a,r4
      003436 FF               [12]  656 	mov	r7,a
                                    657 ;	i2c_bit_bang.c:46: delay(0);
      003437 90 00 00         [24]  658 	mov	dptr,#0x0000
      00343A C0 07            [24]  659 	push	ar7
      00343C C0 06            [24]  660 	push	ar6
      00343E C0 05            [24]  661 	push	ar5
      003440 12 33 CC         [24]  662 	lcall	_delay
      003443 D0 05            [24]  663 	pop	ar5
      003445 D0 06            [24]  664 	pop	ar6
      003447 D0 07            [24]  665 	pop	ar7
                                    666 ;	i2c_bit_bang.c:40: for(int i = 0; i < BYTE_LENGTH; i++){
      003449 0D               [12]  667 	inc	r5
      00344A BD 00 BC         [24]  668 	cjne	r5,#0x00,00105$
      00344D 0E               [12]  669 	inc	r6
      00344E 80 B9            [24]  670 	sjmp	00105$
      003450                        671 00101$:
                                    672 ;	i2c_bit_bang.c:48: SDA = PULSE_HIGH;
                                    673 ;	assignBit
      003450 D2 93            [12]  674 	setb	_P1_3
                                    675 ;	i2c_bit_bang.c:49: SCL = PULSE_HIGH;
                                    676 ;	assignBit
      003452 D2 92            [12]  677 	setb	_P1_2
                                    678 ;	i2c_bit_bang.c:50: delay(2);
      003454 90 00 02         [24]  679 	mov	dptr,#0x0002
      003457 12 33 CC         [24]  680 	lcall	_delay
                                    681 ;	i2c_bit_bang.c:56: SCL = PULSE_LOW;
                                    682 ;	assignBit
      00345A C2 92            [12]  683 	clr	_P1_2
                                    684 ;	i2c_bit_bang.c:57: delay(0);
      00345C 90 00 00         [24]  685 	mov	dptr,#0x0000
      00345F 12 33 CC         [24]  686 	lcall	_delay
                                    687 ;	i2c_bit_bang.c:58: for(int j = 0; j < BYTE_LENGTH; j++){
      003462 7E 00            [12]  688 	mov	r6,#0x00
      003464 7F 00            [12]  689 	mov	r7,#0x00
      003466                        690 00108$:
      003466 C3               [12]  691 	clr	c
      003467 EE               [12]  692 	mov	a,r6
      003468 94 08            [12]  693 	subb	a,#0x08
      00346A EF               [12]  694 	mov	a,r7
      00346B 64 80            [12]  695 	xrl	a,#0x80
      00346D 94 80            [12]  696 	subb	a,#0x80
      00346F 50 35            [24]  697 	jnc	00102$
                                    698 ;	i2c_bit_bang.c:59: SDA = address & (0b10000000);
      003471 90 00 02         [24]  699 	mov	dptr,#_Byte_Write_PARM_3
      003474 E0               [24]  700 	movx	a,@dptr
      003475 FD               [12]  701 	mov	r5,a
      003476 23               [12]  702 	rl	a
      003477 54 01            [12]  703 	anl	a,#0x01
                                    704 ;	assignBit
      003479 24 FF            [12]  705 	add	a,#0xff
      00347B 92 93            [24]  706 	mov	_P1_3,c
                                    707 ;	i2c_bit_bang.c:60: SCL = PULSE_HIGH;
                                    708 ;	assignBit
      00347D D2 92            [12]  709 	setb	_P1_2
                                    710 ;	i2c_bit_bang.c:61: delay(2);
      00347F 90 00 02         [24]  711 	mov	dptr,#0x0002
      003482 C0 07            [24]  712 	push	ar7
      003484 C0 06            [24]  713 	push	ar6
      003486 C0 05            [24]  714 	push	ar5
      003488 12 33 CC         [24]  715 	lcall	_delay
      00348B D0 05            [24]  716 	pop	ar5
                                    717 ;	i2c_bit_bang.c:62: SCL = PULSE_LOW;
                                    718 ;	assignBit
      00348D C2 92            [12]  719 	clr	_P1_2
                                    720 ;	i2c_bit_bang.c:63: address = address << 1;
      00348F ED               [12]  721 	mov	a,r5
      003490 2D               [12]  722 	add	a,r5
      003491 90 00 02         [24]  723 	mov	dptr,#_Byte_Write_PARM_3
      003494 F0               [24]  724 	movx	@dptr,a
                                    725 ;	i2c_bit_bang.c:64: delay(0);
      003495 90 00 00         [24]  726 	mov	dptr,#0x0000
      003498 12 33 CC         [24]  727 	lcall	_delay
      00349B D0 06            [24]  728 	pop	ar6
      00349D D0 07            [24]  729 	pop	ar7
                                    730 ;	i2c_bit_bang.c:58: for(int j = 0; j < BYTE_LENGTH; j++){
      00349F 0E               [12]  731 	inc	r6
      0034A0 BE 00 C3         [24]  732 	cjne	r6,#0x00,00108$
      0034A3 0F               [12]  733 	inc	r7
      0034A4 80 C0            [24]  734 	sjmp	00108$
      0034A6                        735 00102$:
                                    736 ;	i2c_bit_bang.c:66: SDA = PULSE_HIGH;
                                    737 ;	assignBit
      0034A6 D2 93            [12]  738 	setb	_P1_3
                                    739 ;	i2c_bit_bang.c:67: SCL = PULSE_HIGH;
                                    740 ;	assignBit
      0034A8 D2 92            [12]  741 	setb	_P1_2
                                    742 ;	i2c_bit_bang.c:68: delay(2);
      0034AA 90 00 02         [24]  743 	mov	dptr,#0x0002
      0034AD 12 33 CC         [24]  744 	lcall	_delay
                                    745 ;	i2c_bit_bang.c:74: SCL = PULSE_LOW;
                                    746 ;	assignBit
      0034B0 C2 92            [12]  747 	clr	_P1_2
                                    748 ;	i2c_bit_bang.c:75: delay(0);
      0034B2 90 00 00         [24]  749 	mov	dptr,#0x0000
      0034B5 12 33 CC         [24]  750 	lcall	_delay
                                    751 ;	i2c_bit_bang.c:76: for(int k = 0; k < BYTE_LENGTH; k++){
      0034B8 7E 00            [12]  752 	mov	r6,#0x00
      0034BA 7F 00            [12]  753 	mov	r7,#0x00
      0034BC                        754 00111$:
      0034BC C3               [12]  755 	clr	c
      0034BD EE               [12]  756 	mov	a,r6
      0034BE 94 08            [12]  757 	subb	a,#0x08
      0034C0 EF               [12]  758 	mov	a,r7
      0034C1 64 80            [12]  759 	xrl	a,#0x80
      0034C3 94 80            [12]  760 	subb	a,#0x80
      0034C5 50 35            [24]  761 	jnc	00103$
                                    762 ;	i2c_bit_bang.c:77: SDA = data & (0b10000000);
      0034C7 90 00 03         [24]  763 	mov	dptr,#_Byte_Write_data_65536_8
      0034CA E0               [24]  764 	movx	a,@dptr
      0034CB FD               [12]  765 	mov	r5,a
      0034CC 23               [12]  766 	rl	a
      0034CD 54 01            [12]  767 	anl	a,#0x01
                                    768 ;	assignBit
      0034CF 24 FF            [12]  769 	add	a,#0xff
      0034D1 92 93            [24]  770 	mov	_P1_3,c
                                    771 ;	i2c_bit_bang.c:78: SCL = PULSE_HIGH;
                                    772 ;	assignBit
      0034D3 D2 92            [12]  773 	setb	_P1_2
                                    774 ;	i2c_bit_bang.c:79: delay(2);
      0034D5 90 00 02         [24]  775 	mov	dptr,#0x0002
      0034D8 C0 07            [24]  776 	push	ar7
      0034DA C0 06            [24]  777 	push	ar6
      0034DC C0 05            [24]  778 	push	ar5
      0034DE 12 33 CC         [24]  779 	lcall	_delay
      0034E1 D0 05            [24]  780 	pop	ar5
                                    781 ;	i2c_bit_bang.c:80: SCL = PULSE_LOW;
                                    782 ;	assignBit
      0034E3 C2 92            [12]  783 	clr	_P1_2
                                    784 ;	i2c_bit_bang.c:81: data = data << 1;
      0034E5 ED               [12]  785 	mov	a,r5
      0034E6 2D               [12]  786 	add	a,r5
      0034E7 90 00 03         [24]  787 	mov	dptr,#_Byte_Write_data_65536_8
      0034EA F0               [24]  788 	movx	@dptr,a
                                    789 ;	i2c_bit_bang.c:82: delay(0);
      0034EB 90 00 00         [24]  790 	mov	dptr,#0x0000
      0034EE 12 33 CC         [24]  791 	lcall	_delay
      0034F1 D0 06            [24]  792 	pop	ar6
      0034F3 D0 07            [24]  793 	pop	ar7
                                    794 ;	i2c_bit_bang.c:76: for(int k = 0; k < BYTE_LENGTH; k++){
      0034F5 0E               [12]  795 	inc	r6
      0034F6 BE 00 C3         [24]  796 	cjne	r6,#0x00,00111$
      0034F9 0F               [12]  797 	inc	r7
      0034FA 80 C0            [24]  798 	sjmp	00111$
      0034FC                        799 00103$:
                                    800 ;	i2c_bit_bang.c:84: SDA = PULSE_HIGH;
                                    801 ;	assignBit
      0034FC D2 93            [12]  802 	setb	_P1_3
                                    803 ;	i2c_bit_bang.c:85: SCL = PULSE_HIGH;
                                    804 ;	assignBit
      0034FE D2 92            [12]  805 	setb	_P1_2
                                    806 ;	i2c_bit_bang.c:86: delay(2);
      003500 90 00 02         [24]  807 	mov	dptr,#0x0002
      003503 12 33 CC         [24]  808 	lcall	_delay
                                    809 ;	i2c_bit_bang.c:92: SCL = PULSE_LOW;
                                    810 ;	assignBit
      003506 C2 92            [12]  811 	clr	_P1_2
                                    812 ;	i2c_bit_bang.c:93: delay(1);
      003508 90 00 01         [24]  813 	mov	dptr,#0x0001
      00350B 12 33 CC         [24]  814 	lcall	_delay
                                    815 ;	i2c_bit_bang.c:94: SDA = PULSE_LOW;
                                    816 ;	assignBit
      00350E C2 93            [12]  817 	clr	_P1_3
                                    818 ;	i2c_bit_bang.c:95: delay(1);
      003510 90 00 01         [24]  819 	mov	dptr,#0x0001
      003513 12 33 CC         [24]  820 	lcall	_delay
                                    821 ;	i2c_bit_bang.c:96: SCL = PULSE_HIGH;
                                    822 ;	assignBit
      003516 D2 92            [12]  823 	setb	_P1_2
                                    824 ;	i2c_bit_bang.c:97: delay(0);
      003518 90 00 00         [24]  825 	mov	dptr,#0x0000
      00351B 12 33 CC         [24]  826 	lcall	_delay
                                    827 ;	i2c_bit_bang.c:98: SDA = PULSE_HIGH;
                                    828 ;	assignBit
      00351E D2 93            [12]  829 	setb	_P1_3
                                    830 ;	i2c_bit_bang.c:99: }
      003520 22               [24]  831 	ret
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'Byte_Read'
                                    834 ;------------------------------------------------------------
                                    835 ;byte                      Allocated to registers r4 
                                    836 ;i                         Allocated to registers r4 r5 
                                    837 ;j                         Allocated to registers r5 r6 
                                    838 ;i                         Allocated to registers r5 r6 
                                    839 ;k                         Allocated to registers r5 r6 
                                    840 ;address                   Allocated with name '_Byte_Read_PARM_2'
                                    841 ;block                     Allocated with name '_Byte_Read_block_65536_17'
                                    842 ;------------------------------------------------------------
                                    843 ;	i2c_bit_bang.c:100: __xdata uint8_t Byte_Read(__xdata uint8_t block, __xdata uint8_t address){
                                    844 ;	-----------------------------------------
                                    845 ;	 function Byte_Read
                                    846 ;	-----------------------------------------
      003521                        847 _Byte_Read:
      003521 E5 82            [12]  848 	mov	a,dpl
      003523 90 00 05         [24]  849 	mov	dptr,#_Byte_Read_block_65536_17
      003526 F0               [24]  850 	movx	@dptr,a
                                    851 ;	i2c_bit_bang.c:101: SCL = PULSE_HIGH;
                                    852 ;	assignBit
      003527 D2 92            [12]  853 	setb	_P1_2
                                    854 ;	i2c_bit_bang.c:102: SDA = PULSE_HIGH;
                                    855 ;	assignBit
      003529 D2 93            [12]  856 	setb	_P1_3
                                    857 ;	i2c_bit_bang.c:103: delay(2);
      00352B 90 00 02         [24]  858 	mov	dptr,#0x0002
      00352E 12 33 CC         [24]  859 	lcall	_delay
                                    860 ;	i2c_bit_bang.c:104: SDA = PULSE_LOW;
                                    861 ;	assignBit
      003531 C2 93            [12]  862 	clr	_P1_3
                                    863 ;	i2c_bit_bang.c:105: delay(2);
      003533 90 00 02         [24]  864 	mov	dptr,#0x0002
      003536 12 33 CC         [24]  865 	lcall	_delay
                                    866 ;	i2c_bit_bang.c:106: SCL = PULSE_LOW;
                                    867 ;	assignBit
      003539 C2 92            [12]  868 	clr	_P1_2
                                    869 ;	i2c_bit_bang.c:107: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      00353B 90 00 05         [24]  870 	mov	dptr,#_Byte_Read_block_65536_17
      00353E E0               [24]  871 	movx	a,@dptr
      00353F 25 E0            [12]  872 	add	a,acc
      003541 FF               [12]  873 	mov	r7,a
      003542 74 A0            [12]  874 	mov	a,#0xa0
      003544 4F               [12]  875 	orl	a,r7
      003545 FE               [12]  876 	mov	r6,a
                                    877 ;	i2c_bit_bang.c:108: for(int i = 0; i < BYTE_LENGTH; i++){
      003546 7C 00            [12]  878 	mov	r4,#0x00
      003548 7D 00            [12]  879 	mov	r5,#0x00
      00354A                        880 00106$:
      00354A C3               [12]  881 	clr	c
      00354B EC               [12]  882 	mov	a,r4
      00354C 94 08            [12]  883 	subb	a,#0x08
      00354E ED               [12]  884 	mov	a,r5
      00354F 64 80            [12]  885 	xrl	a,#0x80
      003551 94 80            [12]  886 	subb	a,#0x80
      003553 50 40            [24]  887 	jnc	00101$
                                    888 ;	i2c_bit_bang.c:109: SDA = byte & (0b10000000);
      003555 EE               [12]  889 	mov	a,r6
      003556 23               [12]  890 	rl	a
      003557 54 01            [12]  891 	anl	a,#0x01
                                    892 ;	assignBit
      003559 24 FF            [12]  893 	add	a,#0xff
      00355B 92 93            [24]  894 	mov	_P1_3,c
                                    895 ;	i2c_bit_bang.c:110: SCL = PULSE_HIGH;
                                    896 ;	assignBit
      00355D D2 92            [12]  897 	setb	_P1_2
                                    898 ;	i2c_bit_bang.c:111: delay(2);
      00355F 90 00 02         [24]  899 	mov	dptr,#0x0002
      003562 C0 07            [24]  900 	push	ar7
      003564 C0 06            [24]  901 	push	ar6
      003566 C0 05            [24]  902 	push	ar5
      003568 C0 04            [24]  903 	push	ar4
      00356A 12 33 CC         [24]  904 	lcall	_delay
      00356D D0 04            [24]  905 	pop	ar4
      00356F D0 05            [24]  906 	pop	ar5
      003571 D0 06            [24]  907 	pop	ar6
                                    908 ;	i2c_bit_bang.c:112: SCL = PULSE_LOW;
                                    909 ;	assignBit
      003573 C2 92            [12]  910 	clr	_P1_2
                                    911 ;	i2c_bit_bang.c:113: byte = byte << 1;
      003575 8E 03            [24]  912 	mov	ar3,r6
      003577 EB               [12]  913 	mov	a,r3
      003578 2B               [12]  914 	add	a,r3
      003579 FE               [12]  915 	mov	r6,a
                                    916 ;	i2c_bit_bang.c:114: delay(0);
      00357A 90 00 00         [24]  917 	mov	dptr,#0x0000
      00357D C0 06            [24]  918 	push	ar6
      00357F C0 05            [24]  919 	push	ar5
      003581 C0 04            [24]  920 	push	ar4
      003583 12 33 CC         [24]  921 	lcall	_delay
      003586 D0 04            [24]  922 	pop	ar4
      003588 D0 05            [24]  923 	pop	ar5
      00358A D0 06            [24]  924 	pop	ar6
      00358C D0 07            [24]  925 	pop	ar7
                                    926 ;	i2c_bit_bang.c:108: for(int i = 0; i < BYTE_LENGTH; i++){
      00358E 0C               [12]  927 	inc	r4
      00358F BC 00 B8         [24]  928 	cjne	r4,#0x00,00106$
      003592 0D               [12]  929 	inc	r5
      003593 80 B5            [24]  930 	sjmp	00106$
      003595                        931 00101$:
                                    932 ;	i2c_bit_bang.c:116: SDA = PULSE_HIGH;
                                    933 ;	assignBit
      003595 D2 93            [12]  934 	setb	_P1_3
                                    935 ;	i2c_bit_bang.c:117: SCL = PULSE_HIGH;
                                    936 ;	assignBit
      003597 D2 92            [12]  937 	setb	_P1_2
                                    938 ;	i2c_bit_bang.c:118: delay(3);
      003599 90 00 03         [24]  939 	mov	dptr,#0x0003
      00359C C0 07            [24]  940 	push	ar7
      00359E 12 33 CC         [24]  941 	lcall	_delay
                                    942 ;	i2c_bit_bang.c:124: SCL = PULSE_LOW;
                                    943 ;	assignBit
      0035A1 C2 92            [12]  944 	clr	_P1_2
                                    945 ;	i2c_bit_bang.c:125: delay(0);
      0035A3 90 00 00         [24]  946 	mov	dptr,#0x0000
      0035A6 12 33 CC         [24]  947 	lcall	_delay
      0035A9 D0 07            [24]  948 	pop	ar7
                                    949 ;	i2c_bit_bang.c:126: for(int j = 0; j < BYTE_LENGTH; j++){
      0035AB 7D 00            [12]  950 	mov	r5,#0x00
      0035AD 7E 00            [12]  951 	mov	r6,#0x00
      0035AF                        952 00109$:
      0035AF C3               [12]  953 	clr	c
      0035B0 ED               [12]  954 	mov	a,r5
      0035B1 94 08            [12]  955 	subb	a,#0x08
      0035B3 EE               [12]  956 	mov	a,r6
      0035B4 64 80            [12]  957 	xrl	a,#0x80
      0035B6 94 80            [12]  958 	subb	a,#0x80
      0035B8 50 39            [24]  959 	jnc	00102$
                                    960 ;	i2c_bit_bang.c:127: SDA = address & (0b10000000);
      0035BA 90 00 04         [24]  961 	mov	dptr,#_Byte_Read_PARM_2
      0035BD E0               [24]  962 	movx	a,@dptr
      0035BE FC               [12]  963 	mov	r4,a
      0035BF 23               [12]  964 	rl	a
      0035C0 54 01            [12]  965 	anl	a,#0x01
                                    966 ;	assignBit
      0035C2 24 FF            [12]  967 	add	a,#0xff
      0035C4 92 93            [24]  968 	mov	_P1_3,c
                                    969 ;	i2c_bit_bang.c:128: SCL = PULSE_HIGH;
                                    970 ;	assignBit
      0035C6 D2 92            [12]  971 	setb	_P1_2
                                    972 ;	i2c_bit_bang.c:129: delay(2);
      0035C8 90 00 02         [24]  973 	mov	dptr,#0x0002
      0035CB C0 07            [24]  974 	push	ar7
      0035CD C0 06            [24]  975 	push	ar6
      0035CF C0 05            [24]  976 	push	ar5
      0035D1 C0 04            [24]  977 	push	ar4
      0035D3 12 33 CC         [24]  978 	lcall	_delay
      0035D6 D0 04            [24]  979 	pop	ar4
                                    980 ;	i2c_bit_bang.c:130: SCL = PULSE_LOW;
                                    981 ;	assignBit
      0035D8 C2 92            [12]  982 	clr	_P1_2
                                    983 ;	i2c_bit_bang.c:131: address = address << 1;
      0035DA EC               [12]  984 	mov	a,r4
      0035DB 2C               [12]  985 	add	a,r4
      0035DC 90 00 04         [24]  986 	mov	dptr,#_Byte_Read_PARM_2
      0035DF F0               [24]  987 	movx	@dptr,a
                                    988 ;	i2c_bit_bang.c:132: delay(0);
      0035E0 90 00 00         [24]  989 	mov	dptr,#0x0000
      0035E3 12 33 CC         [24]  990 	lcall	_delay
      0035E6 D0 05            [24]  991 	pop	ar5
      0035E8 D0 06            [24]  992 	pop	ar6
      0035EA D0 07            [24]  993 	pop	ar7
                                    994 ;	i2c_bit_bang.c:126: for(int j = 0; j < BYTE_LENGTH; j++){
      0035EC 0D               [12]  995 	inc	r5
      0035ED BD 00 BF         [24]  996 	cjne	r5,#0x00,00109$
      0035F0 0E               [12]  997 	inc	r6
      0035F1 80 BC            [24]  998 	sjmp	00109$
      0035F3                        999 00102$:
                                   1000 ;	i2c_bit_bang.c:134: SDA = PULSE_HIGH;
                                   1001 ;	assignBit
      0035F3 D2 93            [12] 1002 	setb	_P1_3
                                   1003 ;	i2c_bit_bang.c:135: SCL = PULSE_HIGH;
                                   1004 ;	assignBit
      0035F5 D2 92            [12] 1005 	setb	_P1_2
                                   1006 ;	i2c_bit_bang.c:136: delay(2);
      0035F7 90 00 02         [24] 1007 	mov	dptr,#0x0002
      0035FA C0 07            [24] 1008 	push	ar7
      0035FC 12 33 CC         [24] 1009 	lcall	_delay
                                   1010 ;	i2c_bit_bang.c:142: SCL = PULSE_LOW;
                                   1011 ;	assignBit
      0035FF C2 92            [12] 1012 	clr	_P1_2
                                   1013 ;	i2c_bit_bang.c:143: SDA = PULSE_HIGH;
                                   1014 ;	assignBit
      003601 D2 93            [12] 1015 	setb	_P1_3
                                   1016 ;	i2c_bit_bang.c:144: delay(2);
      003603 90 00 02         [24] 1017 	mov	dptr,#0x0002
      003606 12 33 CC         [24] 1018 	lcall	_delay
                                   1019 ;	i2c_bit_bang.c:145: SCL = PULSE_HIGH;
                                   1020 ;	assignBit
      003609 D2 92            [12] 1021 	setb	_P1_2
                                   1022 ;	i2c_bit_bang.c:146: delay(0);
      00360B 90 00 00         [24] 1023 	mov	dptr,#0x0000
      00360E 12 33 CC         [24] 1024 	lcall	_delay
                                   1025 ;	i2c_bit_bang.c:147: SDA = PULSE_LOW;
                                   1026 ;	assignBit
      003611 C2 93            [12] 1027 	clr	_P1_3
                                   1028 ;	i2c_bit_bang.c:148: delay(2);
      003613 90 00 02         [24] 1029 	mov	dptr,#0x0002
      003616 12 33 CC         [24] 1030 	lcall	_delay
      003619 D0 07            [24] 1031 	pop	ar7
                                   1032 ;	i2c_bit_bang.c:149: SCL = PULSE_LOW;
                                   1033 ;	assignBit
      00361B C2 92            [12] 1034 	clr	_P1_2
                                   1035 ;	i2c_bit_bang.c:150: byte = START_BYTE | (block << 1) | READ_BYTE;
      00361D 43 07 A1         [24] 1036 	orl	ar7,#0xa1
                                   1037 ;	i2c_bit_bang.c:151: for(int i = 0; i < BYTE_LENGTH; i++){
      003620 7D 00            [12] 1038 	mov	r5,#0x00
      003622 7E 00            [12] 1039 	mov	r6,#0x00
      003624                       1040 00112$:
      003624 C3               [12] 1041 	clr	c
      003625 ED               [12] 1042 	mov	a,r5
      003626 94 08            [12] 1043 	subb	a,#0x08
      003628 EE               [12] 1044 	mov	a,r6
      003629 64 80            [12] 1045 	xrl	a,#0x80
      00362B 94 80            [12] 1046 	subb	a,#0x80
      00362D 50 3C            [24] 1047 	jnc	00103$
                                   1048 ;	i2c_bit_bang.c:152: SDA = byte & (0b10000000);
      00362F EF               [12] 1049 	mov	a,r7
      003630 23               [12] 1050 	rl	a
      003631 54 01            [12] 1051 	anl	a,#0x01
                                   1052 ;	assignBit
      003633 24 FF            [12] 1053 	add	a,#0xff
      003635 92 93            [24] 1054 	mov	_P1_3,c
                                   1055 ;	i2c_bit_bang.c:153: SCL = PULSE_HIGH;
                                   1056 ;	assignBit
      003637 D2 92            [12] 1057 	setb	_P1_2
                                   1058 ;	i2c_bit_bang.c:154: delay(2);
      003639 90 00 02         [24] 1059 	mov	dptr,#0x0002
      00363C C0 07            [24] 1060 	push	ar7
      00363E C0 06            [24] 1061 	push	ar6
      003640 C0 05            [24] 1062 	push	ar5
      003642 12 33 CC         [24] 1063 	lcall	_delay
      003645 D0 05            [24] 1064 	pop	ar5
      003647 D0 06            [24] 1065 	pop	ar6
      003649 D0 07            [24] 1066 	pop	ar7
                                   1067 ;	i2c_bit_bang.c:155: SCL = PULSE_LOW;
                                   1068 ;	assignBit
      00364B C2 92            [12] 1069 	clr	_P1_2
                                   1070 ;	i2c_bit_bang.c:156: byte = byte << 1;
      00364D 8F 04            [24] 1071 	mov	ar4,r7
      00364F EC               [12] 1072 	mov	a,r4
      003650 2C               [12] 1073 	add	a,r4
      003651 FF               [12] 1074 	mov	r7,a
                                   1075 ;	i2c_bit_bang.c:157: delay(0);
      003652 90 00 00         [24] 1076 	mov	dptr,#0x0000
      003655 C0 07            [24] 1077 	push	ar7
      003657 C0 06            [24] 1078 	push	ar6
      003659 C0 05            [24] 1079 	push	ar5
      00365B 12 33 CC         [24] 1080 	lcall	_delay
      00365E D0 05            [24] 1081 	pop	ar5
      003660 D0 06            [24] 1082 	pop	ar6
      003662 D0 07            [24] 1083 	pop	ar7
                                   1084 ;	i2c_bit_bang.c:151: for(int i = 0; i < BYTE_LENGTH; i++){
      003664 0D               [12] 1085 	inc	r5
      003665 BD 00 BC         [24] 1086 	cjne	r5,#0x00,00112$
      003668 0E               [12] 1087 	inc	r6
      003669 80 B9            [24] 1088 	sjmp	00112$
      00366B                       1089 00103$:
                                   1090 ;	i2c_bit_bang.c:159: SDA = PULSE_HIGH;
                                   1091 ;	assignBit
      00366B D2 93            [12] 1092 	setb	_P1_3
                                   1093 ;	i2c_bit_bang.c:160: delay(2);
      00366D 90 00 02         [24] 1094 	mov	dptr,#0x0002
      003670 12 33 CC         [24] 1095 	lcall	_delay
                                   1096 ;	i2c_bit_bang.c:166: SCL = PULSE_HIGH;
                                   1097 ;	assignBit
      003673 D2 92            [12] 1098 	setb	_P1_2
                                   1099 ;	i2c_bit_bang.c:167: delay(2);
      003675 90 00 02         [24] 1100 	mov	dptr,#0x0002
      003678 12 33 CC         [24] 1101 	lcall	_delay
                                   1102 ;	i2c_bit_bang.c:168: SCL = PULSE_LOW;
                                   1103 ;	assignBit
      00367B C2 92            [12] 1104 	clr	_P1_2
                                   1105 ;	i2c_bit_bang.c:169: delay(2);
      00367D 90 00 02         [24] 1106 	mov	dptr,#0x0002
      003680 12 33 CC         [24] 1107 	lcall	_delay
                                   1108 ;	i2c_bit_bang.c:170: byte = 0;
      003683 7F 00            [12] 1109 	mov	r7,#0x00
                                   1110 ;	i2c_bit_bang.c:171: for(int k = 0; k < BYTE_LENGTH; k++){
      003685 7D 00            [12] 1111 	mov	r5,#0x00
      003687 7E 00            [12] 1112 	mov	r6,#0x00
      003689                       1113 00115$:
      003689 C3               [12] 1114 	clr	c
      00368A ED               [12] 1115 	mov	a,r5
      00368B 94 08            [12] 1116 	subb	a,#0x08
      00368D EE               [12] 1117 	mov	a,r6
      00368E 64 80            [12] 1118 	xrl	a,#0x80
      003690 94 80            [12] 1119 	subb	a,#0x80
      003692 50 3A            [24] 1120 	jnc	00104$
                                   1121 ;	i2c_bit_bang.c:172: byte = byte << 1;
      003694 8F 04            [24] 1122 	mov	ar4,r7
      003696 EC               [12] 1123 	mov	a,r4
      003697 2C               [12] 1124 	add	a,r4
      003698 FC               [12] 1125 	mov	r4,a
                                   1126 ;	i2c_bit_bang.c:173: SCL = PULSE_HIGH;
                                   1127 ;	assignBit
      003699 D2 92            [12] 1128 	setb	_P1_2
                                   1129 ;	i2c_bit_bang.c:174: delay(2);
      00369B 90 00 02         [24] 1130 	mov	dptr,#0x0002
      00369E C0 06            [24] 1131 	push	ar6
      0036A0 C0 05            [24] 1132 	push	ar5
      0036A2 C0 04            [24] 1133 	push	ar4
      0036A4 12 33 CC         [24] 1134 	lcall	_delay
      0036A7 D0 04            [24] 1135 	pop	ar4
      0036A9 D0 05            [24] 1136 	pop	ar5
      0036AB D0 06            [24] 1137 	pop	ar6
                                   1138 ;	i2c_bit_bang.c:175: byte |= SDA;
      0036AD A2 93            [12] 1139 	mov	c,_P1_3
      0036AF E4               [12] 1140 	clr	a
      0036B0 33               [12] 1141 	rlc	a
      0036B1 4C               [12] 1142 	orl	a,r4
      0036B2 FF               [12] 1143 	mov	r7,a
                                   1144 ;	i2c_bit_bang.c:176: SCL = PULSE_LOW;
                                   1145 ;	assignBit
      0036B3 C2 92            [12] 1146 	clr	_P1_2
                                   1147 ;	i2c_bit_bang.c:177: delay(1);
      0036B5 90 00 01         [24] 1148 	mov	dptr,#0x0001
      0036B8 C0 07            [24] 1149 	push	ar7
      0036BA C0 06            [24] 1150 	push	ar6
      0036BC C0 05            [24] 1151 	push	ar5
      0036BE 12 33 CC         [24] 1152 	lcall	_delay
      0036C1 D0 05            [24] 1153 	pop	ar5
      0036C3 D0 06            [24] 1154 	pop	ar6
      0036C5 D0 07            [24] 1155 	pop	ar7
                                   1156 ;	i2c_bit_bang.c:171: for(int k = 0; k < BYTE_LENGTH; k++){
      0036C7 0D               [12] 1157 	inc	r5
      0036C8 BD 00 BE         [24] 1158 	cjne	r5,#0x00,00115$
      0036CB 0E               [12] 1159 	inc	r6
      0036CC 80 BB            [24] 1160 	sjmp	00115$
      0036CE                       1161 00104$:
                                   1162 ;	i2c_bit_bang.c:179: SDA = PULSE_HIGH;
                                   1163 ;	assignBit
      0036CE D2 93            [12] 1164 	setb	_P1_3
                                   1165 ;	i2c_bit_bang.c:180: delay(2);
      0036D0 90 00 02         [24] 1166 	mov	dptr,#0x0002
      0036D3 C0 07            [24] 1167 	push	ar7
      0036D5 12 33 CC         [24] 1168 	lcall	_delay
                                   1169 ;	i2c_bit_bang.c:181: SCL = PULSE_HIGH;
                                   1170 ;	assignBit
      0036D8 D2 92            [12] 1171 	setb	_P1_2
                                   1172 ;	i2c_bit_bang.c:182: delay(2);
      0036DA 90 00 02         [24] 1173 	mov	dptr,#0x0002
      0036DD 12 33 CC         [24] 1174 	lcall	_delay
                                   1175 ;	i2c_bit_bang.c:183: SCL = PULSE_LOW;
                                   1176 ;	assignBit
      0036E0 C2 92            [12] 1177 	clr	_P1_2
                                   1178 ;	i2c_bit_bang.c:184: SDA = PULSE_LOW;
                                   1179 ;	assignBit
      0036E2 C2 93            [12] 1180 	clr	_P1_3
                                   1181 ;	i2c_bit_bang.c:185: delay(2);
      0036E4 90 00 02         [24] 1182 	mov	dptr,#0x0002
      0036E7 12 33 CC         [24] 1183 	lcall	_delay
                                   1184 ;	i2c_bit_bang.c:186: SCL = PULSE_HIGH;
                                   1185 ;	assignBit
      0036EA D2 92            [12] 1186 	setb	_P1_2
                                   1187 ;	i2c_bit_bang.c:187: delay(2);
      0036EC 90 00 02         [24] 1188 	mov	dptr,#0x0002
      0036EF 12 33 CC         [24] 1189 	lcall	_delay
                                   1190 ;	i2c_bit_bang.c:188: SDA = PULSE_HIGH;
                                   1191 ;	assignBit
      0036F2 D2 93            [12] 1192 	setb	_P1_3
                                   1193 ;	i2c_bit_bang.c:189: delay(2);
      0036F4 90 00 02         [24] 1194 	mov	dptr,#0x0002
      0036F7 12 33 CC         [24] 1195 	lcall	_delay
                                   1196 ;	i2c_bit_bang.c:190: SCL = PULSE_LOW;
                                   1197 ;	assignBit
      0036FA C2 92            [12] 1198 	clr	_P1_2
                                   1199 ;	i2c_bit_bang.c:191: delay(2);
      0036FC 90 00 02         [24] 1200 	mov	dptr,#0x0002
      0036FF 12 33 CC         [24] 1201 	lcall	_delay
      003702 D0 07            [24] 1202 	pop	ar7
                                   1203 ;	i2c_bit_bang.c:192: return byte;
      003704 8F 82            [24] 1204 	mov	dpl,r7
                                   1205 ;	i2c_bit_bang.c:193: }
      003706 22               [24] 1206 	ret
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'Byte_Read_Sequential'
                                   1209 ;------------------------------------------------------------
                                   1210 ;byte                      Allocated to registers r7 
                                   1211 ;i                         Allocated to registers r5 r6 
                                   1212 ;j                         Allocated to registers r6 r7 
                                   1213 ;i                         Allocated to registers r5 r6 
                                   1214 ;l                         Allocated with name '_Byte_Read_Sequential_l_131073_37'
                                   1215 ;k                         Allocated with name '_Byte_Read_Sequential_k_262145_39'
                                   1216 ;start_address             Allocated with name '_Byte_Read_Sequential_PARM_2'
                                   1217 ;address_range             Allocated with name '_Byte_Read_Sequential_PARM_3'
                                   1218 ;block                     Allocated with name '_Byte_Read_Sequential_block_65536_28'
                                   1219 ;buffer                    Allocated with name '_Byte_Read_Sequential_buffer_65536_29'
                                   1220 ;------------------------------------------------------------
                                   1221 ;	i2c_bit_bang.c:195: __xdata uint8_t * Byte_Read_Sequential(__xdata uint8_t block, __xdata uint8_t start_address,
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function Byte_Read_Sequential
                                   1224 ;	-----------------------------------------
      003707                       1225 _Byte_Read_Sequential:
      003707 E5 82            [12] 1226 	mov	a,dpl
      003709 90 00 08         [24] 1227 	mov	dptr,#_Byte_Read_Sequential_block_65536_28
      00370C F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	i2c_bit_bang.c:197: __xdata uint8_t buffer[256] = {0};
      00370D 90 00 09         [24] 1230 	mov	dptr,#_Byte_Read_Sequential_buffer_65536_29
      003710 E4               [12] 1231 	clr	a
      003711 F0               [24] 1232 	movx	@dptr,a
      003712 90 00 0A         [24] 1233 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0001)
      003715 F0               [24] 1234 	movx	@dptr,a
      003716 90 00 0B         [24] 1235 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0002)
      003719 F0               [24] 1236 	movx	@dptr,a
      00371A 90 00 0C         [24] 1237 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0003)
      00371D F0               [24] 1238 	movx	@dptr,a
      00371E 90 00 0D         [24] 1239 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0004)
      003721 F0               [24] 1240 	movx	@dptr,a
      003722 90 00 0E         [24] 1241 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0005)
      003725 F0               [24] 1242 	movx	@dptr,a
      003726 90 00 0F         [24] 1243 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0006)
      003729 F0               [24] 1244 	movx	@dptr,a
      00372A 90 00 10         [24] 1245 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0007)
      00372D F0               [24] 1246 	movx	@dptr,a
      00372E 90 00 11         [24] 1247 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0008)
      003731 F0               [24] 1248 	movx	@dptr,a
      003732 90 00 12         [24] 1249 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0009)
      003735 F0               [24] 1250 	movx	@dptr,a
      003736 90 00 13         [24] 1251 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x000a)
      003739 F0               [24] 1252 	movx	@dptr,a
      00373A 90 00 14         [24] 1253 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x000b)
      00373D F0               [24] 1254 	movx	@dptr,a
      00373E 90 00 15         [24] 1255 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x000c)
      003741 F0               [24] 1256 	movx	@dptr,a
      003742 90 00 16         [24] 1257 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x000d)
      003745 F0               [24] 1258 	movx	@dptr,a
      003746 90 00 17         [24] 1259 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x000e)
      003749 F0               [24] 1260 	movx	@dptr,a
      00374A 90 00 18         [24] 1261 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x000f)
      00374D F0               [24] 1262 	movx	@dptr,a
      00374E 90 00 19         [24] 1263 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0010)
      003751 F0               [24] 1264 	movx	@dptr,a
      003752 90 00 1A         [24] 1265 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0011)
      003755 F0               [24] 1266 	movx	@dptr,a
      003756 90 00 1B         [24] 1267 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0012)
      003759 F0               [24] 1268 	movx	@dptr,a
      00375A 90 00 1C         [24] 1269 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0013)
      00375D F0               [24] 1270 	movx	@dptr,a
      00375E 90 00 1D         [24] 1271 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0014)
      003761 F0               [24] 1272 	movx	@dptr,a
      003762 90 00 1E         [24] 1273 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0015)
      003765 F0               [24] 1274 	movx	@dptr,a
      003766 90 00 1F         [24] 1275 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0016)
      003769 F0               [24] 1276 	movx	@dptr,a
      00376A 90 00 20         [24] 1277 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0017)
      00376D F0               [24] 1278 	movx	@dptr,a
      00376E 90 00 21         [24] 1279 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0018)
      003771 F0               [24] 1280 	movx	@dptr,a
      003772 90 00 22         [24] 1281 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0019)
      003775 F0               [24] 1282 	movx	@dptr,a
      003776 90 00 23         [24] 1283 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x001a)
      003779 F0               [24] 1284 	movx	@dptr,a
      00377A 90 00 24         [24] 1285 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x001b)
      00377D F0               [24] 1286 	movx	@dptr,a
      00377E 90 00 25         [24] 1287 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x001c)
      003781 F0               [24] 1288 	movx	@dptr,a
      003782 90 00 26         [24] 1289 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x001d)
      003785 F0               [24] 1290 	movx	@dptr,a
      003786 90 00 27         [24] 1291 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x001e)
      003789 F0               [24] 1292 	movx	@dptr,a
      00378A 90 00 28         [24] 1293 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x001f)
      00378D F0               [24] 1294 	movx	@dptr,a
      00378E 90 00 29         [24] 1295 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0020)
      003791 F0               [24] 1296 	movx	@dptr,a
      003792 90 00 2A         [24] 1297 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0021)
      003795 F0               [24] 1298 	movx	@dptr,a
      003796 90 00 2B         [24] 1299 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0022)
      003799 F0               [24] 1300 	movx	@dptr,a
      00379A 90 00 2C         [24] 1301 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0023)
      00379D F0               [24] 1302 	movx	@dptr,a
      00379E 90 00 2D         [24] 1303 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0024)
      0037A1 F0               [24] 1304 	movx	@dptr,a
      0037A2 90 00 2E         [24] 1305 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0025)
      0037A5 F0               [24] 1306 	movx	@dptr,a
      0037A6 90 00 2F         [24] 1307 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0026)
      0037A9 F0               [24] 1308 	movx	@dptr,a
      0037AA 90 00 30         [24] 1309 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0027)
      0037AD F0               [24] 1310 	movx	@dptr,a
      0037AE 90 00 31         [24] 1311 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0028)
      0037B1 F0               [24] 1312 	movx	@dptr,a
      0037B2 90 00 32         [24] 1313 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0029)
      0037B5 F0               [24] 1314 	movx	@dptr,a
      0037B6 90 00 33         [24] 1315 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x002a)
      0037B9 F0               [24] 1316 	movx	@dptr,a
      0037BA 90 00 34         [24] 1317 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x002b)
      0037BD F0               [24] 1318 	movx	@dptr,a
      0037BE 90 00 35         [24] 1319 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x002c)
      0037C1 F0               [24] 1320 	movx	@dptr,a
      0037C2 90 00 36         [24] 1321 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x002d)
      0037C5 F0               [24] 1322 	movx	@dptr,a
      0037C6 90 00 37         [24] 1323 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x002e)
      0037C9 F0               [24] 1324 	movx	@dptr,a
      0037CA 90 00 38         [24] 1325 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x002f)
      0037CD F0               [24] 1326 	movx	@dptr,a
      0037CE 90 00 39         [24] 1327 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0030)
      0037D1 F0               [24] 1328 	movx	@dptr,a
      0037D2 90 00 3A         [24] 1329 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0031)
      0037D5 F0               [24] 1330 	movx	@dptr,a
      0037D6 90 00 3B         [24] 1331 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0032)
      0037D9 F0               [24] 1332 	movx	@dptr,a
      0037DA 90 00 3C         [24] 1333 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0033)
      0037DD F0               [24] 1334 	movx	@dptr,a
      0037DE 90 00 3D         [24] 1335 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0034)
      0037E1 F0               [24] 1336 	movx	@dptr,a
      0037E2 90 00 3E         [24] 1337 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0035)
      0037E5 F0               [24] 1338 	movx	@dptr,a
      0037E6 90 00 3F         [24] 1339 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0036)
      0037E9 F0               [24] 1340 	movx	@dptr,a
      0037EA 90 00 40         [24] 1341 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0037)
      0037ED F0               [24] 1342 	movx	@dptr,a
      0037EE 90 00 41         [24] 1343 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0038)
      0037F1 F0               [24] 1344 	movx	@dptr,a
      0037F2 90 00 42         [24] 1345 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0039)
      0037F5 F0               [24] 1346 	movx	@dptr,a
      0037F6 90 00 43         [24] 1347 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x003a)
      0037F9 F0               [24] 1348 	movx	@dptr,a
      0037FA 90 00 44         [24] 1349 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x003b)
      0037FD F0               [24] 1350 	movx	@dptr,a
      0037FE 90 00 45         [24] 1351 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x003c)
      003801 F0               [24] 1352 	movx	@dptr,a
      003802 90 00 46         [24] 1353 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x003d)
      003805 F0               [24] 1354 	movx	@dptr,a
      003806 90 00 47         [24] 1355 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x003e)
      003809 F0               [24] 1356 	movx	@dptr,a
      00380A 90 00 48         [24] 1357 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x003f)
      00380D F0               [24] 1358 	movx	@dptr,a
      00380E 90 00 49         [24] 1359 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0040)
      003811 F0               [24] 1360 	movx	@dptr,a
      003812 90 00 4A         [24] 1361 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0041)
      003815 F0               [24] 1362 	movx	@dptr,a
      003816 90 00 4B         [24] 1363 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0042)
      003819 F0               [24] 1364 	movx	@dptr,a
      00381A 90 00 4C         [24] 1365 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0043)
      00381D F0               [24] 1366 	movx	@dptr,a
      00381E 90 00 4D         [24] 1367 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0044)
      003821 F0               [24] 1368 	movx	@dptr,a
      003822 90 00 4E         [24] 1369 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0045)
      003825 F0               [24] 1370 	movx	@dptr,a
      003826 90 00 4F         [24] 1371 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0046)
      003829 F0               [24] 1372 	movx	@dptr,a
      00382A 90 00 50         [24] 1373 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0047)
      00382D F0               [24] 1374 	movx	@dptr,a
      00382E 90 00 51         [24] 1375 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0048)
      003831 F0               [24] 1376 	movx	@dptr,a
      003832 90 00 52         [24] 1377 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0049)
      003835 F0               [24] 1378 	movx	@dptr,a
      003836 90 00 53         [24] 1379 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x004a)
      003839 F0               [24] 1380 	movx	@dptr,a
      00383A 90 00 54         [24] 1381 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x004b)
      00383D F0               [24] 1382 	movx	@dptr,a
      00383E 90 00 55         [24] 1383 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x004c)
      003841 F0               [24] 1384 	movx	@dptr,a
      003842 90 00 56         [24] 1385 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x004d)
      003845 F0               [24] 1386 	movx	@dptr,a
      003846 90 00 57         [24] 1387 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x004e)
      003849 F0               [24] 1388 	movx	@dptr,a
      00384A 90 00 58         [24] 1389 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x004f)
      00384D F0               [24] 1390 	movx	@dptr,a
      00384E 90 00 59         [24] 1391 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0050)
      003851 F0               [24] 1392 	movx	@dptr,a
      003852 90 00 5A         [24] 1393 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0051)
      003855 F0               [24] 1394 	movx	@dptr,a
      003856 90 00 5B         [24] 1395 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0052)
      003859 F0               [24] 1396 	movx	@dptr,a
      00385A 90 00 5C         [24] 1397 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0053)
      00385D F0               [24] 1398 	movx	@dptr,a
      00385E 90 00 5D         [24] 1399 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0054)
      003861 F0               [24] 1400 	movx	@dptr,a
      003862 90 00 5E         [24] 1401 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0055)
      003865 F0               [24] 1402 	movx	@dptr,a
      003866 90 00 5F         [24] 1403 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0056)
      003869 F0               [24] 1404 	movx	@dptr,a
      00386A 90 00 60         [24] 1405 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0057)
      00386D F0               [24] 1406 	movx	@dptr,a
      00386E 90 00 61         [24] 1407 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0058)
      003871 F0               [24] 1408 	movx	@dptr,a
      003872 90 00 62         [24] 1409 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0059)
      003875 F0               [24] 1410 	movx	@dptr,a
      003876 90 00 63         [24] 1411 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x005a)
      003879 F0               [24] 1412 	movx	@dptr,a
      00387A 90 00 64         [24] 1413 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x005b)
      00387D F0               [24] 1414 	movx	@dptr,a
      00387E 90 00 65         [24] 1415 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x005c)
      003881 F0               [24] 1416 	movx	@dptr,a
      003882 90 00 66         [24] 1417 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x005d)
      003885 F0               [24] 1418 	movx	@dptr,a
      003886 90 00 67         [24] 1419 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x005e)
      003889 F0               [24] 1420 	movx	@dptr,a
      00388A 90 00 68         [24] 1421 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x005f)
      00388D F0               [24] 1422 	movx	@dptr,a
      00388E 90 00 69         [24] 1423 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0060)
      003891 F0               [24] 1424 	movx	@dptr,a
      003892 90 00 6A         [24] 1425 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0061)
      003895 F0               [24] 1426 	movx	@dptr,a
      003896 90 00 6B         [24] 1427 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0062)
      003899 F0               [24] 1428 	movx	@dptr,a
      00389A 90 00 6C         [24] 1429 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0063)
      00389D F0               [24] 1430 	movx	@dptr,a
      00389E 90 00 6D         [24] 1431 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0064)
      0038A1 F0               [24] 1432 	movx	@dptr,a
      0038A2 90 00 6E         [24] 1433 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0065)
      0038A5 F0               [24] 1434 	movx	@dptr,a
      0038A6 90 00 6F         [24] 1435 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0066)
      0038A9 F0               [24] 1436 	movx	@dptr,a
      0038AA 90 00 70         [24] 1437 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0067)
      0038AD F0               [24] 1438 	movx	@dptr,a
      0038AE 90 00 71         [24] 1439 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0068)
      0038B1 F0               [24] 1440 	movx	@dptr,a
      0038B2 90 00 72         [24] 1441 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0069)
      0038B5 F0               [24] 1442 	movx	@dptr,a
      0038B6 90 00 73         [24] 1443 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x006a)
      0038B9 F0               [24] 1444 	movx	@dptr,a
      0038BA 90 00 74         [24] 1445 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x006b)
      0038BD F0               [24] 1446 	movx	@dptr,a
      0038BE 90 00 75         [24] 1447 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x006c)
      0038C1 F0               [24] 1448 	movx	@dptr,a
      0038C2 90 00 76         [24] 1449 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x006d)
      0038C5 F0               [24] 1450 	movx	@dptr,a
      0038C6 90 00 77         [24] 1451 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x006e)
      0038C9 F0               [24] 1452 	movx	@dptr,a
      0038CA 90 00 78         [24] 1453 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x006f)
      0038CD F0               [24] 1454 	movx	@dptr,a
      0038CE 90 00 79         [24] 1455 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0070)
      0038D1 F0               [24] 1456 	movx	@dptr,a
      0038D2 90 00 7A         [24] 1457 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0071)
      0038D5 F0               [24] 1458 	movx	@dptr,a
      0038D6 90 00 7B         [24] 1459 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0072)
      0038D9 F0               [24] 1460 	movx	@dptr,a
      0038DA 90 00 7C         [24] 1461 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0073)
      0038DD F0               [24] 1462 	movx	@dptr,a
      0038DE 90 00 7D         [24] 1463 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0074)
      0038E1 F0               [24] 1464 	movx	@dptr,a
      0038E2 90 00 7E         [24] 1465 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0075)
      0038E5 F0               [24] 1466 	movx	@dptr,a
      0038E6 90 00 7F         [24] 1467 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0076)
      0038E9 F0               [24] 1468 	movx	@dptr,a
      0038EA 90 00 80         [24] 1469 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0077)
      0038ED F0               [24] 1470 	movx	@dptr,a
      0038EE 90 00 81         [24] 1471 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0078)
      0038F1 F0               [24] 1472 	movx	@dptr,a
      0038F2 90 00 82         [24] 1473 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0079)
      0038F5 F0               [24] 1474 	movx	@dptr,a
      0038F6 90 00 83         [24] 1475 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x007a)
      0038F9 F0               [24] 1476 	movx	@dptr,a
      0038FA 90 00 84         [24] 1477 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x007b)
      0038FD F0               [24] 1478 	movx	@dptr,a
      0038FE 90 00 85         [24] 1479 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x007c)
      003901 F0               [24] 1480 	movx	@dptr,a
      003902 90 00 86         [24] 1481 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x007d)
      003905 F0               [24] 1482 	movx	@dptr,a
      003906 90 00 87         [24] 1483 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x007e)
      003909 F0               [24] 1484 	movx	@dptr,a
      00390A 90 00 88         [24] 1485 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x007f)
      00390D F0               [24] 1486 	movx	@dptr,a
      00390E 90 00 89         [24] 1487 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0080)
      003911 F0               [24] 1488 	movx	@dptr,a
      003912 90 00 8A         [24] 1489 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0081)
      003915 F0               [24] 1490 	movx	@dptr,a
      003916 90 00 8B         [24] 1491 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0082)
      003919 F0               [24] 1492 	movx	@dptr,a
      00391A 90 00 8C         [24] 1493 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0083)
      00391D F0               [24] 1494 	movx	@dptr,a
      00391E 90 00 8D         [24] 1495 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0084)
      003921 F0               [24] 1496 	movx	@dptr,a
      003922 90 00 8E         [24] 1497 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0085)
      003925 F0               [24] 1498 	movx	@dptr,a
      003926 90 00 8F         [24] 1499 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0086)
      003929 F0               [24] 1500 	movx	@dptr,a
      00392A 90 00 90         [24] 1501 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0087)
      00392D F0               [24] 1502 	movx	@dptr,a
      00392E 90 00 91         [24] 1503 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0088)
      003931 F0               [24] 1504 	movx	@dptr,a
      003932 90 00 92         [24] 1505 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0089)
      003935 F0               [24] 1506 	movx	@dptr,a
      003936 90 00 93         [24] 1507 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x008a)
      003939 F0               [24] 1508 	movx	@dptr,a
      00393A 90 00 94         [24] 1509 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x008b)
      00393D F0               [24] 1510 	movx	@dptr,a
      00393E 90 00 95         [24] 1511 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x008c)
      003941 F0               [24] 1512 	movx	@dptr,a
      003942 90 00 96         [24] 1513 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x008d)
      003945 F0               [24] 1514 	movx	@dptr,a
      003946 90 00 97         [24] 1515 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x008e)
      003949 F0               [24] 1516 	movx	@dptr,a
      00394A 90 00 98         [24] 1517 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x008f)
      00394D F0               [24] 1518 	movx	@dptr,a
      00394E 90 00 99         [24] 1519 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0090)
      003951 F0               [24] 1520 	movx	@dptr,a
      003952 90 00 9A         [24] 1521 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0091)
      003955 F0               [24] 1522 	movx	@dptr,a
      003956 90 00 9B         [24] 1523 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0092)
      003959 F0               [24] 1524 	movx	@dptr,a
      00395A 90 00 9C         [24] 1525 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0093)
      00395D F0               [24] 1526 	movx	@dptr,a
      00395E 90 00 9D         [24] 1527 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0094)
      003961 F0               [24] 1528 	movx	@dptr,a
      003962 90 00 9E         [24] 1529 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0095)
      003965 F0               [24] 1530 	movx	@dptr,a
      003966 90 00 9F         [24] 1531 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0096)
      003969 F0               [24] 1532 	movx	@dptr,a
      00396A 90 00 A0         [24] 1533 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0097)
      00396D F0               [24] 1534 	movx	@dptr,a
      00396E 90 00 A1         [24] 1535 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0098)
      003971 F0               [24] 1536 	movx	@dptr,a
      003972 90 00 A2         [24] 1537 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x0099)
      003975 F0               [24] 1538 	movx	@dptr,a
      003976 90 00 A3         [24] 1539 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x009a)
      003979 F0               [24] 1540 	movx	@dptr,a
      00397A 90 00 A4         [24] 1541 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x009b)
      00397D F0               [24] 1542 	movx	@dptr,a
      00397E 90 00 A5         [24] 1543 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x009c)
      003981 F0               [24] 1544 	movx	@dptr,a
      003982 90 00 A6         [24] 1545 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x009d)
      003985 F0               [24] 1546 	movx	@dptr,a
      003986 90 00 A7         [24] 1547 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x009e)
      003989 F0               [24] 1548 	movx	@dptr,a
      00398A 90 00 A8         [24] 1549 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x009f)
      00398D F0               [24] 1550 	movx	@dptr,a
      00398E 90 00 A9         [24] 1551 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a0)
      003991 F0               [24] 1552 	movx	@dptr,a
      003992 90 00 AA         [24] 1553 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a1)
      003995 F0               [24] 1554 	movx	@dptr,a
      003996 90 00 AB         [24] 1555 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a2)
      003999 F0               [24] 1556 	movx	@dptr,a
      00399A 90 00 AC         [24] 1557 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a3)
      00399D F0               [24] 1558 	movx	@dptr,a
      00399E 90 00 AD         [24] 1559 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a4)
      0039A1 F0               [24] 1560 	movx	@dptr,a
      0039A2 90 00 AE         [24] 1561 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a5)
      0039A5 F0               [24] 1562 	movx	@dptr,a
      0039A6 90 00 AF         [24] 1563 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a6)
      0039A9 F0               [24] 1564 	movx	@dptr,a
      0039AA 90 00 B0         [24] 1565 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a7)
      0039AD F0               [24] 1566 	movx	@dptr,a
      0039AE 90 00 B1         [24] 1567 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a8)
      0039B1 F0               [24] 1568 	movx	@dptr,a
      0039B2 90 00 B2         [24] 1569 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00a9)
      0039B5 F0               [24] 1570 	movx	@dptr,a
      0039B6 90 00 B3         [24] 1571 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00aa)
      0039B9 F0               [24] 1572 	movx	@dptr,a
      0039BA 90 00 B4         [24] 1573 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ab)
      0039BD F0               [24] 1574 	movx	@dptr,a
      0039BE 90 00 B5         [24] 1575 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ac)
      0039C1 F0               [24] 1576 	movx	@dptr,a
      0039C2 90 00 B6         [24] 1577 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ad)
      0039C5 F0               [24] 1578 	movx	@dptr,a
      0039C6 90 00 B7         [24] 1579 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ae)
      0039C9 F0               [24] 1580 	movx	@dptr,a
      0039CA 90 00 B8         [24] 1581 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00af)
      0039CD F0               [24] 1582 	movx	@dptr,a
      0039CE 90 00 B9         [24] 1583 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b0)
      0039D1 F0               [24] 1584 	movx	@dptr,a
      0039D2 90 00 BA         [24] 1585 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b1)
      0039D5 F0               [24] 1586 	movx	@dptr,a
      0039D6 90 00 BB         [24] 1587 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b2)
      0039D9 F0               [24] 1588 	movx	@dptr,a
      0039DA 90 00 BC         [24] 1589 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b3)
      0039DD F0               [24] 1590 	movx	@dptr,a
      0039DE 90 00 BD         [24] 1591 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b4)
      0039E1 F0               [24] 1592 	movx	@dptr,a
      0039E2 90 00 BE         [24] 1593 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b5)
      0039E5 F0               [24] 1594 	movx	@dptr,a
      0039E6 90 00 BF         [24] 1595 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b6)
      0039E9 F0               [24] 1596 	movx	@dptr,a
      0039EA 90 00 C0         [24] 1597 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b7)
      0039ED F0               [24] 1598 	movx	@dptr,a
      0039EE 90 00 C1         [24] 1599 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b8)
      0039F1 F0               [24] 1600 	movx	@dptr,a
      0039F2 90 00 C2         [24] 1601 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00b9)
      0039F5 F0               [24] 1602 	movx	@dptr,a
      0039F6 90 00 C3         [24] 1603 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ba)
      0039F9 F0               [24] 1604 	movx	@dptr,a
      0039FA 90 00 C4         [24] 1605 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00bb)
      0039FD F0               [24] 1606 	movx	@dptr,a
      0039FE 90 00 C5         [24] 1607 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00bc)
      003A01 F0               [24] 1608 	movx	@dptr,a
      003A02 90 00 C6         [24] 1609 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00bd)
      003A05 F0               [24] 1610 	movx	@dptr,a
      003A06 90 00 C7         [24] 1611 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00be)
      003A09 F0               [24] 1612 	movx	@dptr,a
      003A0A 90 00 C8         [24] 1613 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00bf)
      003A0D F0               [24] 1614 	movx	@dptr,a
      003A0E 90 00 C9         [24] 1615 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c0)
      003A11 F0               [24] 1616 	movx	@dptr,a
      003A12 90 00 CA         [24] 1617 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c1)
      003A15 F0               [24] 1618 	movx	@dptr,a
      003A16 90 00 CB         [24] 1619 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c2)
      003A19 F0               [24] 1620 	movx	@dptr,a
      003A1A 90 00 CC         [24] 1621 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c3)
      003A1D F0               [24] 1622 	movx	@dptr,a
      003A1E 90 00 CD         [24] 1623 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c4)
      003A21 F0               [24] 1624 	movx	@dptr,a
      003A22 90 00 CE         [24] 1625 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c5)
      003A25 F0               [24] 1626 	movx	@dptr,a
      003A26 90 00 CF         [24] 1627 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c6)
      003A29 F0               [24] 1628 	movx	@dptr,a
      003A2A 90 00 D0         [24] 1629 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c7)
      003A2D F0               [24] 1630 	movx	@dptr,a
      003A2E 90 00 D1         [24] 1631 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c8)
      003A31 F0               [24] 1632 	movx	@dptr,a
      003A32 90 00 D2         [24] 1633 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00c9)
      003A35 F0               [24] 1634 	movx	@dptr,a
      003A36 90 00 D3         [24] 1635 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ca)
      003A39 F0               [24] 1636 	movx	@dptr,a
      003A3A 90 00 D4         [24] 1637 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00cb)
      003A3D F0               [24] 1638 	movx	@dptr,a
      003A3E 90 00 D5         [24] 1639 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00cc)
      003A41 F0               [24] 1640 	movx	@dptr,a
      003A42 90 00 D6         [24] 1641 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00cd)
      003A45 F0               [24] 1642 	movx	@dptr,a
      003A46 90 00 D7         [24] 1643 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ce)
      003A49 F0               [24] 1644 	movx	@dptr,a
      003A4A 90 00 D8         [24] 1645 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00cf)
      003A4D F0               [24] 1646 	movx	@dptr,a
      003A4E 90 00 D9         [24] 1647 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d0)
      003A51 F0               [24] 1648 	movx	@dptr,a
      003A52 90 00 DA         [24] 1649 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d1)
      003A55 F0               [24] 1650 	movx	@dptr,a
      003A56 90 00 DB         [24] 1651 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d2)
      003A59 F0               [24] 1652 	movx	@dptr,a
      003A5A 90 00 DC         [24] 1653 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d3)
      003A5D F0               [24] 1654 	movx	@dptr,a
      003A5E 90 00 DD         [24] 1655 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d4)
      003A61 F0               [24] 1656 	movx	@dptr,a
      003A62 90 00 DE         [24] 1657 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d5)
      003A65 F0               [24] 1658 	movx	@dptr,a
      003A66 90 00 DF         [24] 1659 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d6)
      003A69 F0               [24] 1660 	movx	@dptr,a
      003A6A 90 00 E0         [24] 1661 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d7)
      003A6D F0               [24] 1662 	movx	@dptr,a
      003A6E 90 00 E1         [24] 1663 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d8)
      003A71 F0               [24] 1664 	movx	@dptr,a
      003A72 90 00 E2         [24] 1665 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00d9)
      003A75 F0               [24] 1666 	movx	@dptr,a
      003A76 90 00 E3         [24] 1667 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00da)
      003A79 F0               [24] 1668 	movx	@dptr,a
      003A7A 90 00 E4         [24] 1669 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00db)
      003A7D F0               [24] 1670 	movx	@dptr,a
      003A7E 90 00 E5         [24] 1671 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00dc)
      003A81 F0               [24] 1672 	movx	@dptr,a
      003A82 90 00 E6         [24] 1673 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00dd)
      003A85 F0               [24] 1674 	movx	@dptr,a
      003A86 90 00 E7         [24] 1675 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00de)
      003A89 F0               [24] 1676 	movx	@dptr,a
      003A8A 90 00 E8         [24] 1677 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00df)
      003A8D F0               [24] 1678 	movx	@dptr,a
      003A8E 90 00 E9         [24] 1679 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e0)
      003A91 F0               [24] 1680 	movx	@dptr,a
      003A92 90 00 EA         [24] 1681 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e1)
      003A95 F0               [24] 1682 	movx	@dptr,a
      003A96 90 00 EB         [24] 1683 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e2)
      003A99 F0               [24] 1684 	movx	@dptr,a
      003A9A 90 00 EC         [24] 1685 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e3)
      003A9D F0               [24] 1686 	movx	@dptr,a
      003A9E 90 00 ED         [24] 1687 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e4)
      003AA1 F0               [24] 1688 	movx	@dptr,a
      003AA2 90 00 EE         [24] 1689 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e5)
      003AA5 F0               [24] 1690 	movx	@dptr,a
      003AA6 90 00 EF         [24] 1691 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e6)
      003AA9 F0               [24] 1692 	movx	@dptr,a
      003AAA 90 00 F0         [24] 1693 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e7)
      003AAD F0               [24] 1694 	movx	@dptr,a
      003AAE 90 00 F1         [24] 1695 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e8)
      003AB1 F0               [24] 1696 	movx	@dptr,a
      003AB2 90 00 F2         [24] 1697 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00e9)
      003AB5 F0               [24] 1698 	movx	@dptr,a
      003AB6 90 00 F3         [24] 1699 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ea)
      003AB9 F0               [24] 1700 	movx	@dptr,a
      003ABA 90 00 F4         [24] 1701 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00eb)
      003ABD F0               [24] 1702 	movx	@dptr,a
      003ABE 90 00 F5         [24] 1703 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ec)
      003AC1 F0               [24] 1704 	movx	@dptr,a
      003AC2 90 00 F6         [24] 1705 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ed)
      003AC5 F0               [24] 1706 	movx	@dptr,a
      003AC6 90 00 F7         [24] 1707 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ee)
      003AC9 F0               [24] 1708 	movx	@dptr,a
      003ACA 90 00 F8         [24] 1709 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ef)
      003ACD F0               [24] 1710 	movx	@dptr,a
      003ACE 90 00 F9         [24] 1711 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f0)
      003AD1 F0               [24] 1712 	movx	@dptr,a
      003AD2 90 00 FA         [24] 1713 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f1)
      003AD5 F0               [24] 1714 	movx	@dptr,a
      003AD6 90 00 FB         [24] 1715 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f2)
      003AD9 F0               [24] 1716 	movx	@dptr,a
      003ADA 90 00 FC         [24] 1717 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f3)
      003ADD F0               [24] 1718 	movx	@dptr,a
      003ADE 90 00 FD         [24] 1719 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f4)
      003AE1 F0               [24] 1720 	movx	@dptr,a
      003AE2 90 00 FE         [24] 1721 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f5)
      003AE5 F0               [24] 1722 	movx	@dptr,a
      003AE6 90 00 FF         [24] 1723 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f6)
      003AE9 F0               [24] 1724 	movx	@dptr,a
      003AEA 90 01 00         [24] 1725 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f7)
      003AED F0               [24] 1726 	movx	@dptr,a
      003AEE 90 01 01         [24] 1727 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f8)
      003AF1 F0               [24] 1728 	movx	@dptr,a
      003AF2 90 01 02         [24] 1729 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00f9)
      003AF5 F0               [24] 1730 	movx	@dptr,a
      003AF6 90 01 03         [24] 1731 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00fa)
      003AF9 F0               [24] 1732 	movx	@dptr,a
      003AFA 90 01 04         [24] 1733 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00fb)
      003AFD F0               [24] 1734 	movx	@dptr,a
      003AFE 90 01 05         [24] 1735 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00fc)
      003B01 F0               [24] 1736 	movx	@dptr,a
      003B02 90 01 06         [24] 1737 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00fd)
      003B05 F0               [24] 1738 	movx	@dptr,a
      003B06 90 01 07         [24] 1739 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00fe)
      003B09 F0               [24] 1740 	movx	@dptr,a
      003B0A 90 01 08         [24] 1741 	mov	dptr,#(_Byte_Read_Sequential_buffer_65536_29 + 0x00ff)
      003B0D F0               [24] 1742 	movx	@dptr,a
                                   1743 ;	i2c_bit_bang.c:198: SCL = PULSE_HIGH;
                                   1744 ;	assignBit
      003B0E D2 92            [12] 1745 	setb	_P1_2
                                   1746 ;	i2c_bit_bang.c:199: SDA = PULSE_HIGH;
                                   1747 ;	assignBit
      003B10 D2 93            [12] 1748 	setb	_P1_3
                                   1749 ;	i2c_bit_bang.c:200: delay(2);
      003B12 90 00 02         [24] 1750 	mov	dptr,#0x0002
      003B15 12 33 CC         [24] 1751 	lcall	_delay
                                   1752 ;	i2c_bit_bang.c:201: SDA = PULSE_LOW;
                                   1753 ;	assignBit
      003B18 C2 93            [12] 1754 	clr	_P1_3
                                   1755 ;	i2c_bit_bang.c:202: delay(2);
      003B1A 90 00 02         [24] 1756 	mov	dptr,#0x0002
      003B1D 12 33 CC         [24] 1757 	lcall	_delay
                                   1758 ;	i2c_bit_bang.c:203: SCL = PULSE_LOW;
                                   1759 ;	assignBit
      003B20 C2 92            [12] 1760 	clr	_P1_2
                                   1761 ;	i2c_bit_bang.c:204: uint8_t byte = START_BYTE | (block << 1) | WRITE_BYTE;
      003B22 90 00 08         [24] 1762 	mov	dptr,#_Byte_Read_Sequential_block_65536_28
      003B25 E0               [24] 1763 	movx	a,@dptr
      003B26 25 E0            [12] 1764 	add	a,acc
      003B28 FF               [12] 1765 	mov	r7,a
      003B29 43 07 A0         [24] 1766 	orl	ar7,#0xa0
                                   1767 ;	i2c_bit_bang.c:205: for(int i = 0; i < BYTE_LENGTH; i++){
      003B2C 7D 00            [12] 1768 	mov	r5,#0x00
      003B2E 7E 00            [12] 1769 	mov	r6,#0x00
      003B30                       1770 00109$:
      003B30 C3               [12] 1771 	clr	c
      003B31 ED               [12] 1772 	mov	a,r5
      003B32 94 08            [12] 1773 	subb	a,#0x08
      003B34 EE               [12] 1774 	mov	a,r6
      003B35 64 80            [12] 1775 	xrl	a,#0x80
      003B37 94 80            [12] 1776 	subb	a,#0x80
      003B39 50 3C            [24] 1777 	jnc	00101$
                                   1778 ;	i2c_bit_bang.c:206: SDA = byte & (0b10000000);
      003B3B EF               [12] 1779 	mov	a,r7
      003B3C 23               [12] 1780 	rl	a
      003B3D 54 01            [12] 1781 	anl	a,#0x01
                                   1782 ;	assignBit
      003B3F 24 FF            [12] 1783 	add	a,#0xff
      003B41 92 93            [24] 1784 	mov	_P1_3,c
                                   1785 ;	i2c_bit_bang.c:207: SCL = PULSE_HIGH;
                                   1786 ;	assignBit
      003B43 D2 92            [12] 1787 	setb	_P1_2
                                   1788 ;	i2c_bit_bang.c:208: delay(2);
      003B45 90 00 02         [24] 1789 	mov	dptr,#0x0002
      003B48 C0 07            [24] 1790 	push	ar7
      003B4A C0 06            [24] 1791 	push	ar6
      003B4C C0 05            [24] 1792 	push	ar5
      003B4E 12 33 CC         [24] 1793 	lcall	_delay
      003B51 D0 05            [24] 1794 	pop	ar5
      003B53 D0 06            [24] 1795 	pop	ar6
      003B55 D0 07            [24] 1796 	pop	ar7
                                   1797 ;	i2c_bit_bang.c:209: SCL = PULSE_LOW;
                                   1798 ;	assignBit
      003B57 C2 92            [12] 1799 	clr	_P1_2
                                   1800 ;	i2c_bit_bang.c:210: byte = byte << 1;
      003B59 8F 04            [24] 1801 	mov	ar4,r7
      003B5B EC               [12] 1802 	mov	a,r4
      003B5C 2C               [12] 1803 	add	a,r4
      003B5D FF               [12] 1804 	mov	r7,a
                                   1805 ;	i2c_bit_bang.c:211: delay(0);
      003B5E 90 00 00         [24] 1806 	mov	dptr,#0x0000
      003B61 C0 07            [24] 1807 	push	ar7
      003B63 C0 06            [24] 1808 	push	ar6
      003B65 C0 05            [24] 1809 	push	ar5
      003B67 12 33 CC         [24] 1810 	lcall	_delay
      003B6A D0 05            [24] 1811 	pop	ar5
      003B6C D0 06            [24] 1812 	pop	ar6
      003B6E D0 07            [24] 1813 	pop	ar7
                                   1814 ;	i2c_bit_bang.c:205: for(int i = 0; i < BYTE_LENGTH; i++){
      003B70 0D               [12] 1815 	inc	r5
      003B71 BD 00 BC         [24] 1816 	cjne	r5,#0x00,00109$
      003B74 0E               [12] 1817 	inc	r6
      003B75 80 B9            [24] 1818 	sjmp	00109$
      003B77                       1819 00101$:
                                   1820 ;	i2c_bit_bang.c:213: SDA = PULSE_HIGH;
                                   1821 ;	assignBit
      003B77 D2 93            [12] 1822 	setb	_P1_3
                                   1823 ;	i2c_bit_bang.c:214: SCL = PULSE_HIGH;
                                   1824 ;	assignBit
      003B79 D2 92            [12] 1825 	setb	_P1_2
                                   1826 ;	i2c_bit_bang.c:215: delay(3);
      003B7B 90 00 03         [24] 1827 	mov	dptr,#0x0003
      003B7E 12 33 CC         [24] 1828 	lcall	_delay
                                   1829 ;	i2c_bit_bang.c:221: SCL = PULSE_LOW;
                                   1830 ;	assignBit
      003B81 C2 92            [12] 1831 	clr	_P1_2
                                   1832 ;	i2c_bit_bang.c:222: delay(0);
      003B83 90 00 00         [24] 1833 	mov	dptr,#0x0000
      003B86 12 33 CC         [24] 1834 	lcall	_delay
                                   1835 ;	i2c_bit_bang.c:223: for(int j = 0; j < BYTE_LENGTH; j++){
      003B89 7E 00            [12] 1836 	mov	r6,#0x00
      003B8B 7F 00            [12] 1837 	mov	r7,#0x00
      003B8D                       1838 00112$:
      003B8D C3               [12] 1839 	clr	c
      003B8E EE               [12] 1840 	mov	a,r6
      003B8F 94 08            [12] 1841 	subb	a,#0x08
      003B91 EF               [12] 1842 	mov	a,r7
      003B92 64 80            [12] 1843 	xrl	a,#0x80
      003B94 94 80            [12] 1844 	subb	a,#0x80
      003B96 50 35            [24] 1845 	jnc	00102$
                                   1846 ;	i2c_bit_bang.c:224: SDA = start_address & (0b10000000);
      003B98 90 00 06         [24] 1847 	mov	dptr,#_Byte_Read_Sequential_PARM_2
      003B9B E0               [24] 1848 	movx	a,@dptr
      003B9C FD               [12] 1849 	mov	r5,a
      003B9D 23               [12] 1850 	rl	a
      003B9E 54 01            [12] 1851 	anl	a,#0x01
                                   1852 ;	assignBit
      003BA0 24 FF            [12] 1853 	add	a,#0xff
      003BA2 92 93            [24] 1854 	mov	_P1_3,c
                                   1855 ;	i2c_bit_bang.c:225: SCL = PULSE_HIGH;
                                   1856 ;	assignBit
      003BA4 D2 92            [12] 1857 	setb	_P1_2
                                   1858 ;	i2c_bit_bang.c:226: delay(2);
      003BA6 90 00 02         [24] 1859 	mov	dptr,#0x0002
      003BA9 C0 07            [24] 1860 	push	ar7
      003BAB C0 06            [24] 1861 	push	ar6
      003BAD C0 05            [24] 1862 	push	ar5
      003BAF 12 33 CC         [24] 1863 	lcall	_delay
      003BB2 D0 05            [24] 1864 	pop	ar5
                                   1865 ;	i2c_bit_bang.c:227: SCL = PULSE_LOW;
                                   1866 ;	assignBit
      003BB4 C2 92            [12] 1867 	clr	_P1_2
                                   1868 ;	i2c_bit_bang.c:228: start_address = start_address << 1;
      003BB6 ED               [12] 1869 	mov	a,r5
      003BB7 2D               [12] 1870 	add	a,r5
      003BB8 90 00 06         [24] 1871 	mov	dptr,#_Byte_Read_Sequential_PARM_2
      003BBB F0               [24] 1872 	movx	@dptr,a
                                   1873 ;	i2c_bit_bang.c:229: delay(0);
      003BBC 90 00 00         [24] 1874 	mov	dptr,#0x0000
      003BBF 12 33 CC         [24] 1875 	lcall	_delay
      003BC2 D0 06            [24] 1876 	pop	ar6
      003BC4 D0 07            [24] 1877 	pop	ar7
                                   1878 ;	i2c_bit_bang.c:223: for(int j = 0; j < BYTE_LENGTH; j++){
      003BC6 0E               [12] 1879 	inc	r6
      003BC7 BE 00 C3         [24] 1880 	cjne	r6,#0x00,00112$
      003BCA 0F               [12] 1881 	inc	r7
      003BCB 80 C0            [24] 1882 	sjmp	00112$
      003BCD                       1883 00102$:
                                   1884 ;	i2c_bit_bang.c:231: SDA = PULSE_HIGH;
                                   1885 ;	assignBit
      003BCD D2 93            [12] 1886 	setb	_P1_3
                                   1887 ;	i2c_bit_bang.c:232: SCL = PULSE_HIGH;
                                   1888 ;	assignBit
      003BCF D2 92            [12] 1889 	setb	_P1_2
                                   1890 ;	i2c_bit_bang.c:233: delay(2);
      003BD1 90 00 02         [24] 1891 	mov	dptr,#0x0002
      003BD4 12 33 CC         [24] 1892 	lcall	_delay
                                   1893 ;	i2c_bit_bang.c:239: SCL = PULSE_LOW;
                                   1894 ;	assignBit
      003BD7 C2 92            [12] 1895 	clr	_P1_2
                                   1896 ;	i2c_bit_bang.c:240: SDA = PULSE_HIGH;
                                   1897 ;	assignBit
      003BD9 D2 93            [12] 1898 	setb	_P1_3
                                   1899 ;	i2c_bit_bang.c:241: delay(2);
      003BDB 90 00 02         [24] 1900 	mov	dptr,#0x0002
      003BDE 12 33 CC         [24] 1901 	lcall	_delay
                                   1902 ;	i2c_bit_bang.c:242: SCL = PULSE_HIGH;
                                   1903 ;	assignBit
      003BE1 D2 92            [12] 1904 	setb	_P1_2
                                   1905 ;	i2c_bit_bang.c:243: delay(0);
      003BE3 90 00 00         [24] 1906 	mov	dptr,#0x0000
      003BE6 12 33 CC         [24] 1907 	lcall	_delay
                                   1908 ;	i2c_bit_bang.c:244: SDA = PULSE_LOW;
                                   1909 ;	assignBit
      003BE9 C2 93            [12] 1910 	clr	_P1_3
                                   1911 ;	i2c_bit_bang.c:245: delay(2);
      003BEB 90 00 02         [24] 1912 	mov	dptr,#0x0002
      003BEE 12 33 CC         [24] 1913 	lcall	_delay
                                   1914 ;	i2c_bit_bang.c:246: SCL = PULSE_LOW;
                                   1915 ;	assignBit
      003BF1 C2 92            [12] 1916 	clr	_P1_2
                                   1917 ;	i2c_bit_bang.c:247: byte = START_BYTE | (block << 1) | READ_BYTE;
      003BF3 90 00 08         [24] 1918 	mov	dptr,#_Byte_Read_Sequential_block_65536_28
      003BF6 E0               [24] 1919 	movx	a,@dptr
      003BF7 25 E0            [12] 1920 	add	a,acc
      003BF9 FF               [12] 1921 	mov	r7,a
      003BFA 43 07 A1         [24] 1922 	orl	ar7,#0xa1
                                   1923 ;	i2c_bit_bang.c:248: for(int i = 0; i < BYTE_LENGTH; i++){
      003BFD 7D 00            [12] 1924 	mov	r5,#0x00
      003BFF 7E 00            [12] 1925 	mov	r6,#0x00
      003C01                       1926 00115$:
      003C01 C3               [12] 1927 	clr	c
      003C02 ED               [12] 1928 	mov	a,r5
      003C03 94 08            [12] 1929 	subb	a,#0x08
      003C05 EE               [12] 1930 	mov	a,r6
      003C06 64 80            [12] 1931 	xrl	a,#0x80
      003C08 94 80            [12] 1932 	subb	a,#0x80
      003C0A 50 3C            [24] 1933 	jnc	00103$
                                   1934 ;	i2c_bit_bang.c:249: SDA = byte & (0b10000000);
      003C0C EF               [12] 1935 	mov	a,r7
      003C0D 23               [12] 1936 	rl	a
      003C0E 54 01            [12] 1937 	anl	a,#0x01
                                   1938 ;	assignBit
      003C10 24 FF            [12] 1939 	add	a,#0xff
      003C12 92 93            [24] 1940 	mov	_P1_3,c
                                   1941 ;	i2c_bit_bang.c:250: SCL = PULSE_HIGH;
                                   1942 ;	assignBit
      003C14 D2 92            [12] 1943 	setb	_P1_2
                                   1944 ;	i2c_bit_bang.c:251: delay(2);
      003C16 90 00 02         [24] 1945 	mov	dptr,#0x0002
      003C19 C0 07            [24] 1946 	push	ar7
      003C1B C0 06            [24] 1947 	push	ar6
      003C1D C0 05            [24] 1948 	push	ar5
      003C1F 12 33 CC         [24] 1949 	lcall	_delay
      003C22 D0 05            [24] 1950 	pop	ar5
      003C24 D0 06            [24] 1951 	pop	ar6
      003C26 D0 07            [24] 1952 	pop	ar7
                                   1953 ;	i2c_bit_bang.c:252: SCL = PULSE_LOW;
                                   1954 ;	assignBit
      003C28 C2 92            [12] 1955 	clr	_P1_2
                                   1956 ;	i2c_bit_bang.c:253: byte = byte << 1;
      003C2A 8F 04            [24] 1957 	mov	ar4,r7
      003C2C EC               [12] 1958 	mov	a,r4
      003C2D 2C               [12] 1959 	add	a,r4
      003C2E FF               [12] 1960 	mov	r7,a
                                   1961 ;	i2c_bit_bang.c:254: delay(0);
      003C2F 90 00 00         [24] 1962 	mov	dptr,#0x0000
      003C32 C0 07            [24] 1963 	push	ar7
      003C34 C0 06            [24] 1964 	push	ar6
      003C36 C0 05            [24] 1965 	push	ar5
      003C38 12 33 CC         [24] 1966 	lcall	_delay
      003C3B D0 05            [24] 1967 	pop	ar5
      003C3D D0 06            [24] 1968 	pop	ar6
      003C3F D0 07            [24] 1969 	pop	ar7
                                   1970 ;	i2c_bit_bang.c:248: for(int i = 0; i < BYTE_LENGTH; i++){
      003C41 0D               [12] 1971 	inc	r5
      003C42 BD 00 BC         [24] 1972 	cjne	r5,#0x00,00115$
      003C45 0E               [12] 1973 	inc	r6
      003C46 80 B9            [24] 1974 	sjmp	00115$
      003C48                       1975 00103$:
                                   1976 ;	i2c_bit_bang.c:256: SDA = PULSE_HIGH;
                                   1977 ;	assignBit
      003C48 D2 93            [12] 1978 	setb	_P1_3
                                   1979 ;	i2c_bit_bang.c:257: delay(2);
      003C4A 90 00 02         [24] 1980 	mov	dptr,#0x0002
      003C4D 12 33 CC         [24] 1981 	lcall	_delay
                                   1982 ;	i2c_bit_bang.c:263: SCL = PULSE_HIGH;
                                   1983 ;	assignBit
      003C50 D2 92            [12] 1984 	setb	_P1_2
                                   1985 ;	i2c_bit_bang.c:264: delay(2);
      003C52 90 00 02         [24] 1986 	mov	dptr,#0x0002
      003C55 12 33 CC         [24] 1987 	lcall	_delay
                                   1988 ;	i2c_bit_bang.c:265: SCL = PULSE_LOW;
                                   1989 ;	assignBit
      003C58 C2 92            [12] 1990 	clr	_P1_2
                                   1991 ;	i2c_bit_bang.c:266: delay(2);
      003C5A 90 00 02         [24] 1992 	mov	dptr,#0x0002
      003C5D 12 33 CC         [24] 1993 	lcall	_delay
                                   1994 ;	i2c_bit_bang.c:267: for(int l = 0; l < (address_range + 1); l++){
      003C60 90 00 07         [24] 1995 	mov	dptr,#_Byte_Read_Sequential_PARM_3
      003C63 E0               [24] 1996 	movx	a,@dptr
      003C64 FF               [12] 1997 	mov	r7,a
      003C65 E4               [12] 1998 	clr	a
      003C66 F5 08            [12] 1999 	mov	_Byte_Read_Sequential_l_131073_37,a
      003C68 F5 09            [12] 2000 	mov	(_Byte_Read_Sequential_l_131073_37 + 1),a
      003C6A                       2001 00121$:
      003C6A 8F 03            [24] 2002 	mov	ar3,r7
      003C6C 7C 00            [12] 2003 	mov	r4,#0x00
      003C6E 74 01            [12] 2004 	mov	a,#0x01
      003C70 2B               [12] 2005 	add	a,r3
      003C71 F9               [12] 2006 	mov	r1,a
      003C72 E4               [12] 2007 	clr	a
      003C73 3C               [12] 2008 	addc	a,r4
      003C74 FA               [12] 2009 	mov	r2,a
      003C75 C3               [12] 2010 	clr	c
      003C76 E5 08            [12] 2011 	mov	a,_Byte_Read_Sequential_l_131073_37
      003C78 99               [12] 2012 	subb	a,r1
      003C79 E5 09            [12] 2013 	mov	a,(_Byte_Read_Sequential_l_131073_37 + 1)
      003C7B 64 80            [12] 2014 	xrl	a,#0x80
      003C7D 8A F0            [24] 2015 	mov	b,r2
      003C7F 63 F0 80         [24] 2016 	xrl	b,#0x80
      003C82 95 F0            [12] 2017 	subb	a,b
      003C84 40 03            [24] 2018 	jc	00191$
      003C86 02 3D 2B         [24] 2019 	ljmp	00107$
      003C89                       2020 00191$:
                                   2021 ;	i2c_bit_bang.c:268: for(int k = 0; k < BYTE_LENGTH; k++){
      003C89 E4               [12] 2022 	clr	a
      003C8A F5 0A            [12] 2023 	mov	_Byte_Read_Sequential_k_262145_39,a
      003C8C F5 0B            [12] 2024 	mov	(_Byte_Read_Sequential_k_262145_39 + 1),a
      003C8E                       2025 00118$:
      003C8E C3               [12] 2026 	clr	c
      003C8F E5 0A            [12] 2027 	mov	a,_Byte_Read_Sequential_k_262145_39
      003C91 94 08            [12] 2028 	subb	a,#0x08
      003C93 E5 0B            [12] 2029 	mov	a,(_Byte_Read_Sequential_k_262145_39 + 1)
      003C95 64 80            [12] 2030 	xrl	a,#0x80
      003C97 94 80            [12] 2031 	subb	a,#0x80
      003C99 50 58            [24] 2032 	jnc	00104$
                                   2033 ;	i2c_bit_bang.c:269: SDA= PULSE_HIGH;
                                   2034 ;	assignBit
      003C9B D2 93            [12] 2035 	setb	_P1_3
                                   2036 ;	i2c_bit_bang.c:270: buffer[l] = buffer[l] << 1;
      003C9D E5 08            [12] 2037 	mov	a,_Byte_Read_Sequential_l_131073_37
      003C9F 24 09            [12] 2038 	add	a,#_Byte_Read_Sequential_buffer_65536_29
      003CA1 F8               [12] 2039 	mov	r0,a
      003CA2 E5 09            [12] 2040 	mov	a,(_Byte_Read_Sequential_l_131073_37 + 1)
      003CA4 34 00            [12] 2041 	addc	a,#(_Byte_Read_Sequential_buffer_65536_29 >> 8)
      003CA6 FA               [12] 2042 	mov	r2,a
      003CA7 88 82            [24] 2043 	mov	dpl,r0
      003CA9 8A 83            [24] 2044 	mov	dph,r2
      003CAB E0               [24] 2045 	movx	a,@dptr
      003CAC 25 E0            [12] 2046 	add	a,acc
      003CAE 88 82            [24] 2047 	mov	dpl,r0
      003CB0 8A 83            [24] 2048 	mov	dph,r2
      003CB2 F0               [24] 2049 	movx	@dptr,a
                                   2050 ;	i2c_bit_bang.c:271: SCL = PULSE_HIGH;
                                   2051 ;	assignBit
      003CB3 D2 92            [12] 2052 	setb	_P1_2
                                   2053 ;	i2c_bit_bang.c:272: delay(1);
      003CB5 90 00 01         [24] 2054 	mov	dptr,#0x0001
      003CB8 C0 07            [24] 2055 	push	ar7
      003CBA C0 04            [24] 2056 	push	ar4
      003CBC C0 03            [24] 2057 	push	ar3
      003CBE C0 02            [24] 2058 	push	ar2
      003CC0 C0 00            [24] 2059 	push	ar0
      003CC2 12 33 CC         [24] 2060 	lcall	_delay
      003CC5 D0 00            [24] 2061 	pop	ar0
      003CC7 D0 02            [24] 2062 	pop	ar2
                                   2063 ;	i2c_bit_bang.c:273: buffer[l] |= SDA;
      003CC9 88 82            [24] 2064 	mov	dpl,r0
      003CCB 8A 83            [24] 2065 	mov	dph,r2
      003CCD E0               [24] 2066 	movx	a,@dptr
      003CCE F9               [12] 2067 	mov	r1,a
      003CCF A2 93            [12] 2068 	mov	c,_P1_3
      003CD1 E4               [12] 2069 	clr	a
      003CD2 33               [12] 2070 	rlc	a
      003CD3 42 01            [12] 2071 	orl	ar1,a
      003CD5 88 82            [24] 2072 	mov	dpl,r0
      003CD7 8A 83            [24] 2073 	mov	dph,r2
      003CD9 E9               [12] 2074 	mov	a,r1
      003CDA F0               [24] 2075 	movx	@dptr,a
                                   2076 ;	i2c_bit_bang.c:274: SCL = PULSE_LOW;
                                   2077 ;	assignBit
      003CDB C2 92            [12] 2078 	clr	_P1_2
                                   2079 ;	i2c_bit_bang.c:275: delay(1);
      003CDD 90 00 01         [24] 2080 	mov	dptr,#0x0001
      003CE0 12 33 CC         [24] 2081 	lcall	_delay
      003CE3 D0 03            [24] 2082 	pop	ar3
      003CE5 D0 04            [24] 2083 	pop	ar4
      003CE7 D0 07            [24] 2084 	pop	ar7
                                   2085 ;	i2c_bit_bang.c:268: for(int k = 0; k < BYTE_LENGTH; k++){
      003CE9 05 0A            [12] 2086 	inc	_Byte_Read_Sequential_k_262145_39
      003CEB E4               [12] 2087 	clr	a
      003CEC B5 0A 9F         [24] 2088 	cjne	a,_Byte_Read_Sequential_k_262145_39,00118$
      003CEF 05 0B            [12] 2089 	inc	(_Byte_Read_Sequential_k_262145_39 + 1)
      003CF1 80 9B            [24] 2090 	sjmp	00118$
      003CF3                       2091 00104$:
                                   2092 ;	i2c_bit_bang.c:277: if(l < address_range){
      003CF3 C3               [12] 2093 	clr	c
      003CF4 E5 08            [12] 2094 	mov	a,_Byte_Read_Sequential_l_131073_37
      003CF6 9B               [12] 2095 	subb	a,r3
      003CF7 E5 09            [12] 2096 	mov	a,(_Byte_Read_Sequential_l_131073_37 + 1)
      003CF9 64 80            [12] 2097 	xrl	a,#0x80
      003CFB 8C F0            [24] 2098 	mov	b,r4
      003CFD 63 F0 80         [24] 2099 	xrl	b,#0x80
      003D00 95 F0            [12] 2100 	subb	a,b
      003D02 50 1C            [24] 2101 	jnc	00122$
                                   2102 ;	i2c_bit_bang.c:278: SDA = PULSE_LOW;
                                   2103 ;	assignBit
      003D04 C2 93            [12] 2104 	clr	_P1_3
                                   2105 ;	i2c_bit_bang.c:279: delay(0);
      003D06 90 00 00         [24] 2106 	mov	dptr,#0x0000
      003D09 C0 07            [24] 2107 	push	ar7
      003D0B 12 33 CC         [24] 2108 	lcall	_delay
                                   2109 ;	i2c_bit_bang.c:280: SCL = PULSE_HIGH;
                                   2110 ;	assignBit
      003D0E D2 92            [12] 2111 	setb	_P1_2
                                   2112 ;	i2c_bit_bang.c:281: delay(2);
      003D10 90 00 02         [24] 2113 	mov	dptr,#0x0002
      003D13 12 33 CC         [24] 2114 	lcall	_delay
                                   2115 ;	i2c_bit_bang.c:282: SCL = PULSE_LOW;
                                   2116 ;	assignBit
      003D16 C2 92            [12] 2117 	clr	_P1_2
                                   2118 ;	i2c_bit_bang.c:283: delay(1);
      003D18 90 00 01         [24] 2119 	mov	dptr,#0x0001
      003D1B 12 33 CC         [24] 2120 	lcall	_delay
      003D1E D0 07            [24] 2121 	pop	ar7
      003D20                       2122 00122$:
                                   2123 ;	i2c_bit_bang.c:267: for(int l = 0; l < (address_range + 1); l++){
      003D20 05 08            [12] 2124 	inc	_Byte_Read_Sequential_l_131073_37
      003D22 E4               [12] 2125 	clr	a
      003D23 B5 08 02         [24] 2126 	cjne	a,_Byte_Read_Sequential_l_131073_37,00195$
      003D26 05 09            [12] 2127 	inc	(_Byte_Read_Sequential_l_131073_37 + 1)
      003D28                       2128 00195$:
      003D28 02 3C 6A         [24] 2129 	ljmp	00121$
      003D2B                       2130 00107$:
                                   2131 ;	i2c_bit_bang.c:286: SDA = PULSE_HIGH;
                                   2132 ;	assignBit
      003D2B D2 93            [12] 2133 	setb	_P1_3
                                   2134 ;	i2c_bit_bang.c:287: delay(2);
      003D2D 90 00 02         [24] 2135 	mov	dptr,#0x0002
      003D30 12 33 CC         [24] 2136 	lcall	_delay
                                   2137 ;	i2c_bit_bang.c:288: SCL = PULSE_HIGH;
                                   2138 ;	assignBit
      003D33 D2 92            [12] 2139 	setb	_P1_2
                                   2140 ;	i2c_bit_bang.c:289: delay(2);
      003D35 90 00 02         [24] 2141 	mov	dptr,#0x0002
      003D38 12 33 CC         [24] 2142 	lcall	_delay
                                   2143 ;	i2c_bit_bang.c:290: SCL = PULSE_LOW;
                                   2144 ;	assignBit
      003D3B C2 92            [12] 2145 	clr	_P1_2
                                   2146 ;	i2c_bit_bang.c:291: SDA = PULSE_LOW;
                                   2147 ;	assignBit
      003D3D C2 93            [12] 2148 	clr	_P1_3
                                   2149 ;	i2c_bit_bang.c:292: delay(2);
      003D3F 90 00 02         [24] 2150 	mov	dptr,#0x0002
      003D42 12 33 CC         [24] 2151 	lcall	_delay
                                   2152 ;	i2c_bit_bang.c:293: SCL = PULSE_HIGH;
                                   2153 ;	assignBit
      003D45 D2 92            [12] 2154 	setb	_P1_2
                                   2155 ;	i2c_bit_bang.c:294: delay(2);
      003D47 90 00 02         [24] 2156 	mov	dptr,#0x0002
      003D4A 12 33 CC         [24] 2157 	lcall	_delay
                                   2158 ;	i2c_bit_bang.c:295: SDA = PULSE_HIGH;
                                   2159 ;	assignBit
      003D4D D2 93            [12] 2160 	setb	_P1_3
                                   2161 ;	i2c_bit_bang.c:296: delay(2);
      003D4F 90 00 02         [24] 2162 	mov	dptr,#0x0002
      003D52 12 33 CC         [24] 2163 	lcall	_delay
                                   2164 ;	i2c_bit_bang.c:297: SCL = PULSE_LOW;
                                   2165 ;	assignBit
      003D55 C2 92            [12] 2166 	clr	_P1_2
                                   2167 ;	i2c_bit_bang.c:298: delay(2);
      003D57 90 00 02         [24] 2168 	mov	dptr,#0x0002
      003D5A 12 33 CC         [24] 2169 	lcall	_delay
                                   2170 ;	i2c_bit_bang.c:299: return buffer;
      003D5D 90 00 09         [24] 2171 	mov	dptr,#_Byte_Read_Sequential_buffer_65536_29
                                   2172 ;	i2c_bit_bang.c:300: }
      003D60 22               [24] 2173 	ret
                                   2174 ;------------------------------------------------------------
                                   2175 ;Allocation info for local variables in function 'eeprom_reset'
                                   2176 ;------------------------------------------------------------
                                   2177 ;i                         Allocated to registers r6 r7 
                                   2178 ;------------------------------------------------------------
                                   2179 ;	i2c_bit_bang.c:302: void eeprom_reset(){
                                   2180 ;	-----------------------------------------
                                   2181 ;	 function eeprom_reset
                                   2182 ;	-----------------------------------------
      003D61                       2183 _eeprom_reset:
                                   2184 ;	i2c_bit_bang.c:303: SCL = PULSE_HIGH;
                                   2185 ;	assignBit
      003D61 D2 92            [12] 2186 	setb	_P1_2
                                   2187 ;	i2c_bit_bang.c:304: SDA = PULSE_HIGH;
                                   2188 ;	assignBit
      003D63 D2 93            [12] 2189 	setb	_P1_3
                                   2190 ;	i2c_bit_bang.c:305: delay(2);
      003D65 90 00 02         [24] 2191 	mov	dptr,#0x0002
      003D68 12 33 CC         [24] 2192 	lcall	_delay
                                   2193 ;	i2c_bit_bang.c:306: SDA = PULSE_LOW;
                                   2194 ;	assignBit
      003D6B C2 93            [12] 2195 	clr	_P1_3
                                   2196 ;	i2c_bit_bang.c:307: delay(0);
      003D6D 90 00 00         [24] 2197 	mov	dptr,#0x0000
      003D70 12 33 CC         [24] 2198 	lcall	_delay
                                   2199 ;	i2c_bit_bang.c:308: SCL = PULSE_LOW;
                                   2200 ;	assignBit
      003D73 C2 92            [12] 2201 	clr	_P1_2
                                   2202 ;	i2c_bit_bang.c:309: delay(0);
      003D75 90 00 00         [24] 2203 	mov	dptr,#0x0000
      003D78 12 33 CC         [24] 2204 	lcall	_delay
                                   2205 ;	i2c_bit_bang.c:310: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
      003D7B 7E 00            [12] 2206 	mov	r6,#0x00
      003D7D 7F 00            [12] 2207 	mov	r7,#0x00
      003D7F                       2208 00103$:
      003D7F C3               [12] 2209 	clr	c
      003D80 EE               [12] 2210 	mov	a,r6
      003D81 94 09            [12] 2211 	subb	a,#0x09
      003D83 EF               [12] 2212 	mov	a,r7
      003D84 64 80            [12] 2213 	xrl	a,#0x80
      003D86 94 80            [12] 2214 	subb	a,#0x80
      003D88 50 21            [24] 2215 	jnc	00101$
                                   2216 ;	i2c_bit_bang.c:311: SDA = PULSE_HIGH;
                                   2217 ;	assignBit
      003D8A D2 93            [12] 2218 	setb	_P1_3
                                   2219 ;	i2c_bit_bang.c:312: SCL = PULSE_HIGH;
                                   2220 ;	assignBit
      003D8C D2 92            [12] 2221 	setb	_P1_2
                                   2222 ;	i2c_bit_bang.c:313: delay(2);
      003D8E 90 00 02         [24] 2223 	mov	dptr,#0x0002
      003D91 C0 07            [24] 2224 	push	ar7
      003D93 C0 06            [24] 2225 	push	ar6
      003D95 12 33 CC         [24] 2226 	lcall	_delay
                                   2227 ;	i2c_bit_bang.c:314: SCL = PULSE_LOW;
                                   2228 ;	assignBit
      003D98 C2 92            [12] 2229 	clr	_P1_2
                                   2230 ;	i2c_bit_bang.c:315: delay(1);
      003D9A 90 00 01         [24] 2231 	mov	dptr,#0x0001
      003D9D 12 33 CC         [24] 2232 	lcall	_delay
      003DA0 D0 06            [24] 2233 	pop	ar6
      003DA2 D0 07            [24] 2234 	pop	ar7
                                   2235 ;	i2c_bit_bang.c:310: for(int i = 0; i < (BYTE_LENGTH + 1); i++){
      003DA4 0E               [12] 2236 	inc	r6
      003DA5 BE 00 D7         [24] 2237 	cjne	r6,#0x00,00103$
      003DA8 0F               [12] 2238 	inc	r7
      003DA9 80 D4            [24] 2239 	sjmp	00103$
      003DAB                       2240 00101$:
                                   2241 ;	i2c_bit_bang.c:317: SCL = PULSE_HIGH;
                                   2242 ;	assignBit
      003DAB D2 92            [12] 2243 	setb	_P1_2
                                   2244 ;	i2c_bit_bang.c:318: delay(0);
      003DAD 90 00 00         [24] 2245 	mov	dptr,#0x0000
      003DB0 12 33 CC         [24] 2246 	lcall	_delay
                                   2247 ;	i2c_bit_bang.c:319: SDA = PULSE_LOW;
                                   2248 ;	assignBit
      003DB3 C2 93            [12] 2249 	clr	_P1_3
                                   2250 ;	i2c_bit_bang.c:320: delay(0);
      003DB5 90 00 00         [24] 2251 	mov	dptr,#0x0000
      003DB8 12 33 CC         [24] 2252 	lcall	_delay
                                   2253 ;	i2c_bit_bang.c:321: SCL = PULSE_LOW;
                                   2254 ;	assignBit
      003DBB C2 92            [12] 2255 	clr	_P1_2
                                   2256 ;	i2c_bit_bang.c:322: SDA = PULSE_LOW;
                                   2257 ;	assignBit
      003DBD C2 93            [12] 2258 	clr	_P1_3
                                   2259 ;	i2c_bit_bang.c:323: delay(1);
      003DBF 90 00 01         [24] 2260 	mov	dptr,#0x0001
      003DC2 12 33 CC         [24] 2261 	lcall	_delay
                                   2262 ;	i2c_bit_bang.c:324: SCL = PULSE_HIGH;
                                   2263 ;	assignBit
      003DC5 D2 92            [12] 2264 	setb	_P1_2
                                   2265 ;	i2c_bit_bang.c:325: delay(0);
      003DC7 90 00 00         [24] 2266 	mov	dptr,#0x0000
      003DCA 12 33 CC         [24] 2267 	lcall	_delay
                                   2268 ;	i2c_bit_bang.c:326: SDA = PULSE_HIGH;
                                   2269 ;	assignBit
      003DCD D2 93            [12] 2270 	setb	_P1_3
                                   2271 ;	i2c_bit_bang.c:327: delay(0);
      003DCF 90 00 00         [24] 2272 	mov	dptr,#0x0000
      003DD2 12 33 CC         [24] 2273 	lcall	_delay
                                   2274 ;	i2c_bit_bang.c:328: SCL = PULSE_LOW;
                                   2275 ;	assignBit
      003DD5 C2 92            [12] 2276 	clr	_P1_2
                                   2277 ;	i2c_bit_bang.c:329: }
      003DD7 22               [24] 2278 	ret
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area CONST   (CODE)
                                   2281 	.area XINIT   (CODE)
                                   2282 	.area CABS    (ABS,CODE)
