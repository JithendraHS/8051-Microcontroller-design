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
      00314E                         97 _menu:
                           000007    98 	ar7 = 0x07
                           000006    99 	ar6 = 0x06
                           000005   100 	ar5 = 0x05
                           000004   101 	ar4 = 0x04
                           000003   102 	ar3 = 0x03
                           000002   103 	ar2 = 0x02
                           000001   104 	ar1 = 0x01
                           000000   105 	ar0 = 0x00
                                    106 ;	menu.c:22: printf_tiny("Choose the options from below menu: \n\r");
      00314E 74 0E            [12]  107 	mov	a,#___str_0
      003150 C0 E0            [24]  108 	push	acc
      003152 74 35            [12]  109 	mov	a,#(___str_0 >> 8)
      003154 C0 E0            [24]  110 	push	acc
      003156 12 33 BD         [24]  111 	lcall	_printf_tiny
      003159 15 81            [12]  112 	dec	sp
      00315B 15 81            [12]  113 	dec	sp
                                    114 ;	menu.c:23: printf_tiny("[a]. Run PWM (turn on PWM output)\n\r");
      00315D 74 35            [12]  115 	mov	a,#___str_1
      00315F C0 E0            [24]  116 	push	acc
      003161 74 35            [12]  117 	mov	a,#(___str_1 >> 8)
      003163 C0 E0            [24]  118 	push	acc
      003165 12 33 BD         [24]  119 	lcall	_printf_tiny
      003168 15 81            [12]  120 	dec	sp
      00316A 15 81            [12]  121 	dec	sp
                                    122 ;	menu.c:24: printf_tiny("[b]. Stop PWM (turn off PWM output)\n\r");
      00316C 74 59            [12]  123 	mov	a,#___str_2
      00316E C0 E0            [24]  124 	push	acc
      003170 74 35            [12]  125 	mov	a,#(___str_2 >> 8)
      003172 C0 E0            [24]  126 	push	acc
      003174 12 33 BD         [24]  127 	lcall	_printf_tiny
      003177 15 81            [12]  128 	dec	sp
      003179 15 81            [12]  129 	dec	sp
                                    130 ;	menu.c:25: printf_tiny("[c]. Set FCLK PERIPH at the minimum frequency supported by the CKRL register\n\r");
      00317B 74 7F            [12]  131 	mov	a,#___str_3
      00317D C0 E0            [24]  132 	push	acc
      00317F 74 35            [12]  133 	mov	a,#(___str_3 >> 8)
      003181 C0 E0            [24]  134 	push	acc
      003183 12 33 BD         [24]  135 	lcall	_printf_tiny
      003186 15 81            [12]  136 	dec	sp
      003188 15 81            [12]  137 	dec	sp
                                    138 ;	menu.c:26: printf_tiny("[d]. Set FCLK PERIPH at the maximum frequency supported by the CKRL register\n\r");
      00318A 74 CE            [12]  139 	mov	a,#___str_4
      00318C C0 E0            [24]  140 	push	acc
      00318E 74 35            [12]  141 	mov	a,#(___str_4 >> 8)
      003190 C0 E0            [24]  142 	push	acc
      003192 12 33 BD         [24]  143 	lcall	_printf_tiny
      003195 15 81            [12]  144 	dec	sp
      003197 15 81            [12]  145 	dec	sp
                                    146 ;	menu.c:27: printf_tiny("[e]. Set Idle mode (set IDLE bit in PCON register)\n\r");
      003199 74 1D            [12]  147 	mov	a,#___str_5
      00319B C0 E0            [24]  148 	push	acc
      00319D 74 36            [12]  149 	mov	a,#(___str_5 >> 8)
      00319F C0 E0            [24]  150 	push	acc
      0031A1 12 33 BD         [24]  151 	lcall	_printf_tiny
      0031A4 15 81            [12]  152 	dec	sp
      0031A6 15 81            [12]  153 	dec	sp
                                    154 ;	menu.c:28: printf_tiny("[f]. Clear Idle mode (clear IDLE bit in PCON register)\n\r");
      0031A8 74 52            [12]  155 	mov	a,#___str_6
      0031AA C0 E0            [24]  156 	push	acc
      0031AC 74 36            [12]  157 	mov	a,#(___str_6 >> 8)
      0031AE C0 E0            [24]  158 	push	acc
      0031B0 12 33 BD         [24]  159 	lcall	_printf_tiny
      0031B3 15 81            [12]  160 	dec	sp
      0031B5 15 81            [12]  161 	dec	sp
                                    162 ;	menu.c:29: printf_tiny("[g]. Start watchdog timer \n\r");
      0031B7 74 8B            [12]  163 	mov	a,#___str_7
      0031B9 C0 E0            [24]  164 	push	acc
      0031BB 74 36            [12]  165 	mov	a,#(___str_7 >> 8)
      0031BD C0 E0            [24]  166 	push	acc
      0031BF 12 33 BD         [24]  167 	lcall	_printf_tiny
      0031C2 15 81            [12]  168 	dec	sp
      0031C4 15 81            [12]  169 	dec	sp
                                    170 ;	menu.c:30: printf_tiny("[h]. Stop watchdog timer \n\r");
      0031C6 74 A8            [12]  171 	mov	a,#___str_8
      0031C8 C0 E0            [24]  172 	push	acc
      0031CA 74 36            [12]  173 	mov	a,#(___str_8 >> 8)
      0031CC C0 E0            [24]  174 	push	acc
      0031CE 12 33 BD         [24]  175 	lcall	_printf_tiny
      0031D1 15 81            [12]  176 	dec	sp
      0031D3 15 81            [12]  177 	dec	sp
                                    178 ;	menu.c:31: printf_tiny("[i]. Set Power Down mode (set PDE bit in PCON register)\n\r");
      0031D5 74 C4            [12]  179 	mov	a,#___str_9
      0031D7 C0 E0            [24]  180 	push	acc
      0031D9 74 36            [12]  181 	mov	a,#(___str_9 >> 8)
      0031DB C0 E0            [24]  182 	push	acc
      0031DD 12 33 BD         [24]  183 	lcall	_printf_tiny
      0031E0 15 81            [12]  184 	dec	sp
      0031E2 15 81            [12]  185 	dec	sp
                                    186 ;	menu.c:32: printf_tiny("[j]. Clear Power Down mode (clear PDE bit in PCON register)\n\r");
      0031E4 74 FE            [12]  187 	mov	a,#___str_10
      0031E6 C0 E0            [24]  188 	push	acc
      0031E8 74 36            [12]  189 	mov	a,#(___str_10 >> 8)
      0031EA C0 E0            [24]  190 	push	acc
      0031EC 12 33 BD         [24]  191 	lcall	_printf_tiny
      0031EF 15 81            [12]  192 	dec	sp
      0031F1 15 81            [12]  193 	dec	sp
                                    194 ;	menu.c:33: printf_tiny("[k]. Enable High-Speed output \n\r");
      0031F3 74 3C            [12]  195 	mov	a,#___str_11
      0031F5 C0 E0            [24]  196 	push	acc
      0031F7 74 37            [12]  197 	mov	a,#(___str_11 >> 8)
      0031F9 C0 E0            [24]  198 	push	acc
      0031FB 12 33 BD         [24]  199 	lcall	_printf_tiny
      0031FE 15 81            [12]  200 	dec	sp
      003200 15 81            [12]  201 	dec	sp
                                    202 ;	menu.c:34: printf_tiny("[l]. Disable High-Speed output\n\r");
      003202 74 5D            [12]  203 	mov	a,#___str_12
      003204 C0 E0            [24]  204 	push	acc
      003206 74 37            [12]  205 	mov	a,#(___str_12 >> 8)
      003208 C0 E0            [24]  206 	push	acc
      00320A 12 33 BD         [24]  207 	lcall	_printf_tiny
      00320D 15 81            [12]  208 	dec	sp
      00320F 15 81            [12]  209 	dec	sp
                                    210 ;	menu.c:35: }
      003211 22               [24]  211 	ret
                                    212 	.area CSEG    (CODE)
                                    213 	.area CONST   (CODE)
                                    214 	.area CONST   (CODE)
      00350E                        215 ___str_0:
      00350E 43 68 6F 6F 73 65 20   216 	.ascii "Choose the options from below menu: "
             74 68 65 20 6F 70 74
             69 6F 6E 73 20 66 72
             6F 6D 20 62 65 6C 6F
             77 20 6D 65 6E 75 3A
             20
      003532 0A                     217 	.db 0x0a
      003533 0D                     218 	.db 0x0d
      003534 00                     219 	.db 0x00
                                    220 	.area CSEG    (CODE)
                                    221 	.area CONST   (CODE)
      003535                        222 ___str_1:
      003535 5B 61 5D 2E 20 52 75   223 	.ascii "[a]. Run PWM (turn on PWM output)"
             6E 20 50 57 4D 20 28
             74 75 72 6E 20 6F 6E
             20 50 57 4D 20 6F 75
             74 70 75 74 29
      003556 0A                     224 	.db 0x0a
      003557 0D                     225 	.db 0x0d
      003558 00                     226 	.db 0x00
                                    227 	.area CSEG    (CODE)
                                    228 	.area CONST   (CODE)
      003559                        229 ___str_2:
      003559 5B 62 5D 2E 20 53 74   230 	.ascii "[b]. Stop PWM (turn off PWM output)"
             6F 70 20 50 57 4D 20
             28 74 75 72 6E 20 6F
             66 66 20 50 57 4D 20
             6F 75 74 70 75 74 29
      00357C 0A                     231 	.db 0x0a
      00357D 0D                     232 	.db 0x0d
      00357E 00                     233 	.db 0x00
                                    234 	.area CSEG    (CODE)
                                    235 	.area CONST   (CODE)
      00357F                        236 ___str_3:
      00357F 5B 63 5D 2E 20 53 65   237 	.ascii "[c]. Set FCLK PERIPH at the minimum frequency supported by t"
             74 20 46 43 4C 4B 20
             50 45 52 49 50 48 20
             61 74 20 74 68 65 20
             6D 69 6E 69 6D 75 6D
             20 66 72 65 71 75 65
             6E 63 79 20 73 75 70
             70 6F 72 74 65 64 20
             62 79 20 74
      0035BB 68 65 20 43 4B 52 4C   238 	.ascii "he CKRL register"
             20 72 65 67 69 73 74
             65 72
      0035CB 0A                     239 	.db 0x0a
      0035CC 0D                     240 	.db 0x0d
      0035CD 00                     241 	.db 0x00
                                    242 	.area CSEG    (CODE)
                                    243 	.area CONST   (CODE)
      0035CE                        244 ___str_4:
      0035CE 5B 64 5D 2E 20 53 65   245 	.ascii "[d]. Set FCLK PERIPH at the maximum frequency supported by t"
             74 20 46 43 4C 4B 20
             50 45 52 49 50 48 20
             61 74 20 74 68 65 20
             6D 61 78 69 6D 75 6D
             20 66 72 65 71 75 65
             6E 63 79 20 73 75 70
             70 6F 72 74 65 64 20
             62 79 20 74
      00360A 68 65 20 43 4B 52 4C   246 	.ascii "he CKRL register"
             20 72 65 67 69 73 74
             65 72
      00361A 0A                     247 	.db 0x0a
      00361B 0D                     248 	.db 0x0d
      00361C 00                     249 	.db 0x00
                                    250 	.area CSEG    (CODE)
                                    251 	.area CONST   (CODE)
      00361D                        252 ___str_5:
      00361D 5B 65 5D 2E 20 53 65   253 	.ascii "[e]. Set Idle mode (set IDLE bit in PCON register)"
             74 20 49 64 6C 65 20
             6D 6F 64 65 20 28 73
             65 74 20 49 44 4C 45
             20 62 69 74 20 69 6E
             20 50 43 4F 4E 20 72
             65 67 69 73 74 65 72
             29
      00364F 0A                     254 	.db 0x0a
      003650 0D                     255 	.db 0x0d
      003651 00                     256 	.db 0x00
                                    257 	.area CSEG    (CODE)
                                    258 	.area CONST   (CODE)
      003652                        259 ___str_6:
      003652 5B 66 5D 2E 20 43 6C   260 	.ascii "[f]. Clear Idle mode (clear IDLE bit in PCON register)"
             65 61 72 20 49 64 6C
             65 20 6D 6F 64 65 20
             28 63 6C 65 61 72 20
             49 44 4C 45 20 62 69
             74 20 69 6E 20 50 43
             4F 4E 20 72 65 67 69
             73 74 65 72 29
      003688 0A                     261 	.db 0x0a
      003689 0D                     262 	.db 0x0d
      00368A 00                     263 	.db 0x00
                                    264 	.area CSEG    (CODE)
                                    265 	.area CONST   (CODE)
      00368B                        266 ___str_7:
      00368B 5B 67 5D 2E 20 53 74   267 	.ascii "[g]. Start watchdog timer "
             61 72 74 20 77 61 74
             63 68 64 6F 67 20 74
             69 6D 65 72 20
      0036A5 0A                     268 	.db 0x0a
      0036A6 0D                     269 	.db 0x0d
      0036A7 00                     270 	.db 0x00
                                    271 	.area CSEG    (CODE)
                                    272 	.area CONST   (CODE)
      0036A8                        273 ___str_8:
      0036A8 5B 68 5D 2E 20 53 74   274 	.ascii "[h]. Stop watchdog timer "
             6F 70 20 77 61 74 63
             68 64 6F 67 20 74 69
             6D 65 72 20
      0036C1 0A                     275 	.db 0x0a
      0036C2 0D                     276 	.db 0x0d
      0036C3 00                     277 	.db 0x00
                                    278 	.area CSEG    (CODE)
                                    279 	.area CONST   (CODE)
      0036C4                        280 ___str_9:
      0036C4 5B 69 5D 2E 20 53 65   281 	.ascii "[i]. Set Power Down mode (set PDE bit in PCON register)"
             74 20 50 6F 77 65 72
             20 44 6F 77 6E 20 6D
             6F 64 65 20 28 73 65
             74 20 50 44 45 20 62
             69 74 20 69 6E 20 50
             43 4F 4E 20 72 65 67
             69 73 74 65 72 29
      0036FB 0A                     282 	.db 0x0a
      0036FC 0D                     283 	.db 0x0d
      0036FD 00                     284 	.db 0x00
                                    285 	.area CSEG    (CODE)
                                    286 	.area CONST   (CODE)
      0036FE                        287 ___str_10:
      0036FE 5B 6A 5D 2E 20 43 6C   288 	.ascii "[j]. Clear Power Down mode (clear PDE bit in PCON register)"
             65 61 72 20 50 6F 77
             65 72 20 44 6F 77 6E
             20 6D 6F 64 65 20 28
             63 6C 65 61 72 20 50
             44 45 20 62 69 74 20
             69 6E 20 50 43 4F 4E
             20 72 65 67 69 73 74
             65 72 29
      003739 0A                     289 	.db 0x0a
      00373A 0D                     290 	.db 0x0d
      00373B 00                     291 	.db 0x00
                                    292 	.area CSEG    (CODE)
                                    293 	.area CONST   (CODE)
      00373C                        294 ___str_11:
      00373C 5B 6B 5D 2E 20 45 6E   295 	.ascii "[k]. Enable High-Speed output "
             61 62 6C 65 20 48 69
             67 68 2D 53 70 65 65
             64 20 6F 75 74 70 75
             74 20
      00375A 0A                     296 	.db 0x0a
      00375B 0D                     297 	.db 0x0d
      00375C 00                     298 	.db 0x00
                                    299 	.area CSEG    (CODE)
                                    300 	.area CONST   (CODE)
      00375D                        301 ___str_12:
      00375D 5B 6C 5D 2E 20 44 69   302 	.ascii "[l]. Disable High-Speed output"
             73 61 62 6C 65 20 48
             69 67 68 2D 53 70 65
             65 64 20 6F 75 74 70
             75 74
      00377B 0A                     303 	.db 0x0a
      00377C 0D                     304 	.db 0x0d
      00377D 00                     305 	.db 0x00
                                    306 	.area CSEG    (CODE)
                                    307 	.area XINIT   (CODE)
                                    308 	.area CABS    (ABS,CODE)
