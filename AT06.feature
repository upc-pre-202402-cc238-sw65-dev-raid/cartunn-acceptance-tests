
Feature: Dashboard de Órdenes para el Staff

  Como miembro del staff,
  Quiero poder visualizar y gestionar las órdenes mediante un dashboard,
  Para poder agregar observaciones y modificar las fechas de entrada y salida de manera eficiente.

  Background:
    Given que soy un miembro del staff autenticado
    And estoy en la página del Dashboard de Órdenes

  Scenario: Visualización de Órdenes en el Dashboard
    Given que existen órdenes registradas en el sistema
    When accedo al Dashboard de Órdenes
    Then debería ver una tabla con la información detallada de cada orden

  Scenario: Agregar Observación a una Orden
    Given que he seleccionado una orden en el Dashboard de Órdenes
    When hago clic en el botón para agregar una observación
    And ingreso la observación en el modal que aparece
    And confirmo la adición de la observación
    Then la observación debería ser agregada a la orden
    And debería ver una confirmación de que la observación fue agregada exitosamente

  Scenario: Modificar Fechas de Entrada y Salida de una Orden
    Given que he seleccionado una orden en el Dashboard de Órdenes
    When hago clic en el botón para modificar las fechas
    And selecciono nuevas fechas de entrada y salida usando el date-picker
    And confirmo la modificación de las fechas
    Then las nuevas fechas deberían ser actualizadas en la orden
    And debería ver una confirmación de que las fechas fueron actualizadas exitosamente
