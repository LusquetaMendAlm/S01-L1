class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"O Persona {self.nome} com seu Arcano {self.arcano}")

class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome
        self.codinome = codinome

    def apresentar(self):
        print(f"{self.nome} ({self.codinome})")

class Lider:
    def __init__(self, codinome):
        self.codinome = codinome

        # COMPOSIÇÃO: O Persona é criado dentro do construtor do Lider, ou seja, compõe sua estrutura e é dependente dela
        self.persona = Persona("Arsène", "Louco")

        # AGREGAÇÃO: A Equipe recebe Aliados que já foram criados anteriormente, ou seja, são independentes do Lider
        self._equipe = []

    def recrutar(self, aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio):
        print(f"{self.codinome} está invadindo o Palácio de {palacio}!")

        self.persona.invocar()

        print("\nEquipe de infiltração:")
        for aliado in self._equipe:
            aliado.apresentar()

lider = Lider("Joker")
aliado1 = Aliado("Futaba Sakura", "Oracle")
aliado2 = Aliado("Yusuke Kitagawa", "Fox")

lider.recrutar(aliado1)
lider.recrutar(aliado2)

lider.infiltrar("Sae Niijima")

print("\nAliados continuam existindo:")
aliado1.apresentar()
aliado2.apresentar()