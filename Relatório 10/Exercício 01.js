class Pokemon {
  constructor(apelido, tipo, vidaInicial) {
    this.apelido = apelido;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  } 
  #vida;

  get vida() {
    return this.#vida;
  }

  sofrerDano(pontos) {
    this.#vida -= pontos;
    if (this.#vida <= 0) {
      this.#vida = 0;
    }
    console.log(`${this.apelido} recebeu ${pontos} de dano.\nVida atual: ${this.#vida}\n`);
  }

  atacar(alvo) {
    console.log(`${this.apelido} usou Scratch!`);
    alvo.sofrerDano(10);
  }
}

class Squirtle extends Pokemon {
  constructor(apelido, vidaInicial) {
    super(apelido, "Água", vidaInicial);
  }

  atacar(alvo) {
    console.log(`${this.apelido} usou Water Gun!`);
    alvo.sofrerDano(20);
  }
}

class Bulbasaur extends Pokemon {
  constructor(apelido, vidaInicial) {
    super(apelido, "Planta", vidaInicial);
  }

  atacar(alvo) {
    console.log(`${this.apelido} usou Vine Whip!`);
    alvo.sofrerDano(15);
  }
}

const squirtle = new Squirtle("Jabuti", 100);
const bulbasaur = new Bulbasaur("Samambaia", 30);

bulbasaur.atacar(squirtle);
squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);

console.log(`Vida do ${squirtle.apelido}: ${squirtle.vida}`);
console.log(`Vida do ${bulbasaur.apelido}: ${bulbasaur.vida}`);

// console.log(squirtle.#vida);