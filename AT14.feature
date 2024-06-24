
Feature: Visualización del Producto a Ordenar

  Como cliente,
  Quiero interactuar con los productos y ordenar el producto de mi elección mediante un botón,
  Para facilitar el proceso de selección y orden de productos.

  Background:
    Given que estoy autenticado en el sistema
    And estoy navegando en la página de productos

  Scenario: Interacción con los productos
    Given que los productos están listados en la página
    When exploro los diferentes productos disponibles
    Then debería poder visualizar información detallada de cada producto

  Scenario: Ordenar un producto específico
    Given que he seleccionado un producto de mi interés
    When hago clic en el botón de ordenar asociado a ese producto
    Then el producto debería ser añadido a mi carrito de compras
    And debería ver una confirmación de que el producto ha sido ordenado exitosamente
