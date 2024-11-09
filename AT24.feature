
Feature: Ajustes de aplicación

  Como cliente
  Quiero realizar ajustes y preferencias de aplicación
  Para tener una experiencia personalizada en la aplicación

  Scenario: Personalización de ajustes de aplicación
    Given que el cliente ha iniciado sesión en la aplicación
    And se encuentra en la sección de ajustes
    When selecciona las opciones de ajustes disponibles
    Then debería poder personalizar sus preferencias de notificaciones
    And debería poder configurar el idioma de la aplicación
    And debería poder cambiar el tema de la aplicación
    And los cambios se guardan exitosamente
