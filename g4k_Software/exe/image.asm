; Listing generated by Microsoft (R) Optimizing Compiler Version 19.10.25019.0 

	TITLE	C:\Users\polyr\Development\cpp\4k\g4k_Software\src\image.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?image_init@@YGXXZ				; image_init
PUBLIC	?image_compute_fragment@@YGXPAMMM@Z		; image_compute_fragment
PUBLIC	__real@00000000
PUBLIC	__real@3dcccccd
PUBLIC	__real@3f000000
PUBLIC	__real@3f4ccccd
PUBLIC	__real@3f800000
PUBLIC	__real@3fe28f5c
PUBLIC	__real@3fe66666
PUBLIC	__real@40000000
PUBLIC	__real@40400000
PUBLIC	__real@60ad78ec
PUBLIC	__real@bd4ccccd
PUBLIC	__real@bf800000
EXTRN	?m2xf@@YGMM@Z:PROC				; m2xf
EXTRN	__fltused:DWORD
;	COMDAT __real@bf800000
CONST	SEGMENT
__real@bf800000 DD 0bf800000r			; -1
CONST	ENDS
;	COMDAT __real@bd4ccccd
CONST	SEGMENT
__real@bd4ccccd DD 0bd4ccccdr			; -0.05
CONST	ENDS
;	COMDAT __real@60ad78ec
CONST	SEGMENT
__real@60ad78ec DD 060ad78ecr			; 1e+20
CONST	ENDS
;	COMDAT __real@40400000
CONST	SEGMENT
__real@40400000 DD 040400000r			; 3
CONST	ENDS
;	COMDAT __real@40000000
CONST	SEGMENT
__real@40000000 DD 040000000r			; 2
CONST	ENDS
;	COMDAT __real@3fe66666
CONST	SEGMENT
__real@3fe66666 DD 03fe66666r			; 1.8
CONST	ENDS
;	COMDAT __real@3fe28f5c
CONST	SEGMENT
__real@3fe28f5c DD 03fe28f5cr			; 1.77
CONST	ENDS
;	COMDAT __real@3f800000
CONST	SEGMENT
__real@3f800000 DD 03f800000r			; 1
CONST	ENDS
;	COMDAT __real@3f4ccccd
CONST	SEGMENT
__real@3f4ccccd DD 03f4ccccdr			; 0.8
CONST	ENDS
;	COMDAT __real@3f000000
CONST	SEGMENT
__real@3f000000 DD 03f000000r			; 0.5
CONST	ENDS
;	COMDAT __real@3dcccccd
CONST	SEGMENT
__real@3dcccccd DD 03dcccccdr			; 0.1
CONST	ENDS
;	COMDAT __real@00000000
CONST	SEGMENT
__real@00000000 DD 000000000r			; 0
CONST	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?image_compute_fragment@@YGXPAMMM@Z
_TEXT	SEGMENT
_rgbv$ = -20						; size = 12
$T1 = -8						; size = 8
_rgb$ = 8						; size = 4
_x$ = 12						; size = 4
_y$ = 16						; size = 4
?image_compute_fragment@@YGXPAMMM@Z PROC		; image_compute_fragment, COMDAT

; 97   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 98   : 	vec3 rgbv;
; 99   : 	calcColor(rgbv,vec2(x,y));

	fld	DWORD PTR _x$[ebp]
	lea	eax, DWORD PTR $T1[ebp]
	fstp	DWORD PTR $T1[ebp]
	fld	DWORD PTR _y$[ebp]
	push	eax
	lea	eax, DWORD PTR _rgbv$[ebp]
	push	eax
	fstp	DWORD PTR $T1[ebp+4]
	call	?calcColor@@YGXAAVvec3@@ABVvec2@@@Z	; calcColor

; 100  : 	rgb[0] = rgbv.x;

	mov	eax, DWORD PTR _rgb$[ebp]
	fld	DWORD PTR _rgbv$[ebp]
	fstp	DWORD PTR [eax]

; 101  : 	rgb[1] = rgbv.y;

	fld	DWORD PTR _rgbv$[ebp+4]
	fstp	DWORD PTR [eax+4]

