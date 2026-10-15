from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo)

    def executar_invasao(self):
        print(f"<{self.nome}> usa o cyberdeck {self.cyberdeck.modelo} "
              f"e está quebrando o gelo (ICE) de um servidor!")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"<Drone {self.codigo}> está interceptando o sinal da rede!")

class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self._membros = membros

    def iniciar_ataque(self):
        print(f"\nCélula {self.nome} iniciando o ataque!")
        for membro in self._membros:
            membro.executar_invasao()

if __name__ == "__main__":
    print("--- Cyberpunk ---")

    netrunner = OperadorNetrunner("V", "Tetratronic Rippler")
    drone = DroneDeVigilancia("DR-01")

    celula = CelulaHacker("Sombras de Night City", [netrunner, drone])
    celula.iniciar_ataque()

    try:
        unidade = IUnidadeDeRede()
    except TypeError:
        print("Não é possível criar um objeto de uma classe abstrata.")
