class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "#{self.class} deve implementar interpretar"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{nome} toca #{peca} no instrumento #{instrumento}, conduzindo a melodia principal."
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{nome} toca #{peca} no instrumento #{instrumento}, acompanhando o ritmo do solista."
  end
end

class Regente
  attr_reader :nome

  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "#{@nome} rege a peça #{peca}."

    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |instrumentista| "#{instrumentista.class}: #{instrumentista.nome}" }
  end
end

solista = Solista.new("Kaori Miyazono", "Violino")
acompanhador = Acompanhador.new("Kousei Arima", "Piano")
regente = Regente.new("Hiroshi Tanaka")

regente.convocar(solista)
regente.convocar(acompanhador)
regente.reger("Sonata Kreutzer")

regente.escalacao.each do |integrante|
  puts integrante
end

instrumentista = Instrumentista.new("Tsubaki", "Piano")

begin
  instrumentista.interpretar("Sonata Kreutzer")
rescue NotImplementedError => erro
  puts "Erro ao interpretar: #{erro.message}"
end
