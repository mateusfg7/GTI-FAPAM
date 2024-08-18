/*
 * @Author: Mateus Felipe Gonçalves <contact@mateusf.com>
 * @Description: Get name and age and tells if is a child, teenager, adult or elderly
 */

import java.util.Scanner;

public class Comparison {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);

    System.out.print("Enter your name: ");
    String name = input.nextLine();

    System.out.print("Enter your age: ");
    int age = input.nextInt();

    if (age <= 12) {
      System.out.println(name + " is a child.");
    } else if (age <= 18) {
      System.out.println(name + " is a teenager.");
    } else if (age <= 59) {
      System.out.println(name + " is an adult.");
    } else {
      System.out.println(name + " is an elderly.");
    }

    input.close();
  }
}
