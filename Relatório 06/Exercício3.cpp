#include <iostream>
#include <string>

using namespace std;

class MembroInatel 
{
    protected:
        string nome;

    public:
        void setNome(string nome) 
        {
            this->nome = nome;
        }

        virtual void seApresentar() 
        {
            cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
        }
};
class Aluno : public MembroInatel 
{
    private:
        string curso;

    public:
        void setCurso(string curso) 
        {
            this->curso = curso;
        }

        void seApresentar() override 
        {
            cout << "Meu nome é " << nome << " e estudo no curso de " << curso << "." << endl;
        }
};
class Professor : public MembroInatel 
{
    private:
        string disciplina;

    public:
        void setDisciplina(string disciplina) 
        {
            this->disciplina = disciplina;
        }

        void seApresentar() override 
        {
            cout << "Meu nome é " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
        }
};

int main() {
    Aluno aluno;
    Professor professor;

    aluno.setNome("Lucas");
    aluno.setCurso("Engenharia de Software");

    professor.setNome("Chris");
    professor.setDisciplina("Programação orientada a objetos");

    aluno.seApresentar();
    professor.seApresentar();

    return 0;
}