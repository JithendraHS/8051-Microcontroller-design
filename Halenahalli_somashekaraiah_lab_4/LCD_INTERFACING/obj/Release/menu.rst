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
      002698                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      002698 74 1E            [12]  107 	mov	a,#___str_0
      00269A C0 E0            [24]  108 	push	acc
      00269C 74 2A            [12]  109 	mov	a,#(___str_0 >> 8)
      00269E C0 E0            [24]  110 	push	acc
      0026A0 12 27 7D         [24]  111 	lcall	_printf_tiny
      0026A3 15 81            [12]  112 	dec	sp
      0026A5 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("CLOCK MENU:\n\r");
      0026A7 74 6A            [12]  115 	mov	a,#___str_1
      0026A9 C0 E0            [24]  116 	push	acc
      0026AB 74 2A            [12]  117 	mov	a,#(___str_1 >> 8)
      0026AD C0 E0            [24]  118 	push	acc
      0026AF 12 27 7D         [24]  119 	lcall	_printf_tiny
      0026B2 15 81            [12]  120 	dec	sp
      0026B4 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[a]. Clock restart\n\r");
      0026B6 74 78            [12]  123 	mov	a,#___str_2
      0026B8 C0 E0            [24]  124 	push	acc
      0026BA 74 2A            [12]  125 	mov	a,#(___str_2 >> 8)
      0026BC C0 E0            [24]  126 	push	acc
      0026BE 12 27 7D         [24]  127 	lcall	_printf_tiny
      0026C1 15 81            [12]  128 	dec	sp
      0026C3 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[b]. Clock stop\n\r");
      0026C5 74 8D            [12]  131 	mov	a,#___str_3
      0026C7 C0 E0            [24]  132 	push	acc
      0026C9 74 2A            [12]  133 	mov	a,#(___str_3 >> 8)
      0026CB C0 E0            [24]  134 	push	acc
      0026CD 12 27 7D         [24]  135 	lcall	_printf_tiny
      0026D0 15 81            [12]  136 	dec	sp
      0026D2 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[c]. Clock reset\n\r");
      0026D4 74 9F            [12]  139 	mov	a,#___str_4
      0026D6 C0 E0            [24]  140 	push	acc
      0026D8 74 2A            [12]  141 	mov	a,#(___str_4 >> 8)
      0026DA C0 E0            [24]  142 	push	acc
      0026DC 12 27 7D         [24]  143 	lcall	_printf_tiny
      0026DF 15 81            [12]  144 	dec	sp
      0026E1 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("*************************************************************************\n\r");
      0026E3 74 1E            [12]  147 	mov	a,#___str_0
      0026E5 C0 E0            [24]  148 	push	acc
      0026E7 74 2A            [12]  149 	mov	a,#(___str_0 >> 8)
      0026E9 C0 E0            [24]  150 	push	acc
      0026EB 12 27 7D         [24]  151 	lcall	_printf_tiny
      0026EE 15 81            [12]  152 	dec	sp
      0026F0 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: }
      0026F2 22               [24]  155 	ret
                                    156 	.area CSEG    (CODE)
                                    157 	.area CONST   (CODE)
                                    158 	.area CONST   (CODE)
      002A1E                        159 ___str_0:
      002A1E 2A 2A 2A 2A 2A 2A 2A   160 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002A5A 2A 2A 2A 2A 2A 2A 2A   161 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      002A67 0A                     162 	.db 0x0a
      002A68 0D                     163 	.db 0x0d
      002A69 00                     164 	.db 0x00
                                    165 	.area CSEG    (CODE)
                                    166 	.area CONST   (CODE)
      002A6A                        167 ___str_1:
      002A6A 43 4C 4F 43 4B 20 4D   168 	.ascii "CLOCK MENU:"
             45 4E 55 3A
      002A75 0A                     169 	.db 0x0a
      002A76 0D                     170 	.db 0x0d
      002A77 00                     171 	.db 0x00
                                    172 	.area CSEG    (CODE)
                                    173 	.area CONST   (CODE)
      002A78                        174 ___str_2:
      002A78 5B 61 5D 2E 20 43 6C   175 	.ascii "[a]. Clock restart"
             6F 63 6B 20 72 65 73
             74 61 72 74
      002A8A 0A                     176 	.db 0x0a
      002A8B 0D                     177 	.db 0x0d
      002A8C 00                     178 	.db 0x00
                                    179 	.area CSEG    (CODE)
                                    180 	.area CONST   (CODE)
      002A8D                        181 ___str_3:
      002A8D 5B 62 5D 2E 20 43 6C   182 	.ascii "[b]. Clock stop"
             6F 63 6B 20 73 74 6F
             70
      002A9C 0A                     183 	.db 0x0a
      002A9D 0D                     184 	.db 0x0d
      002A9E 00                     185 	.db 0x00
                                    186 	.area CSEG    (CODE)
                                    187 	.area CONST   (CODE)
      002A9F                        188 ___str_4:
      002A9F 5B 63 5D 2E 20 43 6C   189 	.ascii "[c]. Clock reset"
             6F 63 6B 20 72 65 73
             65 74
      002AAF 0A                     190 	.db 0x0a
      002AB0 0D                     191 	.db 0x0d
      002AB1 00                     192 	.db 0x00
                                    193 	.area CSEG    (CODE)
                                    194 	.area XINIT   (CODE)
                                    195 	.area CABS    (ABS,CODE)
