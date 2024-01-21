package com.example.src.main.java;

import java.util.Arrays;

/**
 * A chess game. Contains a main method to play chess.
 *
 * @author Pascale Launay
 */
public class Chess
{
    /**
     * Chess playing program.
     *
     * @param args NONE
     */
    public static void main(String[] args)
    {
        // play chess
        Chess chess = new Chess();
        chess.playChess();
    }

    /**
     * Play a chess game
     */
    public void playChess()
    {
        // ask for the piece properties
        System.out.print("Give the piece name " + Arrays.asList(PieceName.values()) + ": ");
        PieceName name = PieceName.valueOf(Keyboard.readLine().toUpperCase());
        System.out.print("Give the piece color " + Arrays.asList(PieceColor.values()) + ": ");
        PieceColor color = PieceColor.valueOf(Keyboard.readLine().toLowerCase());

        // make a piece
        Piece piece = new Piece(name, color);

        // ask for the movement properties
        System.out.println("Give the piece movement");
        System.out.print(" dx: ");
        int dx = Keyboard.readInt();
        System.out.print(" dy: ");
        int dy = Keyboard.readInt();

        System.out.println(piece);
        // move the piece
        if (piece.isValidMove(dx, dy)){ 
            System.out.println("Valid move");
            piece.move(dx, dy);
        }else{
            System.out.println("Invalid move");
        }

        // print the piece
        System.out.println(piece);
    }
}
