package com.example.src.main.java;

/**
 * A chess piece. Represented by a location in the chessboard (x,y),
 * a name and a color.
 *
 * @author Pascale Launay
 */
public class Piece
{
    /**
     * The piece location in the chessboard.
     * @param x the horizontal location.
     * @param y the vertical location.
     */
    private int x;
    private int y;

    /**
     * @param name The piece name: PAWN, ROOK, KNIGHT, BISHOP, QUEEN, KING.
     */
    private final PieceName name;
    
    /**
     * @param color The piece color: black, white.
     */
    private final PieceColor color;
    
    
    /**
     * Gets the horizontal location of the piece.
     *
     * @return the horizontal location.
     */
    public int getX() {
        return x;
    }
    
    /**
     * Sets the horizontal location of the piece.
     *
     * @param x the new horizontal location.
     */
    public void setX(int x) {
        this.x = x;
    }
    
    /**
     * Gets the vertical location of the piece.
     *
     * @return the vertical location.
     */
    public int getY() {
        return y;
    }
    
    /**
     * Sets the vertical location of the piece.
     *
     * @param y the new vertical location.
     */
    public void setY(int y) {
        this.y = y;
    }

    /**
     * Gets the piece name.
     * @return the piece name.
     */
    public PieceName getName() {
        return name;
    }

    /**
     * Gets the piece color.
     * @return the piece color.
     */ 
    public PieceColor getColor() {
        return color;
    }
    
    /**
     * Constructs a piece with given name and color.
     *
     * @param name  the piece name: PAWN, ROOK, KNIGHT, BISHOP, QUEEN, KING.
     * @param color the piece color: black, white.
     */
    
    /**
     * Moves the piece. After the movement, the new location of the piece should be
     * (x+dx,y+dy)
     *
     * @param dx the horizontal movement.
     * @param dy the vertical movement.
     */
    public Piece(PieceName name, PieceColor color) throws IllegalArgumentException{
        switch (name) {
            case KING:
                if (color == PieceColor.black) {
                    this.x = 4;
                    this.y = 0;
                }else{
                    this.x = 4;
                    this.y = 7;
                }
                break;
        
            case QUEEN:
                if (color == PieceColor.black) {
                    this.x = 3;
                    this.y = 0;
                }else{
                    this.x = 3;
                    this.y = 7;
                }
                break;
            default:
                System.out.println("Give the piece position");
                System.out.print(" x: ");
                int x = Keyboard.readInt();
                System.out.print(" y: ");
                int y = Keyboard.readInt();
                this.x = x;
                this.y = y;
                break;
        }
        this.name = name;
        this.color = color;
    }

    public Piece(PieceName name, PieceColor color, int x, int y) throws IllegalArgumentException{
        this.x = x;
        this.y = y;
        this.name = name;
        this.color = color;
    }

    public void move(int dx, int dy)
    {
        this.x += dx;
        this.y += dy;

        this.x = this.x>7?7:this.x;
        this.x = this.x<0?0:this.x;
        this.y = this.y>7?7:this.y;
        this.y = this.y<0?0:this.y;

        
    }
    
    public boolean isValidMove(int dx, int dy)
    {
        if (dx==0 && dy==0) {
            return true;
        }
        switch (name) {
            case BISHOP:
                return Math.abs(dx) == Math.abs(dy);
            case KING:
                return (Math.abs(dx) <= 1 && Math.abs(dy) <= 1);
            case KNIGHT:
                return ((Math.abs(dx) == 1 && Math.abs(dy) == 2) || (Math.abs(dx) == 2 && Math.abs(dy) == 1));
            case PAWN:
                return (((color ==PieceColor.black &&((y==1&&(dy==1||dy==2))||(y!=1&&dy==1)))||(color ==PieceColor.white &&((y==6&&(dy==-1||dy==-2))||(y!=6&&dy==-1))))&&dx==0);
            case QUEEN:
                return (Math.abs(dx) == Math.abs(dy) || dx == 0 || dy == 0);
            case ROOK:
                return (dx == 0 || dy == 0);
            default:
                return false;
        }
    }

    /**
     * Gives a string representation of the piece in the form "name color".
     *
     * @return a string representation of the piece.
     */
    @Override
    public String toString()
    {
        return this.name + " " + this.color+" "+this.x+" "+this.y;
    }
}