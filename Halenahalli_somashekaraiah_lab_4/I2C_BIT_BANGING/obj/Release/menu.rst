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
      003C56                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      003C56 74 65            [12]  107 	mov	a,#___str_0
      003C58 C0 E0            [24]  108 	push	acc
      003C5A 74 41            [12]  109 	mov	a,#(___str_0 >> 8)
      003C5C C0 E0            [24]  110 	push	acc
      003C5E 12 3D 3E         [24]  111 	lcall	_printf_tiny
      003C61 15 81            [12]  112 	dec	sp
      003C63 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("Choose the options from below menu : \n\r");
      003C65 74 B1            [12]  115 	mov	a,#___str_1
      003C67 C0 E0            [24]  116 	push	acc
      003C69 74 41            [12]  117 	mov	a,#(___str_1 >> 8)
      003C6B C0 E0            [24]  118 	push	acc
      003C6D 12 3D 3E         [24]  119 	lcall	_printf_tiny
      003C70 15 81            [12]  120 	dec	sp
      003C72 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[w]. To WRITE byte into EEPROM\n\r");
      003C74 74 D9            [12]  123 	mov	a,#___str_2
      003C76 C0 E0            [24]  124 	push	acc
      003C78 74 41            [12]  125 	mov	a,#(___str_2 >> 8)
      003C7A C0 E0            [24]  126 	push	acc
      003C7C 12 3D 3E         [24]  127 	lcall	_printf_tiny
      003C7F 15 81            [12]  128 	dec	sp
      003C81 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[r]. To READ byte from EEPROM\n\r");
      003C83 74 FA            [12]  131 	mov	a,#___str_3
      003C85 C0 E0            [24]  132 	push	acc
      003C87 74 41            [12]  133 	mov	a,#(___str_3 >> 8)
      003C89 C0 E0            [24]  134 	push	acc
      003C8B 12 3D 3E         [24]  135 	lcall	_printf_tiny
      003C8E 15 81            [12]  136 	dec	sp
      003C90 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[h]. To see HEX dump of EEPROM\n\r");
      003C92 74 1A            [12]  139 	mov	a,#___str_4
      003C94 C0 E0            [24]  140 	push	acc
      003C96 74 42            [12]  141 	mov	a,#(___str_4 >> 8)
      003C98 C0 E0            [24]  142 	push	acc
      003C9A 12 3D 3E         [24]  143 	lcall	_printf_tiny
      003C9D 15 81            [12]  144 	dec	sp
      003C9F 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[e]. To do software reset of EEPROM\n\r");
      003CA1 74 3B            [12]  147 	mov	a,#___str_5
      003CA3 C0 E0            [24]  148 	push	acc
      003CA5 74 42            [12]  149 	mov	a,#(___str_5 >> 8)
      003CA7 C0 E0            [24]  150 	push	acc
      003CA9 12 3D 3E         [24]  151 	lcall	_printf_tiny
      003CAC 15 81            [12]  152 	dec	sp
      003CAE 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("*************************************************************************\n\r");
      003CB0 74 65            [12]  155 	mov	a,#___str_0
      003CB2 C0 E0            [24]  156 	push	acc
      003CB4 74 41            [12]  157 	mov	a,#(___str_0 >> 8)
      003CB6 C0 E0            [24]  158 	push	acc
      003CB8 12 3D 3E         [24]  159 	lcall	_printf_tiny
      003CBB 15 81            [12]  160 	dec	sp
      003CBD 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: }
      003CBF 22               [24]  163 	ret
                                    164 	.area CSEG    (CODE)
                                    165 	.area CONST   (CODE)
                                    166 	.area CONST   (CODE)
      004165                        167 ___str_0:
      004165 2A 2A 2A 2A 2A 2A 2A   168 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0041A1 2A 2A 2A 2A 2A 2A 2A   169 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      0041AE 0A                     170 	.db 0x0a
      0041AF 0D                     171 	.db 0x0d
      0041B0 00                     172 	.db 0x00
                                    173 	.area CSEG    (CODE)
                                    174 	.area CONST   (CODE)
      0041B1                        175 ___str_1:
      0041B1 43 68 6F 6F 73 65 20   176 	.ascii "Choose the options from below menu : "
             74 68 65 20 6F 70 74
             69 6F 6E 73 20 66 72
             6F 6D 20 62 65 6C 6F
             77 20 6D 65 6E 75 20
             3A 20
      0041D6 0A                     177 	.db 0x0a
      0041D7 0D                     178 	.db 0x0d
      0041D8 00                     179 	.db 0x00
                                    180 	.area CSEG    (CODE)
                                    181 	.area CONST   (CODE)
      0041D9                        182 ___str_2:
      0041D9 5B 77 5D 2E 20 54 6F   183 	.ascii "[w]. To WRITE byte into EEPROM"
             20 57 52 49 54 45 20
             62 79 74 65 20 69 6E
             74 6F 20 45 45 50 52
             4F 4D
      0041F7 0A                     184 	.db 0x0a
      0041F8 0D                     185 	.db 0x0d
      0041F9 00                     186 	.db 0x00
                                    187 	.area CSEG    (CODE)
                                    188 	.area CONST   (CODE)
      0041FA                        189 ___str_3:
      0041FA 5B 72 5D 2E 20 54 6F   190 	.ascii "[r]. To READ byte from EEPROM"
             20 52 45 41 44 20 62
             79 74 65 20 66 72 6F
             6D 20 45 45 50 52 4F
             4D
      004217 0A                     191 	.db 0x0a
      004218 0D                     192 	.db 0x0d
      004219 00                     193 	.db 0x00
                                    194 	.area CSEG    (CODE)
                                    195 	.area CONST   (CODE)
      00421A                        196 ___str_4:
      00421A 5B 68 5D 2E 20 54 6F   197 	.ascii "[h]. To see HEX dump of EEPROM"
             20 73 65 65 20 48 45
             58 20 64 75 6D 70 20
             6F 66 20 45 45 50 52
             4F 4D
      004238 0A                     198 	.db 0x0a
      004239 0D                     199 	.db 0x0d
      00423A 00                     200 	.db 0x00
                                    201 	.area CSEG    (CODE)
                                    202 	.area CONST   (CODE)
      00423B                        203 ___str_5:
      00423B 5B 65 5D 2E 20 54 6F   204 	.ascii "[e]. To do software reset of EEPROM"
             20 64 6F 20 73 6F 66
             74 77 61 72 65 20 72
             65 73 65 74 20 6F 66
             20 45 45 50 52 4F 4D
      00425E 0A                     205 	.db 0x0a
      00425F 0D                     206 	.db 0x0d
      004260 00                     207 	.db 0x00
                                    208 	.area CSEG    (CODE)
                                    209 	.area XINIT   (CODE)
                                    210 	.area CABS    (ABS,CODE)
