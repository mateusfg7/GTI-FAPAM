package com.mateusf.finance.models;

public class BankAccount extends Account {
  private String agency;

  public BankAccount(String number, String agency) {
    super(number);
    this.agency = agency;
  }

  public String getAgency() {
    return this.agency;
  }

  public void setAgency(String agency) {
    this.agency = agency;
  }

  @Override
  public String toString() {
    return "BankAccount [agency=" + agency + ", number=" + getNumber() + ", balance=" + getBalance() + "]";
  }

}
