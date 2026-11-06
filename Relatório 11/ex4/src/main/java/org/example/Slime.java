package org.example;

public class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Limpar o slime, cortar em tiras e cozinhar com legumes.";
    }
}
