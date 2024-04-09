@echo off
c:\masm32\bin\ml /c /Zd /coff divs.asm
c:\\masm32\bin\link /SUBSYSTEM:CONSOLE divs.obj
pause
