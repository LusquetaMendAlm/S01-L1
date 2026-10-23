class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    self.preco = preco
  end

  def preco
    @preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Drink: #{@nome}; Preço: #{@preco} edinhos"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super}; Lenda: #{@lenda}"
  end
end

drinks = [
  CoquetelAfterlife.new("Tequila Centzon", 15),
  DrinkDeLenda.new("The Jackie Welles", 60, "Jackie Welles"),
  DrinkDeLenda.new("The David Martinez", 50, "David Martinez")
]

drinks.each do |drink|
  puts drink.ficha
end

drinks[1].preco = 500
drinks[1].preco = 80

puts "\nPreços atualizados:"
puts drinks[1].ficha
puts drinks[1].ficha
# drinks[0].nome = "Novo nome" ->  Ocorre erro, pois nome não possui método Setter