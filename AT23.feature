
Feature: Sección de Ítems para la interfaz del staff

  Scenario: Actualización de ítems mediante formulario
    Given the staff user is on the "Items" section
    When the user selects an item to update
    Then a form should be displayed with the item's current details
    And the form should allow the user to update fields like item name, quantity, and price
    And the user should be able to save or cancel the changes

  Scenario: Eliminación de ítems mediante formulario
    Given the staff user is on the "Items" section
    When the user selects an item to delete
    Then a confirmation dialog should be displayed asking "Are you sure you want to delete this item?"
    And the user should be able to confirm or cancel the deletion
