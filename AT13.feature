
Feature: API Endpoint para la Información de las Órdenes de Compra

  Como usuario del sistema,
  Quiero acceder a un endpoint de API para manejar y visualizar información de las órdenes de compra,
  Para interactuar y obtener datos necesarios sobre las órdenes de compra de manera eficiente.

  Background:
    Given que estoy autenticado y autorizado para acceder a las órdenes de compra

  Scenario: Obtener información de las órdenes de compra
    Given que existen órdenes de compra registradas en el sistema
    When hago una solicitud GET al endpoint de órdenes de compra
    Then debería recibir una respuesta con la información de todas las órdenes de compra
    And la respuesta debe incluir detalles específicos como número de orden, fecha de compra y detalles del cliente

  Scenario: Implementar contexto acotado de Purchasing para las órdenes de compra
    Given que el contexto acotado de Purchasing está implementado
    When hago una solicitud GET al endpoint de Purchasing de órdenes de compra
    Then debería recibir datos específicos de las órdenes de compra del cliente
    And la respuesta debe ser conforme a las especificaciones del contexto de Purchasing
