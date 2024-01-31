import java.awt.*;

/**
 * A rectangle that can be manipulated and drawn on a canvas.
 *
 * @author Pascale Launay
 * @inv {@code getWidth() >= 0 && getHeight() >= 0}
 * @inv {@code getColor() != null}
 */
public class Rectangle extends SimpleFigure
{
    /**
     * Create a new square.
     *
     * @param x      the square initial x location
     * @param y      the square initial y location
     * @param width  the rectangle initial width
     * @param height the rectangle initial height
     * @param color  the square initial color.
     * @pre {@code width >= 0 && height >= 0}
     * @pre {@code color != null}
     */
    public Rectangle(int x, int y, int width, int height, Color color)
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
        return new java.awt.Rectangle(getX(), getY(), getWidth(), getHeight());
    }
}