; 102  : 	rgb[2] = rgbv.z;

	fld	DWORD PTR _rgbv$[ebp+8]
	fstp	DWORD PTR [eax+8]

; 103  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?image_compute_fragment@@YGXPAMMM@Z ENDP		; image_compute_fragment
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?image_init@@YGXXZ
_TEXT	SEGMENT
?image_init@@YGXXZ PROC					; image_init, COMDAT

; 94   : }

	ret	0
?image_init@@YGXXZ ENDP					; image_init
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?calcColor@@YGXAAVvec3@@ABVvec2@@@Z
_TEXT	SEGMENT
_sphere$ = -56						; size = 16
$T7 = -40						; size = 12
_wro$ = -40						; size = 12
_wrd$ = -28						; size = 12
_wrd$3$ = -16						; size = 4
_wrd$1$ = -12						; size = 4
_wrd$2$ = -8						; size = 4
_t$1$ = -4						; size = 4
_outputColor$ = 8					; size = 4
_amb$1$ = 12						; size = 4
_fragment$ = 12						; size = 4
?calcColor@@YGXAAVvec3@@ABVvec2@@@Z PROC		; calcColor, COMDAT

; 48   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H

; 49   : 	vec3 wrd = normalize(vec3(fragment.x*1.77f,fragment.y,-1.0f));

	mov	eax, DWORD PTR _fragment$[ebp]

; 50   : 	vec3 wro = vec3(0.0f,1.0f,1.8f);
; 51   : 	vec4 sphere = vec4(0.0f,1.0f,0.0f,1.0f);
; 52   : 
; 53   : 	bool didHit = false;

	xor	dl, dl
	fld	DWORD PTR [eax]
	fmul	DWORD PTR __real@3fe28f5c
	fld	DWORD PTR [eax+4]

; 54   : 	float t = 1e20f;
; 55   : 	float amb = 0.0f;
; 56   : 
; 57   : 	// floor
; 58   : 	float t1 = interesctFloor(wro,wrd);

	lea	eax, DWORD PTR _wrd$[ebp]
	fld	ST(0)
	fmul	ST(0), ST(1)
	push	eax
	fld	ST(2)
	lea	eax, DWORD PTR _wro$[ebp]
	fmul	ST(0), ST(3)
	push	eax
	faddp	ST(1), ST(0)
	fld1
	fadd	ST(1), ST(0)
	fxch	ST(1)
	fsqrt
	fld	ST(1)
	fdivrp	ST(1), ST(0)
	fmul	ST(3), ST(0)
	fxch	ST(3)
	fst	DWORD PTR _wrd$1$[ebp]
	fst	DWORD PTR _wrd$[ebp]
	fxch	ST(2)
	fmul	ST(0), ST(3)
	fst	DWORD PTR _wrd$2$[ebp]
	fstp	DWORD PTR _wrd$[ebp+4]
	fxch	ST(2)
	fmul	DWORD PTR __real@bf800000
	fst	DWORD PTR _wrd$3$[ebp]
	fst	DWORD PTR _wrd$[ebp+8]
	fldz
	fst	DWORD PTR _wro$[ebp]
	fxch	ST(3)
	fst	DWORD PTR _wro$[ebp+4]
	fld	DWORD PTR __real@3fe66666
	fst	DWORD PTR _wro$[ebp+8]
	fxch	ST(4)
	fst	DWORD PTR _sphere$[ebp]
	fst	DWORD PTR _sphere$[ebp+8]
	fxch	ST(1)
	fst	DWORD PTR _sphere$[ebp+4]
	fstp	DWORD PTR _sphere$[ebp+12]
	fld	DWORD PTR __real@60ad78ec
	fst	DWORD PTR _t$1$[ebp]
	fld	ST(1)
	fstp	DWORD PTR _amb$1$[ebp]
	call	?interesctFloor@@YGMABVvec3@@0@Z	; interesctFloor

; 59   : 	if( t1>0.0f && t1<t )

	fcom	ST(2)
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN69@calcColor
	fcom	ST(1)
	fnstsw	ax
	fstp	ST(1)
	test	ah, 5
	jp	SHORT $LN72@calcColor

