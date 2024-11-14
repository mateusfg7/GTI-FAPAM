public class Frota {
    private String nome;
    private Veiculo[] veiculos;
    private int contador;

    public Frota(String nome) {
        setNome(nome);
        veiculos = new Veiculo[10];
        contador = 0;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void adicionarVeiculo(Veiculo veiculo) {
        if (contador <= 10) {
            veiculos[contador++] = veiculo;
        } else {
            System.out.println("Estou de forma errada te falando qeu não cabe.");
        }
    }

    public String exibirVeiculos() {
        String retorno = "";
        for (int i = 0; i < contador; i++) {
            retorno += veiculos[i].descricao() + "\n";
        }
        return retorno;
    }

    public void removerVeiculo(String modelo) {
        for (int i = 0; i < 10; i++) {
            if (veiculos[i].getModelo().equals(modelo)) {
                veiculos[i] = veiculos[i + 1];
            }
        }

    }

}
