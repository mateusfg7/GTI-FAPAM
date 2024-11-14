public class Animal {
    private String nome;
    private int idade;
    private String tipoAlimentacao;

    public Animal(String nome, int idade, String tipoAlimentacao) {
      setNome(nome);
      setIdade(idade);
      setTipoAlimentacao(tipoAlimentacao);
    }

    public void setNome(String nome) {
      this.nome = nome;
    }

    public void setIdade(int idade) {
      if (idade >= 0) {
        this.idade = idade;
      }
    }

    public void setTipoAlimentacao(String tipoAlimentacao) {
      if (tipoAlimentacao.length() > 5) {
        this.tipoAlimentacao = tipoAlimentacao;
      }
    }

    public String getNome() {
      return this.nome;
    }

    public int getIdade() {
      return this.idade;
    }

    public String getTipoAlimentacao() {
      return this.tipoAlimentacao;
    }

    public String exibirInfo() {
      return "Nome: " + getNome() + "\n Idade: " + getIdade();
    }

    public String exibirHabitat() {
      return  "O habitat é o lar de um animal, um palco complexo onde a vida se desenrola. " +
              "Ele é composto por fatores abióticos, como temperatura e água, e fatores bióticos," +
              "como plantas e outros animais, que se interligam para criar um sistema de suporte de vida.";
    }
}
