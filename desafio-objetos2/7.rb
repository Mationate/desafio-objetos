class MyPet

  def initialize(name)
    @name = name
    @sleep = false
    @satisfied = 10 # Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + ' nace '
  end

  def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine = 2
    timeLapse
  end

  def eat
    puts 'ñam ñam!'
    @fullIntestine = 10
    timeLapse
  end

  def sleep
    puts 'zZzZz'
    @sleep = true
    @fullIntestine = 0
    timeLapse
  end

  def timeLapse
    if @satisfied > 0
      # Mueve el alimento del estomago al intestino.
      @satisfied -= 1
      @fullIntestine += 1
    else # Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
      exit
    end
    if @fullIntestine >= 10
      @fullIntestine = 0
      puts '¡Uy! ' + @name + ' tuvo un accidente...'
    end
    # if hungry?
    #   if @sleep
    #     @sleep = false
    #     puts '¡Se despierta de repente!'
    #   end
    #   puts 'El estomago de ' + @name + 'retumba...'
    # end
    # if needToGo?
    #   if @sleep
    #     @sleep = false
    #     puts 'Se despierta de repente!'
    #   end
    #   puts @name + ' hace la danza del baño...'
    # end
  end
end


cholo = MyPet.new('CHOLO')
cholo.walk
cholo.eat
cholo.sleep
