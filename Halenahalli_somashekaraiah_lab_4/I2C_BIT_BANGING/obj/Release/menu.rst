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
      003DB8                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      003DB8 74 9F            [12]  107 	mov	a,#___str_0
      003DBA C0 E0            [24]  108 	push	acc
      003DBC 74 4A            [12]  109 	mov	a,#(___str_0 >> 8)
      003DBE C0 E0            [24]  110 	push	acc
      003DC0 12 3E CD         [24]  111 	lcall	_printf_tiny
      003DC3 15 81            [12]  112 	dec	sp
      003DC5 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("Choose the options from below menu : \n\r");
      003DC7 74 EB            [12]  115 	mov	a,#___str_1
      003DC9 C0 E0            [24]  116 	push	acc
      003DCB 74 4A            [12]  117 	mov	a,#(___str_1 >> 8)
      003DCD C0 E0            [24]  118 	push	acc
      003DCF 12 3E CD         [24]  119 	lcall	_printf_tiny
      003DD2 15 81            [12]  120 	dec	sp
      003DD4 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[w]. To WRITE byte into EEPROM\n\r");
      003DD6 74 13            [12]  123 	mov	a,#___str_2
      003DD8 C0 E0            [24]  124 	push	acc
      003DDA 74 4B            [12]  125 	mov	a,#(___str_2 >> 8)
      003DDC C0 E0            [24]  126 	push	acc
      003DDE 12 3E CD         [24]  127 	lcall	_printf_tiny
      003DE1 15 81            [12]  128 	dec	sp
      003DE3 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[r]. To READ byte from EEPROM\n\r");
      003DE5 74 34            [12]  131 	mov	a,#___str_3
      003DE7 C0 E0            [24]  132 	push	acc
      003DE9 74 4B            [12]  133 	mov	a,#(___str_3 >> 8)
      003DEB C0 E0            [24]  134 	push	acc
      003DED 12 3E CD         [24]  135 	lcall	_printf_tiny
      003DF0 15 81            [12]  136 	dec	sp
      003DF2 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[h]. To see HEX dump of EEPROM\n\r");
      003DF4 74 54            [12]  139 	mov	a,#___str_4
      003DF6 C0 E0            [24]  140 	push	acc
      003DF8 74 4B            [12]  141 	mov	a,#(___str_4 >> 8)
      003DFA C0 E0            [24]  142 	push	acc
      003DFC 12 3E CD         [24]  143 	lcall	_printf_tiny
      003DFF 15 81            [12]  144 	dec	sp
      003E01 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[e]. To do software reset of EEPROM\n\r");
      003E03 74 75            [12]  147 	mov	a,#___str_5
      003E05 C0 E0            [24]  148 	push	acc
      003E07 74 4B            [12]  149 	mov	a,#(___str_5 >> 8)
      003E09 C0 E0            [24]  150 	push	acc
      003E0B 12 3E CD         [24]  151 	lcall	_printf_tiny
      003E0E 15 81            [12]  152 	dec	sp
      003E10 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("[a]. To WRITE byte into I/O expander\n\r");
      003E12 74 9B            [12]  155 	mov	a,#___str_6
      003E14 C0 E0            [24]  156 	push	acc
      003E16 74 4B            [12]  157 	mov	a,#(___str_6 >> 8)
      003E18 C0 E0            [24]  158 	push	acc
      003E1A 12 3E CD         [24]  159 	lcall	_printf_tiny
      003E1D 15 81            [12]  160 	dec	sp
      003E1F 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: printf_tiny("[b]. To READ byte from I/O expander\n\r");
      003E21 74 C2            [12]  163 	mov	a,#___str_7
      003E23 C0 E0            [24]  164 	push	acc
      003E25 74 4B            [12]  165 	mov	a,#(___str_7 >> 8)
      003E27 C0 E0            [24]  166 	push	acc
      003E29 12 3E CD         [24]  167 	lcall	_printf_tiny
      003E2C 15 81            [12]  168 	dec	sp
      003E2E 15 81            [12]  169 	dec	sp
                                    170 ;	menu.c:30: printf_tiny("[c]. Toggle port value\n\r");
      003E30 74 E8            [12]  171 	mov	a,#___str_8
      003E32 C0 E0            [24]  172 	push	acc
      003E34 74 4B            [12]  173 	mov	a,#(___str_8 >> 8)
      003E36 C0 E0            [24]  174 	push	acc
      003E38 12 3E CD         [24]  175 	lcall	_printf_tiny
      003E3B 15 81            [12]  176 	dec	sp
      003E3D 15 81            [12]  177 	dec	sp
                                    178 ;	menu.c:31: printf_tiny("*************************************************************************\n\r");
      003E3F 74 9F            [12]  179 	mov	a,#___str_0
      003E41 C0 E0            [24]  180 	push	acc
      003E43 74 4A            [12]  181 	mov	a,#(___str_0 >> 8)
      003E45 C0 E0            [24]  182 	push	acc
      003E47 12 3E CD         [24]  183 	lcall	_printf_tiny
      003E4A 15 81            [12]  184 	dec	sp
      003E4C 15 81            [12]  185 	dec	sp
                                    186 ;	menu.c:32: }
      003E4E 22               [24]  187 	ret
                                    188 	.area CSEG    (CODE)
                                    189 	.area CONST   (CODE)
                                    190 	.area CONST   (CODE)
      004A9F                        191 ___str_0:
      004A9F 2A 2A 2A 2A 2A 2A 2A   192 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      004ADB 2A 2A 2A 2A 2A 2A 2A   193 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      004AE8 0A                     194 	.db 0x0a
      004AE9 0D                     195 	.db 0x0d
      004AEA 00                     196 	.db 0x00
                                    197 	.area CSEG    (CODE)
                                    198 	.area CONST   (CODE)
      004AEB                        199 ___str_1:
      004AEB 43 68 6F 6F 73 65 20   200 	.ascii "Choose the options from below menu : "
             74 68 65 20 6F 70 74
             69 6F 6E 73 20 66 72
             6F 6D 20 62 65 6C 6F
             77 20 6D 65 6E 75 20
             3A 20
      004B10 0A                     201 	.db 0x0a
      004B11 0D                     202 	.db 0x0d
      004B12 00                     203 	.db 0x00
                                    204 	.area CSEG    (CODE)
                                    205 	.area CONST   (CODE)
      004B13                        206 ___str_2:
      004B13 5B 77 5D 2E 20 54 6F   207 	.ascii "[w]. To WRITE byte into EEPROM"
             20 57 52 49 54 45 20
             62 79 74 65 20 69 6E
             74 6F 20 45 45 50 52
             4F 4D
      004B31 0A                     208 	.db 0x0a
      004B32 0D                     209 	.db 0x0d
      004B33 00                     210 	.db 0x00
                                    211 	.area CSEG    (CODE)
                                    212 	.area CONST   (CODE)
      004B34                        213 ___str_3:
      004B34 5B 72 5D 2E 20 54 6F   214 	.ascii "[r]. To READ byte from EEPROM"
             20 52 45 41 44 20 62
             79 74 65 20 66 72 6F
             6D 20 45 45 50 52 4F
             4D
      004B51 0A                     215 	.db 0x0a
      004B52 0D                     216 	.db 0x0d
      004B53 00                     217 	.db 0x00
                                    218 	.area CSEG    (CODE)
                                    219 	.area CONST   (CODE)
      004B54                        220 ___str_4:
      004B54 5B 68 5D 2E 20 54 6F   221 	.ascii "[h]. To see HEX dump of EEPROM"
             20 73 65 65 20 48 45
             58 20 64 75 6D 70 20
             6F 66 20 45 45 50 52
             4F 4D
      004B72 0A                     222 	.db 0x0a
      004B73 0D                     223 	.db 0x0d
      004B74 00                     224 	.db 0x00
                                    225 	.area CSEG    (CODE)
                                    226 	.area CONST   (CODE)
      004B75                        227 ___str_5:
      004B75 5B 65 5D 2E 20 54 6F   228 	.ascii "[e]. To do software reset of EEPROM"
             20 64 6F 20 73 6F 66
             74 77 61 72 65 20 72
             65 73 65 74 20 6F 66
             20 45 45 50 52 4F 4D
      004B98 0A                     229 	.db 0x0a
      004B99 0D                     230 	.db 0x0d
      004B9A 00                     231 	.db 0x00
                                    232 	.area CSEG    (CODE)
                                    233 	.area CONST   (CODE)
      004B9B                        234 ___str_6:
      004B9B 5B 61 5D 2E 20 54 6F   235 	.ascii "[a]. To WRITE byte into I/O expander"
             20 57 52 49 54 45 20
             62 79 74 65 20 69 6E
             74 6F 20 49 2F 4F 20
             65 78 70 61 6E 64 65
             72
      004BBF 0A                     236 	.db 0x0a
      004BC0 0D                     237 	.db 0x0d
      004BC1 00                     238 	.db 0x00
                                    239 	.area CSEG    (CODE)
                                    240 	.area CONST   (CODE)
      004BC2                        241 ___str_7:
      004BC2 5B 62 5D 2E 20 54 6F   242 	.ascii "[b]. To READ byte from I/O expander"
             20 52 45 41 44 20 62
             79 74 65 20 66 72 6F
             6D 20 49 2F 4F 20 65
             78 70 61 6E 64 65 72
      004BE5 0A                     243 	.db 0x0a
      004BE6 0D                     244 	.db 0x0d
      004BE7 00                     245 	.db 0x00
                                    246 	.area CSEG    (CODE)
                                    247 	.area CONST   (CODE)
      004BE8                        248 ___str_8:
      004BE8 5B 63 5D 2E 20 54 6F   249 	.ascii "[c]. Toggle port value"
             67 67 6C 65 20 70 6F
             72 74 20 76 61 6C 75
             65
      004BFE 0A                     250 	.db 0x0a
      004BFF 0D                     251 	.db 0x0d
      004C00 00                     252 	.db 0x00
                                    253 	.area CSEG    (CODE)
                                    254 	.area XINIT   (CODE)
                                    255 	.area CABS    (ABS,CODE)
