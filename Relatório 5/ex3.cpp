#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    float capacidade;
    float cargaAtual = 0.0;
    float peso;
    int opcao = 0;

    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidade;

    while(opcao != 4) {
        cout << endl;
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if(opcao == 1) {
            cout << fixed << setprecision(2);
            cout << "Carga Atual: " << cargaAtual << " kg / "
                 << capacidade << " kg" << endl;
            cout << "Espaco Disponivel: "
                 << capacidade - cargaAtual << " kg" << endl;
        }

        if(opcao == 2) {
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> peso;

            if(cargaAtual + peso <= capacidade) {
                cargaAtual = cargaAtual + peso;
                cout << "Pacote adicionado com sucesso!" << endl;
            } else {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            }
        }

        if(opcao == 3) {
            cout << "Digite o peso a ser descarregado (kg): ";
            cin >> peso;

            if(peso <= cargaAtual) {
                cargaAtual = cargaAtual - peso;
                cout << "Pacote descarregado com sucesso!" << endl;
            } else {
                cout << "Erro: Peso maior que a carga atual!" << endl;
            }
        }

        if(opcao == 4) {
            cout << "Encerrando sistema de telemetria..." << endl;
        }
    }

    return 0;
}
