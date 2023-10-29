open TPToursHanoi;;

(* LES TESTS DES VOS FONCTIONS : pour utiliser les tests d'une ou plusieurs fonctions, vous devez enlever les commentaires correspondants. *)

print_string "\n======================\n";;
print_string "   TP : TOURS HANOI";;
print_string "\n======================\n";;



print_string "\n******************\n";;
print_string " TEST : CHECK\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((check tour1) = true)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((check tour2) = true)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((check tour3) = true)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test4 : "
;; 
if ((check tour3bis) = false)
then print_string "ok\n"
else print_string "not ok\n"
;;




print_string "\n******************\n";;
print_string " TEST : MAKE\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((make tour1 tour2 tour3) = jeu1)
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((make tour1 tour2 tour3) <> jeu2)
then print_string "ok\n"
else print_string "not ok\n"
;;
(* Le Test3 de la fonction "make" doit être commenté dès que vous avez terminé de tester la fonction "make". *)

print_string "Test3 : "
;; 
try
  ignore (make tour1 tour2 tour3bis);
  print_string "not ok\n"
with
  | _ -> print_string "ok\n"
;;


print_string "\n******************\n";;
print_string " TEST : MAKE_LIST\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((make_list (-5)) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((make_list 0) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((make_list 5) = [1;2;3;4;5])
then print_string "ok\n"
else print_string "not ok\n"
;;




print_string "\n********************\n";;
print_string " TEST : COMBINE_AUX\n";;
print_string "********************\n";;

print_string "Test1 : "
;; 
if ((combine_aux [] [] [] []) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((combine_aux [1] [2] [3] []) = [(Some 1, Some 2, Some 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((combine_aux [1; 4] [2] [3; 5; 6] []) = [(None, None, Some 6); (Some 4, None, Some 5); (Some 1, Some 2, Some 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;




print_string "\n******************\n";;
print_string " TEST : COMBINE\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((combine [] [] []) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((combine [1] [2] [3]) = [(Some 1, Some 2, Some 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((combine [1; 4] [2] [3; 5; 6]) = [(None, None, Some 3); (Some 1, None, Some 5); (Some 4, Some 2, Some 6)])
then print_string "ok\n"
else print_string "not ok\n"
;;




print_string "\n****************************\n";;
print_string " TEST : PRINT_OPTIONS_LIST\n";;
print_string "****************************\n";;

print_string "Test1 (liste vide) :\n"
;;
print_options_list []
;;
print_string "\n"
;;
print_string "Test2 :\n"
;;
print_options_list [(Some 4, Some 2, Some 6)]
;;
print_string "\n"
;;
print_string "Test3 :\n"
;;
print_options_list [(None,   None,   Some 3); 
            	   (Some 1, None,   Some 5); 
            	   (Some 4, Some 2, Some 6)]
;;




print_string "\n****************************\n";;
print_string " TEST : PRINT_HANOI\n";;
print_string "****************************\n";;

print_string "Test1 (ce jeu est vide) : "
;;
print_hanoi jeuVide
;;
print_string "\n"
;;
print_string "Test2 : "
;;
print_hanoi jeu1
;;
print_string "\n"
;;
print_string "Test3 (la configuration du jeu est erronée) : "
;;
print_hanoi jeu2
;;
print_string "\n"
;;
print_string "Test4 : "
;; 
print_hanoi jeu3
;;
print_string "\n"
;;




print_string "\n****************************\n";;
print_string " TEST : PRINT_HANOI_LIST\n";;
print_string "****************************\n";;

print_string "Test1 (liste vide) : "
;;
print_hanoi_list []
;;
print_string "\n"
;;
print_string "Test2 : "
;;
print_hanoi_list [jeu1]
;;
print_string "\n"
;;
print_string "Test3 : "
;;
print_hanoi_list [jeu1;jeu3]
;;




print_string "\n******************\n";;
print_string " TEST : PLAY\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((play jeu1 1 2) = {t1 = [4]; t2 = [1; 2]; t3 = [3; 5; 6]})
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((play jeu1 1 3) = {t1 = [4]; t2 = [2]; t3 = [1; 3; 5; 6]})
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((play jeu1 2 3) = {t1 = [1; 4]; t2 = []; t3 = [2; 3; 5; 6]})
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test4 : "
;; 
if ((play jeu1 5 6) = {t1 = [1; 4]; t2 = [2]; t3 = [3; 5; 6]})
then print_string "ok\n"
else print_string "not ok\n"
;;



(*
print_string "\n*********************\n";;
print_string " TEST : COMPUTE_AUX\n";;
print_string "*********************\n";;

print_string "Test1 : "
;; 
if ((compute_aux 0 1 3 2 []) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((compute_aux 1 1 3 2 []) = [(1, 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((compute_aux 4 1 3 2 []) = [(1, 2); (1, 3); (2, 3); (1, 2); (3, 1); (3, 2); (1, 2); (1, 3); (2, 3);
 (2, 1); (3, 1); (2, 3); (1, 2); (1, 3); (2, 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test4 : "
;; 
if ((compute_aux 5 1 3 2 []) = [(1, 3); (1, 2); (3, 2); (1, 3); (2, 1); (2, 3); (1, 3); (1, 2); (3, 2);
 (3, 1); (2, 1); (3, 2); (1, 3); (1, 2); (3, 2); (1, 3); (2, 1); (2, 3);
 (1, 3); (2, 1); (3, 2); (3, 1); (2, 1); (2, 3); (1, 3); (1, 2); (3, 2);
 (1, 3); (2, 1); (2, 3); (1, 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
*)


(*
print_string "\n******************\n";;
print_string " TEST : COMPUTE\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((compute 0 1 3 2) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((compute 1 1 3 2) = [(1, 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((compute 4 1 3 2) = [(1, 2); (1, 3); (2, 3); (1, 2); (3, 1); (3, 2); (1, 2); (1, 3); (2, 3);
 (2, 1); (3, 1); (2, 3); (1, 2); (1, 3); (2, 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test4 : "
;; 
if ((compute 5 1 3 2) = [(1, 3); (1, 2); (3, 2); (1, 3); (2, 1); (2, 3); (1, 3); (1, 2); (3, 2);
 (3, 1); (2, 1); (3, 2); (1, 3); (1, 2); (3, 2); (1, 3); (2, 1); (2, 3);
 (1, 3); (2, 1); (3, 2); (3, 1); (2, 1); (2, 3); (1, 3); (1, 2); (3, 2);
 (1, 3); (2, 1); (2, 3); (1, 3)])
then print_string "ok\n"
else print_string "not ok\n"
;;
*)


(*
print_string "\n******************\n";;
print_string " TEST : APPLY\n";;
print_string "******************\n";;

print_string "Test1 : "
;; 
if ((apply (make [] [] []) (compute 0 1 3 2)) = [])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test2 : "
;; 
if ((apply (make [1;2] [] []) (compute 2 1 3 2)) = [{t1 = []; t2 = []; t3 = [1; 2]}; {t1 = []; t2 = [1]; t3 = [2]};
 {t1 = [2]; t2 = [1]; t3 = []}])
then print_string "ok\n"
else print_string "not ok\n"
;;
print_string "Test3 : "
;; 
if ((apply (make [1;2;3;4;5] [] []) (compute 5 1 3 2)) = [{t1 = []; t2 = []; t3 = [1; 2; 3; 4; 5]};
 {t1 = [1]; t2 = []; t3 = [2; 3; 4; 5]};
 {t1 = [1]; t2 = [2]; t3 = [3; 4; 5]};
 {t1 = []; t2 = [1; 2]; t3 = [3; 4; 5]};
 {t1 = [3]; t2 = [1; 2]; t3 = [4; 5]}; {t1 = [3]; t2 = [2]; t3 = [1; 4; 5]};
 {t1 = [2; 3]; t2 = []; t3 = [1; 4; 5]};
 {t1 = [1; 2; 3]; t2 = []; t3 = [4; 5]};
 {t1 = [1; 2; 3]; t2 = [4]; t3 = [5]}; {t1 = [2; 3]; t2 = [1; 4]; t3 = [5]};
 {t1 = [3]; t2 = [1; 4]; t3 = [2; 5]}; {t1 = [3]; t2 = [4]; t3 = [1; 2; 5]};
 {t1 = []; t2 = [3; 4]; t3 = [1; 2; 5]};
 {t1 = [1]; t2 = [3; 4]; t3 = [2; 5]}; {t1 = [1]; t2 = [2; 3; 4]; t3 = [5]};
 {t1 = []; t2 = [1; 2; 3; 4]; t3 = [5]};
 {t1 = [5]; t2 = [1; 2; 3; 4]; t3 = []};
 {t1 = [5]; t2 = [2; 3; 4]; t3 = [1]}; {t1 = [2; 5]; t2 = [3; 4]; t3 = [1]};
 {t1 = [1; 2; 5]; t2 = [3; 4]; t3 = []};
 {t1 = [1; 2; 5]; t2 = [4]; t3 = [3]}; {t1 = [2; 5]; t2 = [1; 4]; t3 = [3]};
 {t1 = [5]; t2 = [1; 4]; t3 = [2; 3]}; {t1 = [5]; t2 = [4]; t3 = [1; 2; 3]};
 {t1 = [4; 5]; t2 = []; t3 = [1; 2; 3]};
 {t1 = [1; 4; 5]; t2 = []; t3 = [2; 3]};
 {t1 = [1; 4; 5]; t2 = [2]; t3 = [3]}; {t1 = [4; 5]; t2 = [1; 2]; t3 = [3]};
 {t1 = [3; 4; 5]; t2 = [1; 2]; t3 = []};
 {t1 = [3; 4; 5]; t2 = [2]; t3 = [1]};
 {t1 = [2; 3; 4; 5]; t2 = []; t3 = [1]}])
then print_string "ok\n"
else print_string "not ok\n"
;;
*)


(*
print_string "\n****************************\n";;
print_string " TEST : HANOI_TOWERS\n";;
print_string "****************************\n";;

print_string "Test1 (jeu vide) : "
;;
hanoi_towers 0
;;
print_string "\n"
;;
print_string "Test2 : "
;;
hanoi_towers 2
;;
print_string "\n"
;;
print_string "Test3 : "
;;
hanoi_towers 5
;;
*)