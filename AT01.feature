Feature: Visualización del Tablero de Accesorios

  Como un usuario interesado en personalizar mi vehículo,
  Quiero poder visualizar todos los accesorios disponibles en un tablero fácil de utilizar,
  Para poder explorar y seleccionar los accesorios que deseo agregar a mi vehículo.

  Scenario: Acceso al Tablero de Accesorios
    Given estoy en la página principal de la aplicación
    When hago clic en la opción de <Accesorios>
    Then debería ser dirigido al tablero de accesorios.

  Scenario: Visualización de Todos los Accesorios
    Given estoy en el tablero de accesorios
    When accedo al tablero
    Then debería ver una lista de todos los accesorios disponibles para personalización.

  Scenario: Filtrado de Accesorios
    Given estoy en el tablero de accesorios
    When aplico filtros, como categorías o precios
    Then debería ver los accesorios filtrados según mis preferencias.

  Scenario: Búsqueda de Accesorios
    Given estoy en el tablero de accesorios
    When uso la función de búsqueda
    Then debería poder buscar accesorios específicos por nombre o descripción.

  Scenario: Visualización Detallada de Accesorios
    Given estoy en el tablero de accesorios
    When selecciono un accesorio
    Then debería poder ver detalles detallados, como imágenes, descripción y precio, de ese accesorio.

  Scenario: Agregar Accesorios al Carrito
    Given estoy en el tablero de accesorios
    When selecciono los accesorios que deseo agregar a mi vehículo
    Then debería poder agregarlos al carrito de compras para proceder con la personalización.
