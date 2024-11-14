public class Carro extends Veiculo {
  private Motor motor;

  public Carro(String modelo, int ano, int capacidadeTanque, Motor motor) {
    super(modelo, ano, capacidadeTanque);
    this.motor = motor;
  }

  @Override
  public String descricao() {
    return "Carro " + super.descricao();
  }

  public Motor getMotor() {
    return motor;
  }

  public void setMotor(Motor motor) {
    this.motor = motor;
  }

}
