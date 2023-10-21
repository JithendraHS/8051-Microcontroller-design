                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module debug
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _dataout_PARM_2
                                     12 	.globl _dataout
                                     13 ;--------------------------------------------------------
                                     14 ; special function registers
                                     15 ;--------------------------------------------------------
                                     16 	.area RSEG    (ABS,DATA)
      000000                         17 	.org 0x0000
                                     18 ;--------------------------------------------------------
                                     19 ; special function bits
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; overlayable register banks
                                     25 ;--------------------------------------------------------
                                     26 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         27 	.ds 8
                                     28 ;--------------------------------------------------------
                                     29 ; internal ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DSEG    (DATA)
                                     32 ;--------------------------------------------------------
                                     33 ; overlayable items in internal ram
                                     34 ;--------------------------------------------------------
                                     35 ;--------------------------------------------------------
                                     36 ; indirectly addressable internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area ISEG    (DATA)
                                     39 ;--------------------------------------------------------
                                     40 ; absolute internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area IABS    (ABS,DATA)
                                     43 	.area IABS    (ABS,DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; bit data
                                     46 ;--------------------------------------------------------
                                     47 	.area BSEG    (BIT)
                                     48 ;--------------------------------------------------------
                                     49 ; paged external ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area PSEG    (PAG,XDATA)
                                     52 ;--------------------------------------------------------
                                     53 ; external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area XSEG    (XDATA)
      00000F                         56 _dataout_PARM_2:
      00000F                         57 	.ds 1
      000010                         58 _dataout_addr_65536_2:
      000010                         59 	.ds 2
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XABS    (ABS,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; external initialized ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XISEG   (XDATA)
                                     68 	.area HOME    (CODE)
                                     69 	.area GSINIT0 (CODE)
                                     70 	.area GSINIT1 (CODE)
                                     71 	.area GSINIT2 (CODE)
                                     72 	.area GSINIT3 (CODE)
                                     73 	.area GSINIT4 (CODE)
                                     74 	.area GSINIT5 (CODE)
                                     75 	.area GSINIT  (CODE)
                                     76 	.area GSFINAL (CODE)
                                     77 	.area CSEG    (CODE)
                                     78 ;--------------------------------------------------------
                                     79 ; global & static initialisations
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME    (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; Home
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
                                     89 	.area HOME    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CSEG    (CODE)
                                     94 ;------------------------------------------------------------
                                     95 ;Allocation info for local variables in function 'dataout'
                                     96 ;------------------------------------------------------------
                                     97 ;info                      Allocated with name '_dataout_PARM_2'
                                     98 ;addr                      Allocated with name '_dataout_addr_65536_2'
                                     99 ;debug_port                Allocated with name '_dataout_debug_port_65536_3'
                                    100 ;------------------------------------------------------------
                                    101 ;	debug.c:12: void dataout(unsigned int addr, char info) {
                                    102 ;	-----------------------------------------
                                    103 ;	 function dataout
                                    104 ;	-----------------------------------------
      003259                        105 _dataout:
                           000007   106 	ar7 = 0x07
                           000006   107 	ar6 = 0x06
                           000005   108 	ar5 = 0x05
                           000004   109 	ar4 = 0x04
                           000003   110 	ar3 = 0x03
                           000002   111 	ar2 = 0x02
                           000001   112 	ar1 = 0x01
                           000000   113 	ar0 = 0x00
      003259 AF 83            [24]  114 	mov	r7,dph
      00325B E5 82            [12]  115 	mov	a,dpl
      00325D 90 00 10         [24]  116 	mov	dptr,#_dataout_addr_65536_2
      003260 F0               [24]  117 	movx	@dptr,a
      003261 EF               [12]  118 	mov	a,r7
      003262 A3               [24]  119 	inc	dptr
      003263 F0               [24]  120 	movx	@dptr,a
                                    121 ;	debug.c:13: volatile unsigned char* debug_port = (unsigned char*)addr;
      003264 90 00 10         [24]  122 	mov	dptr,#_dataout_addr_65536_2
      003267 E0               [24]  123 	movx	a,@dptr
      003268 FE               [12]  124 	mov	r6,a
      003269 A3               [24]  125 	inc	dptr
      00326A E0               [24]  126 	movx	a,@dptr
      00326B FF               [12]  127 	mov	r7,a
      00326C 7D 00            [12]  128 	mov	r5,#0x00
                                    129 ;	debug.c:14: *debug_port = info;
      00326E 90 00 0F         [24]  130 	mov	dptr,#_dataout_PARM_2
      003271 E0               [24]  131 	movx	a,@dptr
      003272 8E 82            [24]  132 	mov	dpl,r6
      003274 8F 83            [24]  133 	mov	dph,r7
      003276 8D F0            [24]  134 	mov	b,r5
                                    135 ;	debug.c:15: }
      003278 02 40 A8         [24]  136 	ljmp	__gptrput
                                    137 	.area CSEG    (CODE)
                                    138 	.area CONST   (CODE)
                                    139 	.area XINIT   (CODE)
                                    140 	.area CABS    (ABS,CODE)
