package com.example.src.main.java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * A utility class allowing to read from the keyboard.
 *
 * @author Pascale Launay
 */
public class Keyboard
{
    /**
     * the standard input (keyboard)
     */
    private static final BufferedReader STDIN = new BufferedReader(new InputStreamReader(System.in));

    /**
     * Reads a line from the keyboard, until an 'endline' character is entered
     *
     * @return the line entered by the user, without the 'endline' character
     */
    public static String readLine()
    {
        try {
            return STDIN.readLine();
        } catch (IOException e) {
            // this should not occur
            e.printStackTrace();
        }
        return "";
    }

    /**
     * Reads an integer from the keyboard (until an 'endline' character is entered)
     *
     * @return the integer value entered by the user (or Integer.MIN_VALUE if the user entered an invalid value)
     */
    public static int readInt()
    {
        String line = null;
        try {
            line = STDIN.readLine();
            return Integer.parseInt(line);
        } catch (IOException e) {
            // this should not occur
            e.printStackTrace();
        } catch (NumberFormatException e) {
            // the user entered an invalid value
            System.err.println("Number format exception for the given user input: \"" + line + "\"");
        }
        return Integer.MIN_VALUE;
    }
}
