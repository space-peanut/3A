public class Calculatrice {
    private Pile calculatrice;

    public void funADD(){
        int a = this.calculatrice.depiler();
        int b = this.calculatrice.depiler();
        this.calculatrice.empiler(a+b);
    }
    public void funSUB(){
        int a = this.calculatrice.depiler();
        int b = this.calculatrice.depiler();
        this.calculatrice.empiler(b-a);
    }

    public void funMUL(){
        int a = this.calculatrice.depiler();
        int b = this.calculatrice.depiler();
        this.calculatrice.empiler(a*b);
    }

    public void funDIV(){
        int a = this.calculatrice.depiler();
        int b = this.calculatrice.depiler();
        this.calculatrice.empiler(b/a);
    }

    public void funDSP(){
        this.calculatrice.afficherPile();
    }

    public static void main(String[] args) {
        Calculatrice c = new Calculatrice();
        c.calculatrice = new Pile();
        for(String element: args){
            try {
                switch(element.toUpperCase()){
                    case "ADD":
                        c.funADD();
                        break;
                    case "SUB":
                        c.funSUB();
                        break;
                    case "MUL":
                        c.funMUL();
                        break;
                    case "DIV":
                        c.funDIV();
                        break;
                    case "DSP":
                        c.funDSP();
                        break;
                    default:
                        c.calculatrice.empiler(Integer.parseInt(element));
                        break;
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
    }
}
