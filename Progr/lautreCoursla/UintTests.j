package Progr.lautreCoursla;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import java.awt.Point;

import org.junit.Test;
import org.junit.Assert.*;

public class UintTests {
    @Test
    public void y(){
        YMCA ymca = new YMCA();
        char lettre = ymca.detecterLettreFormee(new Point(2,2), new Point(-2,2), new Point(1,1), new Point(-1,1), new Point(0,0));
        assertEquals('Y', lettre);
    }
    @Test
    public void m(){
        YMCA ymca = new YMCA();
        char lettre = ymca.detecterLettreFormee(new Point(0,1), new Point(0,1), new Point(1,1), new Point(-1,1), new Point(0,0));
        assertEquals('M', lettre);
    }
    @Test
    public void c(){
        YMCA ymca = new YMCA();
        char lettre = ymca.detecterLettreFormee(new Point(2,2), new Point(-2,2), new Point(0,1), new Point(0,-1), new Point(0,0));
        assertEquals('C', lettre);
    }
    @Test
    public void a(){
        YMCA ymca = new YMCA();
        char lettre = ymca.detecterLettreFormee(new Point(2,2), new Point(-2,2), new Point(1,1), new Point(-1,1), new Point(0,0));
        assertEquals('A', lettre);
    }
    @Test
    public void nota(){
        YMCA ymca = new YMCA();
        char lettre = ymca.detecterLettreFormee(new Point(2,0), new Point(-2,2), new Point(1,1), new Point(-1,1), new Point(0,0));
        assertNotEquals('A', lettre);
    }
}