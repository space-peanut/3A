@echo off
c:\masm32\bin\ml /c /Zd /coff uppercase.asm
c:\\masm32\bin\link /SUBSYSTEM:CONSOLE uppercase.obj
pause
