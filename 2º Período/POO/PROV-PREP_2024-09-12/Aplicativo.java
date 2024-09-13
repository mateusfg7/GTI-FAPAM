import java.util.Scanner;

public class Aplicativo {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    Computador computador = new Computador();

    System.out.println("ESPECIFICAÇÕES =====");
    System.out.println(computador.exibirEspecificacoes());
    System.out.println("====================");

    System.out.print("\nMarca: ");
    String marca = scan.nextLine();

    System.out.print("Memoria (Gb): ");
    int memoria = Integer.parseInt(scan.nextLine());

    System.out.print("Armazenamento (Gb): ");
    int armazenamento = Integer.parseInt(scan.nextLine());

    computador.atualizarEspecificacoes(marca, memoria, memoria);

    System.out.println("");

    System.out.println("ESPECIFICAÇÕES =====");
    System.out.println(computador.exibirEspecificacoes());
    System.out.println("====================");

    System.out.println("Desempenho: " + computador.verificaDesempenho());
  }
}
