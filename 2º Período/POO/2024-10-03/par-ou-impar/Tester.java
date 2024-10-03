public class Tester {
  public static void test(String title, Object value, Object expected) {
    if (value == expected) {
      System.out.println("PASS | " + title);
    } else {
      System.out.println("FAIL | " + title);
      System.out.println("Expected: " + expected);
      System.out.println("Received: " + value);
    }
  }
}
