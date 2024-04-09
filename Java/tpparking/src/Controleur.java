public class Controleur {

    private FeuBicolore feu;
    private Barriere barriereEntree;
    private Barriere barriereSortie;
    private Parking parking;

    public Controleur(int tailleParking) {
        this.parking = new Parking(tailleParking);
        this.feu = new FeuBicolore();
        this.barriereEntree = new Barriere("Entree");
        this.barriereSortie = new Barriere("Sortie");
        setCouleurfeu();
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

    public void closeBarriereEntree() {
        barriereEntree.fermer();
    }

    public void openBarriereSortie() {
        barriereSortie.ouvrir();
    }

    public void closeBarriereSortie() {
        barriereSortie.fermer();
    }

    public void setCouleurfeu(){
        if(getPlacesLibres()==0){
            feu.setCouleur(Couleur.ROUGE);
        } else {
            feu.setCouleur(Couleur.VERT);
        }
    }

    public void entrerParking() {
        if(feu.getCouleur() == Couleur.VERT){
            openBarriereEntree();
            parking.addVoiture();
            closeBarriereEntree();
        } else {
            System.out.println("parking plein");
        }
    }

    public void sortirParking() {
        if (parking.getPlacesLibres() != parking.getTaille()){
            openBarriereSortie();
            parking.removeVoiture();
            closeBarriereSortie();    
        } else {
            parking.removeVoiture();
        }
    }
    
}
