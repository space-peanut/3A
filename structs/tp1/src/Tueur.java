public class Tueur {
    private String name;
    private Tueur contract;

    public Tueur(String name) {
        this.name = name;
        this.contract = null;
    }

    public Tueur(String name, Tueur contract) {
        this.name = name;
        this.contract = contract;
    }
    
    public String getName() {
        return name;
    }

    public Tueur getContract() {
        return contract;
    }

    public void setContract(Tueur T) {
        this.contract = T;
    }

    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return "name : \u001B[34m" + this.name + "\n\u001B[37;1mcontract : \u001B[31m" + this.contract.getName() + "\u001B[37;1m";
    }
}
