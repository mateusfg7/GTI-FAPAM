public class Livro {
  private String titulo;
  private String autor;
  private int anoPublicacao;
  final private int codigoLivro;

  public Livro(String titulo, String autor, int anoPublicacao) {
    setTitulo(titulo);
    setAutor(autor);
    setAnoPublicacao(anoPublicacao);

    this.codigoLivro = 0;
  }

  public Livro(String titulo, String autor) {
    this(titulo, autor, 2024);
  }

  public String getTitulo() {
    return titulo;
  }

  public void setTitulo(String titulo) {
    this.titulo = titulo;
  }

  public String getAutor() {
    return autor;
  }

  public void setAutor(String autor) {
    this.autor = autor;
  }

  public int getAnoPublicacao() {
    return anoPublicacao;
  }

  public void setAnoPublicacao(int anoPublicacao) {
    this.anoPublicacao = anoPublicacao;
  }

  public int getCodigoLivro() {
    return codigoLivro;
  }

  public String exibirDetalhes() {
    return "Título: " + getTitulo() + "\nAutor: " + getAutor();
  }

  public String exibirDetalhes(boolean completo) {
    return exibirDetalhes() + "\nAno de Publicação: " + getAnoPublicacao();
  }
}