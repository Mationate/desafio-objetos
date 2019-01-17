class Carta
  attr_reader :pinta, :numero
  def initialize
    @pinta = pinta
    @numero = numero
  end
  def pinta_aleatoria
    %w(Corazon Pica Trebol Diamante).sample
  end
  def numero_aleatorio
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K'].sample
  end
end

opcion = gets.chomp

if opcion == 'jugar'
 5.times do |i|
  i = Carta.new
  puts "#{i.numero_aleatorio}  de #{i.pinta_aleatoria}"
 end
end
