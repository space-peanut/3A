open Mobile_sig

module Mobile : Mobile_sig = struct

        (*** Exercice 1, Question 1 ***)
	type mobile = 
		|Point of float
		|Barre of float * float * mobile * mobile

	(* affichage d'un mobile *)
	(* 
	let rec print_mobile_aux = function
   		| Point (p) -> "(Point " ^ (string_of_float p) ^ ")"
   		| Barre (l, r, mg, md) -> "(Barre (" ^ (string_of_float l) ^ "," ^ 
						       (string_of_float r) ^ "," ^ 
						       (print_mobile_aux mg) ^ "," ^ 
						       (print_mobile_aux md) ^ "))"

	let print_mobile mob = 
		let str = (print_mobile_aux mob) ^ "\n" in print_string str
	*)
    
        (*** Exercice 1, Question 2 ***)
	let ratio1 pmg pmd = pmd /. (pmg +. pmd)

        (*** Exercice 2, Question 1 ***)
	let point poids = Point (poids)

        (*** Exercice 2, Question 2 ***)
	(*let barre longueur ratio mg md = *)
	
        (*** Exercice 2, Question 4 ***)
	(*let rec poids = *) 
        
        (*** Exercice 2, Question 5 ***)
	(*let ratio2 mg md = *) 

        (*** Exercice 2, Question 6 ***)
	(*let construit_mobile longeur mobile1 mobile2 = *)

        (*** Exercice 3, Question 1 ***)
	(*let equilibre = *)

	(*let equilibre_bis = *)

end;;
