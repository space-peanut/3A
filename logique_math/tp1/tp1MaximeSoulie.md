<center> <h1> TP 1 : Logique mathématiques </h1> </center>
<center> <h2> Compte rendu </h2> </center>

### 1.
### 1.1.
exo1.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
((p & -q) -> r).
end_of_list.
formulas(goals).
end_of_list.
```

exo1.out
```
...
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).

formulas(assumptions).
end_of_list.
formulas(goals).
-(-p | -(-q -> r)).
end_of_list.
```
$\phi$ est non valide.

## 2.
exo2.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).

formulas(assumptions).
% H1
(d -> f) & ( c | ( d & -f)).
% H2
d & a.
end_of_list.
formulas(goals).
% C
a & (b -> c).
end_of_list.
```

exo2.out
```
...
============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
C est bien une conscequence logique de H1 et H2.

## 3.
### 3.1.
exo3.1.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
p & q.
p -> r.
(q & r) -> s.
end_of_list.
formulas(goals).
s.
end_of_list.
```

exo3.1.out
```
...
============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
les sequents sont prouvés.

### 3.2.
exo3.2.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
p | q.
p -> r.
q -> s.
end_of_list.
formulas(goals).
r | s.
end_of_list.

```

exo3.2.out
```
...
============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
les sequents sont prouvés.

### 3.3.
exo3.3.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
(p -> q) -> (r -> s).
-q.
-r.
end_of_list.
formulas(goals).
-r | -p.
end_of_list.
```

exo3.3.out
```
...
============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
les sequents sont prouvés.

### 3.4.
exo3.4.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
p -> (r | q).
-q.
-r.
end_of_list.
formulas(goals).
-p.
end_of_list.
```

exo3.4.out
```
...

============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
les sequents sont prouvés.

### 3.5.
exo3.5.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
p -> q.
-p -> r.
-q -> -r.
end_of_list.
formulas(goals).
q.
end_of_list.
```

exo3.5.out
```
...
============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
les sequents sont prouvés.

### 3.6.
exo3.6.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
end_of_list.
formulas(goals).
(a ->(b -> c)) -> ((a ->b) -> (a -> c)).
end_of_list.
```

exo3.6.out
```
...
============================= end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof
```
les sequents sont prouvés.

### 3.7.
exo3.7.in
```
set(binary_resolution).
clear(print_initial_clauses).
clear(print_kept).
clear(print_given).
assign(max_seconds,10).
assign(stats,none).
formulas(assumptions).
end_of_list.
formulas(goals).
((s -> r) & p & -r) -> (-s & -r & p).
end_of_list.
```

exo3.7.out
```
...
============================== end of search =========================

THEOREM PROVED

THEOREM PROVED

Exiting with 1 proof.
```
les sequents sont prouvés.

<div style="text-align: right">Maxime Soulie</div>