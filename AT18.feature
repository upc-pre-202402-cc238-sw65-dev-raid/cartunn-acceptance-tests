
# E4-US02 Sección de Manage Returns

Feature: Gestión de productos devueltos por el staff
  Como staff
  Quiero gestionar los productos devueltos
  Para poder editar el título, la descripción y el estado en la sección de Product Refund

  Scenario: Visualización de los productos devueltos por el staff
    Given que el staff quiere visualizar los productos devueltos (product refunds) que existen
    When esté dentro de la aplicación y se dirija a la sección de Manage Returns
    Then el staff podrá visualizar esta sección y ver todos los productos devueltos disponibles

  Scenario: Edición de la información de un producto devuelto
    Given que el staff quiera modificar la información de uno de los productos devueltos (product refund)
    When haga clic en el producto que desea editar
    Then se abrirá un formulario en el cual podrá modificar la información del product refund, como el título, la descripción y el estado

  Scenario: Guardar cambios después de editar un producto devuelto
    Given que el staff ha editado la información de un producto devuelto
    When el staff haga clic en el botón "Save" del formulario
    Then los cambios realizados en el título, la descripción o el estado se guardarán correctamente
    And el staff verá un mensaje de confirmación de que los cambios se guardaron con éxito

  Scenario: Cancelar la edición de un producto devuelto
    Given que el staff está editando la información de un producto devuelto
    When el staff haga clic en el botón "Cancel" del formulario
    Then los cambios no se guardarán y el formulario se cerrará sin realizar modificaciones

  Scenario: Ver el historial de cambios de un producto devuelto
    Given que el staff quiere ver las modificaciones realizadas a un producto devuelto
    When el staff selecciona un producto de la lista de devueltos
    Then se mostrará un historial de los cambios previos en el título, descripción y estado