; 60   : 	{
; 61   : 		t = t1;

	fst	DWORD PTR _t$1$[ebp]

; 62   : 		didHit = true;
; 63   :         vec3 pos = wro + t1*wrd;

	fmul	ST(3), ST(0)

; 64   : 		amb = 0.8f*smoothstep(sqrtf( pos.x*pos.x + pos.z*pos.z ), 0.0f, 2.0f);

	sub	esp, 12					; 0000000cH
	fmulp	ST(2), ST(0)
	inc	dl
	fxch	ST(1)
	faddp	ST(3), ST(0)
	fld	DWORD PTR __real@40000000
	fstp	DWORD PTR [esp+8]
	fstp	DWORD PTR [esp+4]
	fmul	ST(0), ST(0)
	fxch	ST(1)
	fmul	ST(0), ST(0)
	faddp	ST(1), ST(0)
	fsqrt
	fstp	DWORD PTR [esp]
	call	?smoothstep@@YGMMMM@Z			; smoothstep
	fmul	DWORD PTR __real@3f4ccccd
	fstp	DWORD PTR _amb$1$[ebp]
	jmp	SHORT $LN2@calcColor
$LN69@calcColor:
	fstp	ST(0)
$LN72@calcColor:
	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
	fstp	ST(0)
$LN2@calcColor:
	push	esi
	push	edi

; 65   : 	}
; 66   : 
; 67   : 	// sphere
; 68   : 	float t2 = interesctSphere(wro,wrd,sphere);

	lea	eax, DWORD PTR _sphere$[ebp]
	push	eax
	lea	eax, DWORD PTR _wrd$[ebp]
	push	eax
	lea	eax, DWORD PTR _wro$[ebp]
	push	eax
	call	?interesctSphere@@YGMABVvec3@@0ABVvec4@@@Z ; interesctSphere

; 69   :     if( t2>0.0f && t2<t )

	fldz
	fcomp	ST(1)
	fnstsw	ax
	test	ah, 5
	jp	$LN75@calcColor
	fld	DWORD PTR _t$1$[ebp]
	fcom	ST(1)
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN78@calcColor

; 70   :     {
; 71   : 		t = t2;
; 72   : 		didHit = true;

	fstp	ST(0)
	mov	dl, 1
	fld	ST(0)

; 73   :         vec3  pos = wro + t2*wrd;

	fld	DWORD PTR _wrd$1$[ebp]
	fld	ST(0)
	fmul	ST(0), ST(3)
	fld	DWORD PTR _wrd$2$[ebp]
	fmul	ST(0), ST(4)
	fld	DWORD PTR _wrd$3$[ebp]
	fld	ST(0)
	fmulp	ST(6), ST(0)
	fld1
	fadd	ST(2), ST(0)
	fld	DWORD PTR __real@3fe66666
	faddp	ST(7), ST(0)

; 74   :         vec3  nor = (pos - sphere.xyz())/sphere.w;

	fsub	ST(2), ST(0)

; 75   : 		float fre = 1.0f+dot(nor,wrd); fre = fre*fre; fre = fre*fre;

	fxch	ST(3)
	fmulp	ST(4), ST(0)
	fld	DWORD PTR _wrd$2$[ebp]
	fmul	ST(0), ST(2)
	faddp	ST(4), ST(0)
	fmulp	ST(5), ST(0)
	fxch	ST(2)
	faddp	ST(4), ST(0)
	fadd	ST(3), ST(0)
	fxch	ST(3)
	fmul	ST(0), ST(0)
	fmul	ST(0), ST(0)

; 76   : 		amb = clamp01( 0.5f + 0.5f*nor.y + fre*0.1f );

	fmul	DWORD PTR __real@3dcccccd
	fld	DWORD PTR __real@3f000000
	fmul	ST(2), ST(0)
	fxch	ST(1)
	faddp	ST(2), ST(0)
	faddp	ST(1), ST(0)
	fst	DWORD PTR _amb$1$[ebp]
	fldz
	fcom	ST(1)
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN81@calcColor
	fstp	ST(1)
	fstp	ST(2)
	jmp	SHORT $LN91@calcColor
$LN81@calcColor:
	fstp	ST(0)
	fcomp	ST(2)
	fnstsw	ax
	test	ah, 65					; 00000041H
	jne	SHORT $LN51@calcColor
$LN91@calcColor:
	fxch	ST(1)
	fstp	DWORD PTR _amb$1$[ebp]
	jmp	SHORT $LN65@calcColor
$LN78@calcColor:
	fstp	ST(1)
	fld1
	fxch	ST(1)
$LN51@calcColor:

; 77   :     }
; 78   : 
; 79   : 	// 
; 80   : 	if( didHit )

	test	dl, dl
	je	SHORT $LN89@calcColor
	fstp	ST(1)
