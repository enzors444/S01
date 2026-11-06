package org.example;

public class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Lavar a raiz, cortar em rodelas e refogar com manteiga.";
    }
}
