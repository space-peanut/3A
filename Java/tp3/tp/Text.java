import java.awt.*;
import java.awt.geom.Rectangle2D;

/**
 * A text that can be drawn on a frame.
 *
 * @author Pascale Launay
 * @inv {@code getText() != null}
 * @inv {@code getColor() != null}
 */
public class Text extends Figure
{
    /**
     * The text to be displayed
     */
    private final String text;

    /**
     * The font of the text
     */
    private final Font font;

    /**
     * The bounding box of the text. The bounding box is estimated when the figure is initialized, and is computed more
     * precisely when the figure is drawn for the first time.
     */
    private Rectangle2D bounds;

    /**
     * true if the figure has already been drawn (and the bounding box has been computed)
     */
    private boolean drawn;

    /**
     * the text color
     */
    private final Color color;

    /**
     * Constructor
     *
     * @param text the text to be displayed
     * @param x the x location of the base line of the text
     * @param y the y location of the left line of the text
     * @param fontSize the font size of the text
     * @param color the text color
     * @pre {@code text != null}
     * @pre {@code color != null}
     */
    public Text(String text, int x, int y, int fontSize, Color color)
    {
        super(x, y);
        this.text = text;
        this.color = color;
        this.font = new Font(null, Font.PLAIN, fontSize);
        // make an estimation of the text bounding box
        this.bounds = new Rectangle2D.Double(x, y-fontSize, text.length() * fontSize, fontSize);
    }

    @Override
    protected void draw(Graphics2D graphics)
    {
        graphics.setFont(this.font);
        graphics.setColor(this.color);
        if (!drawn) {
            // compute the text bounding box more precisely using the graphics context
            Rectangle2D bounds = this.font.getStringBounds(this.text, graphics.getFontRenderContext());
            this.bounds = new Rectangle2D.Double(super.getX()+bounds.getX(), super.getY()+bounds.getY(), bounds.getWidth(), bounds.getHeight());
            drawn = true;
        }
        graphics.drawString(this.text, super.getX(), super.getY());
    }

    public Color getColor()
    {
        return color;
    }

    public String getText()
    {
        return this.text;
    }

    @Override
    public int getX()
    {
        return (int)Math.round(bounds.getX());
    }

    @Override
    public int getY()
    {
        return (int)Math.round(bounds.getY());
    }

    @Override
    public int getWidth()
    {
        return (int)Math.round(bounds.getWidth());
    }

    @Override
    public int getHeight()
    {
        return (int)Math.round(bounds.getHeight());
    }
}
