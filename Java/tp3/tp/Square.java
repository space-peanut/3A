import java.awt.*;

/**
 * A square that can be manipulated and drawn on a canvas.
 *
 * @author Pascale Launay
 * @inv {@code getSize() >= 0}
 * @inv {@code getHeight() == getSize() && getWidth() == getSize()}
 * @inv {@code getColor() != null}
 */
public class Square extends Rectangle
{
    /**
     * Create a new square.
     *
     * @param x     the square initial x location
     * @param y     the square initial y location
     * @param size  the square size
     * @param color the square initial color.
     * @pre {@code size >= 0}
     * @pre {@code color != null}
     */
    public Square(int x, int y, int size, Color color)
    {
        super(x, y, size, size, color);
        squareInvariant();
    }

    //------------------------------------------------------------------------
    // Getters
    //------------------------------------------------------------------------

    /**
     * Give the square size in pixels
     *
     * @return the square size in pixels
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
    protected final void squareInvariant()
    {
        super.simpleFigureInvariant();
        assert getHeight() == getSize() && getWidth() == getSize() : "Invariant violated: wrong dimensions";
    }
}
