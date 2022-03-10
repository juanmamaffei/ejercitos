require './ejercito.rb'
require './unidad.rb'
require './civilizacion.rb'

def listar_unidades(ejercito)
  puts "Estas son las unidades disponibles:"
  ejercito.unidades.each_with_index do |i,j|
    puts "Unidad #{j} | #{i.class} | #{i.puntos} puntos "
  end
end

# Se crea un ejército de chinos.
prueba = Ejercito.new(Chinos.new)
# Muestra las unidades por defecto.
listar_unidades(prueba)
# Se transforma el piquero 0
prueba.unidades[0].transformar
# Muestra las unidades (con el piquero 0 transformado)
listar_unidades(prueba)
# Se transforma el arquero 0
prueba.unidades[0].transformar
# Muestra las unidades (con el arquero transformado)
listar_unidades(prueba)
# Se intenta transformar el caballero 0
prueba.unidades[0].transformar
