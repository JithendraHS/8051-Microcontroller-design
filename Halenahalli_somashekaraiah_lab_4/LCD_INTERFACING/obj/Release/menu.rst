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
      002A3B                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      002A3B 74 4D            [12]  107 	mov	a,#___str_0
      002A3D C0 E0            [24]  108 	push	acc
      002A3F 74 36            [12]  109 	mov	a,#(___str_0 >> 8)
      002A41 C0 E0            [24]  110 	push	acc
      002A43 12 2B 32         [24]  111 	lcall	_printf_tiny
      002A46 15 81            [12]  112 	dec	sp
      002A48 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("CLOCK MENU:\n\r");
      002A4A 74 99            [12]  115 	mov	a,#___str_1
      002A4C C0 E0            [24]  116 	push	acc
      002A4E 74 36            [12]  117 	mov	a,#(___str_1 >> 8)
      002A50 C0 E0            [24]  118 	push	acc
      002A52 12 2B 32         [24]  119 	lcall	_printf_tiny
      002A55 15 81            [12]  120 	dec	sp
      002A57 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[a]. Clock restart\n\r");
      002A59 74 A7            [12]  123 	mov	a,#___str_2
      002A5B C0 E0            [24]  124 	push	acc
      002A5D 74 36            [12]  125 	mov	a,#(___str_2 >> 8)
      002A5F C0 E0            [24]  126 	push	acc
      002A61 12 2B 32         [24]  127 	lcall	_printf_tiny
      002A64 15 81            [12]  128 	dec	sp
      002A66 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[b]. Clock stop\n\r");
      002A68 74 BC            [12]  131 	mov	a,#___str_3
      002A6A C0 E0            [24]  132 	push	acc
      002A6C 74 36            [12]  133 	mov	a,#(___str_3 >> 8)
      002A6E C0 E0            [24]  134 	push	acc
      002A70 12 2B 32         [24]  135 	lcall	_printf_tiny
      002A73 15 81            [12]  136 	dec	sp
      002A75 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[c]. Clock reset\n\r");
      002A77 74 CE            [12]  139 	mov	a,#___str_4
      002A79 C0 E0            [24]  140 	push	acc
      002A7B 74 36            [12]  141 	mov	a,#(___str_4 >> 8)
      002A7D C0 E0            [24]  142 	push	acc
      002A7F 12 2B 32         [24]  143 	lcall	_printf_tiny
      002A82 15 81            [12]  144 	dec	sp
      002A84 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[d]. LCD RAM Dump\n\r");
      002A86 74 E1            [12]  147 	mov	a,#___str_5
      002A88 C0 E0            [24]  148 	push	acc
      002A8A 74 36            [12]  149 	mov	a,#(___str_5 >> 8)
      002A8C C0 E0            [24]  150 	push	acc
      002A8E 12 2B 32         [24]  151 	lcall	_printf_tiny
      002A91 15 81            [12]  152 	dec	sp
      002A93 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("[e]. Create custom character\n\r");
      002A95 74 F5            [12]  155 	mov	a,#___str_6
      002A97 C0 E0            [24]  156 	push	acc
      002A99 74 36            [12]  157 	mov	a,#(___str_6 >> 8)
      002A9B C0 E0            [24]  158 	push	acc
      002A9D 12 2B 32         [24]  159 	lcall	_printf_tiny
      002AA0 15 81            [12]  160 	dec	sp
      002AA2 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: printf_tiny("*************************************************************************\n\r");
      002AA4 74 4D            [12]  163 	mov	a,#___str_0
      002AA6 C0 E0            [24]  164 	push	acc
      002AA8 74 36            [12]  165 	mov	a,#(___str_0 >> 8)
      002AAA C0 E0            [24]  166 	push	acc
      002AAC 12 2B 32         [24]  167 	lcall	_printf_tiny
      002AAF 15 81            [12]  168 	dec	sp
      002AB1 15 81            [12]  169 	dec	sp
                                    170 ;	menu.c:30: }
      002AB3 22               [24]  171 	ret
                                    172 	.area CSEG    (CODE)
                                    173 	.area CONST   (CODE)
                                    174 	.area CONST   (CODE)
      00364D                        175 ___str_0:
      00364D 2A 2A 2A 2A 2A 2A 2A   176 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      003689 2A 2A 2A 2A 2A 2A 2A   177 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      003696 0A                     178 	.db 0x0a
      003697 0D                     179 	.db 0x0d
      003698 00                     180 	.db 0x00
                                    181 	.area CSEG    (CODE)
                                    182 	.area CONST   (CODE)
      003699                        183 ___str_1:
      003699 43 4C 4F 43 4B 20 4D   184 	.ascii "CLOCK MENU:"
             45 4E 55 3A
      0036A4 0A                     185 	.db 0x0a
      0036A5 0D                     186 	.db 0x0d
      0036A6 00                     187 	.db 0x00
                                    188 	.area CSEG    (CODE)
                                    189 	.area CONST   (CODE)
      0036A7                        190 ___str_2:
      0036A7 5B 61 5D 2E 20 43 6C   191 	.ascii "[a]. Clock restart"
             6F 63 6B 20 72 65 73
             74 61 72 74
      0036B9 0A                     192 	.db 0x0a
      0036BA 0D                     193 	.db 0x0d
      0036BB 00                     194 	.db 0x00
                                    195 	.area CSEG    (CODE)
                                    196 	.area CONST   (CODE)
      0036BC                        197 ___str_3:
      0036BC 5B 62 5D 2E 20 43 6C   198 	.ascii "[b]. Clock stop"
             6F 63 6B 20 73 74 6F
             70
      0036CB 0A                     199 	.db 0x0a
      0036CC 0D                     200 	.db 0x0d
      0036CD 00                     201 	.db 0x00
                                    202 	.area CSEG    (CODE)
                                    203 	.area CONST   (CODE)
      0036CE                        204 ___str_4:
      0036CE 5B 63 5D 2E 20 43 6C   205 	.ascii "[c]. Clock reset"
             6F 63 6B 20 72 65 73
             65 74
      0036DE 0A                     206 	.db 0x0a
      0036DF 0D                     207 	.db 0x0d
      0036E0 00                     208 	.db 0x00
                                    209 	.area CSEG    (CODE)
                                    210 	.area CONST   (CODE)
      0036E1                        211 ___str_5:
      0036E1 5B 64 5D 2E 20 4C 43   212 	.ascii "[d]. LCD RAM Dump"
             44 20 52 41 4D 20 44
             75 6D 70
      0036F2 0A                     213 	.db 0x0a
      0036F3 0D                     214 	.db 0x0d
      0036F4 00                     215 	.db 0x00
                                    216 	.area CSEG    (CODE)
                                    217 	.area CONST   (CODE)
      0036F5                        218 ___str_6:
      0036F5 5B 65 5D 2E 20 43 72   219 	.ascii "[e]. Create custom character"
             65 61 74 65 20 63 75
             73 74 6F 6D 20 63 68
             61 72 61 63 74 65 72
      003711 0A                     220 	.db 0x0a
      003712 0D                     221 	.db 0x0d
      003713 00                     222 	.db 0x00
                                    223 	.area CSEG    (CODE)
                                    224 	.area XINIT   (CODE)
                                    225 	.area CABS    (ABS,CODE)
