class Pistola {
  constructor(modelo) {
    this.modelo = modelo;
  }
}

class AgenteProtocolo {
  #pistola;

  constructor(codinome, modeloDaPistola) {
    this.codinome = codinome;
    this.#pistola = new Pistola(modeloDaPistola);
  }

  usarHabilidade() {
    throw new Error("Agente sem habilidade.");
  }

  entrarEmCombate() {
    console.log(`\nAgente: ${this.codinome}`);
    console.log(`Pistola: ${this.#pistola.modelo}`);
    console.log(`Habilidade: ${this.usarHabilidade()}`);
  }
}

class Controlador extends AgenteProtocolo {
  usarHabilidade() {
    return "Smoka zonas estratégicas pra fazer o entry.";
  }
}

class Iniciador extends AgenteProtocolo {
  usarHabilidade() {
    return "Spota inimigos para ganhar info.";
  }
}

class Duelista extends AgenteProtocolo {
  usarHabilidade() {
    return "Faz o entry como Frontline.";
  }
}

class Esquadrao {
  #agentes;

  constructor(nome, agentes) {
    this.nome = nome;
    this.#agentes = agentes;
  }

  iniciarPartida() {
    console.log(`Esquadrão ${this.nome} - Partida encontrada`);
    this.#agentes.forEach(agente => {
      agente.entrarEmCombate();
    });
  }

  listarControladores() {
    return this.#agentes.filter(
      agente => agente instanceof Controlador
    );
  }
}

const controlador1 = new Controlador("Viper", "Shorty");
const controlador2 = new Controlador("Clove", "Classic");
const iniciador = new Iniciador("Kay/o", "Bandit");
const duelista = new Duelista("ISO", "Sheriff");
const esquadrao = new Esquadrao("LOUD", [controlador1,  controlador2,  iniciador,  duelista]);

esquadrao.iniciarPartida();

console.log("\nControladores do esquadrão:");
esquadrao.listarControladores().forEach(agente => { console.log(agente.codinome); });

// const agente = new AgenteProtocolo("Agente", "Classic");
// agente.entrarEmCombate();