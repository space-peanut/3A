import java.awt.Image;
import java.awt.Graphics2D;

/**
 * A figure composed of an image
 *
 * @author Pascale Launay
 * @inv {@code getImage() != null}
 */
public class ImageFigure extends Figure
{
    /**
     * The image that composes the figure
     */
    private final Image image;

    /**
     * Initialize the figure properties
     *
     * @param x     the x location of the upper left corner of the figure
     *              bounding rectangle in pixels
     * @param y     the y location of the upper left corner of the figure
     *              bounding rectangle in pixels
     * @param image the image that composes the figure
     * @pre {@code image != null}
     */
    public ImageFigure(int x, int y, Image image)
    {
        super(x, y);
        assert image != null : "Precondition violated: image is null";
        this.image = image;

        imageFigureInvariant();
    }

    //------------------------------------------------------------------------
    // Getters
    //------------------------------------------------------------------------

    /**
     * Give the figure image
     *
     * @return the figure image
     */
    public Image getImage()
    {
        return this.image;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int getWidth()
    {
        return image.getWidth(null);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int getHeight()
    {
        return image.getHeight(null);
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
        graphics.drawImage(this.image, this.getX(), this.getY(), this.getWidth(), this.getHeight(), null);
    }

    //------------------------------------------------------------------------
    // Invariant
    //------------------------------------------------------------------------

    /**
     * Check the class invariant
     */
    protected final void imageFigureInvariant()
    {
        assert this.image != null : "Invariant violated: image is null";
    }
}
