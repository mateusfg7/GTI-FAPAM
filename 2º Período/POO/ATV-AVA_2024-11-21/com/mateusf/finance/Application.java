package com.mateusf.finance;

import java.util.Date;

import com.mateusf.finance.models.BankAccount;
import com.mateusf.finance.models.CreditCard;
import com.mateusf.finance.models.Registry;
import com.mateusf.finance.models.User;

public class Application {
  public static void main(String[] args) {
    User user = new User("Mateus", "12345678952");

    user.addAccount(new BankAccount("987654", "NuBank"));
    user.addAccount(new CreditCard("753951", "000", new Date(), -5000));

    BankAccount myAccount = (BankAccount) user.getAccountByNumber("987654");

    myAccount.addRegistry(new Registry(500, "SoftAlgumaCoisa LTDA", "Mateus", "Salário"));

    myAccount.addRegistry(new Registry(-200, "Mateus", "Mercado"));
    CreditCard myCreditCard = (CreditCard) user.getAccountByNumber("753951");

    myCreditCard.addRegistry(new Registry(-1000, "Mateus", "Mercado"));
    myCreditCard.addRegistry(new Registry(-2000, "Mateus", "AWS"));
    myCreditCard.addRegistry(new Registry(3000, "Mateus", "Banco", "Pagamento da fatura"));

    System.out.println(user);
    System.out.println("\n\n");

    System.out.println(myCreditCard);
    for (Registry registry : myCreditCard.getRegistries()) {
      System.out.println(registry);
    }
  }
}