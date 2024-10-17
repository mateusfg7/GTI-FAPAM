import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Biblioteca biblioteca = new Biblioteca("Foundation");
        Scanner scanner = new Scanner(System.in);

        while (true) {
            limparTela();
            exibirMenu();
            System.out.print("Opção: ");
            int opcao = scanner.nextInt();
            scanner.nextLine();

            if (opcao == 1) {
                limparTela();
                System.out.print("Título: ");
                String titulo = scanner.nextLine();
                System.out.print("Autor: ");
                String autor = scanner.nextLine();
                System.out.print("Ano: ");
                int ano = scanner.nextInt();
                Livro livro = new Livro(titulo, autor, ano);
                biblioteca.adicionarLivro(livro);
            } else if (opcao == 2) {
                limparTela();
                System.out.println(biblioteca.exibirLivros());
                esperarEnter(scanner);
            } else if (opcao == 3) {
                limparTela();
                System.out.print("Ano: ");
                int ano = scanner.nextInt();
                scanner.nextLine();
                limparTela();
                System.out.println(biblioteca.exibirLivros(ano));
                esperarEnter(scanner);
            } else if (opcao == 4) {
                limparTela();
                System.out.print("Título: ");
                String titulo = scanner.nextLine();
                biblioteca.removerLivro(titulo);
            } else if (opcao == 5) {
                break;
            }
        }

        scanner.close();
    }

    public static void limparTela() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }

    public static void esperarEnter(Scanner scanner) {
        System.out.print("Pressione Enter para continuar...");
        scanner.nextLine();
    }

    public static void exibirMenu() {
        System.out.println("1 - Adicionar livro");
        System.out.println("2 - Exibir livros");
        System.out.println("3 - Exibir livros de um ano específico");
        System.out.println("4 - Remover livro");
        System.out.println("5 - Sair");
    }
}
