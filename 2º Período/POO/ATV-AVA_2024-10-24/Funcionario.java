public class Funcionario {
  private String nome;
  private double salario;

  public Funcionario(String nome, double salario) {
    setNome(nome);
    setSalario(salario);
  }

  public String exibirDados() {
    return "Nome: " + getNome() + "\nSalário: " + getSalario();
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getNome() {
    return this.nome;
  }

  public void setSalario(double salario) {
    this.salario = salario;
  }

  public double getSalario() {
    return this.salario;
  }
}
