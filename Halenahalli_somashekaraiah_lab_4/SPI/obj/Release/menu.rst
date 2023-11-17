                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module menu
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _menu
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
                                     56 ;--------------------------------------------------------
                                     57 ; absolute external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XABS    (ABS,XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; external initialized ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XISEG   (XDATA)
                                     64 	.area HOME    (CODE)
                                     65 	.area GSINIT0 (CODE)
                                     66 	.area GSINIT1 (CODE)
                                     67 	.area GSINIT2 (CODE)
                                     68 	.area GSINIT3 (CODE)
                                     69 	.area GSINIT4 (CODE)
                                     70 	.area GSINIT5 (CODE)
                                     71 	.area GSINIT  (CODE)
                                     72 	.area GSFINAL (CODE)
                                     73 	.area CSEG    (CODE)
                                     74 ;--------------------------------------------------------
                                     75 ; global & static initialisations
                                     76 ;--------------------------------------------------------
                                     77 	.area HOME    (CODE)
                                     78 	.area GSINIT  (CODE)
                                     79 	.area GSFINAL (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 ;--------------------------------------------------------
                                     82 ; Home
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME    (CODE)
                                     85 	.area HOME    (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CSEG    (CODE)
                                     90 ;------------------------------------------------------------
                                     91 ;Allocation info for local variables in function 'menu'
                                     92 ;------------------------------------------------------------
                                     93 ;	menu.c:20: void menu(){
                                     94 ;	-----------------------------------------
                                     95 ;	 function menu
                                     96 ;	-----------------------------------------
      0050E6                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      0050E6 74 DC            [12]  107 	mov	a,#___str_0
      0050E8 C0 E0            [24]  108 	push	acc
      0050EA 74 5B            [12]  109 	mov	a,#(___str_0 >> 8)
      0050EC C0 E0            [24]  110 	push	acc
      0050EE 12 52 FC         [24]  111 	lcall	_printf_tiny
      0050F1 15 81            [12]  112 	dec	sp
      0050F3 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("SPI-DAC MENU:\n\r");
      0050F5 74 28            [12]  115 	mov	a,#___str_1
      0050F7 C0 E0            [24]  116 	push	acc
      0050F9 74 5C            [12]  117 	mov	a,#(___str_1 >> 8)
      0050FB C0 E0            [24]  118 	push	acc
      0050FD 12 52 FC         [24]  119 	lcall	_printf_tiny
      005100 15 81            [12]  120 	dec	sp
      005102 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[a]. Auto triangle wave generator\n\r");
      005104 74 38            [12]  123 	mov	a,#___str_2
      005106 C0 E0            [24]  124 	push	acc
      005108 74 5C            [12]  125 	mov	a,#(___str_2 >> 8)
      00510A C0 E0            [24]  126 	push	acc
      00510C 12 52 FC         [24]  127 	lcall	_printf_tiny
      00510F 15 81            [12]  128 	dec	sp
      005111 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[b]. Single value\n\r");
      005113 74 5C            [12]  131 	mov	a,#___str_3
      005115 C0 E0            [24]  132 	push	acc
      005117 74 5C            [12]  133 	mov	a,#(___str_3 >> 8)
      005119 C0 E0            [24]  134 	push	acc
      00511B 12 52 FC         [24]  135 	lcall	_printf_tiny
      00511E 15 81            [12]  136 	dec	sp
      005120 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("*************************************************************************\n\r");
      005122 74 DC            [12]  139 	mov	a,#___str_0
      005124 C0 E0            [24]  140 	push	acc
      005126 74 5B            [12]  141 	mov	a,#(___str_0 >> 8)
      005128 C0 E0            [24]  142 	push	acc
      00512A 12 52 FC         [24]  143 	lcall	_printf_tiny
      00512D 15 81            [12]  144 	dec	sp
      00512F 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: }
      005131 22               [24]  147 	ret
                                    148 	.area CSEG    (CODE)
                                    149 	.area CONST   (CODE)
                                    150 	.area CONST   (CODE)
      005BDC                        151 ___str_0:
      005BDC 2A 2A 2A 2A 2A 2A 2A   152 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      005C18 2A 2A 2A 2A 2A 2A 2A   153 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      005C25 0A                     154 	.db 0x0a
      005C26 0D                     155 	.db 0x0d
      005C27 00                     156 	.db 0x00
                                    157 	.area CSEG    (CODE)
                                    158 	.area CONST   (CODE)
      005C28                        159 ___str_1:
      005C28 53 50 49 2D 44 41 43   160 	.ascii "SPI-DAC MENU:"
             20 4D 45 4E 55 3A
      005C35 0A                     161 	.db 0x0a
      005C36 0D                     162 	.db 0x0d
      005C37 00                     163 	.db 0x00
                                    164 	.area CSEG    (CODE)
                                    165 	.area CONST   (CODE)
      005C38                        166 ___str_2:
      005C38 5B 61 5D 2E 20 41 75   167 	.ascii "[a]. Auto triangle wave generator"
             74 6F 20 74 72 69 61
             6E 67 6C 65 20 77 61
             76 65 20 67 65 6E 65
             72 61 74 6F 72
      005C59 0A                     168 	.db 0x0a
      005C5A 0D                     169 	.db 0x0d
      005C5B 00                     170 	.db 0x00
                                    171 	.area CSEG    (CODE)
                                    172 	.area CONST   (CODE)
      005C5C                        173 ___str_3:
      005C5C 5B 62 5D 2E 20 53 69   174 	.ascii "[b]. Single value"
             6E 67 6C 65 20 76 61
             6C 75 65
      005C6D 0A                     175 	.db 0x0a
      005C6E 0D                     176 	.db 0x0d
      005C6F 00                     177 	.db 0x00
                                    178 	.area CSEG    (CODE)
                                    179 	.area XINIT   (CODE)
                                    180 	.area CABS    (ABS,CODE)
