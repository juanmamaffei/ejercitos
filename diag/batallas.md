````plantuml
  @startuml
    actor Jugador
    participant Ejercito1
    participant Ejercito2
    participant Batalla
    participant Unidad

    Jugador -> Ejercito1 : batalla(Ejercito2)
    Ejercito1 -> Ejercito1 : sumarPuntos()
    loop para todas las unidades
      Ejercito1 -> Unidad : getPuntos()
      Unidad --> Ejercito1
    end
    Ejercito1 -> Ejercito2 : sumarPuntos()
    loop para todas las unidades
      Ejercito2 -> Unidad : getPuntos()
      Unidad --> Ejercito2
    end
    Ejercito2 --> Ejercito1
    Ejercito1 -> Ejercito1 : batallaGanada()
    note left: Acciones de batalla ganada
    Ejercito1 -> Ejercito1 : ganarOro()
    Ejercito1 -> Batalla : <<create>> resultado="ganador"
    Ejercito1 -> Ejercito2 : batallaPerdida()
    note left: Acciones de batalla perdida
    Ejercito2 -> Ejercito2 : perderMejorUnidad()
    Ejercito2 -> Ejercito2 : perderMejorUnidad()
    Ejercito2 -> Batalla : <<create>> resultado="perdedor"
    Ejercito1 --> Jugador : "Ganamos la batalla"
  @enduml
````

````plantuml
  @startuml
    actor Jugador
    participant Ejercito1
    participant Ejercito2
    participant Batalla
    participant Unidad

    Jugador -> Ejercito1 : batalla(Ejercito2)
    Ejercito1 -> Ejercito1 : sumarPuntos()
    loop para todas las unidades
      Ejercito1 -> Unidad : getPuntos()
      Unidad --> Ejercito1
    end
    Ejercito1 -> Ejercito2 : sumarPuntos()
    loop para todas las unidades
      Ejercito2 -> Unidad : getPuntos()
      Unidad --> Ejercito2
    end
    Ejercito2 --> Ejercito1
    Ejercito1 -> Ejercito1 : batallaEmpatada()
    note left: Acciones en ejército 1
    Ejercito1 -> Ejercito1 : perderMejorUnidad()
    Ejercito1 -> Batalla : <<create>> resultado="empate"
    Ejercito1 -> Ejercito2 : batallaEmpatada()
    note left: Acciones en ejército 2
    Ejercito2 -> Ejercito2 : perderMejorUnidad()
    Ejercito2 -> Batalla : <<create>> resultado="empate"
    Ejercito1 --> Jugador : "Hubo un empate"
  @enduml
````