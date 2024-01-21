package com.example.src.main.java;

public class Chessboard {
    private Piece[][] board;

    public Chessboard() {
        createBoard(8);
        for(int i=0,i<=7,i++){
            addPiece(new Piece(PieceName.PAWN,PieceColor.white,i,6));
            addPiece(new Piece(PieceName.PAWN,PieceColor.black,i,1));   
        }
        
        addPiece(new Piece(PieceName.ROOK,PieceColor.white,0,7));
        addPiece(new Piece(PieceName.ROOK,PieceColor.white,7,7));
        addPiece(new Piece(PieceName.ROOK,PieceColor.black,0,0));
        addPiece(new Piece(PieceName.ROOK,PieceColor.black,7,0));
        addPiece(new Piece(PieceName.KNIGHT,PieceColor.white,1,7));
        addPiece(new Piece(PieceName.KNIGHT,PieceColor.white,6,7));
        addPiece(new Piece(PieceName.KNIGHT,PieceColor.black,1,0));
        addPiece(new Piece(PieceName.KNIGHT,PieceColor.black,6,0));
        addPiece(new Piece(PieceName.BISHOP,PieceColor.white,2,7));
        addPiece(new Piece(PieceName.BISHOP,PieceColor.white,5,7));
        addPiece(new Piece(PieceName.BISHOP,PieceColor.black,2,0));
        addPiece(new Piece(PieceName.BISHOP,PieceColor.black,5,0));
        addPiece(new Piece(PieceName.QUEEN,PieceColor.white));
        addPiece(new Piece(PieceName.QUEEN,PieceColor.black));
        addPiece(new Piece(PieceName.KING,PieceColor.white));
        addPiece(new Piece(PieceName.KING,PieceColor.black));



    }

    public void createBoard(int size) {
        board = new Piece[size][size];
    }

    public void addPiece(Piece piece) {
        board[piece.getX()][piece.getY()] = piece;
    }

    public String toString() {
        String str = "|";
        for(Piece[] lines:board){
            for(Piece piece:lines){
                switch (piece.getName()) {
                    case KING:
                        str += "K";
                        break;
                    case QUEEN:
                        str += "Q";
                        break;
                    case BISHOP:
                        str += "B";
                        break;
                    case KNIGHT:
                        str += "N";
                        break;
                    case ROOK:
                        str += "R";
                        break;
                    case PAWN:
                        str += "P";
                        break;
                    default:
                        str += " ";
                        break;
                }
                switch (piece.getColor())  {
                    case black:
                        str += "b|";
                        break;
                    case white:
                        str += "w|";
                        break;
                
                    default:
                        str += " |";
                        break;
                }
            }
            str += "\n|";
        }
        return str;
    }
    
    
}
