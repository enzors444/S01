module Depoente
  def depor
    raise NotImplementedError
  end
end

module Detivel
  def ser_detido
    puts "#{nome} foi levado pela Scotland Yard."
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "#{nome} viu um homem saindo da casa pela janela durante a noite."
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "#{nome} afirma que estava em casa lendo um livro na hora do crime."
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "\n--- Investigação: #{@caso} ---"

    @envolvidos.each do |envolvido|
      envolvido.depor
    end
  end

  def acionar_scotland_yard
    detiveis = @envolvidos.select { |envolvido| envolvido.respond_to?(:ser_detido) }
    detiveis.each(&:ser_detido)
  end
end

testemunha = TestemunhaOcular.new("Sra. Hudson")
suspeito1 = SuspeitoDoCrime.new("Sebastian Moran")
suspeito2 = SuspeitoDoCrime.new("James Moriarty")

investigacao = Investigacao.new("O mistério da Baker Street")
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)
investigacao.ouvir_todos
investigacao.acionar_scotland_yard
