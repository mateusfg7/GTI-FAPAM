public class Produto {
  private String name;
  private double preco;
  private int quantidade;
  private Fornecedor fornecedor;

  public Produto(String name, double preco, int quantidade, Fornecedor fornecedor) {
    setName(name);
    setPreco(preco);
    setQuantidade(quantidade);
    setFornecedor(fornecedor);
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return this.name;
  }

  public void setPreco(double preco) {
    this.preco = preco;
  }

  public double getPreco() {
    return this.preco;
  }

  public void setQuantidade(int quantidade) {
    if (quantidade >= 0) {
      this.quantidade = quantidade;
    } else {
      throw new IllegalArgumentException("A quantidade não pode ser negativa!");
    }
  }

  public void aumentaQuantidade(int valor) {
    setQuantidade(quantidade + valor);
  }

  public void diminuiQuantidade(int valor) {
    setQuantidade(quantidade - valor);
  }

  public int getQuantidade() {
    return this.quantidade;
  }

  public double getValorTotal() {
    return quantidade * preco;
  }

  public void setFornecedor(Fornecedor fornecedor) {
    this.fornecedor = fornecedor;
  }

  public Fornecedor getFornecedor() {
    return fornecedor;
  }

}
