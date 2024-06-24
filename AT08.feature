
Feature: Secciones de Items para la Interfaz del Staff

  Como miembro del staff,
  Quiero tener formularios específicos para gestionar items,
  Para poder agregar, actualizar o eliminar items de manera eficiente.

  Background:
    Given que soy un miembro del staff autenticado
    And estoy en la página de Secciones de Items

  Scenario: Agregar un nuevo Item
    Given que estoy en el formulario de agregar items
    When ingreso los detalles del nuevo item
    And hago clic en el botón para agregar el item
    Then el nuevo item debería ser creado en el sistema
    And debería ver una confirmación de que el item fue agregado exitosamente

  Scenario: Actualizar un Item existente
    Given que he seleccionado un item de la lista en la página de Secciones de Items
    And estoy en el formulario de actualizar items
    When modifico los detalles del item
    And hago clic en el botón para actualizar el item
    Then los detalles del item deberían ser actualizados en el sistema
    And debería ver una confirmación de que el item fue actualizado exitosamente

  Scenario: Eliminar un Item
    Given que he seleccionado un item de la lista en la página de Secciones de Items
    When hago clic en el botón para eliminar el item
    Then el item debería ser eliminado del sistema
    And debería ver una confirmación de que el item fue eliminado exitosamente
