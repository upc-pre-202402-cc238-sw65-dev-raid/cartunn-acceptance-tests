
Feature: API Endpoint para la Información de Product Refunds

  Como usuario del sistema,
  Quiero acceder a un endpoint de API para manejar y visualizar información de los product refunds,
  Para interactuar y obtener datos necesarios sobre los reembolsos de productos de manera eficiente.

  Background:
    Given que estoy autenticado y autorizado para acceder a la información de product refunds

  Scenario: Obtener información de los product refunds
    Given que existen product refunds registrados en el sistema
    When hago una solicitud GET al endpoint de product refunds
    Then debería recibir una respuesta con la información de todos los product refunds
    And la respuesta debe incluir detalles específicos como ID de refund, cantidad, y estado del reembolso

  Scenario: Implementar nuevo aggregate en el contexto de Product Refund
    Given que el contexto acotado de Product Refund está implementado
    And un nuevo aggregate que referencia a Orders ha sido agregado
    When hago una solicitud GET al endpoint de product refunds
    Then debería recibir información que incluya los detalles de las orders asociadas a cada refund
    And la respuesta debe ser conforme a las especificaciones del nuevo aggregate en el contexto de Product Refund