$LN65@calcColor:

; 81   : 	{
; 82   : 		 outputColor = mix( vec3(amb), vec3(1.0f), 1.0f-m2xf(-0.05f*t) );

	fmul	DWORD PTR __real@bd4ccccd
	push	ecx
	fstp	DWORD PTR [esp]
	call	?m2xf@@YGMM@Z				; m2xf
	fld1
	fld	ST(0)
	fsubrp	ST(2), ST(0)
	fld	DWORD PTR _amb$1$[ebp]
	fsub	ST(1), ST(0)
	fxch	ST(1)
	fmulp	ST(2), ST(0)
	faddp	ST(1), ST(0)

; 83   : 	}
; 84   : 	else

	jmp	SHORT $LN92@calcColor
$LN75@calcColor:
	fstp	ST(0)
	fld1
	fld	DWORD PTR _t$1$[ebp]
	jmp	SHORT $LN51@calcColor
$LN89@calcColor:
	fstp	ST(0)
$LN92@calcColor:

; 85   : 	{
; 86   : 		outputColor = vec3(1.0f);

	mov	edi, DWORD PTR _outputColor$[ebp]
	lea	esi, DWORD PTR $T7[ebp]
	fst	DWORD PTR $T7[ebp]
	fst	DWORD PTR $T7[ebp+4]
	fstp	DWORD PTR $T7[ebp+8]
	movsd
	movsd
	movsd
	pop	edi
	pop	esi

; 87   : 	}
; 88   : }

	mov	esp, ebp
	pop	ebp
	ret	8
?calcColor@@YGXAAVvec3@@ABVvec2@@@Z ENDP		; calcColor
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?interesctFloor@@YGMABVvec3@@0@Z
_TEXT	SEGMENT
_rO$ = 8						; size = 4
_rD$ = 12						; size = 4
?interesctFloor@@YGMABVvec3@@0@Z PROC			; interesctFloor, COMDAT

; 44   : 	return -rO.y/rD.y;

	mov	eax, DWORD PTR _rO$[esp-4]
	fld	DWORD PTR [eax+4]
	mov	eax, DWORD PTR _rD$[esp-4]
	fdiv	DWORD PTR [eax+4]
	fchs

; 45   : }

	ret	8
?interesctFloor@@YGMABVvec3@@0@Z ENDP			; interesctFloor
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?interesctSphere@@YGMABVvec3@@0ABVvec4@@@Z
_TEXT	SEGMENT
_rO$ = 8						; size = 4
_rD$ = 12						; size = 4
_sph$ = 16						; size = 4
?interesctSphere@@YGMABVvec3@@0ABVvec4@@@Z PROC		; interesctSphere, COMDAT

; 31   :     vec3 p = rO - sph.xyz();

	mov	ecx, DWORD PTR _sph$[esp-4]
	mov	eax, DWORD PTR _rO$[esp-4]
	fld	DWORD PTR [ecx]
	fld	DWORD PTR [ecx+4]
	fld	DWORD PTR [ecx+8]
	fld	DWORD PTR [eax]
	fsubrp	ST(3), ST(0)
	fld	DWORD PTR [eax+4]
	fsubrp	ST(2), ST(0)
	fsubr	DWORD PTR [eax+8]

