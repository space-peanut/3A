public class Liste {
    private int contenu;
    private Liste suivant;

    public Liste(int val){
        this.contenu = val;
        this.suivant = null;
    }

    public Liste(int val, Liste st){
        this.contenu = val;
        this.suivant = st;
    }

    public int getContenu() {
        return contenu;
    }

    public Liste getSuivant() {
        return suivant;
    }

    
}
