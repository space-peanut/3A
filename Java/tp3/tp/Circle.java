import java.awt.*;
import java.awt.geom.Ellipse2D;

/**
 * A circle that can be manipulated and drawn on a canvas.
 *
 * @author Pascale Launay
 * @inv {@code getSize() >= 0}
 * @inv {@code getHeight() == getSize() && getWidth() == getSize()}
 * @inv {@code getColor() != null}
 */
public class Circle extends SimpleFigure
{
    /**
     * Create a new circle.
     *
     * @param x     the circle initial x location
     * @param y     the circle initial y location
     * @param size  the circle size
     * @param color the circle initial color.
     * @pre {@code size >= 0}
     * @pre {@code color != null}
     */
    public Circle(int x, int y, int size, Color color)
    {
        super(x, y, size, size, color);

        circleInvariant();
    }

    //------------------------------------------------------------------------
    // Draw
    //------------------------------------------------------------------------

    /**
     * {@inheritDoc}
     */
    @Override
    protected Shape makeShape()
    {
        return new Ellipse2D.Double(getX(), getY(), getWidth(), getHeight());
    }

    //------------------------------------------------------------------------
    // Getters
    //------------------------------------------------------------------------

    /**
     * Give the circle size in pixels
     *
     * @return the circle size in pixels
     */
    public int getSize()
    {
        return getWidth();
    }

    //------------------------------------------------------------------------
    // Invariant
    //------------------------------------------------------------------------

    /**
     * Check the class invariant
     */
    protected final void circleInvariant()
    {
        super.simpleFigureInvariant();
        assert getHeight() == getSize() && getWidth() == getSize() : "Invariant violated: wrong dimensions";
    }
}