; 32   :     float b = dot( p, rD );

	mov	eax, DWORD PTR _rD$[esp-4]
	fld	DWORD PTR [eax+4]
	fmul	ST(0), ST(2)
	fld	DWORD PTR [eax]
	fmul	ST(0), ST(4)
	faddp	ST(1), ST(0)
	fld	DWORD PTR [eax+8]
	fmul	ST(0), ST(2)
	faddp	ST(1), ST(0)

; 33   :     float c = dot( p, p ) - sph.w*sph.w;

	fld	DWORD PTR [ecx+12]

; 34   :     float h = b*b - c;

	fld	ST(1)
	fmul	ST(0), ST(2)
	fxch	ST(4)
	fmul	ST(0), ST(0)
	fxch	ST(5)
	fmul	ST(0), ST(0)
	faddp	ST(5), ST(0)
	fxch	ST(2)
	fmul	ST(0), ST(0)
	faddp	ST(4), ST(0)
	fxch	ST(1)
	fmul	ST(0), ST(0)
	fsubp	ST(3), ST(0)
	fxch	ST(1)
	fsubrp	ST(2), ST(0)

; 35   :     if( h>0.0f )

	fldz
	fcomp	ST(2)
	fnstsw	ax
	test	ah, 5
	jp	SHORT $LN19@interesctS

; 36   :     {
; 37   :         h = -b - sqrtf( h );

	fchs
	fxch	ST(1)
	fsqrt
	fsubp	ST(1), ST(0)
	jmp	SHORT $LN2@interesctS
$LN19@interesctS:
	fstp	ST(0)
$LN2@interesctS:

; 38   :     }
; 39   : 	return h;
; 40   : }

	ret	12					; 0000000cH
?interesctSphere@@YGMABVvec3@@0ABVvec4@@@Z ENDP		; interesctSphere
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?smoothstep@@YGMMMM@Z
_TEXT	SEGMENT
_x$ = 8							; size = 4
_a$ = 12						; size = 4
_b$ = 16						; size = 4
?smoothstep@@YGMMMM@Z PROC				; smoothstep, COMDAT

; 23   :     if (x<a) return 0.0f;

	fld	DWORD PTR _a$[esp-4]
	fld	DWORD PTR _x$[esp-4]
	fcom	ST(1)
	fnstsw	ax
	test	ah, 5
	jp	SHORT $LN2@smoothstep
	fstp	ST(0)
	fstp	ST(0)
	fldz
	jmp	SHORT $LN1@smoothstep
$LN2@smoothstep:

; 24   :     if (x>b) return 1.0f;

	fld	DWORD PTR _b$[esp-4]
	fcom	ST(1)
	fnstsw	ax
	test	ah, 5
	jp	SHORT $LN3@smoothstep
	fstp	ST(1)
	fstp	ST(0)
	fstp	ST(0)
	fld1
	jmp	SHORT $LN1@smoothstep
$LN3@smoothstep:

; 25   :     x = (x - a) / (b - a);

	fxch	ST(1)
	fsub	ST(0), ST(2)
	fxch	ST(1)
	fsubrp	ST(2), ST(0)
	fdivrp	ST(1), ST(0)

; 26   :     return x*x*(3.0f - 2.0f*x);

	fld	ST(0)
	fadd	ST(0), ST(1)
	fsubr	DWORD PTR __real@40400000
	fxch	ST(1)
	fmul	ST(0), ST(0)
	fmulp	ST(1), ST(0)
$LN1@smoothstep:

; 27   : }

	ret	12					; 0000000cH
?smoothstep@@YGMMMM@Z ENDP				; smoothstep
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\image.cpp
;	COMDAT ?clamp01@@YGMM@Z
_TEXT	SEGMENT
_x$ = 8							; size = 4
?clamp01@@YGMM@Z PROC					; clamp01, COMDAT

; 16   :     if (x<0.0f) return 0.0f;

	fldz
	fld	DWORD PTR _x$[esp-4]
	fcom	ST(1)
	fnstsw	ax
	test	ah, 5
	jnp	SHORT $LN9@clamp01

