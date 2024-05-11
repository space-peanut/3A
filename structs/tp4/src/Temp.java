public class Temp {
    static arbre supprimer(int x, arbre a) {
        if(a == null){
            return a;
        }else{
            if(a.getValeur() == x){
                return supprimerRacine(a);
            }else{
                arbre node = a;
                while(true){
                    if(x > node.getValeur()){
                        if(node.getFilsDroit() == null){
                            break;
                        }else{
                            if(x == node.getFilsDroit().getValeur()){
                                node.setFilsDroit(supprimerRacine(node.getFilsDroit()));
                                break;
                            }else{
                                node = node.getFilsDroit();
                            }
                        }
                    }else{
                        if(node.getFilsGauche() == null){
                            break;
                        }else{
                            if(x == node.getFilsGauche().getValeur()){
                                node.setFilsGauche(supprimerRacine(node.getFilsGauche()));
                                break;
                            }else{
                                node = node.getFilsGauche();
                            }
                        }
                    }
                }
            }
        }
        return a;
    }

    static arbre supprimerRacine(arbre a) {
        arbre ad = a.getFilsDroit();
        dernierDescendant(ad).setFilsGauche(a.getFilsGauche());
        return ad;
    }

    static arbre dernierDescendant(arbre a) {
        if(a.getFilsGauche() == null){
            return a;
        }
        return a.getFilsGauche();
    }
}
