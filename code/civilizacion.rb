class Civilizacion
  attr_reader :unidades_iniciales
end

class Chinos < Civilizacion

  def initialize
    @unidades_iniciales = {
      Piquero => 2,
      Arquero => 25,
      Caballero => 2
    }
  end
end

class Ingleses < Civilizacion
  def initialize
    @unidades_iniciales = {
      Piquero => 10,
      Arquero => 10,
      Caballero => 10
    }
  end
end

class Bizantinos < Civilizacion
  def initialize
    @unidades_iniciales = {
      Piquero => 5,
      Arquero => 8,
      Caballero => 15
    }
  end
end

