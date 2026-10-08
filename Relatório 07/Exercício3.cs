using System;
using System.Collections.Generic;

class Grimorio
{
    public string feiticoFavorito { get; private set; }

    public Grimorio()
    {
        feiticoFavorito = "Nenhum";
    }

    public void Abrir()
    {
		Console.WriteLine("\nGRIMÓRIO: ");
        Console.WriteLine("Feitico favorito do grimório: " + feiticoFavorito);
    }

    public void DefinirFeitico(string feitico)
    {
        feiticoFavorito = feitico;
    }
}

class Companheiro
{
    public string nome { get; set; }
    public string funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.nome = nome;
        this.funcao = funcao;
    }

    public void Apresentar()
    {
		Console.WriteLine("\nCOMPANHEIRO");
        Console.WriteLine("Nome: " + nome);
        Console.WriteLine("Funcao: " + funcao);
    }
}

class Maga
{
    public string nome { get; private set; }

    private Grimorio grimorio;
    private List<Companheiro> companheiros;

    public Maga(string nome)
    {
        this.nome = nome;
		// Composição é o quando o objeto é instanciado dentro da classe, ou seja, só existe quando a maga existe e compõem sua estrutura
        grimorio = new Grimorio();
        companheiros = new List<Companheiro>();
    }

    public void Recrutar(Companheiro companheiro)
    {
		// Agregação é quando o objeto já existe fora da classe e é "agregado" a sua estrutura, não sendo dependente da mesma
        companheiros.Add(companheiro);
    }

    public void MostrarGrupo()
    {
		Console.WriteLine("MAGA");
        Console.WriteLine("Nome: " + nome);
        Console.WriteLine("Companheiros:");

        foreach (Companheiro companheiro in companheiros)
        {
            companheiro.Apresentar();
        }
    }

    public void DefinirFeitico(string feitico)
    {
        grimorio.DefinirFeitico(feitico);
    }

    public void Abrir()
    {
        grimorio.Abrir();
    }
}

class Program
{
    static void Main()
    {	
        Companheiro companheiro1 = new Companheiro("Stark", "Guerreiro humano");
        Companheiro companheiro2 = new Companheiro("Fern", "Maga humana");
        Maga maga = new Maga("Frieren");

        maga.Recrutar(companheiro1);
        maga.Recrutar(companheiro2);
        maga.DefinirFeitico("Judradjim");

        maga.MostrarGrupo();
        maga.Abrir();
    }
}