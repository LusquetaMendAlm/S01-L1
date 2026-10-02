#include <iostream>
#include <string>

using namespace std;

class LinkSocial 
{
    private:
        string nome;
        string arcana;
        int rank;

    public:
        string getNome() 
        {
            return nome;
        }
        string getArcana() 
        {
            return arcana;
        }
        int getRank() 
        {
            return rank;
        }
        void setNome(string nome) 
        {
            this->nome = nome;
        }
        void setArcana(string arcana) 
        {
            this->arcana = arcana;
        }
        void setRank(int rank) 
        {
            this->rank = rank;
        }
        void subirRank() 
        {
            rank++;
        }

};

int main() 
{
    LinkSocial aliado;

    aliado.setNome("Futaba");
    aliado.setArcana("Hermit");
    aliado.setRank(1);

    cout << "Link Social de " << aliado.getNome() <<endl;
    cout << "Nome: " << aliado.getNome() << endl;
    cout << "Arcana: " << aliado.getArcana() << endl;
    cout << "Rank: " << aliado.getRank() << endl << endl;

    aliado.subirRank();
    cout << "Link Social de " << aliado.getNome() << " com level up ❤!" << endl;
    cout << "Nome: " << aliado.getNome() << endl;
    cout << "Arcana: " << aliado.getArcana() << endl;
    cout << "Rank: " << aliado.getRank() << endl;

    return 0;
}