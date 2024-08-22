public class Conta {
  private double saldo;
  private String cliente;
  private int numConta;
  private double chequeEspecial;

  // gets e sets
  // get geralmente não tem parâmetros e tem o tipo de retorno
  // set geralmente tem um parâmetro e não tem retorno

  public double getChequeEspecial() {
    return chequeEspecial;
  }

  public void setChequeEspecial(double chequeEspecial) {
    this.chequeEspecial = chequeEspecial;
  }

  public String extrato() {
    return "Cliente " + cliente + " tem saldo de R$" + saldo + " reais.";
  }

  public void transferir(Conta destino, double valor) {
    saldo -= valor;
    destino.saldo += valor;
  }
}
