package org.example;

public class Main {
    public static void main(String[] args) {

        ItemDoCardapio cafe = new ItemDoCardapio("Café coado", 10.0);
        ItemDoCardapio curry = new ItemDoCardapio("Curry da casa", 25.0);
        ComboLeblanc combo = new ComboLeblanc("Café com curry", 35.0);

        CafeLeblanc leblanc = new CafeLeblanc();

        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}
