package com.mateusf.finance.models;

import java.util.Date;

public class CreditCard extends Account {
  private final String cvv;
  private Date expirationDate;
  private double limit;

  public CreditCard(String number, String cvv, Date expirationDate, double limit) {
    super(number);
    this.cvv = cvv;
    this.expirationDate = expirationDate;
    this.limit = limit;
  }

  public String getCvv() {
    return this.cvv;
  }

  public Date getExpirationDate() {
    return this.expirationDate;
  }

  public void setExpirationDate(Date expirationDate) {
    this.expirationDate = expirationDate;
  }

  public double getLimit() {
    return this.limit;
  }

  public void setLimit(double limit) {
    this.limit = limit;
  }

  @Override
  public void addRegistry(Registry registry) {
    double expectedBalance = getBalance() + registry.getAmount();

    if (expectedBalance < limit) {
      throw new IllegalArgumentException("Registry amount exceeds credit card limit");
    } else {
      registry.setId(registryCount++);
      getRegistries().add(registry);
      setBalance(expectedBalance);
    }

  }

  @Override
  public String toString() {
    return "CreditCard [cvv=" + cvv + ", expirationDate=" + expirationDate + ", limit=" + limit + ", number="
        + getNumber() + ", balance=" + getBalance() + "]";
  }

}
