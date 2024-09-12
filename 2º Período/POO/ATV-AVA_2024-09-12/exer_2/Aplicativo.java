public class Aplicativo {
  public static void main(String[] args) {
    Pessoa pessoa1 = new Pessoa();
    Pessoa pessoa2 = new Pessoa();

    pessoa1.setNome("Mateus");
    pessoa2.setNome("Felipe");

    pessoa1.setIdade(20);
    pessoa2.setIdade(25);

    pessoa1.setAltura(1.75);
    pessoa2.setAltura(1.80);

    System.out.println(pessoa1.exibirDados());
    System.out.println(pessoa2.exibirDados());
  }
}
