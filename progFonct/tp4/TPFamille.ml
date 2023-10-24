(* Question 1 : Création des données *)

let pop= [("Etogo","Se");("Se","Mafo");("Mafo","Ekwikwi");("Ekwikwi","Zogo");("Zogo","Mboyen")];;
let p1 =("Etogo","Se") ;;
let p2 = ("Se","Mafo");;
let p3 = ("Togo","Bogo");;

let pop1= [p2;p3;("Zogo","Mboyen")];;
let pop2 = [("Etogo","Se");p2; ("Mafo","Ekwikwi");("Ekwikwi","Zogo");("Zogo","Mboyen")];;

let liste_lignages1= [["Etogo"; "Se"; "Mafo"; "Ekwikwi"; "Zogo"];
  ["Se"; "Mafo"; "Ekwikwi"; "Zogo"];
  ["Mafo"; "Ekwikwi"; "Zogo"];
  ["Ekwikwi"; "Zogo"];["Zogo"]] ;;

(* Question 2 : Prédicat "a_un_pere" *)

let rec a_un_pere personne population =
  match population with 
  | [] -> false
  | (p,_)::_ when p=snd (personne) -> true
  | (_,_)::r -> a_un_pere personne r
;; 

(* Question 3 : Fonction "pere" *)


let rec pere personne population =
  match population with 
  | [] -> failwith "La population ne contient pas de pere."
  | hd::tl when fst (hd)=snd (personne) ->hd
  | (_,_)::r -> pere personne r
;;


(* Question 4 : Fonction "lignage" *)

let rec lignage_aux personne pop res = 
  if (a_un_pere personne pop) then 

    lignage_aux (pere personne pop) pop (List.append res [snd (personne)])
  else 
    List.append res [snd (personne)]
;;

let lignage personne population = 
  lignage_aux personne population [fst (personne)]
;;


(* Question 5 : Fonction "dernier" *)


let dernier l =
  if l=[] then failwith "La liste est vide."
  else List.hd (List.rev l)
;;


(* Question 6 : Prédicat "frere" *)


let frere p1 p2 population = 
  let l1 = lignage p1 population in
  let l2 = lignage p2 population in
  dernier l1 = dernier l2
;;


(* Question 7 : Fonction "liste_lignages" *)

(*
let liste_lignages population = 
;;
*)


(* Question 8 : Fonction "liste_ancetres" *)

(*
let liste_ancetres liste_lignage = 
;;
*)


(* Question 9 : Fonction "sans_double" *)

(*
let rec sans_double l =
;;
*)

(* Question 10 : Retour vers les questions *)

(* Déterminer si deux personnes p1 et p2 sont « frères de lignage » dans la population pop1. A noter que p1, p2 et pop1 ont été définies dans la question 1. *)


(* Combien de lignages avons-nous pour les populations pop1 et pop2. A noter que pop1 et pop2 ont été définies dans la question 1. *)

