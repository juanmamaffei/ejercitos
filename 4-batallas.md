## Operación "ir a la batalla"

### Caso de uso 1 (alguien gana)

1. Se cuenta con dos ejércitos (bizantinos e ingleses) con las unidades creadas por defecto.
2. El jugador con el ejército bizantino ataca al ejército inglés.
3. Se suman los puntos de todas las unidades de cada ejército.
4. El ejército bizantino gana. Se suman 100 unidades de oro.
5. El ejército inglés pierde.
   1. Se ordenan las unidades por fuerza.
   2. Se eliminan las dos primeras (las que tienen más fuerza).
6. Se crea una batalla en cada ejército y se indica el resultado (ganador y perdedor).

### Caso de uso 2 (empate)

1. Se cuenta con dos ejércitos chinos con las unidades creadas por defecto.
2. Un jugador ataca, con su ejército, al otro ejército.
4. Se suman los puntos de todas las unidades de cada ejército.
5. Al resultar un empate, nadie gana oro.
   1. Se ordenan las unidades por fuerza.
   2. Se elimina a la unidad más fuerte de cada ejército.
6. Se crea una batalla en cada ejército y se indica el resultado (empate).

### Diagramas de secuencia

#### Caso 1

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

#### Caso 2

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

## Operación "ver historial de batallas"

### Caso de uso

1. Un ejército ya tuvo 5 batallas.
2. El jugador consulta el historial de batallas de un ejército.
3. El ejército 