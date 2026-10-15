class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona: {self.nome} | Arcano: {self.arcano}")

class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome

class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)
        print(f"-> {aliado.codinome} entrou para a equipe.")

    def infiltrar(self, palacio):
        print(f"\n<{self.codinome}> invade o Palácio de {palacio}!")
        self.persona.invocar()
        print("Equipe:")
        for aliado in self._equipe:
            print(f"Nome: {aliado.nome} | Codinome: {aliado.codinome}")

if __name__ == "__main__":
    print("--- Persona 5 ---")

    ryuji = Aliado("Ryuji Sakamoto", "Skull")
    ann = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")
    joker.recrutar(ryuji)
    joker.recrutar(ann)

    joker.infiltrar("Kamoshida")
