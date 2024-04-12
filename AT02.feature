Feature: Visualización del Dashboard para el Staff Mecánico

  Como un staff mecánico encargado de personalizar los vehículos de los usuarios,
  Quiero poder visualizar el dashboard principal de la aplicación,
  Para poder ver las órdenes de los usuarios y gestionar el proceso de personalización de los vehículos.

  Scenario: Acceso al Dashboard Principal
    Given estoy autenticado como un staff mecánico
    When ingreso a la aplicación
    Then debería ser dirigido al dashboard principal

  Scenario: Visualización de Órdenes de Usuario
    Given estoy en el dashboard principal
    When reviso la lista de órdenes de usuario
    Then debería ver todas las órdenes pendientes de personalización

  Scenario: Indicar Estado del Proceso de Personalización
    Given estoy revisando una orden de usuario
    When indico el estado del proceso de personalización, como <En espera>, <En progreso> o <Completado>
    Then debería poder actualizar el estado de la orden de manera adecuada

  Scenario: Programación de Ingreso y Salida del Taller
    Given estoy gestionando una orden de usuario
    When programo la fecha de ingreso y salida del vehículo al taller
    Then debería poder indicar el día en que el carro ingresará y saldrá del taller
