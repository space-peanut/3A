public class Parking {
    private final int taille;
    private int placesLibres;

    public Parking(int taille) {
        this.taille = taille;
        this.placesLibres = taille;
    }

    protected int getPlacesLibres() {
        return placesLibres;
    }

    protected int getTaille() {
        return taille;
    }

    protected void addVoiture() {
        if (placesLibres > 0) {
            placesLibres--;
            System.out.println("Une voiture est rentrée dans le parking");
        } else {
            System.out.println("Le parking est plein");
        }

    protected void removeVoiture() {
        if (placesLibres < taille) {
            placesLibres++;
            System.out.println("Une voiture est sortie du parking");
        } else {
            System.out.println("Le parking est vide");
        }

    }
}
