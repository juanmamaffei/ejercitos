
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

private
def crear_unidades
  @civilizacion.unidades_iniciales.each do |i|
    i[1].times { @unidades << i[0].new(self) }
  end 
end

end
