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
      002BAE                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("*************************************************************************\n\r");
      002BAE 74 EC            [12]  107 	mov	a,#___str_0
      002BB0 C0 E0            [24]  108 	push	acc
      002BB2 74 37            [12]  109 	mov	a,#(___str_0 >> 8)
      002BB4 C0 E0            [24]  110 	push	acc
      002BB6 12 2C B4         [24]  111 	lcall	_printf_tiny
      002BB9 15 81            [12]  112 	dec	sp
      002BBB 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("CLOCK MENU:\n\r");
      002BBD 74 38            [12]  115 	mov	a,#___str_1
      002BBF C0 E0            [24]  116 	push	acc
      002BC1 74 38            [12]  117 	mov	a,#(___str_1 >> 8)
      002BC3 C0 E0            [24]  118 	push	acc
      002BC5 12 2C B4         [24]  119 	lcall	_printf_tiny
      002BC8 15 81            [12]  120 	dec	sp
      002BCA 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[a]. Clock restart\n\r");
      002BCC 74 46            [12]  123 	mov	a,#___str_2
      002BCE C0 E0            [24]  124 	push	acc
      002BD0 74 38            [12]  125 	mov	a,#(___str_2 >> 8)
      002BD2 C0 E0            [24]  126 	push	acc
      002BD4 12 2C B4         [24]  127 	lcall	_printf_tiny
      002BD7 15 81            [12]  128 	dec	sp
      002BD9 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[b]. Clock stop\n\r");
      002BDB 74 5B            [12]  131 	mov	a,#___str_3
      002BDD C0 E0            [24]  132 	push	acc
      002BDF 74 38            [12]  133 	mov	a,#(___str_3 >> 8)
      002BE1 C0 E0            [24]  134 	push	acc
      002BE3 12 2C B4         [24]  135 	lcall	_printf_tiny
      002BE6 15 81            [12]  136 	dec	sp
      002BE8 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[c]. Clock reset\n\r");
      002BEA 74 6D            [12]  139 	mov	a,#___str_4
      002BEC C0 E0            [24]  140 	push	acc
      002BEE 74 38            [12]  141 	mov	a,#(___str_4 >> 8)
      002BF0 C0 E0            [24]  142 	push	acc
      002BF2 12 2C B4         [24]  143 	lcall	_printf_tiny
      002BF5 15 81            [12]  144 	dec	sp
      002BF7 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[d]. LCD RAM Dump\n\r");
      002BF9 74 80            [12]  147 	mov	a,#___str_5
      002BFB C0 E0            [24]  148 	push	acc
      002BFD 74 38            [12]  149 	mov	a,#(___str_5 >> 8)
      002BFF C0 E0            [24]  150 	push	acc
      002C01 12 2C B4         [24]  151 	lcall	_printf_tiny
      002C04 15 81            [12]  152 	dec	sp
      002C06 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("[e]. Create custom character\n\r");
      002C08 74 94            [12]  155 	mov	a,#___str_6
      002C0A C0 E0            [24]  156 	push	acc
      002C0C 74 38            [12]  157 	mov	a,#(___str_6 >> 8)
      002C0E C0 E0            [24]  158 	push	acc
      002C10 12 2C B4         [24]  159 	lcall	_printf_tiny
      002C13 15 81            [12]  160 	dec	sp
      002C15 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: printf_tiny("[f]. Show custom character\n\r");
      002C17 74 B3            [12]  163 	mov	a,#___str_7
      002C19 C0 E0            [24]  164 	push	acc
      002C1B 74 38            [12]  165 	mov	a,#(___str_7 >> 8)
      002C1D C0 E0            [24]  166 	push	acc
      002C1F 12 2C B4         [24]  167 	lcall	_printf_tiny
      002C22 15 81            [12]  168 	dec	sp
      002C24 15 81            [12]  169 	dec	sp
                                    170 ;	menu.c:30: printf_tiny("*************************************************************************\n\r");
      002C26 74 EC            [12]  171 	mov	a,#___str_0
      002C28 C0 E0            [24]  172 	push	acc
      002C2A 74 37            [12]  173 	mov	a,#(___str_0 >> 8)
      002C2C C0 E0            [24]  174 	push	acc
      002C2E 12 2C B4         [24]  175 	lcall	_printf_tiny
      002C31 15 81            [12]  176 	dec	sp
      002C33 15 81            [12]  177 	dec	sp
                                    178 ;	menu.c:31: }
      002C35 22               [24]  179 	ret
                                    180 	.area CSEG    (CODE)
                                    181 	.area CONST   (CODE)
                                    182 	.area CONST   (CODE)
      0037EC                        183 ___str_0:
      0037EC 2A 2A 2A 2A 2A 2A 2A   184 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      003828 2A 2A 2A 2A 2A 2A 2A   185 	.ascii "*************"
             2A 2A 2A 2A 2A 2A
      003835 0A                     186 	.db 0x0a
      003836 0D                     187 	.db 0x0d
      003837 00                     188 	.db 0x00
                                    189 	.area CSEG    (CODE)
                                    190 	.area CONST   (CODE)
      003838                        191 ___str_1:
      003838 43 4C 4F 43 4B 20 4D   192 	.ascii "CLOCK MENU:"
             45 4E 55 3A
      003843 0A                     193 	.db 0x0a
      003844 0D                     194 	.db 0x0d
      003845 00                     195 	.db 0x00
                                    196 	.area CSEG    (CODE)
                                    197 	.area CONST   (CODE)
      003846                        198 ___str_2:
      003846 5B 61 5D 2E 20 43 6C   199 	.ascii "[a]. Clock restart"
             6F 63 6B 20 72 65 73
             74 61 72 74
      003858 0A                     200 	.db 0x0a
      003859 0D                     201 	.db 0x0d
      00385A 00                     202 	.db 0x00
                                    203 	.area CSEG    (CODE)
                                    204 	.area CONST   (CODE)
      00385B                        205 ___str_3:
      00385B 5B 62 5D 2E 20 43 6C   206 	.ascii "[b]. Clock stop"
             6F 63 6B 20 73 74 6F
             70
      00386A 0A                     207 	.db 0x0a
      00386B 0D                     208 	.db 0x0d
      00386C 00                     209 	.db 0x00
                                    210 	.area CSEG    (CODE)
                                    211 	.area CONST   (CODE)
      00386D                        212 ___str_4:
      00386D 5B 63 5D 2E 20 43 6C   213 	.ascii "[c]. Clock reset"
             6F 63 6B 20 72 65 73
             65 74
      00387D 0A                     214 	.db 0x0a
      00387E 0D                     215 	.db 0x0d
      00387F 00                     216 	.db 0x00
                                    217 	.area CSEG    (CODE)
                                    218 	.area CONST   (CODE)
      003880                        219 ___str_5:
      003880 5B 64 5D 2E 20 4C 43   220 	.ascii "[d]. LCD RAM Dump"
             44 20 52 41 4D 20 44
             75 6D 70
      003891 0A                     221 	.db 0x0a
      003892 0D                     222 	.db 0x0d
      003893 00                     223 	.db 0x00
                                    224 	.area CSEG    (CODE)
                                    225 	.area CONST   (CODE)
      003894                        226 ___str_6:
      003894 5B 65 5D 2E 20 43 72   227 	.ascii "[e]. Create custom character"
             65 61 74 65 20 63 75
             73 74 6F 6D 20 63 68
             61 72 61 63 74 65 72
      0038B0 0A                     228 	.db 0x0a
      0038B1 0D                     229 	.db 0x0d
      0038B2 00                     230 	.db 0x00
                                    231 	.area CSEG    (CODE)
                                    232 	.area CONST   (CODE)
      0038B3                        233 ___str_7:
      0038B3 5B 66 5D 2E 20 53 68   234 	.ascii "[f]. Show custom character"
             6F 77 20 63 75 73 74
             6F 6D 20 63 68 61 72
             61 63 74 65 72
      0038CD 0A                     235 	.db 0x0a
      0038CE 0D                     236 	.db 0x0d
      0038CF 00                     237 	.db 0x00
                                    238 	.area CSEG    (CODE)
                                    239 	.area XINIT   (CODE)
                                    240 	.area CABS    (ABS,CODE)
