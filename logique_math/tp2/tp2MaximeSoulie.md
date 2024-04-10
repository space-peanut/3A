<center> <h1> TP 2 : Logique mathématiques </h1> </center>
<center> <h2> Compte rendu </h2> </center>

### 1.
#### 1.3.
exo1.in
```
formulas(assumptions).
all x all y all z ((R(x,y) & R(z,y)) -> R(x,z)).
all x R(x,x).
end_of_list.
formulas(goals).
all x all y (R(x,y) -> R(y,x)).
end_of_list.
```

exo1.out
```
...

============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.

------ process 70484 exit (max_proofs) ------
```
Ce sequent est valide.

### 2.
#### 2.1.
exo2.1.in
```
formulas(assumptions).
all x (P(x,x)).
all x all y all z (P(x,y) & P(y,z) -> P(x,z)).
formulas(goals).
all x all y(P(x,y)->P(y,x)).
end_of_list.
```

exo2.1.out
```
...
============================== end of search =========================

SEARCH FAILED

SEARCH FAILED

Exiting with failure.
```
On cherche a montrer que F2 n'est pas consequence logique de F1 et F3. Donc, le sequent est valide.

#### 2.2.
exo2.2.in
```
formulas(assumptions).
all x P(x,x).
all x all y(P(x,y)->P(y,x)).
formulas(goals).
all x all y all z (P(x,y) & P(y,z) -> P(x,z)).
end_of_list.
```

exo2.2.out
```
...

============================== end of search =========================

SEARCH FAILED

SEARCH FAILED

Exiting with failure.
```
On cherche a montrer que F3 n'est pas consequence logique de F1 et F2. Donc, le sequent est valide.

#### 2.3.
exo2.3.in
```
formulas(assumptions).
all x all y all z (P(x,y) & P(y,z) -> P(x,z)).
all x all y (P(x,y)->P(y,x)).
end_of_list.
formulas(goals).
all x P(x,x).
end_of_list.
```

exo2.3.out
```
...
============================== end of search =========================

SEARCH FAILED

SEARCH FAILED

Exiting with failure.
```
On cherche a montrer que F1 et F2 n'impliquent pas F3. Donc, le sequent est valide.

### 3.
#### 3.1.
tous les entiers sont soit pairs soit impairs, mais pas les deux en même temps : 
> $\forall x \neg (pair(x) \wedge impaire(x)$

Un entier est pair si et seulement s’il est divisible par deux 2 au sens de la division entière :
> $\forall x \:pair(x) \Leftrightarrow div(x,2)$

Le successeur unique d'un entier est un entier:
> $\forall x  \:entier(x+1)$

Tout multiple d'un entier est un entier :
> $\forall x \forall y \: entier(x) \wedge multiple(y,x) \Rightarrow entier(y)$

Si un entier est impair, alors son successeur est pair :
> $\forall x \: impair(x) \Rightarrow pair(x+1)$

Si un entier est pair, alors son successeur est impair :
> $\forall x \: pair(x) \Rightarrow impair(x+1)$

Tout multiple d'un multiple est un multiple :
> $\forall x \forall y \forall z \: multiple(x,y) \wedge multiple(y,z) \Rightarrow multiple(x,z)$

#### 3.2.
tout multiple d'un entier pair est pair :
> $\forall x \forall y \: pair(x) \wedge multiple(y,x) \Rightarrow pair(y)$




### 5.
exo5.in
```
formulas(assumptions).
all x all y (A(x,y) -> C(x,y)).
all x all y (( exists z(C(x,z) & A(z,y))) -> C(x,y)).
-(exists x C(x,x)).
end_of_list.
formulas(goals).
all x all y (-A(x,y)) | (-A(y,x)).
end_of_list.
```

exo5.out
```
...
============================== end of search =========================

SEARCH FAILED

SEARCH FAILED

Exiting with failure.

------ process 89434 exit (sos_empty) ------
```
C n'est pas conscequence de P1, P2 et P3.

<div style="text-align: right">Maxime Soulie</div>