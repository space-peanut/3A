@echo off
c:\masm32\bin\ml /c /Zd /coff MessageBox.asm
c:\\masm32\bin\link /SUBSYSTEM:CONSOLE MessageBox.obj
pause
