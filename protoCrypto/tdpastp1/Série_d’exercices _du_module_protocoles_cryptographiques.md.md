
# 1
1. Authentification biométrique
2. Signer numériquement des messages pour l'authentification
3. VPN
4. Vérifier l'intégrité des données
5. SHA-256 (+ used) et bcrypt (+ safe)
	- md5 obsolete
	- AES chiffrement, pas hachage
6. Pare-feu
7. Vérifier l'identité d'un site Web
	- Authentifier un utilisateur pas techniquement faux mais un peu trop chiant a faire a la main
8. Antivirus
9. Clé publique
10. Authentification à deux facteurs
# 4
## 1
1. A −→ B : M,A,B,{Na,M,A,B} kas  
2. B −→ S : M,A,B,{Na,M,A,B} kas,,{Nb,M,A,B} kbs  
3. S −→ B :M ,{Na,Kab} kas,{Nb, Kab } kbs  
4. B −→ A: M,{Na,Kab} kas
echange de cle, symetrique (cles partages (kas)), async (utilisation de nonces, pas de timestamp), avec server
## 2

**Role de A**
A->I(B):M,A,B,{Na,M,A,B}Kas
I(B) -> : M{Na,Kab}kas

**Role Generalise de A**
A->I(B):M,A,B,{Na,M,A,B}Kas
I(B) -> : M{Na,X1}kas

**Role de B**
I(A) −→ B : M,A,B,{Na,M,A,B} kas  
B −→ i(S) : M,A,B,{Na,M,A,B} kas,,{Nb,M,A,B} kbs  
I(S) −→ B :M ,{Na,Kab} kas,{Nb, Kab } kbs  
B −→ I(A): M,{Na,Kab} kas

**Role Generalise de B**
I(A) −→ B : M,A,B,X4  
B −→ i(S) : M,A,B,X4,,{Nb,M,A,B} kbs  
I(S) −→ B :M ,X5,{Nb, X6 } kbs  
B −→ I(A): M,X5

**Role de S**
I(B) −→ S : M,A,B,{Na,M,A,B} kas,,{Nb,M,A,B} kbs  
S −→ I(B) :M ,{Na,Kab} kas,{Nb, Kab } kbs  

**Role Generalise de S**
I(B) −→ S : M,A,B,{X2,M,A,B} kas,,{X3,M,A,B} kbs  
S −→ I(B) :M ,{X2,Kab} kas,{X3, Kab } kbs  
### sequence 1

1.1. A −→ I(B) : M,A,B,{Na,M,A,B} kas  
1.4. I(B) −→ A: M,{Na, M,A,B} kas

Correspond

### sequence 2
1.1. A −→ I(B) : M,A,B,{Na,M,A,B} kas  
	2.1. I( A) −→ B : M,A,B,{N1a,M,A,B} kas  
	2.2. B −→ I(S) : M,A,B,{N1a,M,A,B} kas,{N2b,M,A,B} kbs  
1.4. I(B) −→ A: M,{Na, M,A,B} ka

Correspond

### Sequence3 :  
1.1. A −→ I(B) : M,A,B,{Na,M,A,B} kas  
	2.1. I( A) −→ B : M,A,B,{N1a,M,A,B} kas  
	2.2. B −→ I(S) : M,A,B,{N1a,M,A,B} kas,{N2b,M,A,B} kbs  
		3.2 . I(B) −→S : M,A,B , {N1a,M,A,B} kas,{N2b,M,A,B} kbs  
		3.3. S −→I(B) : M,{N1a,Kab} kas , {N2b, Kab } kbs  
1.4. I(B) −→ A: M,{Na, M,A,B} kas

Correspond

# 5
1. A −→ B : A  
2. B −→ A : Nb  
3. A −→ B :{Nb } kas  
4. B −→ S: {A, {Nb } kas } kbs  
5. S −→ B: {Nb } kbs

auth, sym, async, avec serv, unidir

1. faire les roles generalise
2. trouver 1 sequence valide qui montre A B que je suis A (je le suis pas)

**Role generalise de A**
A -> I(B) : A
I(B) -> A : Nb
A -> I(B) : {Nb}kas

**Role generalise de B**
B -> I(A) : Nb
I(A) ->  B : X1
B -> I(S): {A, X1 } kbs 
S -> B: {Nb } kbs

Role generalise de S :
B -> S: {A, {Nb } kas } kbs  
S -> B: {Nb } kbs

# 6
1. A ->  S : A,B,Na  
2. S ->  A : {Na,B, Kab , { Kab ,A} Kbs } kas  
3. A ->  B : { Kab ,A} Kbs  
4. B -> A: {Nb} kab  
5. A -> B: {Nb-1} kab
echange de cle, sym, async, serv

**role G de A**

A -> I(S) : A,B,Na
I(S) -> A : {Na,B, Kab , X1 } kas 
A -> I(B) : X1
I(B) -> A : X2
I(B) -> A : {X3}X1
A -> I(B) : {X3-1}X1

**role G de B**
I(A) -> B {X4, A}kbs
B -> I(A) : {Nb}X4
I(A) -> B : {Nb-1}X4

**Role G de S**
I(A) -> S : A,B,X5
S -> I(A) : {X5,B,kab,{Kab,A}kbs}kas

### attaque
1. A ->  S : A,B,Na  
2. S ->  A : {Na,B, Kab , { Kab ,A} Kbs } kas  
3. I ->  B : { K'ab ,A} Kbs  
4. B -> A: {Nb} k'ab  
5. A -> B: {Nb-1} k'ab