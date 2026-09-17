#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    int matriz_solar[5][5] = {0};
    int opcao;
    int ativas = 0;
    int inativas = 0;
    float porcentagem;

    cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
    cout << "1. Ativar Celula" << endl;
    cout << "2. Ver Mapa da Matriz" << endl;
    cout << "3. Sair" << endl;
    cout << "Escolha uma opcao: ";
    cin >> opcao;

    while (opcao != 3) 
    {

        switch (opcao) 
        {
            case 1: 
                int f, c;

                cout << "Digite a fileira do painel solar (0-4): ";
                cin >> f;

                cout << "Digite a coluna do painel solar (0-4): ";
                cin >> c;

                if (matriz_solar[f][c] == 0) {
                    matriz_solar[f][c] = 1;
                    cout << "Sucesso: Celula solar ativada!" << endl;
                } 
                else 
                {
                    cout << "Erro: Celula solar ja esta em operacao!" << endl;
                }
            break;

            case 2:
                cout << endl << "--- Mapa da Matriz Solar ---" << endl;

                for (int f = 0; f < 5; f++) {
                    for (int c = 0; c < 5; c++) {
                        cout << "[" << matriz_solar[f][c] << "] ";
                    }
                 cout << endl;
                }
            break;
            default:
                cout << endl << "Digite uma opcao valida" << endl;
            break;
        }

        cout << endl << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;
    }

    for (int f = 0; f < 5; f++) {
        for (int c = 0; c < 5; c++) {
            if (matriz_solar[f][c] == 1) 
            {
                ativas++;
            } 
            else 
            {
                inativas++;
            }
        }
    }

    porcentagem = (ativas * 100.0) / 25;

    cout << endl << "=== RELATORIO FINAL DE OPERACAO ===" << endl;
    cout << "Total de celulas ATIVAS: " << ativas << endl;
    cout << "Total de celulas INATIVAS: " << inativas << endl;
    cout << "Capacidade Operacional: " << fixed << setprecision(2) << porcentagem << "%" << endl;

    return 0;
}