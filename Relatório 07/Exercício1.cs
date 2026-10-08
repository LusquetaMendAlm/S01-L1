using System;

class CombatenteDeGondor
{
    public string nome { get; private set; }
    public string povo { get; private set; }
    public string posto { get; private set; }
    public string armamento { get; private set; }

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.nome = nome;
        this.povo = povo;
        this.posto = posto;
        armamento = "Desarmado";
    }

    public void Equipar(string arma)
    {
        armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine("Nome: " + nome);
        Console.WriteLine("Povo: " + povo);
        Console.WriteLine("Posto: " + posto);
		if (armamento != "Desarmado") Console.WriteLine("Armamento: " + armamento + "\n");
        
    }
}

class Program
{
    static void Main()
    {
        CombatenteDeGondor combatente1 = new CombatenteDeGondor("Talion", "Nunca-morto", "Espadachim");
        CombatenteDeGondor combatente2 = new CombatenteDeGondor("Celebrimbor", "Espectro/Elfo", "General");
        CombatenteDeGondor combatente3 = new CombatenteDeGondor("Torvin", "Anão", "Caçador");

        combatente1.Equipar("Espada");
        combatente2.Equipar("Anel");
        combatente3.Equipar("Martelo");

        combatente1.ApresentarUnidade();
        combatente2.ApresentarUnidade();
        combatente3.ApresentarUnidade();
    }
}