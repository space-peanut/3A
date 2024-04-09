enum Couleur { 
    ROUGE, VERT // couleur possible pour un feu bicolore
}

public class FeuBicolore {
    private Couleur couleur; // couleur du feu
    
    /**
     * Cree un feu bicolore
     * @post getCouleur() == Couleur.ROUGE
     */
    
    public FeuBicolore() {
        assert this.couleur == null;
        couleur = Couleur.ROUGE; 
        assert this.couleur == Couleur.ROUGE;
    }

    

    /**
     * Change la couleur du feu
     * @return la couleru du feu
     * @pre this.couleur == Couleur.ROUGE || this.couleur == Couleur.VERT
     * @post getCouleur() == this.couleur
     */
    protected Couleur getCouleur() { // permet de connaitre la couleur du feu
        return couleur; 
    }

    /**
     * Change la couleur du feu
     * @param couleur la nouvelle couleur du feu
     * @pre couleur == Couleur.ROUGE || couleur == Couleur.VERT
     * @post getCouleur() == couleur
     */
    protected void setCouleur(Couleur couleur) {
        this.couleur = couleur;
    }


}