; 17   :     if (x>1.0f) return 1.0f;

	fstp	ST(1)
	fld1
	fcom	ST(1)
	fnstsw	ax
	test	ah, 5
	jp	SHORT $LN9@clamp01
	fstp	ST(1)
	jmp	SHORT $LN1@clamp01
$LN9@clamp01:
	fstp	ST(0)
$LN1@clamp01:

; 18   :     return x;
; 19   : }

	ret	4
?clamp01@@YGMM@Z ENDP					; clamp01
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec4.h
;	COMDAT ?xyz@vec4@@QBE?AVvec3@@XZ
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
?xyz@vec4@@QBE?AVvec3@@XZ PROC				; vec4::xyz, COMDAT
; _this$ = ecx

; 115  : 		return vec3(x,y,z);

	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fld	DWORD PTR [ecx]
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [ecx+4]
	fstp	DWORD PTR [eax+4]
	fld	DWORD PTR [ecx+8]
	fstp	DWORD PTR [eax+8]

; 116  : 	}

	ret	4
?xyz@vec4@@QBE?AVvec3@@XZ ENDP				; vec4::xyz
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec4.h
;	COMDAT ??0vec4@@QAE@MMMM@Z
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_c$ = 16						; size = 4
_d$ = 20						; size = 4
??0vec4@@QAE@MMMM@Z PROC				; vec4::vec4, COMDAT
; _this$ = ecx

; 24   : 	{
; 25   : 		x = a;

	fld	DWORD PTR _a$[esp-4]

; 26   : 		y = b;
; 27   : 		z = c;
; 28   : 		w = d;
; 29   : 	}

	mov	eax, ecx
	fstp	DWORD PTR [ecx]
	fld	DWORD PTR _b$[esp-4]
	fstp	DWORD PTR [ecx+4]
	fld	DWORD PTR _c$[esp-4]
	fstp	DWORD PTR [ecx+8]
	fld	DWORD PTR _d$[esp-4]
	fstp	DWORD PTR [ecx+12]
	ret	16					; 00000010H
??0vec4@@QAE@MMMM@Z ENDP				; vec4::vec4
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ?mix@@YG?AVvec3@@ABV1@0M@Z
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
_a$ = 12						; size = 4
_b$ = 16						; size = 4
_f$ = 20						; size = 4
?mix@@YG?AVvec3@@ABV1@0M@Z PROC				; mix, COMDAT

; 133  : 	    return vec3( a.x+f*(b.x-a.x), a.y+f*(b.y-a.y), a.z+f*(b.z-a.z) );

	mov	edx, DWORD PTR _a$[esp-4]
	mov	ecx, DWORD PTR _b$[esp-4]
	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fld	DWORD PTR [ecx]
	fsub	DWORD PTR [edx]
	fld	DWORD PTR _f$[esp-4]
	fmul	ST(1), ST(0)
	fxch	ST(1)
	fadd	DWORD PTR [edx]
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [ecx+4]
	fsub	DWORD PTR [edx+4]
	fmul	ST(0), ST(1)
	fadd	DWORD PTR [edx+4]
	fstp	DWORD PTR [eax+4]
	fld	DWORD PTR [ecx+8]
	fsub	DWORD PTR [edx+8]
	fmulp	ST(1), ST(0)
	fadd	DWORD PTR [edx+8]
	fstp	DWORD PTR [eax+8]

; 134  : 	}

	ret	16					; 00000010H
?mix@@YG?AVvec3@@ABV1@0M@Z ENDP				; mix
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ?dot@@YGMABVvec3@@0@Z
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
?dot@@YGMABVvec3@@0@Z PROC				; dot, COMDAT

; 123  : 	    return a.x*b.x + a.y*b.y + a.z*b.z;

	mov	ecx, DWORD PTR _a$[esp-4]
	mov	eax, DWORD PTR _b$[esp-4]
	fld	DWORD PTR [ecx+4]
	fmul	DWORD PTR [eax+4]
	fld	DWORD PTR [ecx]
	fmul	DWORD PTR [eax]
	faddp	ST(1), ST(0)
	fld	DWORD PTR [ecx+8]
	fmul	DWORD PTR [eax+8]
	faddp	ST(1), ST(0)

