
Feature: API Endpoint para la Información de Productos-Favoritos

  Como usuario del sistema,
  Quiero acceder a un endpoint de API para manejar y visualizar información de productos-favoritos,
  Para interactuar y obtener datos necesarios sobre mis productos favoritos de manera eficiente.

  Background:
    Given que estoy autenticado y autorizado para acceder a la información de productos-favoritos

  Scenario: Obtener información de los productos-favoritos
    Given que existen productos marcados como favoritos en el sistema
    When hago una solicitud GET al endpoint de productos-favoritos
    Then debería recibir una respuesta con la información de todos los productos favoritos
    And la respuesta debe incluir detalles específicos como ID del producto, nombre, y precio

  Scenario: Implementar en Products el aggregate de Favorites
    Given que el contexto acotado de Products está implementado con un aggregate para Favorites
    When hago una solicitud GET al endpoint que referencia a Favorites en el contexto de Products
    Then debería recibir información estructurada de los productos favoritos
    And la información debe incluir elementos agregados específicos como listas de deseos o categorías favoritas
