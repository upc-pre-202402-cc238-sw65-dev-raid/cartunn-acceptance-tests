
Feature: Sección de Manage Returns

  Scenario: Visualización de reembolsos mediante cards
    Given the user is on the "Manage Returns" section
    When the system displays the list of product refunds
    Then each refund should be displayed as a card
    And each card should show the product name, refund amount, and refund status

  Scenario: Sección de Manage Returns sin reembolsos disponibles
    Given the user is on the "Manage Returns" section
    And there are no product refunds available
    When the system loads the "Manage Returns" section
    Then the user should see a message saying "No refunds available"
    And no cards should be displayed

  Scenario: Edición de un reembolso usando bottom sheet
    Given the user is on the "Manage Returns" section
    When the user selects a refund to edit
    Then a bottom sheet should be displayed
    And the bottom sheet should allow the user to edit the refund details including refund amount and status
    And the user should be able to save or cancel the changes from the bottom sheet
