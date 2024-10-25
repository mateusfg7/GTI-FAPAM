public class Programador extends Funcionario {
  private String linguagem;

  public Programador(String nome, double salario, String linguagem) {
    super(nome, salario);
    setLinguagem(linguagem);
  }

  public String exibirDados() {
    return super.exibirDados() + "\nLinguagem: " + getLinguagem();
  }

  public void setLinguagem(String linguagem) {
    this.linguagem = linguagem;
  }

  public String getLinguagem() {
    return this.linguagem;
  }

}
