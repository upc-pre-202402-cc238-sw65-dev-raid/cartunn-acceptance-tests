
Feature: API Endpoint para la Información de Notificaciones

  Como usuario del sistema,
  Quiero acceder a un endpoint de API para manejar y visualizar información de las notificaciones,
  Para interactuar y obtener datos necesarios sobre las notificaciones de manera eficiente.

  Background:
    Given que estoy autenticado y autorizado para acceder a la información de notificaciones

  Scenario: Obtener información de las notificaciones
    Given que existen notificaciones generadas en el sistema
    When hago una solicitud GET al endpoint de notificaciones
    Then debería recibir una respuesta con la información de todas las notificaciones
    And la respuesta debe incluir detalles específicos como ID de la notificación, mensaje, y estado

  Scenario: Implementar contexto acotado de Notifications para las notificaciones
    Given que el contexto acotado de Notifications está implementado
    When hago una solicitud GET al endpoint de Notifications
    Then debería recibir datos específicos de las notificaciones
    And la información debe ser conforme a las especificaciones del contexto de Notifications
