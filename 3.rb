class Vehicle
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@count = 0
  def initialize(model, year)
    super
    @@count += 1
  end

  def self.instancias
    @@count
  end

  def engine_start
    super
    print 'El motor se ha encendido'
  end
end

10.times do |i|
  puts Car.new(i,i).engine_start
end

print Car.instancias
