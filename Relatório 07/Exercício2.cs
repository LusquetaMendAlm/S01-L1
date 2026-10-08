using System;
using System.Collections.Generic;

class Pokemon
{
    public string especie { get; set; }
    public int nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.especie = especie;
        this.nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine(especie + " usou Stomp\n");
    }
}

class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel): base(especie, nivel) {}

    public override void Atacar()
    {
        Console.WriteLine(especie + " usou Razor Leaf!\n");
    }
}

class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel): base(especie, nivel) {}

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine(especie + " usou Thunderbolt!\n");
    }
}

class Program
{
    static void Main()
    {
        Pokemon pokemonNormal = new Pokemon("Exploud", 40);
        Pokemon pokemonPlanta = new TipoPlanta("Sceptile", 36);
        Pokemon pokemonEletrico = new TipoEletrico("Electivire", 30);

        List<Pokemon> pokemons = new List<Pokemon>();

        pokemons.Add(pokemonNormal);
        pokemons.Add(pokemonPlanta);
        pokemons.Add(pokemonEletrico);

        foreach (Pokemon pokemon in pokemons)
        {
            pokemon.Atacar();
        }
    }
}