package org.example;

public class Main {
    public static void main(String[] args) {

        Morador howl = new Mago("Howl", "Transformação");
        Morador calcifer = new DemonioDoFogo("Calcifer");

        howl.apresentar();
        calcifer.apresentar();

        // Morador morador = new Morador("Sophie");
    }
}
