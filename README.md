# Amalgama Challenge

- [X] [Diagrama de clases](1-diagrama_de_clases.md).
- [X] [Diagrama de secuencia de la operación "transformar unidad"](2-transformar_unidad.md).
- [X] Implementación de la operación "transformar unidad".
  - [X] [Clase Ejército](code/ejercito.rb).
  - [x] [Clase Unidad (y subclases Piquero, Arquero y Caballero)](code/unidad.rb).
  - [X] [Clase Civilización (y subclases Ingleses, Bizantinos y Chinos)](code/civilizacion.rb).

Para probar la implementación, se puede clonar el repositorio y ejecutar el archivo [./code/main.rb](code/main.rb).

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