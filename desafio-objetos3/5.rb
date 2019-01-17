class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "#{@largo} de largo y #{@ancho} de ancho"
  end

  def perimetro
    "El perimetro del rectangulo es #{(@largo * 2) + (@ancho * 2)}"
  end

  def area
    "El area del rectangulo es #{@largo * @ancho}"
  end
end

class Cuadrado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "#{@lado} por lado"
  end

  def perimetro
    "El perimetro del cuadrado es #{@lado * 4}"
  end

  def area
    "El area del cuadrado es#{@lado * @lado}"
  end
end

cuadrado = Cuadrado.new(10)
cuadrado.lados
cuadrado.perimetro
cuadrado.area

rectangulo = Rectangulo.new(5,10)
rectangulo.lados
rectangulo.perimetro
rectangulo.area
