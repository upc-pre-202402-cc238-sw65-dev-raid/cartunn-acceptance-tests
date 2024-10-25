
Feature: Dashboard del Inventario de Productos

  Scenario: Visualización del inventario con cards de productos
    Given the user is on the product inventory dashboard
    When the system displays the list of products
    Then each product should be shown as a card
    And each card should display the product's title
    And each card should display the product's image

  Scenario: Dashboard sin productos en el inventario
    Given the user is on the product inventory dashboard
    And there are no products in the inventory
    When the system loads the dashboard
    Then the user should see a message saying "No products available"
    And no cards should be displayed

  Scenario: Error al cargar las imágenes de los productos
    Given the user is on the product inventory dashboard
    When the system fails to load product images
    Then each card should display a placeholder image instead of the product image
