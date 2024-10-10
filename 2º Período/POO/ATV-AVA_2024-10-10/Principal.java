public class Principal {
  public static void main(String[] args) {
    Fornecedor drinksDistribution = new Fornecedor("Drinks Distribution", "000000000",
        "contato@drinksdistribution.com");
    Fornecedor minasQueijo = new Fornecedor("Mina Queijo", "1111111111", "atendimento@minasqueijo.com");

    Produto jackDanielsWinterJack = new Produto("Jack Daniels Winter Jack", 200.00, 10, drinksDistribution);
    Produto toddy = new Produto("Toddy", 4.00, 23, drinksDistribution);
    Produto queijoQuale = new Produto("Queijo Quale", 40.00, 15, minasQueijo);

    drinksDistribution.setNome("Drinks Distribution Ltd.");
    test("drinksDistribution setNome", drinksDistribution.getNome(), "Drinks Distribution Ltd.");

    minasQueijo.setContato("+55 (31) 1234-5678");
    test("minasQueijo setContato", minasQueijo.getContato(), "+55 (31) 1234-5678");

    test("jackDanielsWinterJack getNome", jackDanielsWinterJack.getName(), "Jack Daniels Winter Jack");
    test("jackDanielsWinterJack getPreco", jackDanielsWinterJack.getPreco(), 200.00);
    test("jackDanielsWinterJack getQuantidade", jackDanielsWinterJack.getQuantidade(), 10);
    test("jackDanielsWinterJack getValorTotal", jackDanielsWinterJack.getValorTotal(), 2000.00);

    jackDanielsWinterJack.aumentaQuantidade(5);
    test("jackDanielsWinterJack aumentaQuantidade", jackDanielsWinterJack.getQuantidade(), 15);
    test("jackDanielsWinterJack getValorTotal after increase", jackDanielsWinterJack.getValorTotal(), 3000.00);

    jackDanielsWinterJack.diminuiQuantidade(3);
    test("jackDanielsWinterJack diminuiQuantidade", jackDanielsWinterJack.getQuantidade(), 12);
    test("jackDanielsWinterJack getValorTotal after decrease", jackDanielsWinterJack.getValorTotal(), 2400.00);

    try {
      jackDanielsWinterJack.setQuantidade(-5);
      System.out.println("\n[FAIL] jackDanielsWinterJack setQuantidade with negative value did not throw exception");
    } catch (IllegalArgumentException e) {
      System.out.println("[PASS] jackDanielsWinterJack setQuantidade with negative value threw exception");
    }

    jackDanielsWinterJack.setPreco(250.00);
    test("jackDanielsWinterJack setPreco", jackDanielsWinterJack.getPreco(), 250.00);
    test("jackDanielsWinterJack getValorTotal after price change", jackDanielsWinterJack.getValorTotal(), 3000.00);

    test("jackDanielsWinterJack getFornecedor getNome", jackDanielsWinterJack.getFornecedor().getNome(),
        "Drinks Distribution Ltd.");

    toddy.aumentaQuantidade(10);
    test("toddy aumentaQuantidade", toddy.getQuantidade(), 33);

    queijoQuale.diminuiQuantidade(5);
    test("queijoQuale diminuiQuantidade", queijoQuale.getQuantidade(), 10);

    try {
      toddy.setQuantidade(-1);
      System.out.println("\n[FAIL] toddy setQuantidade with negative value did not throw exception");
    } catch (IllegalArgumentException e) {
      System.out.println("[PASS] toddy setQuantidade with negative value threw exception");
    }
  }

  public static void test(String title, Object currentValue, Object expectedValue) {
    if (currentValue.equals(expectedValue)) {
      System.out.println("[PASS] " + title);
    } else {
      System.out.println("\n[FAIL] " + title);
      System.out.println("    Expected: " + expectedValue);
      System.out.println("    Value:    " + currentValue + "\n");
    }
  }
}
