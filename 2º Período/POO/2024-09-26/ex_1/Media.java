import java.util.Scanner;

class Media {
  public static void main(String[] args) {
    Scanner ent = new Scanner(System.in);
    int cont = 0;
    float total = 0;
    float nota;

    while (cont <= 10) {
      System.out.println("");
      nota = ent.nextFloat();
      total += nota;
      cont++;
    }

    nota = total / cont;

    System.out.println(nota);
    ent.close();
  }
}

//