public class Motor {
    private final String tipo;
    private final int potencia;

    public Motor(String tipo, int potencia) {
        this.tipo = tipo;
        this.potencia = potencia;
    }

    public int getPotencia() {
        return potencia;
    }

    public String getTipo() {
        return tipo;
    }

    public String detalhes() {
        return "Potencia: " + getPotencia() + " Tipo: " + getTipo();
    }

}
