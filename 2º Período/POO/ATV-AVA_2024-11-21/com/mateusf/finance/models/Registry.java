package com.mateusf.finance.models;

public class Registry {
  private int id;
  private double amount;
  private String payer;
  private String receiver;
  private String description;

  public Registry(double amount, String payer, String receiver) {
    setAmount(amount);
    setPayer(payer);
    setReceiver(receiver);
  }

  public Registry(double amount, String payer, String receiver, String description) {
    setAmount(amount);
    setPayer(payer);
    setReceiver(receiver);
    setDescription(description);
  }

  public int getId() {
    return this.id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public double getAmount() {
    return amount;
  }

  public void setAmount(double amount) {
    this.amount = amount;
  }

  public String getPayer() {
    return this.payer;
  }

  public void setPayer(String payer) {
    this.payer = payer;
  }

  public String getReceiver() {
    return this.receiver;
  }

  public void setReceiver(String receiver) {
    this.receiver = receiver;
  }

  public String getDescription() {
    return this.description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String toString() {
    return "Registry [\n id=" + id + ", \n amount=" + amount + ", \n payer=" + payer + ", \n receiver=" + receiver
        + ", \n description="
        + description + "\n]";
  }

}
