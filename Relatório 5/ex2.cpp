#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float confiabilidade = 1.0;

    for(int i = 0; i < tamanho; i++) {
        confiabilidade = confiabilidade * probabilidades[i];
    }

    return confiabilidade;
}

int main() {
    int n;
    float probabilidades[100];

    cout << "Digite a quantidade de componentes do sistema: ";
    cin >> n;

    for(int i = 0; i < n; i++) {
        cout << "Digite a probabilidade do componente " << i + 1 << " (ex: 0.95): ";
        cin >> probabilidades[i];
    }

    float confiabilidade = calcular_confiabilidade_sistema(probabilidades, n);

    cout << "Confiabilidade total do sistema: " << confiabilidade << " (" << confiabilidade * 100 << "%)" << endl;

    return 0;
}