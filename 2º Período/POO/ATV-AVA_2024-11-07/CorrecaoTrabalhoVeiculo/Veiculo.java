import java.util.Calendar;

class Veiculo {
    private String modelo;
    private int ano;
    private final int capacidadeTanque;
    private double litrosTanque;

    public Veiculo(String modelo, int ano, int capacidadeTanque) {
        setModelo(modelo);
        setAno(ano);
        if (capacidadeTanque > 0) {
            this.capacidadeTanque = capacidadeTanque;
        } else {
            this.capacidadeTanque = 100;
        }
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        if (ano > 1900 && ano < Calendar.getInstance().get(Calendar.YEAR))
            this.ano = ano;
        else
            this.ano = Calendar.getInstance().get(Calendar.YEAR);
    }

    public int getCapacidadeTanque() {
        return capacidadeTanque;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getModelo() {
        return modelo;
    }

    public String descricao() {
        return "Modelo: " + getModelo() + ". Ano: " + getAno();
    }

    public double abastecer(double litros) {
        if (litros > capacidadeTanque - this.litrosTanque) {
            return abastecer();
        }
        this.litrosTanque += litros;
        return (litros * Combustivel.valorGasolina);
    }

    public double abastecer() {
        return this.abastecer(capacidadeTanque - this.litrosTanque);
    }
}