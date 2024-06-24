
Feature: Sección de Manage Returns

  Como miembro del staff,
  Quiero gestionar los reembolsos de productos mediante una sección dedicada,
  Para facilitar la edición y control de los reembolsos de productos de manera eficiente.

  Background:
    Given que soy un miembro del staff autenticado
    And estoy en la página de Manage Returns

  Scenario: Visualizar los Product Refunds
    Given que existen reembolsos de productos registrados en el sistema
    When accedo a la sección de Manage Returns
    Then debería ver una lista con los productos a ser reembolsados

  Scenario: Editar un Product Refund
    Given que he seleccionado un product refund de la lista en la sección de Manage Returns
    When hago clic en el botón para editar el reembolso
    And modifico los detalles del reembolso en el formulario que aparece en el dialog
    And confirmo la edición del reembolso
    Then los detalles del reembolso deberían ser actualizados en el sistema
    And debería ver una confirmación de que el reembolso fue actualizado exitosamente
