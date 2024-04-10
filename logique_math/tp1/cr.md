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
end_of_list.
formulas(goals).
-(-p | -(-q -> r)).
end_of_list.
```

exo1.out
```