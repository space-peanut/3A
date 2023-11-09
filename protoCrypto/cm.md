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

## distrib de cle

** objectif** :  distribuer des nouvelles cles aux principaux pour leurs coms futures

**securite** : 
confidentialite, integrite

### possib 1 
comunication directe de la cle

### possib 2
avec un kdc (key distrib center) 
A -> kdc
kdc -> A : k
kdc -> B : k

## certificat
fichier qui certifie la cle pub d'une entite

contenu :
- pub k
- info id entite
- periode de validite
- ...

## failles

un proto

## trace d'exec et role general

## intrus DY
c'est l7intrus parfais, il capte tout, a une memoire infie, une forte puissance de calcul, memorisation infie, tres forte deduction

# verification des protocoles (methode formelle (logique BAN))
recup sur le cours parce que sur mon clavier j'ai pas