; 124  : 	}

	ret	8
?dot@@YGMABVvec3@@0@Z ENDP				; dot
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ?normalize@@YG?AVvec3@@ABV1@@Z
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
_nor$ = 12						; size = 4
?normalize@@YG?AVvec3@@ABV1@@Z PROC			; normalize, COMDAT

; 117  : 		const float im = 1.0f / sqrtf( nor.x*nor.x + nor.y*nor.y + nor.z*nor.z );

	mov	ecx, DWORD PTR _nor$[esp-4]

; 118  : 		return vec3(nor.x*im, nor.y*im, nor.z*im);

	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fld	DWORD PTR [ecx+4]
	fld	DWORD PTR [ecx+8]
	fld	DWORD PTR [ecx]
	fmul	ST(0), ST(0)
	fxch	ST(2)
	fmul	ST(0), ST(0)
	faddp	ST(2), ST(0)
	fmul	ST(0), ST(0)
	faddp	ST(1), ST(0)
	fsqrt
	fld1
	fdivrp	ST(1), ST(0)
	fld	DWORD PTR [ecx]
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [eax]
	fld	ST(0)
	fmul	DWORD PTR [ecx+4]
	fstp	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx+8]
	fstp	DWORD PTR [eax+8]

; 119  : 	}

	ret	8
?normalize@@YG?AVvec3@@ABV1@@Z ENDP			; normalize
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??Gvec3@@QBE?BV0@ABV0@@Z
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
_v$ = 12						; size = 4
??Gvec3@@QBE?BV0@ABV0@@Z PROC				; vec3::operator-, COMDAT
; _this$ = ecx

; 105  : 		return vec3(x-v.x,y-v.y,z-v.z);

	mov	edx, DWORD PTR _v$[esp-4]
	fld	DWORD PTR [ecx]
	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fsub	DWORD PTR [edx]
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [ecx+4]
	fsub	DWORD PTR [edx+4]
	fstp	DWORD PTR [eax+4]
	fld	DWORD PTR [ecx+8]
	fsub	DWORD PTR [edx+8]
	fstp	DWORD PTR [eax+8]

; 106  : 	}

	ret	8
??Gvec3@@QBE?BV0@ABV0@@Z ENDP				; vec3::operator-
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??Hvec3@@QBE?BV0@ABV0@@Z
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
_v$ = 12						; size = 4
??Hvec3@@QBE?BV0@ABV0@@Z PROC				; vec3::operator+, COMDAT
; _this$ = ecx

; 93   : 		return vec3(x+v.x,y+v.y,z+v.z);

	mov	edx, DWORD PTR _v$[esp-4]
	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fld	DWORD PTR [edx]
	fadd	DWORD PTR [ecx]
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [edx+4]
	fadd	DWORD PTR [ecx+4]
	fstp	DWORD PTR [eax+4]
	fld	DWORD PTR [edx+8]
	fadd	DWORD PTR [ecx+8]
	fstp	DWORD PTR [eax+8]

; 94   : 	}

	ret	8
??Hvec3@@QBE?BV0@ABV0@@Z ENDP				; vec3::operator+
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??K@YG?AVvec3@@ABV0@M@Z
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
_a$ = 12						; size = 4
_b$ = 16						; size = 4
??K@YG?AVvec3@@ABV0@M@Z PROC				; operator/, COMDAT

; 73   : 		return vec3(a.x/b,a.y/b,a.z/b);

	mov	ecx, DWORD PTR _a$[esp-4]
	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fld	DWORD PTR [ecx]
	fld	DWORD PTR _b$[esp-4]
	fdiv	ST(1), ST(0)
	fxch	ST(1)
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [ecx+4]
	fdiv	ST(0), ST(1)
	fstp	DWORD PTR [eax+4]
	fdivr	DWORD PTR [ecx+8]
	fstp	DWORD PTR [eax+8]

; 74   : 	}

	ret	12					; 0000000cH
