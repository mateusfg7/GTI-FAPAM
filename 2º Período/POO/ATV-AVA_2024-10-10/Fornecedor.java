public class Fornecedor {
  private String nome;
  private String cnpj;
  private String contato; // formatos: email@email.com ou +(xx) xx xxxx-xxxx

  public Fornecedor(String nome, String cnpj, String contato) {
    setNome(nome);
    setCnpj(cnpj);
    setContato(contato);
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getNome() {
    return this.nome;
  }

  public void setCnpj(String cnpj) {
    this.cnpj = cnpj;
  }

  public String getCnpj() {
    return cnpj;
  }

  public void setContato(String contato) {
    this.contato = contato;
  }

  public String getContato() {
    return contato;
  }
}
