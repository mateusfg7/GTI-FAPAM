package com.mateusf.finance;

public final class Utils {
  public static boolean isCpfValid(String cpf) {
    return cpf.length() == 11;
  }
}
