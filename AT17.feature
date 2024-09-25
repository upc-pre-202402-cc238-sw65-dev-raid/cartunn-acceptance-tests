
# Dashboard del Staff

Feature: Gestión de órdenes por el staff
  Como cliente staff
  Quiero gestionar las órdenes 
  Para poder agregar una observación, editar las fechas de entrada y salida

  Scenario: Observar todas las órdenes de los clientes
    Given que el cliente staff quiere observar todas las órdenes realizadas por los clientes
    When inicia sesión en la aplicación
    Then podrá visualizar la sección “Home”, en la que se mostrarán todas las órdenes

  Scenario: Agregar alguna observación
    Given que el cliente staff quiere agregar alguna observación sobre algún pedido
    When se dirige a la columna “Description” y selecciona el texto del pedido del que desea realizar alguna observación
    Then podrá agregar una observación
    And al presionar el botón “Save” se guardará la observación

  Scenario: Modificar la fecha de entrada y salida del pedido
    Given que el cliente staff quiere modificar la fecha de entrada o salida
    When se dirige a la columna “Entry” o “Exit” y realice la modificación de la sección que desee en el calendario
    Then podrá actualizar la fecha con éxito
