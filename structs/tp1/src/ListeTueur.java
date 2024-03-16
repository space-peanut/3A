import java.util.List;

public class ListeTueur {
    private Tueur head;
    private int size;

    public ListeTueur() {
        this.head = null;
        this.size = 0;
    }

    public ListeTueur(Tueur head) {
        this.head = head;
        this.findSize();
    }

    public int getSize() {
        return size;
    }

    private void findSize() {
        Tueur current = head;
        int n=1;
        while (current.getContract() != this.head) {
            current = current.getContract();
            n++;
        }
        this.size = n;
    }

    public void insert(String name){
        if(this.size==0){
            this.head=new Tueur(name);
            this.head.setContract(this.head);
            size++;
        }
        else{
            int randomIndex = (int) Math.floor(Math.random()*size);
            ;
            Tueur current = head;
            for (int i = 0; i < randomIndex; i++) {
                current = current.getContract();
            }
            Tueur newTueur = new Tueur(name);
            newTueur.setContract(current.getContract());
            current.setContract(newTueur);
            this.size++;

        }
    }

    public void insertList(ListeTueur liste){
        if(this.size==0){
            this.head=liste.head;
            this.size=liste.size;
        }
        else{
            int randomIndex = (int) Math.floor(Math.random()*size);
            ;
            Tueur current = head;
            for (int i = 0; i < randomIndex; i++) {
                current = current.getContract();
            }
            Tueur temp = current.getContract();
            current.setContract(liste.head);
            for(int i=0;i<liste.size;i++){
                current = current.getContract();
            }
            current.setContract(temp);
            this.size+=liste.size;
        }
    }

    public void delete(){
        if(this.size==0){
            System.err.println("Pas de tueur a supprimer ...");
            return;
        }
        if(this.size==1){
            this.head=null;
            this.size--;
            return;
        }
        int randomIndex = (int) Math.floor(Math.random()*size);
        Tueur current = head;
        for (int i = 0; i < randomIndex; i++) {
            current = current.getContract();
        }
        current.setContract(current.getContract().getContract());
        this.size--;
    }
    @Override
    public String toString() {
        if (this.size == 0) {
            return "\u001B[32m Aucun tueur en ville ...\n\u001B[37;1m";
        }
        String result = "";
        Tueur current=head;
        for(int i=0; i<this.size;i++){
            result += current.getName() + "\n";
            current = current.getContract();
        }
        return result;
    }
}
