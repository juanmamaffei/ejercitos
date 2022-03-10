
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
  