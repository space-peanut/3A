# 2
## 2.2

1. ['a','a'];;
2. let exp z=fun x y-> x 3+.y;;
3. [fun x-> string_of_float(x)];;
4. let exp = fun x y -> x;;
5. let x = fun x y -> x=y;;

# 2.3
1. let h(f,g) = function x -> f(g x);;

t~f~ \* t~g~ ->t~x~-> t~res~
(t~fe~ -> t~fs~) *(t~x~ -t~gs~) ->t~x~-> t~res~
(t~fe~ -> t~res~) *(t~x~ -t~fe~) ->t~x~-> t~res~
('a -> 'b) *('c -'a) ->'c-> 'b


2. let i(a,b,c) = function x -> (a b (c * x));

t~a~\* t~b~\* t~c~ -> t~x~ -> t~res~
(t~ae1~ -> t~ae2~ -> t~as~) \* t~b~\* t~c~ -> t~x~ -> t~res~
(t~b~ -> t~ae2~ -> t~as~) \* t~b~\* t~c~ -> t~x~ -> t~res~
a = f(x) a 2 params
(t~b~ -> t~ae2~ -> t~as~) \* t~b~\* int -> int -> t~as~
('a -> int  -> 'b) \* 'a \* int -> int -> 'b

3. let j a b c = if (a>1 || c) then (b c a) else (a,c);;

t~a~ -> t~b~ -> t~c~ > t~res~
(a,c) type tuple
int -> (bool -> int) -> bool~ > t~res~
int -> (bool -> int -> (int \* bool)) -> bool~ > t~res~
int -> (bool -> int -> (int \* bool)) -> bool~ > (int \* bool)

# 1 
## 1.1
1. let bissextile annee = (annee mod 4 = 0) && (annee mod 100 <> 0 || annee mod 400 = 0);;

# 1.2 
## 1.2.1

let pronom singulier a =
    match a with
    | 1 when singulier -> "je "
    | 2 when singulier -> "tu "
    | 3 when singulier -> "il "
    | 1 when not singulier -> "nous "
    | 2 when not singulier -> "vous "
    | 3 when not singulier -> "ils "
    | _ -> failwith "pronom invalide";;

let terminaison pronom =
    match pronom with
    | "je " -> "erai"
    | "tu " -> "erais"
    | "il " -> "era"
    | "nous " -> "erons"
    | "vous " -> "erez"
    | "ils " -> "erent"
    | _ -> failwith "pronom invalide";;

let premier_groupe verbe =
    match String.sub verbe ((String.length verbe)-2) 2 with
    | "er" -> true
    | _ -> false;;

let conjugue singulier p verbe =
    if premier_groupe verbe then
        (pronom singulier p )^ String.sub verbe 0 ((String.length verbe)-2) ^ terminaison (pronom singulier p)
    else
        failwith (verbe ^ " n'est pas du 1er groupe");;