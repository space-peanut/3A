import java.awt.*;

public class SimplePicture{
    Person p;
    static Sun s;
    House h;

    public SimplePicture(Person p, Sun s, House h){
        this.p = p;
        this.s = s;
        this.h = h;
    }

    public void draw(){
        h.draw();
        p.draw();
        s.draw();
        CanvasFrame.getCanvas().redraw();
    }

    public static void animate(){
        for (int i = 0; i < 100; i++){
            s.move(5, 0);
            CanvasFrame.getCanvas().redraw();
            CanvasFrame.getCanvas().wait(100);
        }
    }

    public static void main(String[] args){
        Person p = new Person(200, 200, 20, 200, Color.BLUE);
        House h = new House(200, 200, 100, 100, Color.BLACK);
        Sun s = new Sun(10, 10, 30);

        SimplePicture sp = new SimplePicture(p,s,h);
        sp.draw();
        animate();
    }

}
