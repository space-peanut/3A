public class Voisin {
    private Sommet sommet;
    private int poids;

    public Voisin(Sommet sommet, int poids) {
        this.sommet = sommet;
        this.poids = poids;
    }

    public Sommet getSommet() {
        return sommet;
    }

    public void setSommet(Sommet sommet) {
        this.sommet = sommet;
    }

    public int getPoids() {
        return poids;
    }

    public void setPoids(int poids) {
        this.poids = poids;
    }
}
