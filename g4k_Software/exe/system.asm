; Listing generated by Microsoft (R) Optimizing Compiler Version 19.10.25019.0 

	TITLE	C:\Users\polyr\Development\cpp\4k\g4k_Software\src\system.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?f2i@@YGHM@Z					; f2i
PUBLIC	?mpowf@@YGMMM@Z					; mpowf
PUBLIC	?mfmodf@@YGMMM@Z				; mfmodf
PUBLIC	?m2xf@@YGMM@Z					; m2xf
PUBLIC	?mifloorf@@YGHM@Z				; mifloorf
PUBLIC	__real@3f000000
EXTRN	__fltused:DWORD
;	COMDAT __real@3f000000
CONST	SEGMENT
__real@3f000000 DD 03f000000r			; 0.5
CONST	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\system.cpp
;	COMDAT ?mifloorf@@YGHM@Z
_TEXT	SEGMENT
_t$ = -4						; size = 4
_x$ = 8							; size = 4
?mifloorf@@YGHM@Z PROC					; mifloorf, COMDAT

; 56   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 57   : 	x = x - 0.5f;

	fld	DWORD PTR _x$[ebp]
	fsub	DWORD PTR __real@3f000000
	fstp	DWORD PTR _x$[ebp]

; 58   :     int t;
; 59   :     _asm fld x

	fld	DWORD PTR _x$[ebp]

; 60   :     _asm fistp t

	fistp	DWORD PTR _t$[ebp]

; 61   :     return t;

	mov	eax, DWORD PTR _t$[ebp]

; 62   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?mifloorf@@YGHM@Z ENDP					; mifloorf
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\system.cpp
;	COMDAT ?m2xf@@YGMM@Z
_TEXT	SEGMENT
_f$ = 8							; size = 4
?m2xf@@YGMM@Z PROC					; m2xf, COMDAT

; 43   :     _asm fld   dword ptr [f]

	fld	DWORD PTR _f$[esp-4]

; 44   :     _asm fld1

	fld1

; 45   :     _asm fld   st(1)

	fld	ST(1)

; 46   :     _asm fprem

	fprem

; 47   :     _asm f2xm1

	f2xm1

; 48   :     _asm faddp st(1), st

	faddp	ST(1), ST(0)

; 49   :     _asm fscale

	fscale

; 50   :     _asm fstp  st(1)

	fstp	ST(1)

; 51   :     _asm fstp  dword ptr [f]

	fstp	DWORD PTR _f$[esp-4]

; 52   :     return f;

	fld	DWORD PTR _f$[esp-4]

; 53   : }

	ret	4
?m2xf@@YGMM@Z ENDP					; m2xf
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\system.cpp
;	COMDAT ?mfmodf@@YGMMM@Z
_TEXT	SEGMENT
_res$ = -4						; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
?mfmodf@@YGMMM@Z PROC					; mfmodf, COMDAT

; 31   : {

	push	ecx

; 32   : 	float res;
; 33   : 	_asm fld dword ptr [y]

	fld	DWORD PTR _y$[esp]

; 34   : 	_asm fld dword ptr [x]

	fld	DWORD PTR _x$[esp]

; 35   : 	_asm fprem

	fprem

; 36   : 	_asm fstp st(1);

	fstp	ST(1)

; 37   : 	_asm fstp dword ptr [res]

	fstp	DWORD PTR _res$[esp+4]

; 38   : 	return res;

	fld	DWORD PTR _res$[esp+4]

; 39   : }

	pop	ecx
	ret	8
?mfmodf@@YGMMM@Z ENDP					; mfmodf
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\system.cpp
;	COMDAT ?mpowf@@YGMMM@Z
_TEXT	SEGMENT
_res$ = -4						; size = 4
_a$ = 8							; size = 4
_b$ = 12						; size = 4
?mpowf@@YGMMM@Z PROC					; mpowf, COMDAT

; 12   : {

	push	ecx

; 13   : 	float res;
; 14   : 	_asm fld			dword ptr [b]

	fld	DWORD PTR _b$[esp]

; 15   : 	_asm fld			dword ptr [a]

	fld	DWORD PTR _a$[esp]

; 16   : 	_asm fyl2x

	fyl2x

; 17   : 	_asm fld			st

	fld	ST(0)

; 18   : 	_asm frndint

	frndint

; 19   : 	_asm fsub		st(1),st

	fsub	ST(1), ST(0)

; 20   : 	_asm fxch		st(1)

	fxch	ST(1)

; 21   : 	_asm f2xm1

	f2xm1

; 22   : 	_asm fld1

	fld1

; 23   : 	_asm fadd

	faddp	ST(1), ST(0)

; 24   : 	_asm fscale

	fscale

; 25   : 	_asm fstp		st(1)

	fstp	ST(1)

; 26   : 	_asm fstp dword ptr [res]

	fstp	DWORD PTR _res$[esp+4]

; 27   : 	return res;

	fld	DWORD PTR _res$[esp+4]

; 28   : }

	pop	ecx
	ret	8
?mpowf@@YGMMM@Z ENDP					; mpowf
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\system.cpp
;	COMDAT ?f2i@@YGHM@Z
_TEXT	SEGMENT
_tmp$ = -4						; size = 4
_x$ = 8							; size = 4
?f2i@@YGHM@Z PROC					; f2i, COMDAT

; 4    : {

	push	ecx

; 5    :     int tmp;
; 6    :     _asm fld dword ptr[x]

	fld	DWORD PTR _x$[esp]

; 7    :     _asm fistp dword ptr[tmp];

	fistp	DWORD PTR _tmp$[esp+4]

; 8    :     return tmp;

	mov	eax, DWORD PTR _tmp$[esp+4]

; 9    : }

	pop	ecx
	ret	4
?f2i@@YGHM@Z ENDP					; f2i
_TEXT	ENDS
END