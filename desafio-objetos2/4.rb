class Dog
  attr_reader :hash
  def initialize(hash)
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end
  def ladrar
    "#{@nombre} está ladrando!"
  end

end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog = Dog.new(propiedades)
puts dog.ladrar
