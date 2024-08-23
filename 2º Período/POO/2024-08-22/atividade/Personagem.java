public class Personagem {
  private String nome;
  private double altura;
  private String bordao;
  private String poder;

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getNome() {
    return nome;
  }

  public void setAltura(double altura) {
    this.altura = altura;
  }

  public double getAltura() {
    return altura;
  }

  public void setBordao(String bordao) {
    this.bordao = bordao;
  }

  public String getBordao() {
    return bordao;
  }

  public void setPoder(String poder) {
    this.poder = poder;
  }

  public String getPoder() {
    return poder;
  }

  public void grow(double valor) {
    this.altura += valor;
  }

  public void gritar() {

    int contagem = 3;

    for (int i = 0; i < contagem; i++) {
      System.out.println(bordao);
    }
  }
}
