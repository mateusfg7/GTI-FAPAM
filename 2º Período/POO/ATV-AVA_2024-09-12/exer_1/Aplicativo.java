public class Aplicativo {
  public static void main(String[] args) {
    Carro carro = new Carro("Ferrari", "F50", 1995);

    System.out.println("Marca --- " + carro.getMarca());
    System.out.println("Modelo -- " + carro.getModelo());
    System.out.println("Ano ----- " + carro.getAno());

    carro.setAno(2000);

    System.out.println("Ano ----- " + carro.getAno());
  }
}
