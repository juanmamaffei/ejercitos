# Amalgama Challenge

- [X] [Diagrama de clases](1-diagrama_de_clases.md).
- [X] [Diagrama de secuencia de la operación "transformar unidad"](2-transformar_unidad.md).
- [X] Implementación de la operación "transformar unidad".
  - [X] [Clase Ejército](code/ejercito.rb).
  - [x] [Clase Unidad (y subclases Piquero, Arquero y Caballero)](code/unidad.rb).
  - [X] [Clase Civilización (y subclases Ingleses, Bizantinos y Chinos)](code/civilizacion.rb).

**Tiempo máximo**: 45 minutos.

## Próximos pasos

- [ ] **REVISIÓN DEL DIAGRAMA DE CLASES Y POSIBLE REFACTORING**. Por ejemplo, es posible utilizar enumeradores en vez de clases tanto para las unidades como las civilizaciones. Deberían analizarse las posibilidades de expansión para verificar si es mejor seguir empleando objetos individuales o bien enumeradores.
- [X] Diagrama de secuencia para la operación "entrenar unidad".
- [X] Diagrama de secuencia para la operación "ir a la batalla".
- [X] Diagrama de secuencia para la operación "consultar historial".
- [ ] Implementación en Ruby.
  - [X] Clases.
  - [X] Transformar unidad.
  - [X] Entrenar unidad.
  - [ ] Ir a la batalla.
  - [ ] Consultar batalla.
  - [X] Construir un simulador.
- [ ] Escribir pruebas unitarias.
- [ ] Escribir pruebas de integración.
- [ ] Refactorizar.

## Simulador

Para probar la implementación, se puede clonar el repositorio y ejecutar el archivo [./code/main.rb](code/main.rb).

También se puede visualizar en [repl.it](https://replit.com/@juanmamaffei/Ejercitos?v=1\).

https://user-images.githubusercontent.com/20209667/157727041-4c05d0e4-66e4-4e65-90a2-435ac7e6aabe.mp4

[Video](assets/video.mp4)
