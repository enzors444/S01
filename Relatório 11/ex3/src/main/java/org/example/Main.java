package org.example;

public class Main {
    public static void main(String[] args) {

        Alienigena serpo = new Alienigena("Serpo");
        EspiritoYoukai turboGranny = new EspiritoYoukai("Turbo Granny");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Escola", serpo);
        mapa.registrar("Túnel", turboGranny);

        mapa.investigar("Escola");
        mapa.investigar("Túnel");
        mapa.investigar("Parque");
    }
}
