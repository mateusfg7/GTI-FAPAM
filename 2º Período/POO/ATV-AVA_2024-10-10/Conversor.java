public class Conversor {
  public static double toDolar(Produto produto, double taxa_cambio) {
    return produto.getValorTotal() * taxa_cambio;
  }

  public static double withDesconto(Produto produto, double desconto) {
    return produto.getPreco() * desconto;
  }
}
