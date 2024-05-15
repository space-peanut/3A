public class Main {
    public static void main(String[] args) throws Exception {
        Graph graph = new Graph();
        graph.ajouterArete("A", "B", 3);
        graph.ajouterArete("A", "F", 5);
        graph.ajouterArete("B", "C", 1);
        graph.ajouterArete("F", "E", 2);
        graph.ajouterArete("B", "E", 4);
        graph.ajouterArete("C", "D", 9);
        graph.ajouterArete("D", "E", 7);
        graph.ajouterArete("D", "G", 4);
        graph.ajouterArete("D", "I", 5);
        graph.ajouterArete("D", "H", 3);
        graph.ajouterArete("i", "j", 6);
        graph.ajouterArete("j", "k", 4);
        graph.ajouterArete("k", "J", 3);

        graph.chemins("A", "J");
    }
}
