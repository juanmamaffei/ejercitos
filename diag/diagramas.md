## Diagrama de clases

````plantuml
  @startuml
    class Ejercito {
      + oro : Integer
      + civilizacion: Civilizacion
      + unidades: Unidad [*]
      + batallas: Batalla [*]
      + atacar(Ejercito)
      + intercambiar_unidad(Unidad,Unidad)
      + gastarOro(Integer)
      + ganarOro()
      + perderMejorUnidad()
      - crearUnidades()
      - getOro()
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
    }

    class Civilizacion {
    }

    class Batalla {
      + resultado
      + getResultado()
    }

    Unidad "*" <|-- Ejercito
    Civilizacion "1" *-- Ejercito
    Batalla "*" <-- Ejercito
    class Piquero {
    }
    class Arquero {
    }
    class Caballero {
    }

    Piquero <|-- Unidad
    Arquero <|-- Unidad
    Caballero <|-- Unidad

    hide empty members
  @enduml
````
