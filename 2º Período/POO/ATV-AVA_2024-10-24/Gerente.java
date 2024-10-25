public class Gerente extends Funcionario {
  private double bonus;

  public Gerente(String nome, double salario, double bonus) {
    super(nome, salario);
    setBonus(bonus);
  }

  public String exibirDados() {
    return super.exibirDados() + "\nBônus: " + getBonus();
  }

  public void setBonus(double bonus) {
    this.bonus = bonus;
  }

  public double getBonus() {
    return this.bonus;
  }
}
