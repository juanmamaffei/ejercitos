## Diagrama de clases
````plantuml
  @startuml
    class Ejercito {
      + oro : Integer
      + civilizacion: Civilizacion
      + unidades: Unidad [*]
      + batallas: Batalla [*]
      + atacar(Ejercito)
      # intercambiar_unidad(Unidad,Unidad)
      # gastarOro(Integer)
      + batallaPerdida()
      + batallaGanada()
      + batallaEmpatada()
      - ganarOro()
      - perderMejorUnidad()
      - crearUnidades()
      - getOro()
      - getCivilizacion(): String
      - sumarPuntos()
    }
    class Unidad {
      + puntos: Integer
      + ejercito: Ejercito
      - costo_entrenamiento: Integer
      - puntos_mejora: Integer
      + entrenar()
      + transformar()
      + getPuntos()
      + getEjercito()
      - sumarPuntos()
    }

    class Civilizacion {
      + unidades_iniciales: Unidad => Integer {*}
    }

    class Batalla {
      + resultado
      + getResultado()
    }

    Unidad "*" <|-- Ejercito
    Civilizacion "1" *-- Ejercito
    Batalla "*" <-- Ejercito

    class Ingleses 
    class Chinos
    class Bizantinos

    Ingleses <|-- Civilizacion
    Chinos <|-- Civilizacion
    Bizantinos <|-- Civilizacion

    class Piquero {
      - evolucion: Unidad
      - costo_evolucion: Integer
    }
    class Arquero {
      - evolucion: Unidad
      - costo_evolucion: Integer
    }
    class Caballero {
      + transformar(): Nil
    }

    Piquero <|-- Unidad
    Arquero <|-- Unidad
    Caballero <|-- Unidad

    hide empty members
  @enduml
````