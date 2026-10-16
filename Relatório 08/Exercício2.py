class HeroiOverwatch:

    def __init__(self, codinome, funcao):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} usa uma suprema genérica!")

class HeroiTanque(HeroiOverwatch):

    def usar_suprema(self):
        print(f"{self.codinome} ({self.funcao}): The universe is singing to me!")

class HeroiSuporte(HeroiOverwatch):
    
    def usar_suprema(self):
        print(f"{self.codinome} ({self.funcao}): All to me!!")

    def curar_equipe(self):
        print(f"{self.codinome} usou habilidades para curar a equipe!")

heroi1 = HeroiOverwatch("Sojourn", "DPS")
heroi2 = HeroiTanque("Sigma", "Tank")
heroi3 = HeroiSuporte("Brigitte", "Sup")

herois = [heroi1, heroi2, heroi3]

for heroi in herois:
    heroi.usar_suprema()

    if isinstance(heroi, HeroiSuporte):
        heroi.curar_equipe()