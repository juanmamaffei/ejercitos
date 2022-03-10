require './ejercito.rb'
require './unidad.rb'
require './civilizacion.rb'

# Métodos para hacer tiempo en la consola

def retorno(tiempo=3)
  print "\n\n"
  tiempo.times do |count|
    print "\r Volvemos en #{tiempo-count} segundos..."
    sleep 1
  end
end

retorno_proc = Proc.new do 
  print "\n\n"
  print ". . : : E J É R C I T O S : : . . \r"
  35.times do |count|
    sleep 0.1
    print "|"
  end
  key = ""
end

# Dibujar barras

def bars
  10.times do |i|
    i.times { print "||" }
    print "\n"
    sleep 0.02
  end
  yield
  10.times do |i|
    (10-i).times { print "||" }
    print "\n"
    sleep 0.02
  end
end

ejercitos = []
print "\e[2J\e[f\n\n" # Borrar pantalla
bars {
puts "| \n| Te damos la bienvenida a la versión interactiva de EJÉRCITOS."
puts "| En cualquier momento, podés presionar X o Ctrl+c para salir \n|\n| Presioná ENTER para comenzar. \n|"
}
key = gets
while key != "X"
  print "\e[2J\e[f\n\n"

  print "Comandos:\n---------\n C para crear un ejército \n S para seleccionar un ejército existente \n X para salir \n\n"
  key = gets.chomp.upcase

  print "\e[2J\e[f\n\n"
  if key == "C"
    print "Elegí civilización\n------------------\n C para chinos\n I para ingleses\n B para bizantinos. \n\n"
    key = gets.chomp.upcase
    if key == "C"
      ejercitos << Ejercito.new(Chinos.new)
      print "\e[2J\e[f\n\n EJÉRCITO CREADO... "
      retorno_proc.call
    elsif key == "I"
      ejercitos << Ejercito.new(Ingleses.new)
      print "\e[2J\e[f\n\n EJÉRCITO CREADO... "
      retorno_proc.call
    elsif key == "B"
      ejercitos << Ejercito.new(Bizantinos.new)
      print "\e[2J\e[f\n\n EJÉRCITO CREADO... "
      retorno_proc.call
    else
      print "\e[2J\e[f\n\n TECLA INCORRECTA... "
      retorno_proc.call
    end
  elsif key == "S"
    puts "Lista de ejércitos"
    puts "ID\t| Civilización\t| # Unidades\t| Oro"
    54.times { print "-"}
    print "\n"
    ejercitos.each_with_index do |i,j|
      puts "#{j}\t| #{i.civilizacion}\t| #{i.unidades.size}\t\t| #{i.oro}\n"
    end
    print "\n Escribí el ID del ejército que querés seleccionar: \n"
    seleccion = gets.chomp.to_i
    print "\e[2J\e[f\n\n"
    
    puts "Seleccionaste el ejército #{seleccion}. Comandos:"
    print "\n 1 - Entrenar unidad. \n 2 - Transformar unidad. \n 3 - Ir a la batalla! (TODAVÍA NO IMPLEMENTADO) \n 4 - Ver historial de batallas. (TODAVÍA NO IMPLEMENTADO) \n 5 - Ver detalle de unidades. \n\n"
    key = gets.chomp.to_i
    if key == 1
      puts "Estas son las unidades disponibles:"
      ejercitos[seleccion].unidades.each_with_index do |i,j|
        puts "Unidad #{j} | #{i.class} | #{i.puntos} puntos "
      end
      puts "Ingresá el número de unidad que desea entrenar:"
      key = gets.chomp
      ejercitos[seleccion].unidades[key.to_i].entrenar
      retorno_proc.call
      
    elsif key == 2
      puts "Estas son las unidades disponibles:"
      ejercitos[seleccion].unidades.each_with_index do |i,j|
        puts "Unidad #{j} | #{i.class} | #{i.puntos} puntos "
      end
      puts "Ingresá el número de unidad que desea entrenar:"
      key = gets.chomp
      ejercitos[seleccion].unidades[key.to_i].transformar
      retorno_proc.call
    elsif key == 5
      puts "Estas son las unidades disponibles:"
      ejercitos[seleccion].unidades.each_with_index do |i,j|
        puts "Unidad #{j} | #{i.class} | #{i.puntos} puntos "
      end
      puts "Presioná ENTER para continuar"
      key = gets.chomp
    end
  
  end
end
