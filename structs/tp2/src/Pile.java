public class Pile {
    private Liste sommet;

    public Pile(){
        this.sommet = null;
    }    

    public boolean estVide(){
        return this.sommet == null;
    }

    public void empiler(int element){
        this.sommet = new Liste(element, this.sommet);
    }

    public int depiler() throws IllegalStateException{
        if(this.estVide()){
            throw new IllegalStateException("La pile est vide");
        }

        int temp = this.sommet.getContenu();
        this.sommet = this.sommet.getSuivant();
        return temp;
    }

    public void afficherPile(){
        Liste temps=this.sommet;
        while (temps != null){
            System.out.println(temps.getContenu());
            temps = temps.getSuivant();
        }
    }
}
