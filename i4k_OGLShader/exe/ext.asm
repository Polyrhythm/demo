; Listing generated by Microsoft (R) Optimizing Compiler Version 19.10.25019.0 

	TITLE	C:\Users\polyr\Development\cpp\4k\i4k_OGLShader\src\ext.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?myglfunc@@3PAPAXA				; myglfunc
_BSS	SEGMENT
?myglfunc@@3PAPAXA DD 05H DUP (?)			; myglfunc
_BSS	ENDS
PUBLIC	?EXT_Init@@YGHXZ				; EXT_Init
PUBLIC	??_C@_0BH@BOJGDFJN@glCreateShaderProgramv?$AA@	; `string'
PUBLIC	??_C@_0BG@CCBKOCA@glGenProgramPipelines?$AA@	; `string'
PUBLIC	??_C@_0BG@GLPOKNCG@glBindProgramPipeline?$AA@	; `string'
PUBLIC	??_C@_0BD@CADKHDMH@glUseProgramStages?$AA@	; `string'
PUBLIC	??_C@_0BE@KBMHINLC@glProgramUniform4fv?$AA@	; `string'
EXTRN	__imp__wglGetProcAddress@4:PROC
;	COMDAT ??_C@_0BE@KBMHINLC@glProgramUniform4fv?$AA@
CONST	SEGMENT
??_C@_0BE@KBMHINLC@glProgramUniform4fv?$AA@ DB 'glProgramUniform4fv', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BD@CADKHDMH@glUseProgramStages?$AA@
CONST	SEGMENT
??_C@_0BD@CADKHDMH@glUseProgramStages?$AA@ DB 'glUseProgramStages', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@GLPOKNCG@glBindProgramPipeline?$AA@
CONST	SEGMENT
??_C@_0BG@GLPOKNCG@glBindProgramPipeline?$AA@ DB 'glBindProgramPipeline', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BG@CCBKOCA@glGenProgramPipelines?$AA@
CONST	SEGMENT
??_C@_0BG@CCBKOCA@glGenProgramPipelines?$AA@ DB 'glGenProgramPipelines', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@BOJGDFJN@glCreateShaderProgramv?$AA@
CONST	SEGMENT
??_C@_0BH@BOJGDFJN@glCreateShaderProgramv?$AA@ DB 'glCreateShaderProgramv'
	DB	00H						; `string'
CONST	ENDS
_DATA	SEGMENT
?strs@@3PAPADA DD FLAT:??_C@_0BH@BOJGDFJN@glCreateShaderProgramv?$AA@ ; strs
	DD	FLAT:??_C@_0BG@CCBKOCA@glGenProgramPipelines?$AA@
	DD	FLAT:??_C@_0BG@GLPOKNCG@glBindProgramPipeline?$AA@
	DD	FLAT:??_C@_0BD@CADKHDMH@glUseProgramStages?$AA@
	DD	FLAT:??_C@_0BE@KBMHINLC@glProgramUniform4fv?$AA@
_DATA	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\i4k_oglshader\src\ext.cpp
;	COMDAT ?EXT_Init@@YGHXZ
_TEXT	SEGMENT
?EXT_Init@@YGHXZ PROC					; EXT_Init, COMDAT

; 36   : {

	push	esi

; 37   :     for( int i=0; i<NUMFUNCIONES; i++ )

	xor	esi, esi
$LL4@EXT_Init:

; 38   :     {
; 39   :         #ifdef WINDOWS
; 40   :         myglfunc[i] = wglGetProcAddress( strs[i] );

	push	DWORD PTR ?strs@@3PAPADA[esi]
	call	DWORD PTR __imp__wglGetProcAddress@4
	mov	DWORD PTR ?myglfunc@@3PAPAXA[esi], eax

; 41   :         #endif
; 42   :         #ifdef LINUX
; 43   :         myglfunc[i] = glXGetProcAddress( (const unsigned char *)strs[i] );
; 44   :         #endif
; 45   :         if( !myglfunc[i] )

	test	eax, eax
	je	SHORT $LN8@EXT_Init

; 37   :     for( int i=0; i<NUMFUNCIONES; i++ )

	add	esi, 4
	cmp	esi, 20					; 00000014H
	jl	SHORT $LL4@EXT_Init

; 47   :     }
; 48   :     return( 1 );

	xor	eax, eax
	inc	eax
	pop	esi

; 49   : }

	ret	0
$LN8@EXT_Init:

; 46   : 			return( 0 );

	xor	eax, eax
	pop	esi

; 49   : }

	ret	0
?EXT_Init@@YGHXZ ENDP					; EXT_Init
_TEXT	ENDS
END
