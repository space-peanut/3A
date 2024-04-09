import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    
    public static void main(String[] args) throws Exception {
        Controleur controleur= new Controleur(0);
        while (controleur.getTailleParking() <= 0) {
            try {
                if (args.length < 1) System.out.println("enter the size of the parking : ");
                controleur = new Controleur(args.length > 0 ? Integer.parseInt(args[0]) : Integer.parseInt(new BufferedReader(new InputStreamReader(System.in)).readLine()));
                if (controleur.getTailleParking() <= 0) throw new Exception("size cannot be less than 1");
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a number.");
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        System.out.println("Parking created with "+controleur.getTailleParking()+" places");
        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1. Add a car");
            System.out.println("2. Remove a car");
            System.out.println("3. Display parking status");
            System.out.println("4. Exit");

            try {
                int choice = Integer.parseInt(new BufferedReader(new InputStreamReader(System.in)).readLine());

                switch (choice) {
                    case 1:
                        controleur.entrerParking();
                        break;
                    case 2:
                    controleur.sortirParking();
                        break;
                    case 3:
                        System.out.println(controleur.getPlacesLibres()+" free spaces in the parking lot");;
                        break;
                    case 4:
                        System.exit(0);
                        break;
                    default:
                        System.out.println("Invalid choice. Please try again.");
                        break;
                }
            } catch (IOException e) {
                System.out.println("Error reading input. Please try again.");
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a number.");
            }
        }
    }
}
