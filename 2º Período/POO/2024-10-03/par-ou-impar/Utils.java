public class Utils {
  public static boolean ePar(int numero) {
    return numero % 2 == 0;
  }

  public static boolean eImpar(int numero) {
    return !(ePar(numero));
  }

  public static boolean ePrimo(int numero) {
    boolean primo = true;

    for (int i = numero - 1; i > 1; i--) {
      if (numero % i == 0) {
        primo = false;
        i = 1;
      }
    }
    return primo;
  }
}
