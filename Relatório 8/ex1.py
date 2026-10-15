class MortoVivo:
    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome
        self._almas = almas
        self.__estus = 0
        self.set_estus(estus)

    def get_estus(self):
        return self.__estus

    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus inválida!")

    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"

class Clerigo(MortoVivo):
    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        return f"{super().mostrar_status()} | Milagre: {self.milagre}"

if __name__ == "__main__":
    print("--- Dark Souls ---")

    petrus = Clerigo("Petrus", 2000, 5, "Cura")
    print(petrus.mostrar_status())

    petrus.set_estus(15)
    print(petrus.mostrar_status())

    petrus.set_estus(10)
    print(petrus.mostrar_status())

    try:
        print(petrus.__estus)
    except AttributeError:
        print("O atributo __estus é privado. Use get_estus().")

    print(f"Estus pelo getter: {petrus.get_estus()}")
