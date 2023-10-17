open Mobile;;
print_string "\n======================\n";;
print_string "   TP : MOBILE";;
print_string "\n======================\n";;


(***** Exercice 1, Question 2 *****)
(*

*)


(*** Exercice 1, Question 3

Exemple du mobile : 
-------------------
une barre de 210 ul à laquelle sont suspendus
	(à droite) une barre 150 ul à laquelle sont suspendus
		(à droite) un objet de 30 g  et 
		(à gauche) un objet de 50 g.
	(à gauche) un objet de 100 g.

	       210ul
		 |
	     ---------
	    |         |
	    |       150ul
 	    |         |
	   100g   ---------
		 |	   |
                50g       30g 

Mobile m1 :
-----------
une barre de 200 ul à laquelle sont suspendus
	(à droite) un objet de 300 g
	(à gauche) une barre de 150 ul à laquelle sont suspendus
		(à droite) un objet de 250 g
		(à gauche) une barre 100 ul à laquelle sont suspendus 
			(à droite) un objet de 200 g  et 
			(à gauche) un objet de 300 g.

					    57.14|142.86
				  --------------------
			   |										|
       50|100								 300
		---------------	
   |							 |							
 40|60						250
----------
|				  |
300			200
***)

	
(*** Exercice 1, Question 4 ***)

let r1 = Mobile.ratio1 300. 200. ;;
let r2 = Mobile.ratio1 (300. +. 200.) 250. ;;
let r3 = Mobile.ratio1 ((300. +. 200.) +. 250.) 300. ;;
print_string ("Ratio 1 : ");;
print_float r1;;
print_string ("\n");;
print_string ("Ratio 2 : ");;
print_float r2;;
print_string ("\n");;
print_string ("Ratio 3 : ");;
print_float r3;;
print_string ("\n");;



(*** Exercice 2, Question 3 ***)
(*
let m1 = 
;;
*)
(*
print_string "Mobile m1 : "
;;
Mobile.print_mobile m1
;;
*)


(*** Exercice 2, Question 7 ***)
(*
let m1_bis = 
;;
*)
(*
print_string "Mobile m1_bis : "
;;
Mobile.print_mobile m1_bis
;;
print_string "\n"
;;
*)

(*
if(...) 
then print_string "Les mobiles m1 et m1_bis sont identiques.\n\n"
else print_string "Les mobiles m1 et m1_bis ne sont pas identiques.\n\n"
;;
*)


(*** Exercice 3, Question 2 ***)
(*
let m2 = 
;;
*)
(*
print_string "Mobile m2 : "
;;
Mobile.print_mobile m2
;;
print_string "\n"
;;
*)

(*
if(...) 
then print_string "(equilibre) Le mobile m2 est équilibré.\n\n"
else print_string "(equilibre) Le mobile m2 n'est pas équilibré.\n\n"
;;

if(...) 
then print_string "(equilibre_bis) Le mobile m2 est équilibré.\n\n"
else print_string "(equilibre_bis) Le mobile m2 n'est pas équilibré.\n\n"
;;
*)

