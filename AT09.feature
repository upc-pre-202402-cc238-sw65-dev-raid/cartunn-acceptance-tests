
Feature: API Endpoint para la Información de los Reportes

  Como usuario del sistema,
  Quiero acceder a un endpoint de API para manejar y visualizar información de reportes,
  Para interactuar y obtener datos necesarios sobre los reportes de manera eficiente.

  Background:
    Given que estoy autenticado y autorizado para acceder a los reportes

  Scenario: Obtener información de los reportes
    Given que existen reportes disponibles en el sistema
    When hago una solicitud GET al endpoint de reportes
    Then debería recibir una respuesta con la información de todos los reportes
    And la respuesta debe incluir datos específicos como fecha, autor y resultados

  Scenario: Implementar contexto acotado de Tunning para la información de los reportes
    Given que el contexto acotado de Tunning está implementado
    When hago una solicitud GET al endpoint de Tunning de reportes
    Then debería recibir datos optimizados específicamente para ajustes y mejoras
    And la respuesta debe ser conforme a las especificaciones del contexto de Tunning
