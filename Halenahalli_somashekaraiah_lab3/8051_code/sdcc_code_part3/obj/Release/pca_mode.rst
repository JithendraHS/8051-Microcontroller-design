                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pca_mode
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _PWM_Init
                                    222 	.globl _WDT_Init
                                    223 	.globl _HSO_Init
                                    224 	.globl _start_pwm
                                    225 	.globl _stop_pwm
                                    226 	.globl _set_min_frequency
                                    227 	.globl _set_max_frequency
                                    228 	.globl _set_power_idle_mode
                                    229 	.globl _clear_power_idle_mode
                                    230 	.globl _set_power_down_mode
                                    231 	.globl _clear_power_down_mode
                                    232 	.globl _start_watchdog_timer
                                    233 	.globl _stop_watchdog_timer
                                    234 	.globl _enable_highspeed_output
                                    235 	.globl _disable_highspeed_output
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
                                    507 ; global & static initialisations
                                    508 ;--------------------------------------------------------
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; Home
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
                                    517 	.area HOME    (CODE)
                                    518 ;--------------------------------------------------------
                                    519 ; code
                                    520 ;--------------------------------------------------------
                                    521 	.area CSEG    (CODE)
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'PWM_Init'
                                    524 ;------------------------------------------------------------
                                    525 ;	pca_mode.c:44: void PWM_Init()
                                    526 ;	-----------------------------------------
                                    527 ;	 function PWM_Init
                                    528 ;	-----------------------------------------
      003212                        529 _PWM_Init:
                           000007   530 	ar7 = 0x07
                           000006   531 	ar6 = 0x06
                           000005   532 	ar5 = 0x05
                           000004   533 	ar4 = 0x04
                           000003   534 	ar3 = 0x03
                           000002   535 	ar2 = 0x02
                           000001   536 	ar1 = 0x01
                           000000   537 	ar0 = 0x00
                                    538 ;	pca_mode.c:46: CMOD &= ~SET_CIDL;   // clear CIDL bit to allow PCA to run in idle mode
      003212 53 D9 7F         [24]  539 	anl	_CMOD,#0x7f
                                    540 ;	pca_mode.c:47: CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
      003215 43 D9 02         [24]  541 	orl	_CMOD,#0x02
                                    542 ;	pca_mode.c:49: CCAP0L = INITIAL_DUTYCYCLE; // Set low byte of CCAP0 (for a 33% duty cycle at 8-bit resolution)
      003218 75 EA AA         [24]  543 	mov	_CCAP0L,#0xaa
                                    544 ;	pca_mode.c:50: CCAP0H = INITIAL_DUTYCYCLE; // Set high byte of CCAP0 (for a 33% duty cycle at 8-bit resolution)
      00321B 75 FA AA         [24]  545 	mov	_CCAP0H,#0xaa
                                    546 ;	pca_mode.c:52: CCAPM0 |= SET_ECOM; // Enable PWM mode for module 0 (bits ECOM0 and PWM0)
      00321E 43 DA 40         [24]  547 	orl	_CCAPM0,#0x40
                                    548 ;	pca_mode.c:53: CCAPM0 |= SET_PWM0;
      003221 43 DA 02         [24]  549 	orl	_CCAPM0,#0x02
                                    550 ;	pca_mode.c:54: CCON |= SET_CR;  // Enable PCA counter
      003224 43 D8 40         [24]  551 	orl	_CCON,#0x40
                                    552 ;	pca_mode.c:55: }
      003227 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'WDT_Init'
                                    556 ;------------------------------------------------------------
                                    557 ;	pca_mode.c:60: void WDT_Init()
                                    558 ;	-----------------------------------------
                                    559 ;	 function WDT_Init
                                    560 ;	-----------------------------------------
      003228                        561 _WDT_Init:
                                    562 ;	pca_mode.c:62: CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
      003228 43 D9 02         [24]  563 	orl	_CMOD,#0x02
                                    564 ;	pca_mode.c:63: CCAP4L = SET_WDTIMER;
      00322B 75 EE FF         [24]  565 	mov	_CCAP4L,#0xff
                                    566 ;	pca_mode.c:64: CCAP4H = SET_WDTIMER;
      00322E 75 FE FF         [24]  567 	mov	_CCAP4H,#0xff
                                    568 ;	pca_mode.c:65: CCAPM4 |= SET_MATCH;
      003231 43 DE 08         [24]  569 	orl	_CCAPM4,#0x08
                                    570 ;	pca_mode.c:66: CR =1; // Enable PCA counter
                                    571 ;	assignBit
      003234 D2 DE            [12]  572 	setb	_CR
                                    573 ;	pca_mode.c:67: }
      003236 22               [24]  574 	ret
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'HSO_Init'
                                    577 ;------------------------------------------------------------
                                    578 ;	pca_mode.c:72: void HSO_Init()
                                    579 ;	-----------------------------------------
                                    580 ;	 function HSO_Init
                                    581 ;	-----------------------------------------
      003237                        582 _HSO_Init:
                                    583 ;	pca_mode.c:74: CMOD |= SET_CLOCK;   // SET clock frequency to Fperi/2
      003237 43 D9 02         [24]  584 	orl	_CMOD,#0x02
                                    585 ;	pca_mode.c:75: CCAP1L = 0xFF; // Set low byte of CCAP1
      00323A 75 EB FF         [24]  586 	mov	_CCAP1L,#0xff
                                    587 ;	pca_mode.c:76: CCAP1H = 0xFF; // Set high byte of CCAP1
      00323D 75 FB FF         [24]  588 	mov	_CCAP1H,#0xff
                                    589 ;	pca_mode.c:79: CCAPM1 |= SET_TOG;
      003240 43 DB 04         [24]  590 	orl	_CCAPM1,#0x04
                                    591 ;	pca_mode.c:80: CCAPM1 |= SET_MATCH;
      003243 43 DB 08         [24]  592 	orl	_CCAPM1,#0x08
                                    593 ;	pca_mode.c:82: CR =1;  // Enable PCA counter
                                    594 ;	assignBit
      003246 D2 DE            [12]  595 	setb	_CR
                                    596 ;	pca_mode.c:83: }
      003248 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'start_pwm'
                                    600 ;------------------------------------------------------------
                                    601 ;	pca_mode.c:88: void start_pwm()
                                    602 ;	-----------------------------------------
                                    603 ;	 function start_pwm
                                    604 ;	-----------------------------------------
      003249                        605 _start_pwm:
                                    606 ;	pca_mode.c:90: printf_tiny("Enabling PWM output\n\r");
      003249 74 7E            [12]  607 	mov	a,#___str_0
      00324B C0 E0            [24]  608 	push	acc
      00324D 74 37            [12]  609 	mov	a,#(___str_0 >> 8)
      00324F C0 E0            [24]  610 	push	acc
      003251 12 33 BD         [24]  611 	lcall	_printf_tiny
      003254 15 81            [12]  612 	dec	sp
      003256 15 81            [12]  613 	dec	sp
                                    614 ;	pca_mode.c:91: CCAPM0 |= SET_ECOM; // Enable PWM mode for module 0 (bit ECOM0)
      003258 43 DA 40         [24]  615 	orl	_CCAPM0,#0x40
                                    616 ;	pca_mode.c:92: }
      00325B 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'stop_pwm'
                                    620 ;------------------------------------------------------------
                                    621 ;	pca_mode.c:97: void stop_pwm()
                                    622 ;	-----------------------------------------
                                    623 ;	 function stop_pwm
                                    624 ;	-----------------------------------------
      00325C                        625 _stop_pwm:
                                    626 ;	pca_mode.c:99: printf_tiny("Disabling PWM output\n\r");
      00325C 74 94            [12]  627 	mov	a,#___str_1
      00325E C0 E0            [24]  628 	push	acc
      003260 74 37            [12]  629 	mov	a,#(___str_1 >> 8)
      003262 C0 E0            [24]  630 	push	acc
      003264 12 33 BD         [24]  631 	lcall	_printf_tiny
      003267 15 81            [12]  632 	dec	sp
      003269 15 81            [12]  633 	dec	sp
                                    634 ;	pca_mode.c:100: CCAPM0 &= ~SET_ECOM; // Disable PWM mode for module 0 (bitsECOM0)
      00326B 53 DA BF         [24]  635 	anl	_CCAPM0,#0xbf
                                    636 ;	pca_mode.c:101: }
      00326E 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'set_min_frequency'
                                    640 ;------------------------------------------------------------
                                    641 ;	pca_mode.c:106: void set_min_frequency()
                                    642 ;	-----------------------------------------
                                    643 ;	 function set_min_frequency
                                    644 ;	-----------------------------------------
      00326F                        645 _set_min_frequency:
                                    646 ;	pca_mode.c:108: printf_tiny("Setting minimum clock frequency\n\r");
      00326F 74 AB            [12]  647 	mov	a,#___str_2
      003271 C0 E0            [24]  648 	push	acc
      003273 74 37            [12]  649 	mov	a,#(___str_2 >> 8)
      003275 C0 E0            [24]  650 	push	acc
      003277 12 33 BD         [24]  651 	lcall	_printf_tiny
      00327A 15 81            [12]  652 	dec	sp
      00327C 15 81            [12]  653 	dec	sp
                                    654 ;	pca_mode.c:109: CKRL = 0x00;
      00327E 75 97 00         [24]  655 	mov	_CKRL,#0x00
                                    656 ;	pca_mode.c:110: }
      003281 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'set_max_frequency'
                                    660 ;------------------------------------------------------------
                                    661 ;	pca_mode.c:115: void set_max_frequency()
                                    662 ;	-----------------------------------------
                                    663 ;	 function set_max_frequency
                                    664 ;	-----------------------------------------
      003282                        665 _set_max_frequency:
                                    666 ;	pca_mode.c:117: printf_tiny("Setting maximum clock frequency\n\r");
      003282 74 CD            [12]  667 	mov	a,#___str_3
      003284 C0 E0            [24]  668 	push	acc
      003286 74 37            [12]  669 	mov	a,#(___str_3 >> 8)
      003288 C0 E0            [24]  670 	push	acc
      00328A 12 33 BD         [24]  671 	lcall	_printf_tiny
      00328D 15 81            [12]  672 	dec	sp
      00328F 15 81            [12]  673 	dec	sp
                                    674 ;	pca_mode.c:118: CKRL = 0xFF;
      003291 75 97 FF         [24]  675 	mov	_CKRL,#0xff
                                    676 ;	pca_mode.c:119: }
      003294 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'set_power_idle_mode'
                                    680 ;------------------------------------------------------------
                                    681 ;	pca_mode.c:123: void set_power_idle_mode()
                                    682 ;	-----------------------------------------
                                    683 ;	 function set_power_idle_mode
                                    684 ;	-----------------------------------------
      003295                        685 _set_power_idle_mode:
                                    686 ;	pca_mode.c:125: printf_tiny("Setting power mode to idle\n\r");
      003295 74 EF            [12]  687 	mov	a,#___str_4
      003297 C0 E0            [24]  688 	push	acc
      003299 74 37            [12]  689 	mov	a,#(___str_4 >> 8)
      00329B C0 E0            [24]  690 	push	acc
      00329D 12 33 BD         [24]  691 	lcall	_printf_tiny
      0032A0 15 81            [12]  692 	dec	sp
      0032A2 15 81            [12]  693 	dec	sp
                                    694 ;	pca_mode.c:126: PCON |= SET_IDL;
      0032A4 43 87 01         [24]  695 	orl	_PCON,#0x01
                                    696 ;	pca_mode.c:127: }
      0032A7 22               [24]  697 	ret
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'clear_power_idle_mode'
                                    700 ;------------------------------------------------------------
                                    701 ;	pca_mode.c:132: void clear_power_idle_mode()
                                    702 ;	-----------------------------------------
                                    703 ;	 function clear_power_idle_mode
                                    704 ;	-----------------------------------------
      0032A8                        705 _clear_power_idle_mode:
                                    706 ;	pca_mode.c:134: printf_tiny("Clearing power mode idle\n\r");
      0032A8 74 0C            [12]  707 	mov	a,#___str_5
      0032AA C0 E0            [24]  708 	push	acc
      0032AC 74 38            [12]  709 	mov	a,#(___str_5 >> 8)
      0032AE C0 E0            [24]  710 	push	acc
      0032B0 12 33 BD         [24]  711 	lcall	_printf_tiny
      0032B3 15 81            [12]  712 	dec	sp
      0032B5 15 81            [12]  713 	dec	sp
                                    714 ;	pca_mode.c:135: PCON &= ~SET_IDL;
      0032B7 53 87 FE         [24]  715 	anl	_PCON,#0xfe
                                    716 ;	pca_mode.c:136: }
      0032BA 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'set_power_down_mode'
                                    720 ;------------------------------------------------------------
                                    721 ;	pca_mode.c:140: void set_power_down_mode()
                                    722 ;	-----------------------------------------
                                    723 ;	 function set_power_down_mode
                                    724 ;	-----------------------------------------
      0032BB                        725 _set_power_down_mode:
                                    726 ;	pca_mode.c:142: printf_tiny("Setting power mode to down\n\r");
      0032BB 74 27            [12]  727 	mov	a,#___str_6
      0032BD C0 E0            [24]  728 	push	acc
      0032BF 74 38            [12]  729 	mov	a,#(___str_6 >> 8)
      0032C1 C0 E0            [24]  730 	push	acc
      0032C3 12 33 BD         [24]  731 	lcall	_printf_tiny
      0032C6 15 81            [12]  732 	dec	sp
      0032C8 15 81            [12]  733 	dec	sp
                                    734 ;	pca_mode.c:143: PCON |= SET_PD;
      0032CA 43 87 02         [24]  735 	orl	_PCON,#0x02
                                    736 ;	pca_mode.c:144: }
      0032CD 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'clear_power_down_mode'
                                    740 ;------------------------------------------------------------
                                    741 ;	pca_mode.c:148: void clear_power_down_mode()
                                    742 ;	-----------------------------------------
                                    743 ;	 function clear_power_down_mode
                                    744 ;	-----------------------------------------
      0032CE                        745 _clear_power_down_mode:
                                    746 ;	pca_mode.c:150: printf_tiny("Clearing power mode down\n\r");
      0032CE 74 44            [12]  747 	mov	a,#___str_7
      0032D0 C0 E0            [24]  748 	push	acc
      0032D2 74 38            [12]  749 	mov	a,#(___str_7 >> 8)
      0032D4 C0 E0            [24]  750 	push	acc
      0032D6 12 33 BD         [24]  751 	lcall	_printf_tiny
      0032D9 15 81            [12]  752 	dec	sp
      0032DB 15 81            [12]  753 	dec	sp
                                    754 ;	pca_mode.c:151: PCON &= ~SET_PD;
      0032DD 53 87 FD         [24]  755 	anl	_PCON,#0xfd
                                    756 ;	pca_mode.c:152: }
      0032E0 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'start_watchdog_timer'
                                    760 ;------------------------------------------------------------
                                    761 ;	pca_mode.c:157: void start_watchdog_timer()
                                    762 ;	-----------------------------------------
                                    763 ;	 function start_watchdog_timer
                                    764 ;	-----------------------------------------
      0032E1                        765 _start_watchdog_timer:
                                    766 ;	pca_mode.c:159: printf_tiny("Enabled watchdog timer\n\r");
      0032E1 74 5F            [12]  767 	mov	a,#___str_8
      0032E3 C0 E0            [24]  768 	push	acc
      0032E5 74 38            [12]  769 	mov	a,#(___str_8 >> 8)
      0032E7 C0 E0            [24]  770 	push	acc
      0032E9 12 33 BD         [24]  771 	lcall	_printf_tiny
      0032EC 15 81            [12]  772 	dec	sp
      0032EE 15 81            [12]  773 	dec	sp
                                    774 ;	pca_mode.c:160: CMOD |= SET_WDTE; // Enabling Watch dog timer function
      0032F0 43 D9 40         [24]  775 	orl	_CMOD,#0x40
                                    776 ;	pca_mode.c:161: CCAPM4 |= SET_ECOM; // Enable WDT mode for module 4 (bit ECOM4)
      0032F3 43 DE 40         [24]  777 	orl	_CCAPM4,#0x40
                                    778 ;	pca_mode.c:162: }
      0032F6 22               [24]  779 	ret
                                    780 ;------------------------------------------------------------
                                    781 ;Allocation info for local variables in function 'stop_watchdog_timer'
                                    782 ;------------------------------------------------------------
                                    783 ;	pca_mode.c:167: void stop_watchdog_timer()
                                    784 ;	-----------------------------------------
                                    785 ;	 function stop_watchdog_timer
                                    786 ;	-----------------------------------------
      0032F7                        787 _stop_watchdog_timer:
                                    788 ;	pca_mode.c:169: printf_tiny("Disabled watchdog timer\n\r");
      0032F7 74 78            [12]  789 	mov	a,#___str_9
      0032F9 C0 E0            [24]  790 	push	acc
      0032FB 74 38            [12]  791 	mov	a,#(___str_9 >> 8)
      0032FD C0 E0            [24]  792 	push	acc
      0032FF 12 33 BD         [24]  793 	lcall	_printf_tiny
      003302 15 81            [12]  794 	dec	sp
      003304 15 81            [12]  795 	dec	sp
                                    796 ;	pca_mode.c:170: CMOD &= ~SET_WDTE; // Disabling Watch dog timer function
      003306 53 D9 BF         [24]  797 	anl	_CMOD,#0xbf
                                    798 ;	pca_mode.c:171: CCAPM4 &= ~SET_ECOM; // Disable WDT mode for module 4 (bit ECOM4)
      003309 53 DE BF         [24]  799 	anl	_CCAPM4,#0xbf
                                    800 ;	pca_mode.c:172: }
      00330C 22               [24]  801 	ret
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'enable_highspeed_output'
                                    804 ;------------------------------------------------------------
                                    805 ;	pca_mode.c:176: void enable_highspeed_output()
                                    806 ;	-----------------------------------------
                                    807 ;	 function enable_highspeed_output
                                    808 ;	-----------------------------------------
      00330D                        809 _enable_highspeed_output:
                                    810 ;	pca_mode.c:178: printf_tiny("Enabling High Speed output\n\r");
      00330D 74 92            [12]  811 	mov	a,#___str_10
      00330F C0 E0            [24]  812 	push	acc
      003311 74 38            [12]  813 	mov	a,#(___str_10 >> 8)
      003313 C0 E0            [24]  814 	push	acc
      003315 12 33 BD         [24]  815 	lcall	_printf_tiny
      003318 15 81            [12]  816 	dec	sp
      00331A 15 81            [12]  817 	dec	sp
                                    818 ;	pca_mode.c:179: CCAPM1 |= SET_ECOM;  // Enable HS for module 1 (bit ECOM1)
      00331C 43 DB 40         [24]  819 	orl	_CCAPM1,#0x40
                                    820 ;	pca_mode.c:180: }
      00331F 22               [24]  821 	ret
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'disable_highspeed_output'
                                    824 ;------------------------------------------------------------
                                    825 ;	pca_mode.c:184: void disable_highspeed_output()
                                    826 ;	-----------------------------------------
                                    827 ;	 function disable_highspeed_output
                                    828 ;	-----------------------------------------
      003320                        829 _disable_highspeed_output:
                                    830 ;	pca_mode.c:186: printf_tiny("Disabling High Speed output\n\r");
      003320 74 AF            [12]  831 	mov	a,#___str_11
      003322 C0 E0            [24]  832 	push	acc
      003324 74 38            [12]  833 	mov	a,#(___str_11 >> 8)
      003326 C0 E0            [24]  834 	push	acc
      003328 12 33 BD         [24]  835 	lcall	_printf_tiny
      00332B 15 81            [12]  836 	dec	sp
      00332D 15 81            [12]  837 	dec	sp
                                    838 ;	pca_mode.c:187: CCAPM1 &= ~SET_ECOM;  // Disable HS for module 1 (bit ECOM1)
      00332F 53 DB BF         [24]  839 	anl	_CCAPM1,#0xbf
                                    840 ;	pca_mode.c:188: }
      003332 22               [24]  841 	ret
                                    842 	.area CSEG    (CODE)
                                    843 	.area CONST   (CODE)
                                    844 	.area CONST   (CODE)
      00377E                        845 ___str_0:
      00377E 45 6E 61 62 6C 69 6E   846 	.ascii "Enabling PWM output"
             67 20 50 57 4D 20 6F
             75 74 70 75 74
      003791 0A                     847 	.db 0x0a
      003792 0D                     848 	.db 0x0d
      003793 00                     849 	.db 0x00
                                    850 	.area CSEG    (CODE)
                                    851 	.area CONST   (CODE)
      003794                        852 ___str_1:
      003794 44 69 73 61 62 6C 69   853 	.ascii "Disabling PWM output"
             6E 67 20 50 57 4D 20
             6F 75 74 70 75 74
      0037A8 0A                     854 	.db 0x0a
      0037A9 0D                     855 	.db 0x0d
      0037AA 00                     856 	.db 0x00
                                    857 	.area CSEG    (CODE)
                                    858 	.area CONST   (CODE)
      0037AB                        859 ___str_2:
      0037AB 53 65 74 74 69 6E 67   860 	.ascii "Setting minimum clock frequency"
             20 6D 69 6E 69 6D 75
             6D 20 63 6C 6F 63 6B
             20 66 72 65 71 75 65
             6E 63 79
      0037CA 0A                     861 	.db 0x0a
      0037CB 0D                     862 	.db 0x0d
      0037CC 00                     863 	.db 0x00
                                    864 	.area CSEG    (CODE)
                                    865 	.area CONST   (CODE)
      0037CD                        866 ___str_3:
      0037CD 53 65 74 74 69 6E 67   867 	.ascii "Setting maximum clock frequency"
             20 6D 61 78 69 6D 75
             6D 20 63 6C 6F 63 6B
             20 66 72 65 71 75 65
             6E 63 79
      0037EC 0A                     868 	.db 0x0a
      0037ED 0D                     869 	.db 0x0d
      0037EE 00                     870 	.db 0x00
                                    871 	.area CSEG    (CODE)
                                    872 	.area CONST   (CODE)
      0037EF                        873 ___str_4:
      0037EF 53 65 74 74 69 6E 67   874 	.ascii "Setting power mode to idle"
             20 70 6F 77 65 72 20
             6D 6F 64 65 20 74 6F
             20 69 64 6C 65
      003809 0A                     875 	.db 0x0a
      00380A 0D                     876 	.db 0x0d
      00380B 00                     877 	.db 0x00
                                    878 	.area CSEG    (CODE)
                                    879 	.area CONST   (CODE)
      00380C                        880 ___str_5:
      00380C 43 6C 65 61 72 69 6E   881 	.ascii "Clearing power mode idle"
             67 20 70 6F 77 65 72
             20 6D 6F 64 65 20 69
             64 6C 65
      003824 0A                     882 	.db 0x0a
      003825 0D                     883 	.db 0x0d
      003826 00                     884 	.db 0x00
                                    885 	.area CSEG    (CODE)
                                    886 	.area CONST   (CODE)
      003827                        887 ___str_6:
      003827 53 65 74 74 69 6E 67   888 	.ascii "Setting power mode to down"
             20 70 6F 77 65 72 20
             6D 6F 64 65 20 74 6F
             20 64 6F 77 6E
      003841 0A                     889 	.db 0x0a
      003842 0D                     890 	.db 0x0d
      003843 00                     891 	.db 0x00
                                    892 	.area CSEG    (CODE)
                                    893 	.area CONST   (CODE)
      003844                        894 ___str_7:
      003844 43 6C 65 61 72 69 6E   895 	.ascii "Clearing power mode down"
             67 20 70 6F 77 65 72
             20 6D 6F 64 65 20 64
             6F 77 6E
      00385C 0A                     896 	.db 0x0a
      00385D 0D                     897 	.db 0x0d
      00385E 00                     898 	.db 0x00
                                    899 	.area CSEG    (CODE)
                                    900 	.area CONST   (CODE)
      00385F                        901 ___str_8:
      00385F 45 6E 61 62 6C 65 64   902 	.ascii "Enabled watchdog timer"
             20 77 61 74 63 68 64
             6F 67 20 74 69 6D 65
             72
      003875 0A                     903 	.db 0x0a
      003876 0D                     904 	.db 0x0d
      003877 00                     905 	.db 0x00
                                    906 	.area CSEG    (CODE)
                                    907 	.area CONST   (CODE)
      003878                        908 ___str_9:
      003878 44 69 73 61 62 6C 65   909 	.ascii "Disabled watchdog timer"
             64 20 77 61 74 63 68
             64 6F 67 20 74 69 6D
             65 72
      00388F 0A                     910 	.db 0x0a
      003890 0D                     911 	.db 0x0d
      003891 00                     912 	.db 0x00
                                    913 	.area CSEG    (CODE)
                                    914 	.area CONST   (CODE)
      003892                        915 ___str_10:
      003892 45 6E 61 62 6C 69 6E   916 	.ascii "Enabling High Speed output"
             67 20 48 69 67 68 20
             53 70 65 65 64 20 6F
             75 74 70 75 74
      0038AC 0A                     917 	.db 0x0a
      0038AD 0D                     918 	.db 0x0d
      0038AE 00                     919 	.db 0x00
                                    920 	.area CSEG    (CODE)
                                    921 	.area CONST   (CODE)
      0038AF                        922 ___str_11:
      0038AF 44 69 73 61 62 6C 69   923 	.ascii "Disabling High Speed output"
             6E 67 20 48 69 67 68
             20 53 70 65 65 64 20
             6F 75 74 70 75 74
      0038CA 0A                     924 	.db 0x0a
      0038CB 0D                     925 	.db 0x0d
      0038CC 00                     926 	.db 0x00
                                    927 	.area CSEG    (CODE)
                                    928 	.area XINIT   (CODE)
                                    929 	.area CABS    (ABS,CODE)
