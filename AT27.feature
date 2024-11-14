
Feature: Registro de cuentas

  Scenario: Interfaz de usuario para el inicio de registro de cuentas
    Given el usuario accede a la página de registro de cuentas
    When selecciona el tipo de cuenta que desea registrar (cliente o staff)
    Then se muestra un formulario de registro específico para el segmento seleccionado (cliente o staff)

  Scenario: Visualización del formulario de registro para cliente
    Given el usuario ha seleccionado "Cliente" como tipo de cuenta
    When el formulario de registro se carga
    Then se muestran los campos necesarios para el registro de una cuenta de cliente

  Scenario: Visualización del formulario de registro para staff
    Given el usuario ha seleccionado "Staff" como tipo de cuenta
    When el formulario de registro se carga
    Then se muestran los campos necesarios para el registro de una cuenta de staff

  Scenario: Validación de selección de tipo de cuenta
    Given el usuario está en la página de registro
    When intenta proceder sin seleccionar un tipo de cuenta
    Then se muestra un mensaje de error indicando que debe seleccionar un tipo de cuenta
