(***** Exercice 1.1 (préliminaires) *****)

(* Question 1 *)

type hanoi = {
  t1 : int list;
  t2 : int list;
  t3 : int list;
}
;;


(* Question 2 *)

let tour1 = [1;4];; 
let tour2 = [2] ;; 
let tour3 = [3;5;6] ;;
let tour3bis = [5;3;6] ;;
let jeu1 = {t1=tour1; t2=tour2; t3=tour3 };;
let jeu2 = {t1=tour1 ;t2=tour2; t3=tour3bis };;
let jeu3 = {t1=[1;2;3;4]; t2=[]; t3=[]} ;;
let jeuVide = {t1=[]; t2=[]; t3=[]} ;;

(* Question 3 *)

let rec check t = 
  match t with
  | [] -> true
  | [x] -> true
  | x::y::r -> if x<y then check (y::r) else false
;;


(* Question 4 *)

let make p1 p2 p3 =
  assert (check p1 && check p2 && check p3); 
  {t1=p1; t2=p2; t3=p3}
;;

(* Question 5 *)

let rec make_list n =
  if (n <= 0) then [] else List.append (make_list (n-1)) [n]
;;

(***** Exercice 1.2 (affichage) *****)

(* Question 1 *)
let hd_tl_opt lst = 
   match lst with 
   | []		-> (None, []) 
   | x::l	-> (Some x, l)
;;

let rec combine_aux lst1 lst2 lst3 res =
  let (x1, l1) = hd_tl_opt lst1 in
  let (x2, l2) = hd_tl_opt lst2 in
  let (x3, l3) = hd_tl_opt lst3 in
  if x1 = None && x2 = None && x3 = None 
  then res
  else
    combine_aux l1 l2 l3 ((x1, x2, x3)::res)
;;

let combine lst1 lst2 lst3 =
  combine_aux (List.rev lst1) (List.rev lst2) ( List.rev lst3) []
;;


(* Question 2 *)
let print_option = function
  | None   -> Printf.printf "   "
  | Some i -> Printf.printf "%3i" i
;;


let rec print_options_list lst =
  match lst with
  | [] -> Printf.printf "\n"
  | (o1, o2, o3)::tl ->
    Printf.printf "\n";
      print_option o1;
      Printf.printf " ";
      print_option o2;
      Printf.printf " ";
      print_option o3;
      print_options_list tl
;;

    
(* Question 3 *)

let print_hanoi hanoi = 
  print_options_list (combine hanoi.t1 hanoi.t2 hanoi.t3);
  print_string "============"
;;


(* Question 4 *)

let rec print_hanoi_list hl =
  match hl with
  | [] -> ()
  | h::tl -> print_hanoi h; print_hanoi_list tl
;;

  


(***** Exercice 1.3 (résolution) *****)
(* Question 1 *)
let move ls1 ls2 =
  match ls1 with
  | []       -> ls1, ls2
  | x :: ls1 -> ls1, x :: ls2

(* Attention : la fonction "play" est de type "hanoi -> int -> int -> hanoi". *)

let play h src dst =
  let t1=h.t1 in
  let t2=h.t2 in
  let t3=h.t3 in
  match src, dst with
  | 1, 2 -> let temp1,temp2 = move t1 t2 in make temp1 temp2 t3
  | 1, 3 -> let temp1,temp3 = move t1 t3 in make temp1 t2 temp3
  | 2, 1 -> let temp2,temp1 = move t2 t1 in make temp1 temp2 t3
  | 2, 3 -> let temp2,temp3 = move t2 t3 in make t1 temp2 temp3
  | 3, 1 -> let temp3,temp1 = move t3 t1 in make temp1 t2 temp3
  | 3, 2 -> let temp3,temp2 = move t3 t2 in make t1 temp2 temp3
  | _ -> h
;;



(* Question 2 *)
(* 
let rec compute_aux n src dst aux res =
  if n = 0 
  then 
    res
  else
    (* à la fin on déplace n-1 disques de aux vers dst *) 
    let res1 = compute_aux (n-1) src aux dst res in
    

      (* juste avant ça on déplace 1 disque de src vers dst *) 
      (* avant ça on déplace n-1 disques de src vers aux *) 
;; 
*)

(*
let compute n src aux dst = 
;;
*)


(* Question 3 *)
(*
let rec apply_acc hanoi moves acc =
;;
*)
(*
let apply hanoi moves = 
;;      
*)
		
(* Question 4 *)		
(*
let hanoi_towers n =
;;
*)