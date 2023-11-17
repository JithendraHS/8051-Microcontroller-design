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
      002A0D                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      002A0D 74 AF            [12]  107 	mov	a,#___str_0
      002A0F C0 E0            [24]  108 	push	acc
      002A11 74 2E            [12]  109 	mov	a,#(___str_0 >> 8)
      002A13 C0 E0            [24]  110 	push	acc
      002A15 12 2B 04         [24]  111 	lcall	_printf_tiny
      002A18 15 81            [12]  112 	dec	sp
      002A1A 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("CLOCK MENU:\n\r");
      002A1C 74 FB            [12]  115 	mov	a,#___str_1
      002A1E C0 E0            [24]  116 	push	acc
      002A20 74 2E            [12]  117 	mov	a,#(___str_1 >> 8)
      002A22 C0 E0            [24]  118 	push	acc
      002A24 12 2B 04         [24]  119 	lcall	_printf_tiny
      002A27 15 81            [12]  120 	dec	sp
      002A29 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[a]. Clock restart\n\r");
      002A2B 74 09            [12]  123 	mov	a,#___str_2
      002A2D C0 E0            [24]  124 	push	acc
      002A2F 74 2F            [12]  125 	mov	a,#(___str_2 >> 8)
      002A31 C0 E0            [24]  126 	push	acc
      002A33 12 2B 04         [24]  127 	lcall	_printf_tiny
      002A36 15 81            [12]  128 	dec	sp
      002A38 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[b]. Clock stop\n\r");
      002A3A 74 1E            [12]  131 	mov	a,#___str_3
      002A3C C0 E0            [24]  132 	push	acc
      002A3E 74 2F            [12]  133 	mov	a,#(___str_3 >> 8)
      002A40 C0 E0            [24]  134 	push	acc
      002A42 12 2B 04         [24]  135 	lcall	_printf_tiny
      002A45 15 81            [12]  136 	dec	sp
      002A47 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[c]. Clock reset\n\r");
      002A49 74 30            [12]  139 	mov	a,#___str_4
      002A4B C0 E0            [24]  140 	push	acc
      002A4D 74 2F            [12]  141 	mov	a,#(___str_4 >> 8)
      002A4F C0 E0            [24]  142 	push	acc
      002A51 12 2B 04         [24]  143 	lcall	_printf_tiny
      002A54 15 81            [12]  144 	dec	sp
      002A56 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[d]. LCD RAM Dump\n\r");
      002A58 74 43            [12]  147 	mov	a,#___str_5
      002A5A C0 E0            [24]  148 	push	acc
      002A5C 74 2F            [12]  149 	mov	a,#(___str_5 >> 8)
      002A5E C0 E0            [24]  150 	push	acc
      002A60 12 2B 04         [24]  151 	lcall	_printf_tiny
      002A63 15 81            [12]  152 	dec	sp
      002A65 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("[e]. Create custom character\n\r");
      002A67 74 57            [12]  155 	mov	a,#___str_6
      002A69 C0 E0            [24]  156 	push	acc
      002A6B 74 2F            [12]  157 	mov	a,#(___str_6 >> 8)
      002A6D C0 E0            [24]  158 	push	acc
      002A6F 12 2B 04         [24]  159 	lcall	_printf_tiny
      002A72 15 81            [12]  160 	dec	sp
      002A74 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: printf_tiny("*************************************************************************\n\r");
      002A76 74 AF            [12]  163 	mov	a,#___str_0
      002A78 C0 E0            [24]  164 	push	acc
      002A7A 74 2E            [12]  165 	mov	a,#(___str_0 >> 8)
      002A7C C0 E0            [24]  166 	push	acc
      002A7E 12 2B 04         [24]  167 	lcall	_printf_tiny
      002A81 15 81            [12]  168 	dec	sp
      002A83 15 81            [12]  169 	dec	sp
                                    170 ;	menu.c:30: }
      002A85 22               [24]  171 	ret
                                    172 	.area CSEG    (CODE)
                                    173 	.area CONST   (CODE)
                                    174 	.area CONST   (CODE)
      002EAF                        175 ___str_0:
      002EAF 2A 2A 2A 2A 2A 2A 2A   176 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      002EEB 2A 2A 2A 2A 2A 2A 2A   177 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      002EF8 0A                     178 	.db 0x0a
      002EF9 0D                     179 	.db 0x0d
      002EFA 00                     180 	.db 0x00
                                    181 	.area CSEG    (CODE)
                                    182 	.area CONST   (CODE)
      002EFB                        183 ___str_1:
      002EFB 43 4C 4F 43 4B 20 4D   184 	.ascii "CLOCK MENU:"
             45 4E 55 3A
      002F06 0A                     185 	.db 0x0a
      002F07 0D                     186 	.db 0x0d
      002F08 00                     187 	.db 0x00
                                    188 	.area CSEG    (CODE)
                                    189 	.area CONST   (CODE)
      002F09                        190 ___str_2:
      002F09 5B 61 5D 2E 20 43 6C   191 	.ascii "[a]. Clock restart"
             6F 63 6B 20 72 65 73
             74 61 72 74
      002F1B 0A                     192 	.db 0x0a
      002F1C 0D                     193 	.db 0x0d
      002F1D 00                     194 	.db 0x00
                                    195 	.area CSEG    (CODE)
                                    196 	.area CONST   (CODE)
      002F1E                        197 ___str_3:
      002F1E 5B 62 5D 2E 20 43 6C   198 	.ascii "[b]. Clock stop"
             6F 63 6B 20 73 74 6F
             70
      002F2D 0A                     199 	.db 0x0a
      002F2E 0D                     200 	.db 0x0d
      002F2F 00                     201 	.db 0x00
                                    202 	.area CSEG    (CODE)
                                    203 	.area CONST   (CODE)
      002F30                        204 ___str_4:
      002F30 5B 63 5D 2E 20 43 6C   205 	.ascii "[c]. Clock reset"
             6F 63 6B 20 72 65 73
             65 74
      002F40 0A                     206 	.db 0x0a
      002F41 0D                     207 	.db 0x0d
      002F42 00                     208 	.db 0x00
                                    209 	.area CSEG    (CODE)
                                    210 	.area CONST   (CODE)
      002F43                        211 ___str_5:
      002F43 5B 64 5D 2E 20 4C 43   212 	.ascii "[d]. LCD RAM Dump"
             44 20 52 41 4D 20 44
             75 6D 70
      002F54 0A                     213 	.db 0x0a
      002F55 0D                     214 	.db 0x0d
      002F56 00                     215 	.db 0x00
                                    216 	.area CSEG    (CODE)
                                    217 	.area CONST   (CODE)
      002F57                        218 ___str_6:
      002F57 5B 65 5D 2E 20 43 72   219 	.ascii "[e]. Create custom character"
             65 61 74 65 20 63 75
             73 74 6F 6D 20 63 68
             61 72 61 63 74 65 72
      002F73 0A                     220 	.db 0x0a
      002F74 0D                     221 	.db 0x0d
      002F75 00                     222 	.db 0x00
                                    223 	.area CSEG    (CODE)
                                    224 	.area XINIT   (CODE)
                                    225 	.area CABS    (ABS,CODE)
