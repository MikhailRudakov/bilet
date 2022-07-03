import java.util.Scanner;

public class main_class {
    public static void main(String[] args){
      int sum = 0, inputNum;
      int counter;
      float mean;
      Scanner NumScanner = new Scanner(System.in);
      Scanner charScanner = new Scanner(System.in);
      
      System.out.println("Enter the total number of terms whose mean you want to calculate");

      counter = NumScanner.nextInt();
      
      System.out.println("Please enter " + counter + " numbers:");
      
      for(int x = 1; x<=counter ;x++){          
          inputNum = NumScanner.nextInt();
          sum = sum + inputNum;
          System.out.println();
      }
      
      mean = sum / counter;
      System.out.println("The mean of the " + counter + " numbers you entered is " + mean);
    }
}
 
import java.util.Scanner;
public class main_class {
    public static void main(String[] args){
      String sentinel = "";
      int sum = 0;
      int counter = 0;
      double mean = 0.0;
      Scanner NumScanner = new Scanner(System.in);
      
      System.out.println("Enter numbers to add. Enter \"d\" when done.");
      
      System.out.print("Enter number: ");
      sentinel = NumScanner.next();
      System.out.println();

      while(!sentinel.equals("d") && !sentinel.equals("D")) {
           sum += Integer.parseInt(sentinel);
           counter++;

           System.out.print("Enter number: ");
           sentinel = NumScanner.next();
           System.out.println();
      }

      mean = (sum*1.0)/counter;

      System.out.println();
      System.out.println("The arithmetic mean is: " + mean +".");
    }
}
