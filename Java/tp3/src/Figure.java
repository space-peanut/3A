import java.awt.Graphics2D;

/**
 * An abstract figure that can be manipulated and drawn on a frame.
 *
 * @author Pascale Launay
 */
public abstract class Figure
{
    /**
     * the x location of the upper left corner of the figure bounding rectangle
     * in pixels
     */
    private int x;

    /**
     * the y location of the upper left corner of the figure bounding rectangle
     * in pixels
     */
    private int y;

    /**
     * Initialize the figure properties.
     *
     * @param x the x location of the upper left corner of the figure
     *          bounding rectangle in pixels
     * @param y the y location of the upper left corner of the figure
     *          bounding rectangle in pixels
     */
    public Figure(int x, int y)
    {
        this.x = x;
        this.y = y;
    }

    //------------------------------------------------------------------------
    // Draw
    //------------------------------------------------------------------------

    /**
     * Add the current figure to the canvas.
     */
    public void draw()
    {
        CanvasFrame canvas = CanvasFrame.getCanvas();
        canvas.draw(this);
    }

    /**
     * Remove the current figure from the canvas.
     */
    public void erase()
    {
        CanvasFrame canvas = CanvasFrame.getCanvas();
        canvas.erase(this);
    }

    /**
     * Method invoked by the canvas when the figure is actually drawn or redrawn
     * using the given Graphics2D instance.
     *
     * @param graphics the graphics context of the canvas
     */
    protected abstract void draw(Graphics2D graphics);

    //------------------------------------------------------------------------
    // Getters
    //------------------------------------------------------------------------

    /**
     * Give the x location of the upper left corner of the figure bounding
     * rectangle in pixels.
     *
     * @return the figure x location
     */
    public int getX()
    {
        return this.x;
    }

    /**
     * Give the y location of the upper left corner of the figure bounding
     * rectangle in pixels.
     *
     * @return the figure y location
     */
    public int getY()
    {
        return this.y;
    }

    /**
     * Give the width of the figure bounding rectangle in pixels.
     *
     * @return the figure width
     */
    public abstract int getWidth();

    /**
     * Give the height of the figure bounding rectangle in pixels.
     *
     * @return the figure height
     */
    public abstract int getHeight();

    /**
     * Check whether the figure bounding rectangle is inside the canvas.
     *
     * @return true if the figure is inside the canvas
     */
    protected boolean isInside()
    {
        CanvasFrame canvas = CanvasFrame.getCanvas();
        return getX() >= 0 && getY() >= 0 && getX() + getWidth() <= canvas.getWidth() && getY() + getHeight() <= canvas.getHeight();
    }

    /**
     * Check whether the current figure and the given figure bounding rectangles
     * have common points.
     *
     * @return true if the figures have a non-empty intersection
     */
    protected boolean intersects(Figure figure)
    {
        boolean intersectsX = (getX() > figure.getX() && getX() < figure.getX() + figure.getWidth()) || (figure.getX() > getX() && figure.getX() < getX() + getWidth());
        if (intersectsX) {
            return (getY() > figure.getY() && getY() < figure.getY() + figure.getHeight()) || (figure.getY() > getY() && figure.getY() < getY() + getHeight());
        }
        return false;
    }

    //------------------------------------------------------------------------
    // Setters
    //------------------------------------------------------------------------

    /**
     * Change the location of the upper left corner of the figure bounding
     * rectangle.
     *
     * @param dx number of pixels to move the figure to the right (dx>0) or left
     *           (dx<0)
     * @param dy number of pixels to move the figure to the bottom (dy>0) or top
     *           (dy<0)
     */
    public void move(int dx, int dy)
    {
        this.x += dx;
        this.y += dy;
        draw();
    }

    /**
     * Move the figure in an autonomous way (i.e. the dx and dy moves are chosen
     * by the object itself).
     */
    public void move()
    {
        // do nothing
    }
}
