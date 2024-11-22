package com.mateusf.finance.models;

import java.util.ArrayList;

import com.mateusf.finance.Utils;

public class User {
  private String name;
  private final String cpf;

  private ArrayList<Account> accounts;

  public User(String name, String cpf) {
    if (!Utils.isCpfValid(cpf)) {
      throw new IllegalArgumentException("Invalid CPF");
    }

    this.name = name;
    this.cpf = cpf;
    this.accounts = new ArrayList<Account>();
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getCpf() {
    return this.cpf;
  }

  public ArrayList<Account> getAccounts() {
    return this.accounts;
  }

  public void addAccount(Account account) {
    this.accounts.add(account);
  }

  public void removeAccount(Account account) {
    this.accounts.remove(account);
  }

  public Account getAccountByNumber(String number) {
    return accounts.stream()
        .filter(account -> account.getNumber().equals(number))
        .findFirst()
        .orElse(null);
  }

  public String toString() {
    String output = "User [name=" + name + ", cpf=" + cpf + "]\n";

    for (Account account : accounts) {
      output += "\n" + account;
    }

    return output;
  }

}
