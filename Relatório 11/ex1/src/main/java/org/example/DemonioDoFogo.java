package org.example;

public class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Meu nome é " + getNome() + " e eu faço o castelo andar.");
    }
}
