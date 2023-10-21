                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module buffer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _echo
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _get_buffer_size_PARM_3
                                    210 	.globl _get_buffer_size_PARM_2
                                    211 	.globl _get_buffer_size
                                    212 ;--------------------------------------------------------
                                    213 ; special function registers
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0	=	0x0080
                           000081   218 _SP	=	0x0081
                           000082   219 _DPL	=	0x0082
                           000083   220 _DPH	=	0x0083
                           000087   221 _PCON	=	0x0087
                           000088   222 _TCON	=	0x0088
                           000089   223 _TMOD	=	0x0089
                           00008A   224 _TL0	=	0x008a
                           00008B   225 _TL1	=	0x008b
                           00008C   226 _TH0	=	0x008c
                           00008D   227 _TH1	=	0x008d
                           000090   228 _P1	=	0x0090
                           000098   229 _SCON	=	0x0098
                           000099   230 _SBUF	=	0x0099
                           0000A0   231 _P2	=	0x00a0
                           0000A8   232 _IE	=	0x00a8
                           0000B0   233 _P3	=	0x00b0
                           0000B8   234 _IP	=	0x00b8
                           0000D0   235 _PSW	=	0x00d0
                           0000E0   236 _ACC	=	0x00e0
                           0000F0   237 _B	=	0x00f0
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                                    289 ;--------------------------------------------------------
                                    290 ; special function bits
                                    291 ;--------------------------------------------------------
                                    292 	.area RSEG    (ABS,DATA)
      000000                        293 	.org 0x0000
                           000080   294 _P0_0	=	0x0080
                           000081   295 _P0_1	=	0x0081
                           000082   296 _P0_2	=	0x0082
                           000083   297 _P0_3	=	0x0083
                           000084   298 _P0_4	=	0x0084
                           000085   299 _P0_5	=	0x0085
                           000086   300 _P0_6	=	0x0086
                           000087   301 _P0_7	=	0x0087
                           000088   302 _IT0	=	0x0088
                           000089   303 _IE0	=	0x0089
                           00008A   304 _IT1	=	0x008a
                           00008B   305 _IE1	=	0x008b
                           00008C   306 _TR0	=	0x008c
                           00008D   307 _TF0	=	0x008d
                           00008E   308 _TR1	=	0x008e
                           00008F   309 _TF1	=	0x008f
                           000090   310 _P1_0	=	0x0090
                           000091   311 _P1_1	=	0x0091
                           000092   312 _P1_2	=	0x0092
                           000093   313 _P1_3	=	0x0093
                           000094   314 _P1_4	=	0x0094
                           000095   315 _P1_5	=	0x0095
                           000096   316 _P1_6	=	0x0096
                           000097   317 _P1_7	=	0x0097
                           000098   318 _RI	=	0x0098
                           000099   319 _TI	=	0x0099
                           00009A   320 _RB8	=	0x009a
                           00009B   321 _TB8	=	0x009b
                           00009C   322 _REN	=	0x009c
                           00009D   323 _SM2	=	0x009d
                           00009E   324 _SM1	=	0x009e
                           00009F   325 _SM0	=	0x009f
                           0000A0   326 _P2_0	=	0x00a0
                           0000A1   327 _P2_1	=	0x00a1
                           0000A2   328 _P2_2	=	0x00a2
                           0000A3   329 _P2_3	=	0x00a3
                           0000A4   330 _P2_4	=	0x00a4
                           0000A5   331 _P2_5	=	0x00a5
                           0000A6   332 _P2_6	=	0x00a6
                           0000A7   333 _P2_7	=	0x00a7
                           0000A8   334 _EX0	=	0x00a8
                           0000A9   335 _ET0	=	0x00a9
                           0000AA   336 _EX1	=	0x00aa
                           0000AB   337 _ET1	=	0x00ab
                           0000AC   338 _ES	=	0x00ac
                           0000AF   339 _EA	=	0x00af
                           0000B0   340 _P3_0	=	0x00b0
                           0000B1   341 _P3_1	=	0x00b1
                           0000B2   342 _P3_2	=	0x00b2
                           0000B3   343 _P3_3	=	0x00b3
                           0000B4   344 _P3_4	=	0x00b4
                           0000B5   345 _P3_5	=	0x00b5
                           0000B6   346 _P3_6	=	0x00b6
                           0000B7   347 _P3_7	=	0x00b7
                           0000B0   348 _RXD	=	0x00b0
                           0000B1   349 _TXD	=	0x00b1
                           0000B2   350 _INT0	=	0x00b2
                           0000B3   351 _INT1	=	0x00b3
                           0000B4   352 _T0	=	0x00b4
                           0000B5   353 _T1	=	0x00b5
                           0000B6   354 _WR	=	0x00b6
                           0000B7   355 _RD	=	0x00b7
                           0000B8   356 _PX0	=	0x00b8
                           0000B9   357 _PT0	=	0x00b9
                           0000BA   358 _PX1	=	0x00ba
                           0000BB   359 _PT1	=	0x00bb
                           0000BC   360 _PS	=	0x00bc
                           0000D0   361 _P	=	0x00d0
                           0000D1   362 _F1	=	0x00d1
                           0000D2   363 _OV	=	0x00d2
                           0000D3   364 _RS0	=	0x00d3
                           0000D4   365 _RS1	=	0x00d4
                           0000D5   366 _F0	=	0x00d5
                           0000D6   367 _AC	=	0x00d6
                           0000D7   368 _CY	=	0x00d7
                           0000AD   369 _ET2	=	0x00ad
                           0000BD   370 _PT2	=	0x00bd
                           0000C8   371 _T2CON_0	=	0x00c8
                           0000C9   372 _T2CON_1	=	0x00c9
                           0000CA   373 _T2CON_2	=	0x00ca
                           0000CB   374 _T2CON_3	=	0x00cb
                           0000CC   375 _T2CON_4	=	0x00cc
                           0000CD   376 _T2CON_5	=	0x00cd
                           0000CE   377 _T2CON_6	=	0x00ce
                           0000CF   378 _T2CON_7	=	0x00cf
                           0000C8   379 _CP_RL2	=	0x00c8
                           0000C9   380 _C_T2	=	0x00c9
                           0000CA   381 _TR2	=	0x00ca
                           0000CB   382 _EXEN2	=	0x00cb
                           0000CC   383 _TCLK	=	0x00cc
                           0000CD   384 _RCLK	=	0x00cd
                           0000CE   385 _EXF2	=	0x00ce
                           0000CF   386 _TF2	=	0x00cf
                           0000DF   387 _CF	=	0x00df
                           0000DE   388 _CR	=	0x00de
                           0000DC   389 _CCF4	=	0x00dc
                           0000DB   390 _CCF3	=	0x00db
                           0000DA   391 _CCF2	=	0x00da
                           0000D9   392 _CCF1	=	0x00d9
                           0000D8   393 _CCF0	=	0x00d8
                           0000AE   394 _EC	=	0x00ae
                           0000BE   395 _PPCL	=	0x00be
                           0000BD   396 _PT2L	=	0x00bd
                           0000BC   397 _PSL	=	0x00bc
                           0000BB   398 _PT1L	=	0x00bb
                           0000BA   399 _PX1L	=	0x00ba
                           0000B9   400 _PT0L	=	0x00b9
                           0000B8   401 _PX0L	=	0x00b8
                           0000C0   402 _P4_0	=	0x00c0
                           0000C1   403 _P4_1	=	0x00c1
                           0000C2   404 _P4_2	=	0x00c2
                           0000C3   405 _P4_3	=	0x00c3
                           0000C4   406 _P4_4	=	0x00c4
                           0000C5   407 _P4_5	=	0x00c5
                           0000C6   408 _P4_6	=	0x00c6
                           0000C7   409 _P4_7	=	0x00c7
                           0000E8   410 _P5_0	=	0x00e8
                           0000E9   411 _P5_1	=	0x00e9
                           0000EA   412 _P5_2	=	0x00ea
                           0000EB   413 _P5_3	=	0x00eb
                           0000EC   414 _P5_4	=	0x00ec
                           0000ED   415 _P5_5	=	0x00ed
                           0000EE   416 _P5_6	=	0x00ee
                           0000EF   417 _P5_7	=	0x00ef
                                    418 ;--------------------------------------------------------
                                    419 ; overlayable register banks
                                    420 ;--------------------------------------------------------
                                    421 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        422 	.ds 8
                                    423 ;--------------------------------------------------------
                                    424 ; internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area DSEG    (DATA)
      000008                        427 _get_buffer_size_sloc0_1_0:
      000008                        428 	.ds 4
      00000C                        429 _get_buffer_size_sloc1_1_0:
      00000C                        430 	.ds 1
      00000D                        431 _get_buffer_size_sloc2_1_0:
      00000D                        432 	.ds 2
      00000F                        433 _get_buffer_size_sloc3_1_0:
      00000F                        434 	.ds 4
      000013                        435 _get_buffer_size_sloc4_1_0:
      000013                        436 	.ds 4
                                    437 ;--------------------------------------------------------
                                    438 ; overlayable items in internal ram
                                    439 ;--------------------------------------------------------
                                    440 ;--------------------------------------------------------
                                    441 ; indirectly addressable internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area ISEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; absolute internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area IABS    (ABS,DATA)
                                    448 	.area IABS    (ABS,DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; bit data
                                    451 ;--------------------------------------------------------
                                    452 	.area BSEG    (BIT)
                                    453 ;--------------------------------------------------------
                                    454 ; paged external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area PSEG    (PAG,XDATA)
                                    457 ;--------------------------------------------------------
                                    458 ; external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XSEG    (XDATA)
      000000                        461 _get_buffer_size_PARM_2:
      000000                        462 	.ds 4
      000004                        463 _get_buffer_size_PARM_3:
      000004                        464 	.ds 4
      000008                        465 _get_buffer_size_min_65536_19:
      000008                        466 	.ds 4
      00000C                        467 _get_buffer_size_buffer_size_65536_20:
      00000C                        468 	.ds 2
      00000E                        469 _get_buffer_size_char_received_131072_21:
      00000E                        470 	.ds 1
                                    471 ;--------------------------------------------------------
                                    472 ; absolute external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XABS    (ABS,XDATA)
                                    475 ;--------------------------------------------------------
                                    476 ; external initialized ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area XISEG   (XDATA)
                                    479 	.area HOME    (CODE)
                                    480 	.area GSINIT0 (CODE)
                                    481 	.area GSINIT1 (CODE)
                                    482 	.area GSINIT2 (CODE)
                                    483 	.area GSINIT3 (CODE)
                                    484 	.area GSINIT4 (CODE)
                                    485 	.area GSINIT5 (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.area GSFINAL (CODE)
                                    488 	.area CSEG    (CODE)
                                    489 ;--------------------------------------------------------
                                    490 ; global & static initialisations
                                    491 ;--------------------------------------------------------
                                    492 	.area HOME    (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.area GSFINAL (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 ;--------------------------------------------------------
                                    497 ; Home
                                    498 ;--------------------------------------------------------
                                    499 	.area HOME    (CODE)
                                    500 	.area HOME    (CODE)
                                    501 ;--------------------------------------------------------
                                    502 ; code
                                    503 ;--------------------------------------------------------
                                    504 	.area CSEG    (CODE)
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'get_buffer_size'
                                    507 ;------------------------------------------------------------
                                    508 ;sloc0                     Allocated with name '_get_buffer_size_sloc0_1_0'
                                    509 ;sloc1                     Allocated with name '_get_buffer_size_sloc1_1_0'
                                    510 ;sloc2                     Allocated with name '_get_buffer_size_sloc2_1_0'
                                    511 ;sloc3                     Allocated with name '_get_buffer_size_sloc3_1_0'
                                    512 ;sloc4                     Allocated with name '_get_buffer_size_sloc4_1_0'
                                    513 ;max                       Allocated with name '_get_buffer_size_PARM_2'
                                    514 ;divisible                 Allocated with name '_get_buffer_size_PARM_3'
                                    515 ;min                       Allocated with name '_get_buffer_size_min_65536_19'
                                    516 ;buffer_size               Allocated with name '_get_buffer_size_buffer_size_65536_20'
                                    517 ;char_received             Allocated with name '_get_buffer_size_char_received_131072_21'
                                    518 ;------------------------------------------------------------
                                    519 ;	buffer.c:33: __xdata int16_t get_buffer_size(uint32_t min, uint32_t max, uint32_t divisible) {
                                    520 ;	-----------------------------------------
                                    521 ;	 function get_buffer_size
                                    522 ;	-----------------------------------------
      003062                        523 _get_buffer_size:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
      003062 AF 82            [24]  532 	mov	r7,dpl
      003064 AE 83            [24]  533 	mov	r6,dph
      003066 AD F0            [24]  534 	mov	r5,b
      003068 FC               [12]  535 	mov	r4,a
      003069 90 00 08         [24]  536 	mov	dptr,#_get_buffer_size_min_65536_19
      00306C EF               [12]  537 	mov	a,r7
      00306D F0               [24]  538 	movx	@dptr,a
      00306E EE               [12]  539 	mov	a,r6
      00306F A3               [24]  540 	inc	dptr
      003070 F0               [24]  541 	movx	@dptr,a
      003071 ED               [12]  542 	mov	a,r5
      003072 A3               [24]  543 	inc	dptr
      003073 F0               [24]  544 	movx	@dptr,a
      003074 EC               [12]  545 	mov	a,r4
      003075 A3               [24]  546 	inc	dptr
      003076 F0               [24]  547 	movx	@dptr,a
                                    548 ;	buffer.c:34: __xdata int16_t buffer_size = 0;
      003077 90 00 0C         [24]  549 	mov	dptr,#_get_buffer_size_buffer_size_65536_20
      00307A E4               [12]  550 	clr	a
      00307B F0               [24]  551 	movx	@dptr,a
      00307C A3               [24]  552 	inc	dptr
      00307D F0               [24]  553 	movx	@dptr,a
                                    554 ;	buffer.c:37: while (1) {
      00307E 90 00 00         [24]  555 	mov	dptr,#_get_buffer_size_PARM_2
      003081 E0               [24]  556 	movx	a,@dptr
      003082 F5 13            [12]  557 	mov	_get_buffer_size_sloc4_1_0,a
      003084 A3               [24]  558 	inc	dptr
      003085 E0               [24]  559 	movx	a,@dptr
      003086 F5 14            [12]  560 	mov	(_get_buffer_size_sloc4_1_0 + 1),a
      003088 A3               [24]  561 	inc	dptr
      003089 E0               [24]  562 	movx	a,@dptr
      00308A F5 15            [12]  563 	mov	(_get_buffer_size_sloc4_1_0 + 2),a
      00308C A3               [24]  564 	inc	dptr
      00308D E0               [24]  565 	movx	a,@dptr
      00308E F5 16            [12]  566 	mov	(_get_buffer_size_sloc4_1_0 + 3),a
      003090 90 00 08         [24]  567 	mov	dptr,#_get_buffer_size_min_65536_19
      003093 E0               [24]  568 	movx	a,@dptr
      003094 F8               [12]  569 	mov	r0,a
      003095 A3               [24]  570 	inc	dptr
      003096 E0               [24]  571 	movx	a,@dptr
      003097 F9               [12]  572 	mov	r1,a
      003098 A3               [24]  573 	inc	dptr
      003099 E0               [24]  574 	movx	a,@dptr
      00309A FA               [12]  575 	mov	r2,a
      00309B A3               [24]  576 	inc	dptr
      00309C E0               [24]  577 	movx	a,@dptr
      00309D FB               [12]  578 	mov	r3,a
      00309E 90 00 04         [24]  579 	mov	dptr,#_get_buffer_size_PARM_3
      0030A1 E0               [24]  580 	movx	a,@dptr
      0030A2 F5 08            [12]  581 	mov	_get_buffer_size_sloc0_1_0,a
      0030A4 A3               [24]  582 	inc	dptr
      0030A5 E0               [24]  583 	movx	a,@dptr
      0030A6 F5 09            [12]  584 	mov	(_get_buffer_size_sloc0_1_0 + 1),a
      0030A8 A3               [24]  585 	inc	dptr
      0030A9 E0               [24]  586 	movx	a,@dptr
      0030AA F5 0A            [12]  587 	mov	(_get_buffer_size_sloc0_1_0 + 2),a
      0030AC A3               [24]  588 	inc	dptr
      0030AD E0               [24]  589 	movx	a,@dptr
      0030AE F5 0B            [12]  590 	mov	(_get_buffer_size_sloc0_1_0 + 3),a
      0030B0                        591 00117$:
                                    592 ;	buffer.c:38: __xdata uint8_t char_received = echo(); // Read a character from UART
      0030B0 C0 03            [24]  593 	push	ar3
      0030B2 C0 02            [24]  594 	push	ar2
      0030B4 C0 01            [24]  595 	push	ar1
      0030B6 C0 00            [24]  596 	push	ar0
      0030B8 12 3D CA         [24]  597 	lcall	_echo
      0030BB 85 82 0C         [24]  598 	mov	_get_buffer_size_sloc1_1_0,dpl
      0030BE D0 00            [24]  599 	pop	ar0
      0030C0 D0 01            [24]  600 	pop	ar1
      0030C2 D0 02            [24]  601 	pop	ar2
      0030C4 D0 03            [24]  602 	pop	ar3
      0030C6 90 00 0E         [24]  603 	mov	dptr,#_get_buffer_size_char_received_131072_21
      0030C9 E5 0C            [12]  604 	mov	a,_get_buffer_size_sloc1_1_0
      0030CB F0               [24]  605 	movx	@dptr,a
                                    606 ;	buffer.c:42: if ((char_received == '\n') || (char_received == '\r')) {
      0030CC 74 0A            [12]  607 	mov	a,#0x0a
      0030CE B5 0C 02         [24]  608 	cjne	a,_get_buffer_size_sloc1_1_0,00145$
      0030D1 80 0A            [24]  609 	sjmp	00112$
      0030D3                        610 00145$:
      0030D3 74 0D            [12]  611 	mov	a,#0x0d
      0030D5 B5 0C 02         [24]  612 	cjne	a,_get_buffer_size_sloc1_1_0,00146$
      0030D8 80 03            [24]  613 	sjmp	00147$
      0030DA                        614 00146$:
      0030DA 02 31 BA         [24]  615 	ljmp	00113$
      0030DD                        616 00147$:
      0030DD                        617 00112$:
                                    618 ;	buffer.c:44: if ((buffer_size < min) || (buffer_size > max)) {
      0030DD 90 00 0C         [24]  619 	mov	dptr,#_get_buffer_size_buffer_size_65536_20
      0030E0 E0               [24]  620 	movx	a,@dptr
      0030E1 F5 0D            [12]  621 	mov	_get_buffer_size_sloc2_1_0,a
      0030E3 A3               [24]  622 	inc	dptr
      0030E4 E0               [24]  623 	movx	a,@dptr
      0030E5 F5 0E            [12]  624 	mov	(_get_buffer_size_sloc2_1_0 + 1),a
      0030E7 85 0D 0F         [24]  625 	mov	_get_buffer_size_sloc3_1_0,_get_buffer_size_sloc2_1_0
      0030EA F5 10            [12]  626 	mov	(_get_buffer_size_sloc3_1_0 + 1),a
      0030EC 33               [12]  627 	rlc	a
      0030ED 95 E0            [12]  628 	subb	a,acc
      0030EF F5 11            [12]  629 	mov	(_get_buffer_size_sloc3_1_0 + 2),a
      0030F1 F5 12            [12]  630 	mov	(_get_buffer_size_sloc3_1_0 + 3),a
      0030F3 C3               [12]  631 	clr	c
      0030F4 E5 0F            [12]  632 	mov	a,_get_buffer_size_sloc3_1_0
      0030F6 98               [12]  633 	subb	a,r0
      0030F7 E5 10            [12]  634 	mov	a,(_get_buffer_size_sloc3_1_0 + 1)
      0030F9 99               [12]  635 	subb	a,r1
      0030FA E5 11            [12]  636 	mov	a,(_get_buffer_size_sloc3_1_0 + 2)
      0030FC 9A               [12]  637 	subb	a,r2
      0030FD E5 12            [12]  638 	mov	a,(_get_buffer_size_sloc3_1_0 + 3)
      0030FF 9B               [12]  639 	subb	a,r3
      003100 40 12            [24]  640 	jc	00104$
      003102 E5 13            [12]  641 	mov	a,_get_buffer_size_sloc4_1_0
      003104 95 0F            [12]  642 	subb	a,_get_buffer_size_sloc3_1_0
      003106 E5 14            [12]  643 	mov	a,(_get_buffer_size_sloc4_1_0 + 1)
      003108 95 10            [12]  644 	subb	a,(_get_buffer_size_sloc3_1_0 + 1)
      00310A E5 15            [12]  645 	mov	a,(_get_buffer_size_sloc4_1_0 + 2)
      00310C 95 11            [12]  646 	subb	a,(_get_buffer_size_sloc3_1_0 + 2)
      00310E E5 16            [12]  647 	mov	a,(_get_buffer_size_sloc4_1_0 + 3)
      003110 95 12            [12]  648 	subb	a,(_get_buffer_size_sloc3_1_0 + 3)
      003112 50 2F            [24]  649 	jnc	00105$
      003114                        650 00104$:
                                    651 ;	buffer.c:46: "value\r\n");
      003114 C0 03            [24]  652 	push	ar3
      003116 C0 02            [24]  653 	push	ar2
      003118 C0 01            [24]  654 	push	ar1
      00311A C0 00            [24]  655 	push	ar0
      00311C 74 61            [12]  656 	mov	a,#___str_0
      00311E C0 E0            [24]  657 	push	acc
      003120 74 4E            [12]  658 	mov	a,#(___str_0 >> 8)
      003122 C0 E0            [24]  659 	push	acc
      003124 74 80            [12]  660 	mov	a,#0x80
      003126 C0 E0            [24]  661 	push	acc
      003128 12 44 19         [24]  662 	lcall	_printf
      00312B 15 81            [12]  663 	dec	sp
      00312D 15 81            [12]  664 	dec	sp
      00312F 15 81            [12]  665 	dec	sp
      003131 D0 00            [24]  666 	pop	ar0
      003133 D0 01            [24]  667 	pop	ar1
      003135 D0 02            [24]  668 	pop	ar2
      003137 D0 03            [24]  669 	pop	ar3
                                    670 ;	buffer.c:47: buffer_size = 0;
      003139 90 00 0C         [24]  671 	mov	dptr,#_get_buffer_size_buffer_size_65536_20
      00313C E4               [12]  672 	clr	a
      00313D F0               [24]  673 	movx	@dptr,a
      00313E A3               [24]  674 	inc	dptr
      00313F F0               [24]  675 	movx	@dptr,a
                                    676 ;	buffer.c:48: continue; // Input is invalid, continue reading user input
      003140 02 30 B0         [24]  677 	ljmp	00117$
      003143                        678 00105$:
                                    679 ;	buffer.c:49: } else if (buffer_size % divisible) {
      003143 90 13 EB         [24]  680 	mov	dptr,#__modulong_PARM_2
      003146 E5 08            [12]  681 	mov	a,_get_buffer_size_sloc0_1_0
      003148 F0               [24]  682 	movx	@dptr,a
      003149 E5 09            [12]  683 	mov	a,(_get_buffer_size_sloc0_1_0 + 1)
      00314B A3               [24]  684 	inc	dptr
      00314C F0               [24]  685 	movx	@dptr,a
      00314D E5 0A            [12]  686 	mov	a,(_get_buffer_size_sloc0_1_0 + 2)
      00314F A3               [24]  687 	inc	dptr
      003150 F0               [24]  688 	movx	@dptr,a
      003151 E5 0B            [12]  689 	mov	a,(_get_buffer_size_sloc0_1_0 + 3)
      003153 A3               [24]  690 	inc	dptr
      003154 F0               [24]  691 	movx	@dptr,a
      003155 85 0F 82         [24]  692 	mov	dpl,_get_buffer_size_sloc3_1_0
      003158 85 10 83         [24]  693 	mov	dph,(_get_buffer_size_sloc3_1_0 + 1)
      00315B 85 11 F0         [24]  694 	mov	b,(_get_buffer_size_sloc3_1_0 + 2)
      00315E E5 12            [12]  695 	mov	a,(_get_buffer_size_sloc3_1_0 + 3)
      003160 C0 03            [24]  696 	push	ar3
      003162 C0 02            [24]  697 	push	ar2
      003164 C0 01            [24]  698 	push	ar1
      003166 C0 00            [24]  699 	push	ar0
      003168 12 3F 46         [24]  700 	lcall	__modulong
      00316B AC 82            [24]  701 	mov	r4,dpl
      00316D AD 83            [24]  702 	mov	r5,dph
      00316F AE F0            [24]  703 	mov	r6,b
      003171 FF               [12]  704 	mov	r7,a
      003172 D0 00            [24]  705 	pop	ar0
      003174 D0 01            [24]  706 	pop	ar1
      003176 D0 02            [24]  707 	pop	ar2
      003178 D0 03            [24]  708 	pop	ar3
      00317A EC               [12]  709 	mov	a,r4
      00317B 4D               [12]  710 	orl	a,r5
      00317C 4E               [12]  711 	orl	a,r6
      00317D 4F               [12]  712 	orl	a,r7
      00317E 70 03            [24]  713 	jnz	00150$
      003180 02 32 39         [24]  714 	ljmp	00118$
      003183                        715 00150$:
                                    716 ;	buffer.c:51: "value\r\n", divisible);
      003183 C0 03            [24]  717 	push	ar3
      003185 C0 02            [24]  718 	push	ar2
      003187 C0 01            [24]  719 	push	ar1
      003189 C0 00            [24]  720 	push	ar0
      00318B C0 08            [24]  721 	push	_get_buffer_size_sloc0_1_0
      00318D C0 09            [24]  722 	push	(_get_buffer_size_sloc0_1_0 + 1)
      00318F C0 0A            [24]  723 	push	(_get_buffer_size_sloc0_1_0 + 2)
      003191 C0 0B            [24]  724 	push	(_get_buffer_size_sloc0_1_0 + 3)
      003193 74 9F            [12]  725 	mov	a,#___str_1
      003195 C0 E0            [24]  726 	push	acc
      003197 74 4E            [12]  727 	mov	a,#(___str_1 >> 8)
      003199 C0 E0            [24]  728 	push	acc
      00319B 74 80            [12]  729 	mov	a,#0x80
      00319D C0 E0            [24]  730 	push	acc
      00319F 12 44 19         [24]  731 	lcall	_printf
      0031A2 E5 81            [12]  732 	mov	a,sp
      0031A4 24 F9            [12]  733 	add	a,#0xf9
      0031A6 F5 81            [12]  734 	mov	sp,a
      0031A8 D0 00            [24]  735 	pop	ar0
      0031AA D0 01            [24]  736 	pop	ar1
      0031AC D0 02            [24]  737 	pop	ar2
      0031AE D0 03            [24]  738 	pop	ar3
                                    739 ;	buffer.c:52: buffer_size = 0;
      0031B0 90 00 0C         [24]  740 	mov	dptr,#_get_buffer_size_buffer_size_65536_20
      0031B3 E4               [12]  741 	clr	a
      0031B4 F0               [24]  742 	movx	@dptr,a
      0031B5 A3               [24]  743 	inc	dptr
      0031B6 F0               [24]  744 	movx	@dptr,a
                                    745 ;	buffer.c:53: continue; // Input is not divisible, continue reading user input
      0031B7 02 30 B0         [24]  746 	ljmp	00117$
                                    747 ;	buffer.c:55: break; // Input is valid, exit the loop
      0031BA                        748 00113$:
                                    749 ;	buffer.c:57: } else if ((char_received >= '0') && (char_received <= '9')) {
      0031BA AF 0C            [24]  750 	mov	r7,_get_buffer_size_sloc1_1_0
      0031BC BF 30 00         [24]  751 	cjne	r7,#0x30,00151$
      0031BF                        752 00151$:
      0031BF 40 12            [24]  753 	jc	00109$
      0031C1 E5 0C            [12]  754 	mov	a,_get_buffer_size_sloc1_1_0
      0031C3 FF               [12]  755 	mov	r7,a
      0031C4 24 C6            [12]  756 	add	a,#0xff - 0x39
      0031C6 40 0B            [24]  757 	jc	00109$
                                    758 ;	buffer.c:58: char_received = char_received - '0'; // Convert ASCII character to its
      0031C8 E5 0C            [12]  759 	mov	a,_get_buffer_size_sloc1_1_0
      0031CA FF               [12]  760 	mov	r7,a
      0031CB 24 D0            [12]  761 	add	a,#0xd0
      0031CD 90 00 0E         [24]  762 	mov	dptr,#_get_buffer_size_char_received_131072_21
      0031D0 F0               [24]  763 	movx	@dptr,a
      0031D1 80 25            [24]  764 	sjmp	00114$
      0031D3                        765 00109$:
                                    766 ;	buffer.c:61: printf("Invalid input character\r\n"); // Inform the user about invalid input
      0031D3 C0 03            [24]  767 	push	ar3
      0031D5 C0 02            [24]  768 	push	ar2
      0031D7 C0 01            [24]  769 	push	ar1
      0031D9 C0 00            [24]  770 	push	ar0
      0031DB 74 DB            [12]  771 	mov	a,#___str_2
      0031DD C0 E0            [24]  772 	push	acc
      0031DF 74 4E            [12]  773 	mov	a,#(___str_2 >> 8)
      0031E1 C0 E0            [24]  774 	push	acc
      0031E3 74 80            [12]  775 	mov	a,#0x80
      0031E5 C0 E0            [24]  776 	push	acc
      0031E7 12 44 19         [24]  777 	lcall	_printf
      0031EA 15 81            [12]  778 	dec	sp
      0031EC 15 81            [12]  779 	dec	sp
      0031EE 15 81            [12]  780 	dec	sp
      0031F0 D0 00            [24]  781 	pop	ar0
      0031F2 D0 01            [24]  782 	pop	ar1
      0031F4 D0 02            [24]  783 	pop	ar2
      0031F6 D0 03            [24]  784 	pop	ar3
      0031F8                        785 00114$:
                                    786 ;	buffer.c:65: buffer_size = (buffer_size * 10) + char_received;
      0031F8 90 00 0C         [24]  787 	mov	dptr,#_get_buffer_size_buffer_size_65536_20
      0031FB E0               [24]  788 	movx	a,@dptr
      0031FC FE               [12]  789 	mov	r6,a
      0031FD A3               [24]  790 	inc	dptr
      0031FE E0               [24]  791 	movx	a,@dptr
      0031FF FF               [12]  792 	mov	r7,a
      003200 90 13 FC         [24]  793 	mov	dptr,#__mulint_PARM_2
      003203 EE               [12]  794 	mov	a,r6
      003204 F0               [24]  795 	movx	@dptr,a
      003205 EF               [12]  796 	mov	a,r7
      003206 A3               [24]  797 	inc	dptr
      003207 F0               [24]  798 	movx	@dptr,a
      003208 90 00 0A         [24]  799 	mov	dptr,#0x000a
      00320B C0 03            [24]  800 	push	ar3
      00320D C0 02            [24]  801 	push	ar2
      00320F C0 01            [24]  802 	push	ar1
      003211 C0 00            [24]  803 	push	ar0
      003213 12 42 2B         [24]  804 	lcall	__mulint
      003216 AE 82            [24]  805 	mov	r6,dpl
      003218 AF 83            [24]  806 	mov	r7,dph
      00321A D0 00            [24]  807 	pop	ar0
      00321C D0 01            [24]  808 	pop	ar1
      00321E D0 02            [24]  809 	pop	ar2
      003220 D0 03            [24]  810 	pop	ar3
      003222 90 00 0E         [24]  811 	mov	dptr,#_get_buffer_size_char_received_131072_21
      003225 E0               [24]  812 	movx	a,@dptr
      003226 FD               [12]  813 	mov	r5,a
      003227 7C 00            [12]  814 	mov	r4,#0x00
      003229 2E               [12]  815 	add	a,r6
      00322A FE               [12]  816 	mov	r6,a
      00322B EC               [12]  817 	mov	a,r4
      00322C 3F               [12]  818 	addc	a,r7
      00322D FF               [12]  819 	mov	r7,a
      00322E 90 00 0C         [24]  820 	mov	dptr,#_get_buffer_size_buffer_size_65536_20
      003231 EE               [12]  821 	mov	a,r6
      003232 F0               [24]  822 	movx	@dptr,a
      003233 EF               [12]  823 	mov	a,r7
      003234 A3               [24]  824 	inc	dptr
      003235 F0               [24]  825 	movx	@dptr,a
      003236 02 30 B0         [24]  826 	ljmp	00117$
      003239                        827 00118$:
                                    828 ;	buffer.c:68: printf("%d\r\n", buffer_size); // Display the validated buffer size to the user
      003239 C0 0D            [24]  829 	push	_get_buffer_size_sloc2_1_0
      00323B C0 0E            [24]  830 	push	(_get_buffer_size_sloc2_1_0 + 1)
      00323D 74 F5            [12]  831 	mov	a,#___str_3
      00323F C0 E0            [24]  832 	push	acc
      003241 74 4E            [12]  833 	mov	a,#(___str_3 >> 8)
      003243 C0 E0            [24]  834 	push	acc
      003245 74 80            [12]  835 	mov	a,#0x80
      003247 C0 E0            [24]  836 	push	acc
      003249 12 44 19         [24]  837 	lcall	_printf
      00324C E5 81            [12]  838 	mov	a,sp
      00324E 24 FB            [12]  839 	add	a,#0xfb
      003250 F5 81            [12]  840 	mov	sp,a
                                    841 ;	buffer.c:69: return buffer_size; // Return the validated buffer size
      003252 85 0D 82         [24]  842 	mov	dpl,_get_buffer_size_sloc2_1_0
      003255 85 0E 83         [24]  843 	mov	dph,(_get_buffer_size_sloc2_1_0 + 1)
                                    844 ;	buffer.c:70: }
      003258 22               [24]  845 	ret
                                    846 	.area CSEG    (CODE)
                                    847 	.area CONST   (CODE)
                                    848 	.area CONST   (CODE)
      004E61                        849 ___str_0:
      004E61 49 6E 70 75 74 20 76   850 	.ascii "Input value is out of expected range! Try a different value"
             61 6C 75 65 20 69 73
             20 6F 75 74 20 6F 66
             20 65 78 70 65 63 74
             65 64 20 72 61 6E 67
             65 21 20 54 72 79 20
             61 20 64 69 66 66 65
             72 65 6E 74 20 76 61
             6C 75 65
      004E9C 0D                     851 	.db 0x0d
      004E9D 0A                     852 	.db 0x0a
      004E9E 00                     853 	.db 0x00
                                    854 	.area CSEG    (CODE)
                                    855 	.area CONST   (CODE)
      004E9F                        856 ___str_1:
      004E9F 49 6E 70 75 74 20 76   857 	.ascii "Input value is not divisible by %d! Try a different value"
             61 6C 75 65 20 69 73
             20 6E 6F 74 20 64 69
             76 69 73 69 62 6C 65
             20 62 79 20 25 64 21
             20 54 72 79 20 61 20
             64 69 66 66 65 72 65
             6E 74 20 76 61 6C 75
             65
      004ED8 0D                     858 	.db 0x0d
      004ED9 0A                     859 	.db 0x0a
      004EDA 00                     860 	.db 0x00
                                    861 	.area CSEG    (CODE)
                                    862 	.area CONST   (CODE)
      004EDB                        863 ___str_2:
      004EDB 49 6E 76 61 6C 69 64   864 	.ascii "Invalid input character"
             20 69 6E 70 75 74 20
             63 68 61 72 61 63 74
             65 72
      004EF2 0D                     865 	.db 0x0d
      004EF3 0A                     866 	.db 0x0a
      004EF4 00                     867 	.db 0x00
                                    868 	.area CSEG    (CODE)
                                    869 	.area CONST   (CODE)
      004EF5                        870 ___str_3:
      004EF5 25 64                  871 	.ascii "%d"
      004EF7 0D                     872 	.db 0x0d
      004EF8 0A                     873 	.db 0x0a
      004EF9 00                     874 	.db 0x00
                                    875 	.area CSEG    (CODE)
                                    876 	.area XINIT   (CODE)
                                    877 	.area CABS    (ABS,CODE)
