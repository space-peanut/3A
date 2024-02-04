import java.awt.*;

/**
 * A triangle with a horizontal base that can be manipulated and drawn on a canvas.
 *
 * @author Pascale Launay
 * @inv {@code getWidth() >= 0 && getHeight() >= 0}
 * @inv {@code getColor() != null}
 */
public class Triangle extends SimpleFigure
{

    /**
     * Create a new triangle.
     *
     * @param x      the triangle initial x location
     * @param y      the triangle initial y location
     * @param width  the triangle width
     * @param height the triangle height
     * @param color  the triangle initial color.
     * @pre {@code width >= 0 && height >= 0}
     * @pre {@code color != null}
     */
    public Triangle(int x, int y, int width, int height, Color color)
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
        int[] xpoints = {getX(), getX() + (getWidth() / 2), getX() + getWidth()};
        int[] ypoints = {getY() + getHeight(),getY(), getY() + getHeight()};
        return new Polygon(xpoints, ypoints, 3);
    }

}
