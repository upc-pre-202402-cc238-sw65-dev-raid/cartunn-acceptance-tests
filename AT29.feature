
Feature: Recuperación de contraseña

  Scenario: Interfaz de usuario para la recuperación de contraseña
    Given el usuario accede a la página de recuperación de contraseña
    When selecciona el tipo de cuenta para recuperación de contraseña (cliente o staff)
    Then se muestra un formulario de recuperación de contraseña específico para el segmento seleccionado (cliente o staff)

  Scenario: Visualización del formulario de recuperación de contraseña para cliente
    Given el usuario ha seleccionado "Cliente" como tipo de cuenta
    When el formulario de recuperación de contraseña se carga
    Then se muestran los campos necesarios para la recuperación de contraseña de una cuenta de cliente

  Scenario: Visualización del formulario de recuperación de contraseña para staff
    Given el usuario ha seleccionado "Staff" como tipo de cuenta
    When el formulario de recuperación de contraseña se carga
    Then se muestran los campos necesarios para la recuperación de contraseña de una cuenta de staff

  Scenario: Validación de selección de tipo de cuenta en recuperación de contraseña
    Given el usuario está en la página de recuperación de contraseña
    When intenta proceder sin seleccionar un tipo de cuenta
    Then se muestra un mensaje de error indicando que debe seleccionar un tipo de cuenta
