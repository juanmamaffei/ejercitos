## Operación "transformar unidad"

### Diagrama de secuencia

#### Caso 1

````plantuml
  @startuml
    skinparam maxMessageSize 130

    actor Jugador
    participant Ejercito
    participant Unidad
    participant Piquero
    participant Arquero

    activate Jugador
    Jugador -> Piquero : transformar()
    activate Piquero
    Piquero -> Unidad : transformar (costo_evolucion=30, evolucion=Arquero)
    activate Unidad
    Unidad -> Ejercito : gastar_oro(30)
    alt true
      Ejercito --> Unidad : true
      Unidad -> Piquero : <<destroy>>
      destroy Piquero
      deactivate Piquero
      Unidad -> Arquero : <<create>>
      activate Arquero
      Unidad --> Jugador : "Se creó la unidad"
      deactivate Arquero
    else false
      Ejercito --> Unidad : false
      Unidad --> Jugador : "Oro insuficiente"
      deactivate Unidad
    end  
  @enduml
````

#### Caso 2

````plantuml
  @startuml
    skinparam maxMessageSize 130

    actor Jugador
    participant Ejercito
    participant Unidad
    participant Arquero
    participant Caballero

    activate Jugador
    Jugador -> Arquero : transformar()
    activate Arquero
    Arquero -> Unidad : transformar (costo_evolucion=40, evolucion=Caballero)
    activate Unidad
    Unidad -> Ejercito : gastar_oro(30)
    alt true
      Ejercito --> Unidad : true
      Unidad -> Arquero : <<destroy>>
      destroy Arquero
      deactivate Arquero
      Unidad -> Caballero : <<create>>
      activate Caballero
      Unidad --> Jugador : "Se creó la unidad"
      deactivate Caballero
    else false
      Ejercito --> Unidad : false
      Unidad --> Jugador : "Oro insuficiente"
      deactivate Unidad
    end  
  @enduml
````

#### Caso 3

````plantuml
  @startuml
    skinparam maxMessageSize 130

    actor Jugador
    participant Ejercito
    participant Caballero

    activate Jugador
    Jugador -> Caballero : transformar()
    activate Caballero
    Caballero --> Jugador : "Esta unidad no se puede transformar"
  @enduml
````
