import java.util.ArrayList;

public class Graph {
    private ArrayList<Sommet> sommets = new ArrayList<Sommet>();

    public Graph(ArrayList<Sommet> sommets) {
        this.sommets = sommets;
    }
    public Graph(){}

    public Sommet chercherSommet(String etiquette) {
        for (Sommet sommet : sommets) {
            if (sommet.getEtiquette().equals(etiquette)) {
                return sommet;
            }
        }
        return null;
    }

    public Sommet obtenirSommet(String etiquette) {
        Sommet sommet = chercherSommet(etiquette);
        if (sommet == null) {
            sommet = new Sommet(etiquette);
            sommets.add(sommet);
        }
        return sommet;
    }

    public boolean ajouterArette(Sommet sommet1, Sommet sommet2, int poids){
        if (!(sommet1.estVoisin(sommet2)&&sommet2.estVoisin(sommet1))) {
            obtenirSommet(sommet1.getEtiquette()).ajouterVoisin(obtenirSommet(sommet2.getEtiquette()), poids);
            obtenirSommet(sommet2.getEtiquette()).ajouterVoisin(obtenirSommet(sommet1.getEtiquette()), poids);
            return true;
        }
        return false;      

    }

    public boolean ajouterArete(String etiquette1, String etiquette2, int poids){
        Sommet sommet1 = obtenirSommet(etiquette1);
        Sommet sommet2 = obtenirSommet(etiquette2);
        return ajouterArette(sommet1, sommet2, poids);
    }

    public void chemins(String depart, String arrivee){
        Sommet sommetDepart=chercherSommet(depart);
        Sommet sommetArrivee=chercherSommet(arrivee);
        for(Voisin voisin:sommetDepart.getVoisins()){
            if(voisin.getSommet().equals(sommetArrivee)){
                System.out.println("Chemin trouvé de "+depart+" à "+arrivee+" de poids "+voisin.getPoids());
                return;
            }
        }
    }
}
