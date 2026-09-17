#include <iostream>

using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float resultado = 1.0f;

    for (int i = 0; i < tamanho; i++) {
        resultado *= probabilidades[i];
    }

    return resultado;
}

int main() {
    int tamanho;
    float confiabilidade;
    float confiabilidadePerCent;

    cout << "Digite a quantidade de componentes do sistema: ";
    cin >> tamanho;

    float probabilidades[tamanho];

    for (int i = 1; (i-1) < tamanho; i++) {
        cout << "Digite a probabilidade do componente " << i << " (Entre 0 e 1.0): ";
        cin >> probabilidades[i-1];
    }

    confiabilidade = calcular_confiabilidade_sistema(probabilidades, tamanho);
    confiabilidadePerCent = confiabilidade*100;

    cout << "Confiabilidade total do sistema: " << confiabilidade << " " << confiabilidadePerCent << "%" << endl;

    return 0;
}