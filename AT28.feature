
Feature: Inicio de sesión

  Scenario: Interfaz de usuario para el inicio de sesión
    Given el usuario accede a la página de inicio de sesión
    When selecciona el tipo de cuenta que desea iniciar sesión (cliente o staff)
    Then se muestra un formulario de inicio de sesión específico para el segmento seleccionado (cliente o staff)

  Scenario: Visualización del formulario de inicio de sesión para cliente
    Given el usuario ha seleccionado "Cliente" como tipo de cuenta
    When el formulario de inicio de sesión se carga
    Then se muestran los campos necesarios para el inicio de sesión de una cuenta de cliente

  Scenario: Visualización del formulario de inicio de sesión para staff
    Given el usuario ha seleccionado "Staff" como tipo de cuenta
    When el formulario de inicio de sesión se carga
    Then se muestran los campos necesarios para el inicio de sesión de una cuenta de staff

  Scenario: Validación de selección de tipo de cuenta en inicio de sesión
    Given el usuario está en la página de inicio de sesión
    When intenta proceder sin seleccionar un tipo de cuenta
    Then se muestra un mensaje de error indicando que debe seleccionar un tipo de cuenta
