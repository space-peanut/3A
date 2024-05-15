import java.util.ArrayList;
import java.util.Iterator;

public class Sommet {
    private String etiquette;
    private ArrayList<Voisin> voisins=new ArrayList<Voisin>();

    public Sommet(String etiquette) {
        this.etiquette = etiquette;
    }

    public boolean estVoisin(Sommet sommet) {
        for (Voisin voisin : voisins) {
            if (voisin.getSommet() == sommet) {
                return true;
            }
        }
        return false;
    }

    public void ajouterVoisin(Sommet sommet, int poids){
        if (!estVoisin(sommet)) {
            voisins.add(new Voisin(sommet, poids));
        }
    }

    Iterator<Voisin> voisins(){
        return voisins.iterator();
    }

    @Override
    public boolean equals(Object obj) {
        return obj.getClass().getName().equals(this.getClass().getName()) ? ((Sommet) obj).getEtiquette().equals(this.etiquette) : false;
    }

    public String getEtiquette() {
        return etiquette;
    }
    public ArrayList<Voisin> getVoisins() {
        return voisins;
    }
}
