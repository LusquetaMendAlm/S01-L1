#include <iostream>
#include <string>

using namespace std;

class Banda 
{
    public:
        string nome;
        int integrantes;
        float potenciaSom;
        int energia;

        int duelar(Banda rival) 
        {
            int energia;
            
            cout << nome << " esta duelando contra " << rival.nome << "!" << endl << endl;
            energia = rival.energia - potenciaSom;

            return energia;
        }

        void exibirStatus() 
        {
            cout << "Exibindo Status de " << nome << "!" << endl;
            cout << "Integrantes: " << integrantes << endl;
            cout << "Potencia do som: " << potenciaSom << endl;
            cout << "Energia: " << energia << endl << endl;
        }
};

int main() 
{

    Banda banda1;
    banda1.nome = "Restart";
    banda1.integrantes = 4;
    banda1.potenciaSom = 67.0;
    banda1.energia = 10;

    Banda banda2;
    banda2.nome = "The smashing pumpkins";
    banda2.integrantes = 3;
    banda2.potenciaSom = 50.0;
    banda2.energia = 100;

    banda1.energia=banda2.duelar(banda1);

    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}