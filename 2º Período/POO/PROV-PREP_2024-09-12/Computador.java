public class Computador {
  private String marca;
  private int memoriaRam;
  private int armazenamento;

  public Computador() {
    this.marca = "Genérica";
    this.memoriaRam = 4;
    this.armazenamento = 500;
  }

  public void setMarca(String marca) {
    this.marca = marca;
  }

  public String getMarca() {
    return this.marca;
  }

  public void setMemoriaRam(int memoriaRam) {
    if (memoriaRam < 1) {
      throw new IllegalArgumentException("Quantidade de memória não permitida!");
    } else {
      this.memoriaRam = memoriaRam;
    }
  }

  public int getMemoriaRam() {
    return this.memoriaRam;
  }

  public void setArmazenamento(int armazenamento) {
    if (armazenamento < 1) {
      throw new IllegalArgumentException("Quantidade de armazenamento não permitida!");
    } else {
      this.armazenamento = armazenamento;
    }
  }

  public int getArmazenamento() {
    return this.armazenamento;
  }

  public void atualizarEspecificacoes(String marca, int memoriaRam, int armazenamento) {
    setMarca(marca);
    setMemoriaRam(memoriaRam);
    setArmazenamento(armazenamento);
  }

  public String exibirEspecificacoes() {
    return "Marca: " + getMarca() + "\nMemória: " + getMemoriaRam() + "Gb\nArmazenamento: " + getArmazenamento() + "Gb";
  }

  public boolean ehLento() {
    return memoriaRam < 8;
  }

  public String verificaDesempenho() {
    if (ehLento()) {
      return "Lento";
    } else {
      return "Rápido";
    }
  }
}
