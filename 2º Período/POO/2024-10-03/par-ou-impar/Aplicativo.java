public class Aplicativo {
  public static void main(String[] args) {
    Tester.test("2 é par", Utils.ePar(2), true);
    Tester.test("3 não é par", Utils.ePar(3), false);
    Tester.test("3 é impar", Utils.eImpar(3), true);
    Tester.test("4 não é impar", Utils.eImpar(4), false);
    Tester.test("3 é primo", Utils.ePrimo(3), true);
    Tester.test("6 não é primo", Utils.ePrimo(6), false);
  }
}
