class MortoVivo:

    def __init__(self, nome, almas, estus):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus inválida!")

    def mostrar_status(self):
        return (
            f"Morto-vivo {self.nome}\n"
            f"Almas: {self._almas}\n"
            f"Estus: {self.__estus}\n"
        )

class Clerigo(MortoVivo):

    def __init__(self, nome, almas, estus, milagre):
        super().__init__(nome, almas, estus)

        self.milagre = milagre

    def mostrar_status(self):
        return f"{super().mostrar_status()}Milagre: {self.milagre}\n"

clerigo = Clerigo("Vince", 2000, 5, "Força")

print(clerigo.mostrar_status())

clerigo.set_estus(15)   # Condição não cumprida
print(clerigo.mostrar_status())
clerigo.set_estus(10)   # Condição cumprida
print(clerigo.mostrar_status())

# print(clerigo.__estus)  AttributeError: 'Clerigo' object has no attribute '__estus'.
print("Estus atual:", clerigo.get_estus())