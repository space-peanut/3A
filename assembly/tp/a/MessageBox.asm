.386
.model flat,stdcall
option casemap:none

include c:\masm32\include\windows.inc
include c:\masm32\include\gdi32.inc
include c:\masm32\include\gdiplus.inc
include c:\masm32\include\user32.inc
include c:\masm32\include\kernel32.inc
include c:\masm32\include\msvcrt.inc

includelib c:\masm32\lib\gdi32.lib
includelib c:\masm32\lib\kernel32.lib
includelib c:\masm32\lib\user32.lib
includelib c:\masm32\lib\msvcrt.lib

.DATA
; variables initialisees
message_text db "le contenu",0
message_titre db "le titre",0
.DATA?
; variables non-initialisees (bss)

.CODE
start:
		; on place le premier argument de la fonction appelée sur la pile 
		push 0    
		push offset message_titre
		push offset message_text
		push 0
		; On place le second argument de la fonction appelée sur la pile
        call MessageBox
		
		
		mov eax, 0
	    invoke	ExitProcess,eax

end start