??K@YG?AVvec3@@ABV0@M@Z ENDP				; operator/
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??D@YG?AVvec3@@MABV0@@Z
_TEXT	SEGMENT
___$ReturnUdt$ = 8					; size = 4
_b$ = 12						; size = 4
_a$ = 16						; size = 4
??D@YG?AVvec3@@MABV0@@Z PROC				; operator*, COMDAT

; 64   : 		return vec3(a.x*b,a.y*b,a.z*b);

	mov	ecx, DWORD PTR _a$[esp-4]
	mov	eax, DWORD PTR ___$ReturnUdt$[esp-4]
	fld	DWORD PTR [ecx]
	fld	DWORD PTR _b$[esp-4]
	fmul	ST(1), ST(0)
	fxch	ST(1)
	fstp	DWORD PTR [eax]
	fld	DWORD PTR [ecx+4]
	fmul	ST(0), ST(1)
	fstp	DWORD PTR [eax+4]
	fmul	DWORD PTR [ecx+8]
	fstp	DWORD PTR [eax+8]

; 65   : 	}

	ret	12					; 0000000cH
??D@YG?AVvec3@@MABV0@@Z ENDP				; operator*
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??0vec3@@QAE@MMM@Z
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_c$ = 16						; size = 4
??0vec3@@QAE@MMM@Z PROC					; vec3::vec3, COMDAT
; _this$ = ecx

; 22   : 	{
; 23   : 		x = a;

	fld	DWORD PTR _a$[esp-4]

; 24   : 		y = b;
; 25   : 		z = c;
; 26   : 	}

	mov	eax, ecx
	fstp	DWORD PTR [ecx]
	fld	DWORD PTR _b$[esp-4]
	fstp	DWORD PTR [ecx+4]
	fld	DWORD PTR _c$[esp-4]
	fstp	DWORD PTR [ecx+8]
	ret	12					; 0000000cH
??0vec3@@QAE@MMM@Z ENDP					; vec3::vec3
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??0vec3@@QAE@M@Z
_TEXT	SEGMENT
_v$ = 8							; size = 4
??0vec3@@QAE@M@Z PROC					; vec3::vec3, COMDAT
; _this$ = ecx

; 16   : 	{
; 17   : 		x = v;

	fld	DWORD PTR _v$[esp-4]

; 18   : 		y = v;
; 19   : 		z = v;
; 20   : 	}

	mov	eax, ecx
	fst	DWORD PTR [ecx]
	fst	DWORD PTR [ecx+4]
	fstp	DWORD PTR [ecx+8]
	ret	4
??0vec3@@QAE@M@Z ENDP					; vec3::vec3
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec3.h
;	COMDAT ??0vec3@@QAE@XZ
_TEXT	SEGMENT
??0vec3@@QAE@XZ PROC					; vec3::vec3, COMDAT
; _this$ = ecx

; 13   : 	{
; 14   : 	}

	mov	eax, ecx
	ret	0
??0vec3@@QAE@XZ ENDP					; vec3::vec3
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\g4k_software\src\glsl\vec2.h
;	COMDAT ??0vec2@@QAE@MM@Z
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
??0vec2@@QAE@MM@Z PROC					; vec2::vec2, COMDAT
; _this$ = ecx

; 21   : 	{
; 22   : 		x = a;

	fld	DWORD PTR _a$[esp-4]

; 23   : 		y = b;
; 24   : 	}

	mov	eax, ecx
	fstp	DWORD PTR [ecx]
	fld	DWORD PTR _b$[esp-4]
	fstp	DWORD PTR [ecx+4]
	ret	8
??0vec2@@QAE@MM@Z ENDP					; vec2::vec2
_TEXT	ENDS
; Function compile flags: /Ogspy
; File c:\program files (x86)\windows kits\10\include\10.0.10240.0\ucrt\math.h
;	COMDAT _sqrtf
_TEXT	SEGMENT
__X$ = 8						; size = 4
_sqrtf	PROC						; COMDAT

; 746  :         return (float)sqrt(_X);

	fld	DWORD PTR __X$[esp-4]
	fsqrt

; 747  :     }

	ret	0
_sqrtf	ENDP
_TEXT	ENDS
END
