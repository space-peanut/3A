# 1 récursivité
## modélisation de 𝚺

```ocaml
let rec somme f m n = if m > n then 0
    else (f m) + (somme f (m+1) n);;
```

t~f~->t~m~->t~n~->t~res~
(t~m~->t~f~)->t~m~->t~n~->t~res~
m est de type int car operation + => f est de type int.
n type int car comparaison avec m.
res type int car retourne 0 dans un cas. une operation conditionnelle retourne un le meme type dans les 2 cas.
(int->int)->int->int->int

1. 
    
```ocaml
let n=10 in 
    let f x = x in 
        somme f 1 n;;
- : int = 55
```

2. 
    
```ocaml
let n=10 in 
    let m=1 in
        let f x = x in 
            somme f m n;;
- : int = 55
```
3. 

```ocaml
let n=10 in 
    let m=1 in
        let f x = x*x*x in 
            somme f m n;;
- : int = 3025
```

4. 

```ocaml
let n=10 in 
    let m=1 in
        let rec f x = 
            if x=1 then 1
            else x * f (x-1) in 
            somme f m n;;
- : int = 4037913
```

# 1.2

1. 

```ocaml
occur "120004009";;
occur <-- "120004009"
occur <-- "20004009"
occur <-- "0004009"
occur <-- "04009"
occur <-- "4009"
occur <-- "009"
occur <-- "9"
occur raises Invalid_argument "String.sub / Bytes.sub"
occur raises Invalid_argument "String.sub / Bytes.sub"
occur raises Invalid_argument "String.sub / Bytes.sub"
occur raises Invalid_argument "String.sub / Bytes.sub"
occur raises Invalid_argument "String.sub / Bytes.sub"
occur raises Invalid_argument "String.sub / Bytes.sub"
occur raises Invalid_argument "String.sub / Bytes.sub"
Exception: Invalid_argument "String.sub / Bytes.sub".
```

2. 

Avec `#trace occur;;` on voit que occur est appelé 7 fois.

3.
dans la derniere etape, le programme veut enlever 2 lettres a une chaine de longueur 1. c'est impossible donc il leve une exception.

4. 

```ocaml
let rec occur y =
    match String.length(y) with
    | 0 -> 0
    |1 -> 0
    | _ -> let ch1 = cdr y in
        let ch2 = cdr ch1 in
            if String.sub y 0 2 = "00"
            then 1 + occur ch2
            else occur ch1 ;;

# occur "120004009";;
- : int = 2
```

### fonction miroir
 
```ocaml
let rec miroir ch = 
    match String.length(ch) with
    | 0 -> ""
    | 1 -> ch
    | _ ->miroir (cdr (ch)) ^ Char.escaped (car ch);;
```

```ocaml
miroir "onu";;
- : string = "uno"
miroir "eluparcettecrapule";;
- : string = "eluparcettecrapule"
```

## 1.3

1. 

```ocaml
let rec div_between a b n =
    if a>b then 
        raise (Invalid_argument "a>b")
    else
    if a=b then false
    else if n mod a = 0 then true
    else div_between (a+1) b n;;

div_between 2 88 89;;
- : bool = false

div_between 2 8 87;;
- : bool = true

div_between 90 88 89;;
Exception: Invalid_argument "a>b".
```
 
2. 

```ocaml
let is_prime n =
    not (div_between 2 (n-1) n);;

is_prime 37;;
- : bool = true

is_prime 33;;
- : bool = false
```

3. 

```ocaml
let no_div_from a n =
    not div_between 2 a n;;
```

4. 

```ocaml
let new_is_prime n =
    no_div_from (n-1) n;;

new_is_prime 33;;
- : bool = false

new_is_prime 37;;
- : bool = true
```