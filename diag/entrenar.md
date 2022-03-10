
````plantuml
  @startuml
    skinparam maxMessageSize 150
    actor Jugador
    participant Ejercito
    box TipoUnidad < Unidad
      participant Unidad
      participant TipoUnidad
    endbox
    Jugador -> TipoUnidad : entrenar()
    TipoUnidad -> Unidad : entrenar(costo_entrenamiento, puntos_mejora)
    Unidad -> Ejercito : gastar_oro(costo_entrenamiento)
    alt true
      Ejercito --> Unidad : true
      Unidad --> TipoUnidad : true
      TipoUnidad -> TipoUnidad : sumar_puntos(puntos_mejora)
      TipoUnidad --> Jugador : "Se mejoró la unidad"
    else false
      Ejercito --> Unidad : false
      Unidad --> TipoUnidad : false
      TipoUnidad --> Jugador : "Oro insuficiente"
    end
  @enduml
````