class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor.is_a?(Numeric) && valor.between?(5, 200)
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Coquetel #{@nome} | Preço: R$ #{preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} | Lenda homenageada: #{@lenda}"
  end
end

coquetel = CoquetelAfterlife.new("Neon de Night City", 25)
johnny = DrinkDeLenda.new("Johnny Silverhand", 70, "Johnny Silverhand")
jackie = DrinkDeLenda.new("Jackie Welles", 60, "Jackie Welles")

drinks = [coquetel, johnny, jackie]

drinks.each do |drink|
  puts drink.ficha
end

jackie.preco = 500
puts jackie.ficha

jackie.preco = 80
puts jackie.ficha

begin
  coquetel.nome = "Outro drink"
rescue NoMethodError => erro
  puts "Erro ao alterar o nome: #{erro.class}"
end
