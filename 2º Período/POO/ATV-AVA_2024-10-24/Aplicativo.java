public class Aplicativo {
  public static void main(String[] args) {
    Funcionario f1 = new Funcionario("João", 2000);
    Gerente g1 = new Gerente("Maria", 3000, 1980);
    Programador p1 = new Programador("Mateus", 2002, "Rust");

    System.out.println(f1.exibirDados() + "\n");
    System.out.println(g1.exibirDados() + "\n");
    System.out.println(p1.exibirDados());
  }
}
