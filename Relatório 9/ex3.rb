class PhoneWave
  def enviar_dmail(mensagem)
    puts "D-mail enviado para o passado: #{mensagem}"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Lab Mem #{membro.numero}: #{membro.nome} foi admitido no laboratório."
  end

  def experimento(mensagem)
    puts "\n--- Membros presentes no experimento ---"

    @membros.each do |membro|
      puts "Lab Mem #{membro.numero}: #{membro.nome}"
    end

    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new(1, "Rintarou Okabe")
kurisu = MembroDoLab.new(4, "Kurisu Makise")

laboratorio = LaboratorioDeGadgets.new
laboratorio.admitir(okabe)
laboratorio.admitir(kurisu)
laboratorio.experimento("Não conecte o celular ao micro-ondas!")
