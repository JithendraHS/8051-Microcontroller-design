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
      003E62                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      003E62 74 3F            [12]  107 	mov	a,#___str_0
      003E64 C0 E0            [24]  108 	push	acc
      003E66 74 43            [12]  109 	mov	a,#(___str_0 >> 8)
      003E68 C0 E0            [24]  110 	push	acc
      003E6A 12 3F 4A         [24]  111 	lcall	_printf_tiny
      003E6D 15 81            [12]  112 	dec	sp
      003E6F 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("Choose the options from below menu : \n\r");
      003E71 74 8B            [12]  115 	mov	a,#___str_1
      003E73 C0 E0            [24]  116 	push	acc
      003E75 74 43            [12]  117 	mov	a,#(___str_1 >> 8)
      003E77 C0 E0            [24]  118 	push	acc
      003E79 12 3F 4A         [24]  119 	lcall	_printf_tiny
      003E7C 15 81            [12]  120 	dec	sp
      003E7E 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[w]. To WRITE byte into EEPROM\n\r");
      003E80 74 B3            [12]  123 	mov	a,#___str_2
      003E82 C0 E0            [24]  124 	push	acc
      003E84 74 43            [12]  125 	mov	a,#(___str_2 >> 8)
      003E86 C0 E0            [24]  126 	push	acc
      003E88 12 3F 4A         [24]  127 	lcall	_printf_tiny
      003E8B 15 81            [12]  128 	dec	sp
      003E8D 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[r]. To READ byte from EEPROM\n\r");
      003E8F 74 D4            [12]  131 	mov	a,#___str_3
      003E91 C0 E0            [24]  132 	push	acc
      003E93 74 43            [12]  133 	mov	a,#(___str_3 >> 8)
      003E95 C0 E0            [24]  134 	push	acc
      003E97 12 3F 4A         [24]  135 	lcall	_printf_tiny
      003E9A 15 81            [12]  136 	dec	sp
      003E9C 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[h]. To see HEX dump of EEPROM\n\r");
      003E9E 74 F4            [12]  139 	mov	a,#___str_4
      003EA0 C0 E0            [24]  140 	push	acc
      003EA2 74 43            [12]  141 	mov	a,#(___str_4 >> 8)
      003EA4 C0 E0            [24]  142 	push	acc
      003EA6 12 3F 4A         [24]  143 	lcall	_printf_tiny
      003EA9 15 81            [12]  144 	dec	sp
      003EAB 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[e]. To do software reset of EEPROM\n\r");
      003EAD 74 15            [12]  147 	mov	a,#___str_5
      003EAF C0 E0            [24]  148 	push	acc
      003EB1 74 44            [12]  149 	mov	a,#(___str_5 >> 8)
      003EB3 C0 E0            [24]  150 	push	acc
      003EB5 12 3F 4A         [24]  151 	lcall	_printf_tiny
      003EB8 15 81            [12]  152 	dec	sp
      003EBA 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("*************************************************************************\n\r");
      003EBC 74 3F            [12]  155 	mov	a,#___str_0
      003EBE C0 E0            [24]  156 	push	acc
      003EC0 74 43            [12]  157 	mov	a,#(___str_0 >> 8)
      003EC2 C0 E0            [24]  158 	push	acc
      003EC4 12 3F 4A         [24]  159 	lcall	_printf_tiny
      003EC7 15 81            [12]  160 	dec	sp
      003EC9 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: }
      003ECB 22               [24]  163 	ret
                                    164 	.area CSEG    (CODE)
                                    165 	.area CONST   (CODE)
                                    166 	.area CONST   (CODE)
      00433F                        167 ___str_0:
      00433F 2A 2A 2A 2A 2A 2A 2A   168 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      00437B 2A 2A 2A 2A 2A 2A 2A   169 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      004388 0A                     170 	.db 0x0a
      004389 0D                     171 	.db 0x0d
      00438A 00                     172 	.db 0x00
                                    173 	.area CSEG    (CODE)
                                    174 	.area CONST   (CODE)
      00438B                        175 ___str_1:
      00438B 43 68 6F 6F 73 65 20   176 	.ascii "Choose the options from below menu : "
             74 68 65 20 6F 70 74
             69 6F 6E 73 20 66 72
             6F 6D 20 62 65 6C 6F
             77 20 6D 65 6E 75 20
             3A 20
      0043B0 0A                     177 	.db 0x0a
      0043B1 0D                     178 	.db 0x0d
      0043B2 00                     179 	.db 0x00
                                    180 	.area CSEG    (CODE)
                                    181 	.area CONST   (CODE)
      0043B3                        182 ___str_2:
      0043B3 5B 77 5D 2E 20 54 6F   183 	.ascii "[w]. To WRITE byte into EEPROM"
             20 57 52 49 54 45 20
             62 79 74 65 20 69 6E
             74 6F 20 45 45 50 52
             4F 4D
      0043D1 0A                     184 	.db 0x0a
      0043D2 0D                     185 	.db 0x0d
      0043D3 00                     186 	.db 0x00
                                    187 	.area CSEG    (CODE)
                                    188 	.area CONST   (CODE)
      0043D4                        189 ___str_3:
      0043D4 5B 72 5D 2E 20 54 6F   190 	.ascii "[r]. To READ byte from EEPROM"
             20 52 45 41 44 20 62
             79 74 65 20 66 72 6F
             6D 20 45 45 50 52 4F
             4D
      0043F1 0A                     191 	.db 0x0a
      0043F2 0D                     192 	.db 0x0d
      0043F3 00                     193 	.db 0x00
                                    194 	.area CSEG    (CODE)
                                    195 	.area CONST   (CODE)
      0043F4                        196 ___str_4:
      0043F4 5B 68 5D 2E 20 54 6F   197 	.ascii "[h]. To see HEX dump of EEPROM"
             20 73 65 65 20 48 45
             58 20 64 75 6D 70 20
             6F 66 20 45 45 50 52
             4F 4D
      004412 0A                     198 	.db 0x0a
      004413 0D                     199 	.db 0x0d
      004414 00                     200 	.db 0x00
                                    201 	.area CSEG    (CODE)
                                    202 	.area CONST   (CODE)
      004415                        203 ___str_5:
      004415 5B 65 5D 2E 20 54 6F   204 	.ascii "[e]. To do software reset of EEPROM"
             20 64 6F 20 73 6F 66
             74 77 61 72 65 20 72
             65 73 65 74 20 6F 66
             20 45 45 50 52 4F 4D
      004438 0A                     205 	.db 0x0a
      004439 0D                     206 	.db 0x0d
      00443A 00                     207 	.db 0x00
                                    208 	.area CSEG    (CODE)
                                    209 	.area XINIT   (CODE)
                                    210 	.area CABS    (ABS,CODE)
