import java.util.Scanner;

public class InverseNumber {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);

    int[] numbers = new int[10];

    for (int count = 0; count < 10; count++) {
      System.out.println("\nNumber " + (count + 1));
      System.out.print("~> ");

      numbers[count] = input.nextInt();
    }

    System.out.println(numbers);
  }
}
