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
		if (a == null) {
			return a;
		}
		if (a.getValeur() == x) {
			return supprimerRacine(a);
		}
		arbre b = a;
		while (b.getValeur() != x) {
			if (x < b.getValeur()) {
				b = b.getFilsGauche();
			} else {
				b = b.getFilsDroit();
			}			
		}
		//feuille
		if (b.getFilsGauche() == null && b.getFilsDroit() == null) {
			b = null;
			return a;
		} 

		//1 fils
		if (b.getFilsDroit()!=null && b.getFilsGauche()==null) {
			b = b.getFilsDroit();
			return a;			
		}
		if (b.getFilsGauche()!=null && b.getFilsDroit()==null) {
			b = b.getFilsGauche();
			return a;			
		}

		//2 fils
		b=supprimerRacine(b);
		return a;
	}
	
	static arbre supprimerRacine(arbre a) {
		arbre d = a.getFilsDroit();
		dernierDescendant(d).setFilsGauche(a.getFilsGauche());
		return d;
	}
	
	static arbre dernierDescendant(arbre a) {
		if (a.getFilsGauche() == null) {
			return a;
		}
		return dernierDescendant(a.getFilsGauche());

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

		arbre a2=a;
		System.out.println("Suppression racine");
		System.out.println(supprimerRacine(a2));
		
		System.out.println("Suppression de 11");
		a=supprimer(11, a);
		System.out.println(a);
		
		// System.out.println("Suppression de 3");
		
		// System.out.print(supprimer(11,a));
	}
	
}
