#include <iostream>
#include <string>
#include <vector>

using namespace std;


class Hobbit 
{
    protected:
        string nome;

    public:
        Hobbit(string nome) {
            this->nome = nome;
        }

        virtual void fazerAtividade() 
        {
            cout << "O hobbit " << nome << " está aproveitando um dia tranquilo na Comarca." << endl;
        }
};

class Jardineiro : public Hobbit 
{
    public:
        Jardineiro(string nome) : Hobbit(nome) {}

        void fazerAtividade() override 
        {
            cout << "O jardineiro " << nome << " está cuidando das flores e plantas ao redor das tocas!" << endl;
        }
};

class Cozinheiro : public Hobbit 
{
    public:
        Cozinheiro(string nome) : Hobbit(nome) {}

        void fazerAtividade() override 
        {
            cout << "O cozinheiro " << nome << " está preparando o segundo café da manha para os convidados!" << endl;
        }
};

class Fazendeiro : public Hobbit 
{
    public:
        Fazendeiro(string nome) : Hobbit(nome) {}

        void fazerAtividade() override 
        {
            cout << "O fazendeiro " << nome << " está colhendo vegetais e hortaliças em suas terras!" << endl;
        }
};

int main() 
{
    Jardineiro jardineiro("Sam");
    Cozinheiro cozinheiro("Frodo");
    Fazendeiro fazendeiro("Bilbo");

    vector<Hobbit*> hobbits = { &jardineiro, &cozinheiro, &fazendeiro };
    
    for (Hobbit* hobbit : hobbits) 
    {
        hobbit->fazerAtividade();
    }

    return 0;
}