public class JeuTheKiller {
    public static void main(String[] args) throws Exception {
        Tueur tueur1 = new Tueur("Clint");
        Tueur tueur2 = new Tueur("Harry");
        Tueur tueur3 = new Tueur("Max", tueur1);

        tueur1.setContract(tueur2);
        tueur2.setContract(tueur3);

        System.out.println(tueur1);

        ListeTueur liste = new ListeTueur(tueur1);
        System.out.println(liste.getSize());
        System.out.println(liste);

        liste.insert("Bob");
        liste.insert("Tom");
        System.out.println(liste);

        ListeTueur liste2 = new ListeTueur();
        System.out.println(liste2);
        liste2.insert("Joe");
        liste2.insert("jack");
        liste2.insert("William");

        System.out.println(liste2);

        liste.insertList(liste2);
        System.out.println(liste);
        System.out.println(liste.getSize());


        while (liste.getSize() > 0) {
            
            liste.delete();
            System.out.println(liste);
        }
    }
}
