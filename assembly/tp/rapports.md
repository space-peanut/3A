# Compilation et exécution
Ce cours portant sur l'assembleur 32 bits microsoft, nous compilons les codes grâce à un fichier `make.bat` dont l'architecture est la suivante :
```
@echo off
c:\masm32\bin\ml /c /Zd /coff path/to/input/file.asm
c:\\masm32\bin\Link /SUBSYSTEM:CONSOLE path/to/output/file.obj
pause
```
Comme tous les membres du groupe travaillent sous Unix, nous utilisons wine pour exécuter le fichier avec cette commande : `wine make.bat`

Le script génère deux fichiers : un .obj et un .exe
Affin d'exécuter le code, nous utilisons encore wine : `wine pathe/to/executable.exe`

## Debugging
Le debugger utilise est l'outil x32 de [x64dgb](https://x64dbg.com/#)
# A
## A.b et A.c
### initialisation des variables :

Les deux variables initialisées sont de type define byte, ici, db est utilisé pour déclarer des chaines de caractères. Les chiffres suivant les chaines sont des caractères ASCII (10 pour le saut de ligne et 0 pour indiquer la fin de la chaine)

### Programme
L'instruction PUSH permet d'ajouter une valeur en haut de la pile. Ici, 42 est ajouté, puis c'est au tour de l'adresse mémoire de la variable Phrase (mot clé offset).

jusqu'ici, la pile ressemble a cela :
![[Pasted image 20240513224544.png]]
2A représente 42 en hexadécimal, 00304000 est l'adresse mémoire où est stocké la chaine de caractères. (le haut de la pile est en bas)

L'instruction CALL permet d'appeler des fonctions externes au programme. Dans notre cas, c'est l'instruction crt_printf, qui permet d'afficher les informations passées en paramètres, à la manière du C. La chaine de caractères ne contient qu'un seul spécificateur de format, le processeur va donc dépiler la chaine, puis dépiler 42, pour les utiliser dans le printf.

Les 3 dernières lignes permettent d'attendre que l'utilisateur appuie sur une touche, renvoyer un code de succès d'exécution, puis terminer le processus.

# C
## C.b
Cette fonction permet de calculer la valeur du n-ieme chiffre de la suite Fibonacci.
Exemple d'execution avec 7 (resultat attendu : 13)

| n   | i   | l   | j   | *k* |                |
| --- | --- | --- | --- | --- | -------------- |
| 7   |     |     | 1   | 1   | initialisation |
| 7   | 3   | 2   | 1   | 2   |                |
| 7   | 4   | 3   | 2   | 3   |                |
| 7   | 5   | 5   | 3   | 5   |                |
| 7   | 6   | 8   | 5   | 8   |                |
| 7   | 7   | 13  | 8   | 13  |                |
| 7   | 8   | 13  | 8   | 13  | sortie du for  |
A la fin de l'exécution, k=13, soit la valeur attendue.