public class Aplicativo {
  public static void main(String[] args) {
    Produto produto1 = new Produto("Camiseta", 50.0);
    Produto produto2 = new Produto("Tênis", 300.0);

    produto1.adicionarEstoque(10);
    produto2.adicionarEstoque(5);

    produto1.venderProduto(2);

    System.out.println(produto1.exibirProduto());
    System.out.println(produto2.exibirProduto());
  }
}
