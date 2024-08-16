import java.util.Scanner;

class NumArray {
    static int listSize;
    public static int[] list = new int[listSize];
    public static int[] inversedList = new int[listSize];
    public static int bigger;

    public NumArray(int size) {
        listSize = size;
        list = getArrayNumbers();
        inversedList = inverseNumbers(list);
        bigger = getBigger(list);
    }

    public static void printList() {
        for (int index = 0; index < list.length; index++) {
            System.out.print(list[index]+" ");
        }
    }

    public static void printInversedList() {
        for (int index = 0; index < inversedList.length; index++) {
            System.out.print(inversedList[index]+" ");
        }
    }

    static int getBigger(int[] array) {
        int bigger = 0;
        for(int index = 0; index < array.length; index++) {
            if(array[index] > bigger) {
                bigger = array[index];
            }
        }

        return bigger;
    }

    static int[] getArrayNumbers() {
        Scanner input = new Scanner(System.in);

        int[] array = new int[listSize];
        for (int count = 0; count < listSize; count++) {
            System.out.println("\nNumber " + (count + 1));
            System.out.print("~> ");

            array[count] = input.nextInt();
        }

        return array;
    }

    static int[] inverseNumbers(int[] arrayNumbers) {
        int[] inversedArrayNumbers = new int[arrayNumbers.length];
        for(int index = 0; index < arrayNumbers.length; index++) {
            inversedArrayNumbers[index] = arrayNumbers[arrayNumbers.length - 1 - index];
            inversedArrayNumbers[arrayNumbers.length - 1 - index] = arrayNumbers[index];
        }

        return inversedArrayNumbers;
    }
}

public class InverseNumbers {
    public static void main(String[] args) {
        NumArray numArray = new NumArray(100);

        System.out.print("\nOriginal: ");
        numArray.printList();

        System.out.print("\nReversed: ");
        numArray.printInversedList();

        System.out.println("\nBigger: " + numArray.bigger);
    }
}
