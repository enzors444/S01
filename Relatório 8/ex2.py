class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"<{self.codinome}> usa uma suprema genérica de {self.funcao}!")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"<{self.codinome}> usa sua suprema de tanque e derruba os inimigos!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"<{self.codinome}> usa sua suprema de suporte e protege a equipe!")

    def curar_equipe(self):
        print(f"<{self.codinome}> cura toda a equipe!")

if __name__ == "__main__":
    print("--- Overwatch ---")

    soldado = HeroiOverwatch("Soldado: 76", "Dano")
    reinhardt = HeroiTanque("Reinhardt", "Tanque")
    lucio = HeroiSuporte("Lúcio", "Suporte")

    equipe: list[HeroiOverwatch] = [soldado, reinhardt, lucio]

    for heroi in equipe:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()
