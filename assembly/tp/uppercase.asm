.386
.model flat,stdcall
option casemap:none

; l'assembleur respecte les majuscules et minuscules
;------------------------------------------------------------------------------------------
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

;------------------------------------------------------------------------------------------
.data
    maChaine db 'hello wORld', 0  ; Chaîne de caractères en minuscules

.data?
; variable non initialisees

.code    
start:
    ; Appel de la routine pour mettre la chaîne en majuscules
    ;mov esi, offset maChaine       ; Pointeur de source (chaîne d'entrée)
    push offset maChaine       ; Adresse de la chaîne à convertir
    call majuscule          ; Appel de la routine de conversion en majuscules
    
    
    
    ; On place le second argument de la fonction appelée sur la pile
    push offset maChaine
    call crt_printf
    
    mov eax, 0
    invoke    ExitProcess,eax

majuscule:
    push ebp
    mov ebp, esp
    push ebx
    
    ; Parcourir la chaîne caractère par caractère
    mov esi, [ebp+8]
    mov ebx, esi       ; Sauvegarde du pointeur de départ
    
conversion_loop:
    mov al, [esi]      ; Charger le caractère dans AL
    cmp al, 0          ; Vérifier si c'est la fin de la chaîne
    je fin_conversion  ; Si c'est la fin, terminer
    
    cmp al, 'a'        ; Comparer avec 'a'
    jb skip_conversion ; Si le caractère est plus petit que 'a', passer à la prochaine itération
    
    cmp al, 'z'        ; Comparer avec 'z'
    ja skip_conversion ; Si le caractère est plus grand que 'z', passer à la prochaine itération
    
    sub al, 'a'-'A'    ; Convertir en majuscule (32 est la différence entre 'a' et 'A')
    mov [esi], al      ; Mettre à jour le caractère dans la chaîne
    
skip_conversion:
    inc esi              ; Passer au caractère suivant
    loop conversion_loop ; Répéter jusqu'à la fin de la chaîne
    
fin_conversion:
    pop ebx
    pop ebp
    ret
;-----------------------------------------------------------------------------------------
end start
