open TPFamille;;

(* FONCTIONS D'AFFICHAGE *)

(* affichage d'une personne *)
let printPersonne personne =
  (*print_string "Personne : (";*)
  print_string "(";
  print_string (fst personne);
  print_string ", ";
  print_string (snd personne);
  print_string ")"
;;

(* affichage d'une population *)
let rec printPopulationAux pop =
  match pop with
    | []    -> print_string "\n"
    | p::[] -> printPersonne p; print_string "]"
    | p::r  -> printPersonne p; print_string "; "; printPopulationAux r
;;
let printPopulation pop =
  print_string "[";
  printPopulationAux pop;
  print_string "\n"
;;

(* affichage d'un lignage *)
let rec printLignageAux lignage =
  match lignage with
    | []    -> print_string "; "
    | n::[] -> print_string n; print_string "]"
    | n::r  -> print_string n; print_string "; "; printLignageAux r
;;
let printLignage lignage =
  print_string "[";
  printLignageAux lignage
;;

(* affichage d'une liste des lignages *)
let rec printListeDesLignagesAux liste =
  match liste with
    | []    -> print_string "\n"
    | l::[] -> printLignage l; print_string "]"
    | l::r  -> printLignage l; print_string "; "; printListeDesLignagesAux r
;;
let printListeDesLignages liste =
  print_string "[";
  printListeDesLignagesAux liste;
  print_string "\n"
;;


(* LES TESTS DES VOS FONCTIONS : pour utiliser les tests d'une ou plusieurs fonctions, vous devez enlever les commentaires correspondants. *)

print_string "\n==================\n";;
print_string "   TP : FAMILLE";;
print_string "\n==================\n";;


print_string "\n******************\n";;
print_string " TEST : DONNÉES\n";;
print_string "******************\n";;

print_string "Affichage des personnes :\n";;
print_string "p1 = ";;
printPersonne p1;;
print_string "\n";;
print_string "p2 = ";;
printPersonne p2;;
print_string "\n";;
print_string "p3 = ";;
printPersonne p3;;
print_string "\n\n";;

print_string "Affichage des populations :\n";;
print_string "pop1 = ";;
printPopulation pop1;;
print_string "pop2 = ";;
printPopulation pop2;;
print_string "\n";;

print_string "Affichage des listes des lignages :\n";;
print_string "liste_lignages1 = ";;
printListeDesLignages liste_lignages1;;

print_string "\n******************\n";;
print_string " TEST : A_UN_PERE\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((a_un_pere p2 pop1) = false)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((a_un_pere p2 pop2) = true)
then print_string "ok\n"
else print_string "not ok\n"
;;



print_string "\n*************\n";;
print_string " TEST : PERE\n";;
print_string "*************\n";;

print_string "Test1 : "
;; 
if ((pere p2 pop2) = ("Mafo","Ekwikwi"))
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((pere p1 pop2) = ("Se","Mafo"))
then print_string "ok\n"
else print_string "not ok\n"
;;



print_string "\n****************\n";;
print_string " TEST : LIGNAGE \n";;
print_string "****************\n";;

print_string "Test1 : "
;;
(*
printLignage (lignage  p1 [])
;;
*)
if ((lignage  p1 []) = ["Etogo"; "Se"])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;;
if ((lignage  p1 pop1) = ["Etogo"; "Se"; "Mafo"])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((lignage  p1 pop2) = ["Etogo"; "Se"; "Mafo"; "Ekwikwi"; "Zogo"; "Mboyen"])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test4 : "
;; 
if ((lignage  p2 []) = ["Se"; "Mafo"])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test5 : "
;; 
if ((lignage  p2 pop1) = ["Se"; "Mafo"])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test6 : "
;; 
if ((lignage p2 pop2) = ["Se"; "Mafo"; "Ekwikwi"; "Zogo"; "Mboyen"])
then print_string "ok\n"
else print_string "not ok\n"
;;

print_string "\n**************\n";;
print_string " TEST : DERNIER \n";;
print_string "**************\n";;

print_string "Test1 : ";;
let l = [1;2;3;4;5;6;7;8;9;0] in
if ((dernier l) = 0)
then print_string "ok\n"
else print_string "not ok\n";;


print_string "\n**************\n";;
print_string " TEST : FRERE \n";;
print_string "**************\n";;

print_string "Test1 : "
;;
(*
printLignage (lignage p1 pop1);;
printLignage (lignage p2 pop1);;
*)
if ((frere p1 p2 pop1) = true)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((frere p1 p2 pop2) = true)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((frere p1 p3 pop1) = false)
then print_string "ok\n"
else print_string "not ok\n"
;;



print_string "\n**********************\n";;
print_string " TEST : LISTE_LIGNAGES \n";;
print_string "************************\n";;

print_string "Test1 : "
;; 
if ((liste_lignages []) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((liste_lignages pop1) = [["Se"; "Mafo"]; ["Togo"; "Bogo"]; ["Zogo"; "Mboyen"]])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((liste_lignages pop2) = [["Etogo"; "Se"; "Mafo"; "Ekwikwi"; "Zogo"; "Mboyen"];["Se"; "Mafo"; "Ekwikwi"; "Zogo"; "Mboyen"]; ["Mafo"; "Ekwikwi"; "Zogo"; "Mboyen"];["Ekwikwi"; "Zogo"; "Mboyen"]; ["Zogo"; "Mboyen"]])
then print_string "ok\n"
else print_string "not ok\n"
;;


(*
print_string "\n***********************\n";;
print_string " TEST : LISTE_ANCETRES \n";;
print_string "***********************\n";;

print_string "Test1 : "
;; 
if ((liste_ancetres []) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((liste_ancetres liste_lignages1) = ["Zogo"; "Zogo"; "Zogo"; "Zogo"; "Zogo"])
then print_string "ok\n"
else print_string "not ok\n"
;;
*)

(*
print_string "\n*********************\n";;
print_string " TEST : LISTE_DOUBLE \n";;
print_string "*********************\n";;

print_string "Test1 : "
;; 
if ((sans_double []) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;;
if ((sans_double (liste_ancetres liste_lignages1)) = ["Zogo"])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((sans_double [1;1;1;2;3;4;2;2;3;4;4]) = [1;2;3;4])
then print_string "ok\n"
else print_string "not ok\n"
;;
*)

(*
print_string "\n****************\n";;
print_string " TEST : DERNIER \n";;
print_string "****************\n";;

print_string "Test1 : "
;; 
if ((dernier pop1) = ("Zogo", "Mboyen"))
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((dernier pop2) = ("Zogo", "Mboyen"))
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
print_string "if you see FAILURE then ok\n"
;;
dernier []
;; 
*)

