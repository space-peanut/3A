import java.awt.*;

public class Sun extends Circle {
    private final static Color COLOR = Color.YELLOW;

    public Sun(int x, int y, int height) {
        super(x, y, height, COLOR);
    }

    public void move(int dx, int dy) {
        super.move(dx, dy);
    }
}
