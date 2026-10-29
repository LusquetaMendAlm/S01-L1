class UsuarioDeNen {
  constructor(nome) {
    this.nome = nome;
  }

  atacar(alvo) {
    console.log(
      `${this.nome} ataca ${alvo.nome} usando Nen!`
    );
  }
}

class Intensificador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} usa intensificação para atacar ${alvo.nome}!`);
  }
}

class Transmutador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} usa transmutação para atacar ${alvo.nome}!`);
  }
}

class Materializador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} usa materialização para atacar ${alvo.nome}!`);
  }
}

class Aranha {
  constructor(nome, numero) {
    this.nome = nome;
    this.numero = numero;
  }
}

class TrupeFantasma {
  #aranhas;

  constructor(cidade, aranhas = []) {
    this.cidade = cidade;
    this.#aranhas = aranhas;
  }

  revelarAranhas() {
    console.log(`Aranhas são vistas na cidade de ${this.cidade}:`);

    this.#aranhas.forEach(aranha => {
      console.log(`Número ${aranha.numero}: ${aranha.nome}`);
    });
  }

  buscarAranha(numero) {
    return this.#aranhas.find(aranha => aranha.numero === numero);
  }
}

const aranha1 = new Aranha("Feitan", 2);
const aranha2 = new Aranha("Shizuku", 8);
const trupe = new TrupeFantasma("Meteor City", [aranha1,  aranha2]);

trupe.revelarAranhas();

const alvo = trupe.buscarAranha(2);

if (alvo) {
  console.log(`\nAlvo encontrado: ${alvo.nome}, ${alvo.numero}ª aranha`);
}

const usuarios = [
  new Intensificador("Gon"),
  new Transmutador("Killua"),
  new Materializador("Kurapika")
];

console.log("\nO combate direto começa!");
if (alvo) {
  usuarios.forEach(usuario => {
    usuario.atacar(alvo);
  });
}