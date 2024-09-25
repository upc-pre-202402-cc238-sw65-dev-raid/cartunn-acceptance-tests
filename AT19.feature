
# E4-US03 Sección de Items

Feature: Gestión de ítems por el staff
  Como cliente staff
  Quiero gestionar ítems en la interfaz del staff
  Para poder agregar, actualizar o eliminar ítems de manera eficiente

  Scenario: Agregar un nuevo ítem
    Given que el staff está en la sección de ítems del panel
    When selecciona la opción de "Agregar" y completa el formulario con los atributos: id, nombre, descripción, modelo, fabricante, precio e imagen
    Then el sistema debería guardar el nuevo ítem en la base de datos y mostrar un mensaje de confirmación de adición exitosa

  Scenario: Actualizar un ítem existente
    Given que el staff está en la sección de ítems del panel
    When selecciona un ítem existente, elige la opción de "Actualizar" y modifica los atributos: id, nombre, descripción, modelo, fabricante, precio o imagen en el formulario
    Then el sistema debería guardar los cambios del ítem en la base de datos y mostrar un mensaje de confirmación de actualización exitosa

  Scenario: Eliminar un ítem
    Given que el staff está en la sección de ítems del panel
    When selecciona un ítem existente y elige la opción de "Eliminar"
    Then el sistema debería eliminar el ítem de la base de datos y mostrar un mensaje de confirmación de eliminación exitosa

  Scenario: Ver detalles de un ítem antes de actualizar o eliminar
    Given que el staff está en la sección de ítems del panel
    When selecciona un ítem existente
    Then el sistema debería mostrar todos los detalles del ítem, incluyendo id, nombre, descripción, modelo, fabricante, precio e imagen

  Scenario: Cancelar la acción de agregar, actualizar o eliminar un ítem
    Given que el staff está en la sección de ítems del panel
    When selecciona la opción de "Cancelar" en el formulario de agregar, actualizar o eliminar
    Then el sistema debería descartar la acción y volver a la lista de ítems sin realizar ningún cambio
