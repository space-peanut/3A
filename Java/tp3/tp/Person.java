import java.awt.*;

/**
 * A person that can be manipulated and that draws itself on a canvas.
 *
 * @author Pascale Launay
 * @inv {@code getWidth() >= 0 && getHeight() >= 0}
 * @inv {@code getColor() != null}
 */
public class Person extends SimpleFigure
{
    /**
     * Create a new person.
     *
     * @param x      the person initial x location
     * @param y      the person initial y location
     * @param width  the person width
     * @param height the person height
     * @param color  the person color.
     * @pre {@code width >= 0 && height >= 0}
     * @pre {@code color != null}
     */
    public Person(int x, int y, int width, int height, Color color)
    {
        super(x, y, width, height, color);
    }

    //------------------------------------------------------------------------
    // Draw
    //------------------------------------------------------------------------

    /**
     * {@inheritDoc }
     */
    @Override
    protected Shape makeShape()
    {
        int bh = (int) (getHeight() * 0.7);  // body height
        int hh = (getHeight() - bh) / 2;  // half head height
        int hw = getWidth() / 2;  // half width
        int x = getX() + hw;
        int y = getY() + (hh * 2);
        int[] xpoints = {x - 3, x - hw, x - hw, x - (int) (hw * 0.2) - 1, x - (int) (hw * 0.2) - 1, x - hw,
                x - hw + (int) (hw * 0.4) + 1, x, x + hw - (int) (hw * 0.4) - 1, x + hw, x + (int) (hw * 0.2) + 1,
                x + (int) (hw * 0.2) + 1, x + hw, x + hw, x + 3, x + (int) (hw * 0.6),
                x + (int) (hw * 0.6), x + 3, x - 3, x - (int) (hw * 0.6), x - (int) (hw * 0.6)};
        int[] ypoints = {y, y + (int) (bh * 0.2), y + (int) (bh * 0.4), y + (int) (bh * 0.2),
                y + (int) (bh * 0.5), y + bh, y + bh, y + (int) (bh * 0.65), y + bh, y + bh,
                y + (int) (bh * 0.5), y + (int) (bh * 0.2), y + (int) (bh * 0.4), y + (int) (bh * 0.2),
                y, y - hh + 3, y - hh - 3, y - hh - hh, y - hh - hh, y - hh - 3, y - hh + 3};
        return new Polygon(xpoints, ypoints, 21);
    }
}
