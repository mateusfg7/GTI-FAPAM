public class Aplicativo {
    public static void main(String[] args) {
        Frota frota = new Frota("Comboio FAPAM");
        Motor v8 = new Motor("V8", 290);
        Carro gol = new Carro("Quadrado", 2012, 60, v8);
        Caminhao volvo = new Caminhao("Volvo xpto", 2020, 200, 15000);
        Carro palio = new Carro("Bolinha", 2006, 50, new Motor("v6", 120));

        frota.adicionarVeiculo(palio);
        frota.adicionarVeiculo(volvo);
        frota.adicionarVeiculo(gol);
        frota.adicionarVeiculo(new Carro("Uno", 2000, 40, new Motor("v6", 89)));

        System.out.println(frota.exibirVeiculos());
    }
}
