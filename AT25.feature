
Feature: Help and Center

  Como cliente
  Quiero obtener orientación de las funcionalidades de la aplicación
  Para tener un mejor conocimiento del desarrollo de la aplicación

  Scenario: Consultar centro de ayuda
    Given que el cliente ha iniciado sesión en la aplicación
    And se encuentra en la sección de ayuda
    When selecciona una funcionalidad para obtener orientación
    Then debería poder ver información detallada sobre esa funcionalidad
    And debería poder acceder a preguntas frecuentes
    And debería poder contactar al soporte si necesita más ayuda
