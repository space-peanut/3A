import java.awt.*;

/**
 * An abstract figure composed of a single shape.
 *
 * @author Pascale Launay
 * @inv {@code getWidth() >= 0 && getHeight() >= 0}
 * @inv {@code getColor() != null}
 */
public abstract class SimpleFigure extends Figure
{
    /**
     * the width of the figure bounding rectangle in pixels
     */
    private final int width;

    /**
     * the height of the figure bounding rectangle in pixels
     */
    private final int height;

    /**
     * the shape color
     */
    private Color color;

    /**
     * Initialize the figure properties
     *
     * @param x      the x location of the upper left corner of the figure
     *               bounding rectangle in pixels
     * @param y      the y location of the upper left corner of the figure
     *               bounding rectangle in pixels
     * @param width  the width of the figure bounding rectangle in pixels
     * @param height the height of the figure bounding rectangle in pixels
     * @param color  the shape color
     * @pre {@code width >= 0 && height >= 0}
     * @pre {@code color != null}
     */
    public SimpleFigure(int x, int y, int width, int height, Color color)
    {
        super(x, y);
        assert width >= 0 && height >= 0 : "Precondition violated: negative size";
        assert color != null : "Precondition violated: color is null";
        this.width = width;
        this.height = height;
        this.color = color;

        simpleFigureInvariant();
    }

    //------------------------------------------------------------------------
    // Draw
    //------------------------------------------------------------------------

    /**
     * {@inheritDoc}
     */
    @Override
    protected void draw(Graphics2D graphics)
    {
        graphics.setColor(this.color);
        graphics.fill(makeShape());
    }

    /**
     * Make a shape that represents this figure at the current location and size
     *
     * @return shape representing this figure
     */
    protected abstract Shape makeShape();

    //------------------------------------------------------------------------
    // Getters
    //------------------------------------------------------------------------

    /**
     * {@inheritDoc}
     */
    @Override
    public int getWidth()
    {
        return width;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int getHeight()
    {
        return height;
    }

    /**
     * Give the figure color
     *
     * @return the figure color
     */
    public Color getColor()
    {
        return this.color;
    }

    //------------------------------------------------------------------------
    // Setters
    //------------------------------------------------------------------------

    /**
     * Set the figure color
     *
     * @param color the figure color
     * @pre color != null
     */
    public void setColor(Color color)
    {
        assert color != null : "color is null";
        this.color = color;
        simpleFigureInvariant();
    }

    //------------------------------------------------------------------------
    // Invariant
    //------------------------------------------------------------------------

    /**
     * Check the class invariant
     */
    protected final void simpleFigureInvariant()
    {
        assert width >= 0 && height >= 0 : "Invariant violated: negative size";
        assert this.color != null : "Invariant violated: color is null";
    }
}
