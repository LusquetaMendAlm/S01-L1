#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    float capacidadeMax;
    float carga=0.0f;
    float peso;
    int opcao;

    cout << "Informe a capacidade maxima de carga do drone (kg): " << endl;
    cin >> capacidadeMax;

    cout << endl << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
    cout << "1. Verificar Carga" << endl;
    cout << "2. Carregar Pacote" << endl;
    cout << "3. Descarregar Pacote" << endl;
    cout << "4. Encerrar Operacao" << endl;
    cout << "Escolha uma opcao: ";
    cin >> opcao;

    while (opcao != 4) {

        switch(opcao)
        {
            case 1:
                cout << "Carga Atual: " << fixed << setprecision(2) << carga << " kg / " << capacidadeMax << " kg" << endl;
                cout << "Espaco Disponivel: " << (capacidadeMax-carga) << " kg" << endl;
            break;
        

            case 2:
                cout << "Digite o peso do pacote a ser carregado (kg): ";
                cin >> peso;

                if ((carga + peso) <= capacidadeMax) {
                    carga += peso;
                    cout << "Pacote adicionado com sucesso!" << endl;
                 } 
                else 
                {
                    cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
                }
            break;
        

            case 3: 

                cout << "Digite o peso a ser removido (kg): ";
                cin >> peso;

                if (peso <= carga) {
                    carga -= peso;
                    cout << "Pacote descarregado com sucesso!" << endl;
                } 
                else 
                {
                    cout << "Erro: Nao e possivel remover mais peso do que o carregado." << endl;
                }
            break;
            default: 

                cout << "Escreva uma opcao valida.";
            break;
        }

        cout << endl <<  "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;
    }

    cout << endl << "Encerrando sistema de telemetria..." << endl;

    return 0;
}