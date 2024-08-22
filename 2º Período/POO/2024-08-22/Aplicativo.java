public class Aplicativo {
  public static void main(String[] args) {
    Conta daniel = new Conta();

    daniel.cliente = "Daniel Oliveira Capanema";
    daniel.saldo = 300;
    daniel.numConta = 12345;

    System.out.println(daniel.extrato());

    Conta mateus = new Conta();

    mateus.cliente = "Mateus Felipe Gonçalves";
    mateus.saldo = 500;
    mateus.numConta = 54321;

    System.out.println(mateus.extrato());

    System.out.println("Transferindo 100 reais de Mateus para Daniel...");

    mateus.transferir(daniel, 100);

    System.out.println(daniel.extrato());
    System.out.println(mateus.extrato());
  }
}
