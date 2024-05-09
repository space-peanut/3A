import java.util.LinkedList;
import java.util.Queue;

public class arbreBR {

	public static arbre inserer(int v, arbre a) {
		if (a == null) {
			return new arbre(v, null, null);
		} else {
			if (v < a.getValeur()) {
				a.setFilsGauche(inserer(v, a.getFilsGauche()));
			}else if (v == a.getValeur()) {
				System.out.println("La valeur " + v + " est déjà présente dans l'arbre");
			}
			 else {
				a.setFilsDroit(inserer(v, a.getFilsDroit()));
			}
			return a;
		}
	}

	static void parcoursPrefixe(arbre a) {
		
		System.out.print("("+a.getValeur()+" ");
		if (a.getFilsGauche() != null) {
			parcoursPrefixe(a.getFilsGauche());
		}
		if (a.getFilsDroit() != null) {
			parcoursPrefixe(a.getFilsDroit());
		}
		System.out.print(")");
	}

	static void parcoursInfixe(arbre a) {
		System.err.print("(");
		if (a.getFilsGauche() != null) {
			parcoursInfixe(a.getFilsGauche());
		}
		System.out.print(" "+a.getValeur()+" ");
		if (a.getFilsDroit() != null) {
			parcoursInfixe(a.getFilsDroit());
		}
		System.out.print(")");
	}

	static void parcoursPostfixe(arbre a) {
		System.out.print("(");
		if (a.getFilsGauche() != null) {
			parcoursPostfixe(a.getFilsGauche());
		}
		if (a.getFilsDroit() != null) {
			parcoursPostfixe(a.getFilsDroit());
		}
		System.out.print(a.getValeur()+") ");
	}

	static void parcoursEnLargeur(arbre a) {
		Queue<arbre> q = new LinkedList<arbre>();
		q.add(a);
		while (!q.isEmpty()){
			arbre x=q.poll();
			System.out.print(x.getValeur()+" ");
			if (x.getFilsGauche()!=null){
				q.add(x.getFilsGauche());
			}
			if (x.getFilsDroit()!=null){
				q.add(x.getFilsDroit());
			}
		}
		
	}

	static arbre supprimer(int x, arbre a) {
		if(a.getValeur()==x && a.getFilsGauche()== null && a.getFilsDroit()==null){
            a = null;
            return a;
        }

        //si y'a un fils
        if(a.getValeur()==x && a.getFilsGauche()== null && a.getFilsDroit()!=null){
            a.setValeur(a.getFilsGauche().getValeur());
            return a;
        }
        if(a.getValeur()==x && a.getFilsGauche()!= null && a.getFilsDroit()==null){
            a.setValeur(a.getFilsDroit().getValeur());
            return a;
        }

        //Si y'a deux fils


        // Parcours du sous-arbre gauche
        supprimer(x,a.getFilsGauche());

        // Parcours du sous-arbre droit
        supprimer(x,a.getFilsDroit());
        return a;
	}

	static arbre supprimerRacine(arbre a) {
		/* A REMPLIR */
		return null;
	}

	static arbre dernierDescendant(arbre a) {
		/* A REMPLIR */
		return null;
	}

	public static void main(String[] args) {
		arbre a = null;

		for (int i = 0; i < args.length; i++) {
			a = inserer(Integer.parseInt(args[i]), a);
		}
		System.out.print(a);

		System.out.print("Parcours prefixe : ");
		parcoursPrefixe(a);
		System.out.println();

		System.out.print("Parcours infixe :  ");
		parcoursInfixe(a);
		System.out.println();

		System.out.print("Parcours postfixe :  ");
		parcoursPostfixe(a);
		System.out.println();

		System.out.print("Parcours en largeur: ");
		parcoursEnLargeur(a);
		System.out.println();

		System.out.println("Suppression de 8");
		supprimer(8, a);
		System.out.println(a);

		System.out.println("Suppression de 3");
		
		// System.out.print(supprimer(11,a));
	}

}
