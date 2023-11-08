# Rapels
non repudiation : ne pas pouvoir nier avoir fait une action

cle sym vs cle asym
 
crypto par :
- bloc
- flux
- seuil
- quantique

## hachage
 **caracteristiques**
 - taille fixe
 - deterministe
    - 1 fichier donne tjrs le mem hash
 - calcul rapide
 - irreversible
    - on ne peut pas retrouver le fichier a partir du hash
 - resistance aux colisions
    - 2 fichiers differents ne peuvent pas avoir le meme hash
 - effet de difusion
    - si on change 1 bit du fichier, le hash change completement

## signature numerique
<=> crypter avec cle prive (donc que en assym)
permet de garantir l'identite 

## comment assurer les != services
- confidentialite : chiffrement
- authentificite : signature
- non repudiation : signature

# intro aux protocoles crypto

## protocole
scequence d'etapes de comm et de calcul

## protocole cryptographique
protocole qui se base sur la crypto pour assuer certains obj de la crypto

## notations
id d'un principal : A, B ,C, ..
id d'un serv : S
Nonces : Na (sync), Nb,...(asyncs)
m crypte avec k : {m}k ou {m}~k~
...
 
### exemple
A ^> B : m

## role vs principal
- **principal** : agent qui participent a la com
- **role** : abstraction du protocole avec emphase  sur un principal

# types de protocoles crypto

## auth

- auth de l'id

permet a un principal de prouver son identite a un autre 
**securite** : ne pas permettre a un principal X de prouver que son id est Y (X!=Y)

- auth du msg

## 