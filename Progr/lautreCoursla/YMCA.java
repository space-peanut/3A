package Progr.lautreCoursla;
import java.awt.Point;

public class YMCA {
    public char detecterLettreFormee(Point mainDroite, Point mainGauche, Point coudeDroite, Point coudeGauche, Point centreEpaules){
        if (mainDroite.getX() > centreEpaules.getX() && mainGauche.getX() < centreEpaules.getX() && coudeDroite.getX() > centreEpaules.getX() && coudeGauche.getX() < centreEpaules.getX()){
            return 'Y';
        }
        else if (mainDroite.getX() > centreEpaules.getX() && mainGauche.getX() < centreEpaules.getX() && coudeDroite.getX() < centreEpaules.getX() && coudeGauche.getX() > centreEpaules.getX()){
            return 'M';
        }
        else if (coudeDroite.getY() > centreEpaules.getY() && coudeGauche.getY() < centreEpaules.getY()){
            return 'C';
        }
        else if (mainDroite.getX() > centreEpaules.getX() && mainGauche.getX() < centreEpaules.getX() && coudeDroite.getX() < centreEpaules.getX() && coudeGauche.getX() < centreEpaules.getX()){
            return 'A';
        }
        else{
            return (Character) null;
        }
    }
}
