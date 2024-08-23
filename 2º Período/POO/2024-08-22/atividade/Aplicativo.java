public class Aplicativo {
  public static void main(String[] args) {
    Personagem jackSparrow = new Personagem();

    jackSparrow.setNome("Capitão Jack Sparrow");
    jackSparrow.setAltura(1.78);
    jackSparrow.setPoder("Art. 171");
    jackSparrow.setBordao("Esse dia será conhecido como o dia em que vocês quase capturaram o Capitão Jack Sparrow!");

    jackSparrow.grow(0.2);
    jackSparrow.gritar();
  }
}
