using System;
using System.Collections.Generic;

class EntidadeCosmica
{
    public string nome { get; set; }
    public string origem { get; set; }

    public EntidadeCosmica(string nome)
    {
        this.nome = nome;
        origem = "Desconhecida";
    }

    public virtual void Manifestar()
    {
        if (origem != "Desconhecida")
        {
            Console.WriteLine(nome + " possui como origem, " + origem + ".");
        }
    }
}

class Profundo : EntidadeCosmica
{
    public Profundo(string nome): base(nome) {}

    public override void Manifestar()
    {
        Console.WriteLine(nome + " manifesta sua presença vinda de " + origem + "!");
    }
}

class MiGo : EntidadeCosmica
{
    public MiGo(string nome): base(nome) {}

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine(nome + " manifesta sua presença vinda de " + origem + "!");
    }
}

class Pesquisador
{
    public string nome { get; set; }

    private List<EntidadeCosmica> catalogo;

    public Pesquisador(string nome)
    {
        this.nome = nome;
        catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica entidade)
    {
        catalogo.Add(entidade);
    }

    public void LerCatalogo()
    {
		Console.WriteLine("PESQUISADOR");
        Console.WriteLine("Nome: " + nome);
        Console.WriteLine("Catálogo de entidades:");

        foreach (EntidadeCosmica entidade in catalogo)
        {
			Console.WriteLine("\nENTIDADE");
            entidade.Manifestar();
        }
    }
}

class Program
{
    static void Main()
    {
        EntidadeCosmica entidade1 = new Profundo("Cthullu");
        EntidadeCosmica entidade2 = new MiGo("Mi-go");
        EntidadeCosmica entidade3 = new EntidadeCosmica("Azathoth");

        entidade1.origem = "R'Lyeh";
        entidade2.origem = "Yaggoth";
        entidade3.origem = "Centro do Universo";

        Pesquisador pesquisador = new Pesquisador("Dr. Henry Armitage");

        pesquisador.Catalogar(entidade1);
        pesquisador.Catalogar(entidade2);
        pesquisador.Catalogar(entidade3);

        pesquisador.LerCatalogo();
    }
}