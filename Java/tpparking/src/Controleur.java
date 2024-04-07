public class Controleur {

    private FeuBicolore feu;
    private Barriere barriereEntree;
    private Barriere barriereSortie;
    private Parking parking;

    public Controleur(int tailleParking) {
        this.feu = new FeuBicolore();
        this.barriereEntree = new Barriere("Entree");
        this.barriereSortie = new Barriere("Sortie");
        this.parking = new Parking(tailleParking);
    }

    public Couleur getCouleurFeu() {
        return feu.getCouleur();
    }

    public boolean isBarriereEntreeOuverte() {
        return barriereEntree.isOuverte();
    }

    public boolean isBarriereSortieOuverte() {
        return barriereSortie.isOuverte();
    }

    public int getTailleParking() {
        return parking.getTaille();
    }

    public int getPlacesLibres() {
        return parking.getPlacesLibres();
    }

    public void openBarriereEntree() {
        if(feu.getCouleur() == Couleur.VERT){
            barriereEntree.ouvrir();
        } else {
            System.out.println("parking plein");
        }
    }

    public void setCouleurfeu(){
        if(getPlacesLibres()==0){
            feu.setCouleur(Couleur.ROUGE);
        } else {
            feu.setCouleur(Couleur.VERT);
        }
    }

    
    
}
