; Listing generated by Microsoft (R) Optimizing Compiler Version 19.10.25019.0 

	TITLE	C:\Users\polyr\Development\cpp\4k\i4k_Software\src\main_win_rel.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	__fltused
_BSS	SEGMENT
__fltused DD	01H DUP (?)
?buffer@@3PAIA DD 0e1000H DUP (?)			; buffer
_BSS	ENDS
CONST	SEGMENT
?bmi@@3UtagBITMAPINFO@@B DD 028H			; bmi
	DD	0500H
	DD	0fffffd30H
	DW	01H
	DW	020H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
CONST	ENDS
PUBLIC	?entrypoint@@YGXXZ				; entrypoint
PUBLIC	??_C@_06GGHJAEBN@static?$AA@			; `string'
EXTRN	__imp__ExitProcess@4:PROC
EXTRN	__imp__StretchDIBits@52:PROC
EXTRN	__imp__CreateWindowExA@48:PROC
EXTRN	__imp__GetAsyncKeyState@4:PROC
EXTRN	__imp__GetDC@4:PROC
EXTRN	__imp__timeGetTime@0:PROC
EXTRN	?intro_init@@YGXXZ:PROC				; intro_init
EXTRN	?intro_do@@YGXPAIJ@Z:PROC			; intro_do
;	COMDAT ??_C@_06GGHJAEBN@static?$AA@
CONST	SEGMENT
??_C@_06GGHJAEBN@static?$AA@ DB 'static', 00H		; `string'
CONST	ENDS
; Function compile flags: /Ogspy
; File c:\users\polyr\development\cpp\4k\i4k_software\src\main_win_rel.cpp
;	COMDAT ?entrypoint@@YGXXZ
_TEXT	SEGMENT
?entrypoint@@YGXXZ PROC					; entrypoint, COMDAT

; 39   : {

	push	ebx
	push	ebp
	push	edi

; 40   :     #ifdef ISFULLSCREEN
; 41   :     if( ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN)!=DISP_CHANGE_SUCCESSFUL) return;
; 42   :     ShowCursor( 0 );
; 43   :     #endif
; 44   : 
; 45   :     HDC hDC = GetDC( CreateWindowEx( WS_EX_TOPMOST, "static", 0, WS_VISIBLE|WS_POPUP|WS_CLIPSIBLINGS|WS_CLIPCHILDREN, 0, 0, XRES, YRES, 0, 0, 0, 0 ) );

	xor	ebp, ebp
	push	ebp
	push	ebp
	push	ebp
	push	ebp
	push	720					; 000002d0H
	push	1280					; 00000500H
	push	ebp
	push	ebp
	push	-1778384896				; 96000000H
	push	ebp
	push	OFFSET ??_C@_06GGHJAEBN@static?$AA@
	push	8
	call	DWORD PTR __imp__CreateWindowExA@48
	push	eax
	call	DWORD PTR __imp__GetDC@4
	mov	edi, eax

; 46   : 
; 47   :     intro_init();

	call	?intro_init@@YGXXZ			; intro_init

; 48   : 
; 49   :     long to = timeGetTime();

	call	DWORD PTR __imp__timeGetTime@0
	mov	ebx, eax
$LL4@entrypoint:

; 50   :     do
; 51   :     {
; 52   :         
; 53   :         intro_do( buffer, timeGetTime()-to );

	call	DWORD PTR __imp__timeGetTime@0
	sub	eax, ebx
	push	eax
	push	OFFSET ?buffer@@3PAIA
	call	?intro_do@@YGXPAIJ@Z			; intro_do

; 54   : 	    StretchDIBits(hDC,0,0,XRES,YRES,0,0,XRES,YRES,buffer,&bmi,DIB_RGB_COLORS,SRCCOPY);

	push	13369376				; 00cc0020H
	push	ebp
	push	OFFSET ?bmi@@3UtagBITMAPINFO@@B
	push	OFFSET ?buffer@@3PAIA
	mov	eax, 720				; 000002d0H
	mov	ecx, 1280				; 00000500H
	push	eax
	push	ecx
	push	ebp
	push	ebp
	push	eax
	push	ecx
	push	ebp
	push	ebp
	push	edi
	call	DWORD PTR __imp__StretchDIBits@52

; 55   :     }while( !GetAsyncKeyState(VK_ESCAPE));

	push	27					; 0000001bH
	call	DWORD PTR __imp__GetAsyncKeyState@4
	test	ax, ax
	je	SHORT $LL4@entrypoint

; 56   : 
; 57   :     ExitProcess(0);

	push	ebp
	call	DWORD PTR __imp__ExitProcess@4
	pop	edi
	pop	ebp
	pop	ebx
$LN10@entrypoint:
$LN9@entrypoint:
?entrypoint@@YGXXZ ENDP					; entrypoint
_TEXT	ENDS
END