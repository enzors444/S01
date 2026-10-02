#include <iostream>
#include <string>
using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << "A banda " << nome << " sobe ao palco e desafia a banda " << rival.nome << "!" << endl;
        rival.energia = rival.energia - potenciaSom;
    }

    void exibirStatus() {
        cout << "Banda: " << nome << " | Integrantes: " << integrantes
             << " | Potencia de Som: " << potenciaSom << " | Energia: " << energia << endl;
    }
};

int main() {
    Banda banda1;
    Banda banda2;

    banda1.nome = "Os Mutantes";
    banda1.integrantes = 3;
    banda1.potenciaSom = 35.5;
    banda1.energia = 100;

    banda2.nome = "Legiao Urbana";
    banda2.integrantes = 4;
    banda2.potenciaSom = 28.0;
    banda2.energia = 100;

    cout << "=== Duelo de Bandas ===" << endl;

    banda1.duelar(banda2);

    cout << endl;
    cout << "=== Status apos o confronto ===" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
