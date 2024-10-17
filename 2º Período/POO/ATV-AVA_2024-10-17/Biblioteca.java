import java.util.ArrayList;

public class Biblioteca {
    private String nome;
    ArrayList<Livro> livros = new ArrayList<Livro>();

    public Biblioteca(String nome) {
        setNome(nome);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void adicionarLivro(Livro livro) {
        livros.add(livro);
    }

    public String exibirLivros() {
        String listaLivros = "";
        for (Livro livro : livros) {
            listaLivros += livro.exibirDetalhes() + "\n";
        }
        return listaLivros;
    }

    public String exibirLivros(int ano) {
        String listaLivros = "";
        for (Livro livro : livros) {
            if (livro.getAnoPublicacao() == ano) {
                listaLivros += livro.exibirDetalhes() + "\n";
            }
        }
        return listaLivros;
    }

    public void removerLivro(String titulo) {
        livros.removeIf(livro -> livro.getTitulo().equals(titulo));
    }

}
