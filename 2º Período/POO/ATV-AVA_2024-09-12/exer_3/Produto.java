public class Produto {
  private String nome;
  private double preco;
  private int quantidade;

  public Produto(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
    this.quantidade = 0;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public double getPreco() {
    return preco;
  }

  public void setPreco(double preco) {
    this.preco = preco;
  }

  public int getQuantidade() {
    return quantidade;
  }

  public void setQuantidade(int quantidade) {
    this.quantidade = quantidade;
  }

  public void adicionarEstoque(int quantidade) {
    this.quantidade += quantidade;
  }

  public void venderProduto(int quantidade) {
    int qtd = this.quantidade -= quantidade;

    if (qtd < 0) {
      throw new IllegalArgumentException("Quantidade insuficiente em estoque");
    } else {
      this.quantidade = qtd;
    }
  }

  public String exibirProduto() {
    return "Produto: " + nome + " | Preço: " + preco + " | Quantidade em estoque: " + quantidade;
  }
}
