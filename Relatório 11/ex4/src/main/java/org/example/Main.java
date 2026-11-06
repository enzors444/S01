package org.example;

public class Main {
    public static void main(String[] args) {

        Slime slime = new Slime("Slime azul");
        Mandragora mandragora = new Mandragora("Mandrágora da masmorra");

        Cozinheiro senshi = new Cozinheiro("Senshi", "Ferro");

        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();
    }
}
