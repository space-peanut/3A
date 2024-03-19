public class Barriere {
    private final String NOM;
    private boolean ouverte = false;

    public Barriere(String nom) {
        this.NOM = nom;
    }

    protected boolean isOuverte() {
        return ouverte;
    }

    protected void ouvrir() {
        ouverte = true;
        System.out.println("La barrière " + NOM + " est " + (ouverte ? "ouverte" : "fermée"));
    }

    protected void fermer() {
        ouverte = false;
        System.out.println("La barrière " + NOM + " est " + (ouverte ? "ouverte" : "fermée"));
    }
}
