
Feature: Sección de Órdenes para la visualización del staff

  Scenario: Visualización de órdenes en tabla
    Given the staff user is on the "Orders" section
    When the system displays the list of orders
    Then a table should be displayed
    And the table should contain the following columns: Order ID, Customer Name, Product, Quantity, Order Date, and Status

  Scenario: Tabla sin órdenes disponibles
    Given the staff user is on the "Orders" section
    And there are no orders in the system
    When the system loads the "Orders" section
    Then the user should see a message saying "No orders available"
    And no table should be displayed

  Scenario: Edición de una orden usando bottom sheet
    Given the staff user is on the "Orders" section
    When the user selects an order to edit
    Then a bottom sheet should be displayed
    And the bottom sheet should allow the user to edit the order's details including Quantity and Status
    And the user should be able to save or cancel the changes from the bottom sheet
