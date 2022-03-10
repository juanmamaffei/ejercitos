
class Ejercito
  attr_reader :oro, :unidades
  def initialize(civilizacion)
    @oro = 1000
    @unidades = []
    @civilizacion = civilizacion
    crear_unidades
  end

  def civilizacion
    @civilizacion.class
  end
  protected
  
  def intercambiar_unidad(actual, nueva)
    @unidades[@unidades.index(actual)] = nueva  
  end

  def gastar_oro(cantidad)
    if (@oro - cantidad) >= 0
      @oro -= cantidad
      true
    else
      false
    end
  end

  private
  def crear_unidades
    @civilizacion.unidades_iniciales.each do |i|
      i[1].times { @unidades << i[0].new(self) }
    end 
  end

end


class Unidad < Ejercito
  attr_reader :ejercito, :puntos

  def initialize(ejercito)
    @ejercito = ejercito
  end

  def transformar
    if self.ejercito.gastar_oro(@costo_evolucion)
      nueva_unidad = @evolucion.new(self.ejercito)
      self.ejercito.intercambiar_unidad(self,nueva_unidad)
      puts "Se convirtió la unidad.... \n A este ejército le quedan #{self.ejercito.oro} monedas de oro."
    else
      puts "Oro insuficiente."
    end
  end

end

class Piquero < Unidad
  
  def initialize(ejercito)
    @ejercito = ejercito
    @puntos = 5
    @evolucion = Arquero
    @costo_evolucion = 30
    @costo_entrenamiento = 10
    @puntos_mejora = 3
  end
  
end

class Arquero < Unidad
  def initialize(ejercito)
    @ejercito = ejercito
    @puntos = 10
    @evolucion = Caballero
    @costo_evolucion = 40
    @costo_entrenamiento = 20
    @puntos_mejora = 7
  end

end

class Caballero < Unidad
  def initialize(ejercito)
    @ejercito = ejercito
    @puntos = 20
    @costo_entrenamiento = 30
    @puntos_mejora = 10
  end

  def transformar
    puts "Esta unidad no se puede transformar."
  end
end

