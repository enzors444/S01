package org.example;

import java.util.ArrayList;

public class Cozinheiro {

    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        // Composição: a panela é criada dentro do cozinheiro e pertence a ele.
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        // Agregação: o monstro já existe fora do cozinheiro e é adicionado à lista.
        this.ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("\n--- Banquete de " + nome + " ---");
        System.out.println("Material da panela: " + panela.getMaterial());

        for (Monstro monstro : ingredientes) {
            System.out.println(monstro.getNome() + " - " + monstro.receita());
        }
    }
}
