public class Conta {
  double saldo;
  String cliente;
  int numConta;
  double chequeEspecial;

  String extrato() {
    return "Cliente " + cliente + " tem saldo de R$" + saldo + " reais.";
  }

  void transferir(Conta destino, double valor) {
    saldo -= valor;
    destino.saldo += valor;
  }
}
