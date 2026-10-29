class FichaDeCriatura {
  constructor(criatura, nivelDePerigo) {
    this.criatura = criatura;
    this.nivelDePerigo = nivelDePerigo;
  }

  descrever() {
    return `Criatura: ${this.criatura} -> Nível de perigo: ${this.nivelDePerigo}`;
  }
}

class DiarioMisterioso {
  #fichas;

  constructor(numero) {
    this.numero = numero;
    this.#fichas = [];
  }

  anotar(criatura, nivelDePerigo) {
    const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
    this.#fichas.push(ficha);
  }

  exibirFichas() {
    console.log(`${this.numero}º DIÁRIO`);

    this.#fichas.forEach(ficha => {
      console.log(ficha.descrever());
    });
  }
}

class Funcionario {
  constructor(nome, cargo) {
    this.nome = nome;
    this.cargo = cargo;
  }
}

class CabanaDoMisterio {
  #funcionarios;

  constructor(dono) {
    this.dono = dono;
    this.#funcionarios = [];
  }

  contratar(funcionario) {
    this.#funcionarios.push(funcionario);
  }

  abrirAsPortas() {
    console.log(`\nA Cabana do Mistério está aberta para visitantes!`);
    console.log(`Seu anfitrião: ${this.dono}`);

    this.#funcionarios.forEach(funcionario => {
      console.log(`${funcionario.cargo}: ${funcionario.nome}`);
    });
  }
}

const diario = new DiarioMisterioso(3);

diario.anotar("Bill Cipher", 10);
diario.anotar("Minotauro", 6);
diario.anotar("Leprecorn", 1);

diario.exibirFichas();

const dipper = new Funcionario("Dipper", "Pesquisador");
const mabel = new Funcionario("Wendy", "Atendente");
const cabana = new CabanaDoMisterio("Tio avô Stan");

cabana.contratar(dipper);
cabana.contratar(mabel);

cabana.abrirAsPortas();