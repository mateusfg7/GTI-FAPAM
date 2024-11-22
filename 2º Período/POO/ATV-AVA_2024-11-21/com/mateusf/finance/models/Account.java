package com.mateusf.finance.models;

import java.util.ArrayList;

public abstract class Account {
  private final String number;
  private double balance;
  private ArrayList<Registry> registries;
  protected int registryCount;

  public Account(String number) {
    this.number = number;
    this.balance = 0;
    this.registryCount = 0;
    this.registries = new ArrayList<Registry>();
  }

  public String getNumber() {
    return this.number;
  }

  public final double getBalance() {
    return this.balance;
  }

  public void setBalance(double balance) {
    this.balance = balance;
  }

  public void addRegistry(Registry registry) {
    double expectedBalance = this.balance + registry.getAmount();

    if (expectedBalance < 0) {
      throw new IllegalArgumentException("Registry amount exceeds account balance");
    } else {
      registry.setId(registryCount++);
      this.registries.add(registry);
      setBalance(expectedBalance);
    }

  }

  public ArrayList<Registry> getRegistries() {
    return this.registries;
  }

  public Registry getRegistry(int id) {
    return registries.stream()
        .filter(registry -> registry.getId() == id)
        .findFirst()
        .orElse(null);
  }

  public void removeRegistry(int id) {
    registries.removeIf(registry -> registry.getId() == id);
  }

  public String toString() {
    return "Account [number=" + number + ", balance=" + balance + "]";
  }

}
