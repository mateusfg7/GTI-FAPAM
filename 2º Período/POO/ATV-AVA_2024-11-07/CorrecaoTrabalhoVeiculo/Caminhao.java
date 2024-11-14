public class Caminhao extends Veiculo {
    private int capacidadeCarga;

    public Caminhao(String modelo, int ano, int capacidadeTanque, int capacidadeCarga) {
        super(modelo, ano, capacidadeTanque);
        this.capacidadeCarga = capacidadeCarga;
    }

    @Override
    public String descricao() {
        return "Caminhao " + super.descricao();
    }
}
