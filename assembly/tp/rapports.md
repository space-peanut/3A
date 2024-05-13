# Compilation et execution
Ce cours portant sur l'assembleur 32 bits microsoft, nous compilons les codes grace a un fichier `make.bat` dont l'architecture est la suivante :
```
@echo off
c:\masm32\bin\ml /c /Zd /coff path/to/input/file.asm
c:\\masm32\bin\Link /SUBSYSTEM:CONSOLE path/to/output/file.obj
pause
```
Comme tous les membres du groupe travaillent sous unix, nous utilisons wine pour executer le ficxhier avec cette commande `wine make.bat`

# helloworld

