import java.awt.Color;

public class House extends CompoundFigure {
    public House(int x, int y, int width, int height,Color color) {
        super(new SimpleFigure[]{
            new Rectangle(x, y, width, height, color),
            new Triangle(x, y-height/2, width, height/2, color),
            new Rectangle(x+2*width/6,y+height/3,width/3,2*height/3,Color.WHITE),
            new Circle(x+width/2-height/12, y, height/6, Color.WHITE)
        });
    }

    @Override
    public void draw() {
        super.draw();
    }
}
