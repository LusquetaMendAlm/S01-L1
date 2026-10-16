from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    def __init__(self, nome):
        self.nome = nome

    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo

    def __str__(self):
        return self.modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome, modelo):
        super().__init__(nome)
        self.cyberdeck = Cyberdeck(modelo)

    def executar_invasao(self):
        print(f"{self.nome} está com o cyberdeck {self.cyberdeck.modelo} equipado para quebrar o ICE do servidor.")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo, identificacao):
        super().__init__(codigo)
        self.identificacao = identificacao

    def executar_invasao(self):
        print(f"Drone {self.nome} ({self.identificacao}) está interceptando o sinal da rede gerado pelo hack.")

class CelulaHacker:
    def __init__(self, nome, membros):
        self.nome = nome
        self.membros = list(membros)

    def iniciar_ataque(self):
        print(f"A Célula hacker de {self.nome} está iniciando o ataque a unidade!")

        for membro in self.membros:
            membro.executar_invasao()

netrunner = OperadorNetrunner("Brigitte", "NetWatch Netdriver Mk.5")
drone = DroneDeVigilancia("D-01", "Vigilância aérea")
celula = CelulaHacker("Voodu boys", [netrunner, drone])

celula.iniciar_ataque()

# unidade = IUnidadeDeRede("Unidade genérica")