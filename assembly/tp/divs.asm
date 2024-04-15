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

.data
res db "%d"
strCommand db "Pause",13,10,0

.data?

.code
start: 
  mov ax, 10
  mov bx, ax

  push ax
  push bx
  div ax,bx
  
  push offset res
  call crt_printf

  mov eax, 0
  mov ebx, 0
		invoke crt_system, offset strCommand
    invoke ExitProcess, eax


end start

