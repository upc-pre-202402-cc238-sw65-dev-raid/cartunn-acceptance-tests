
Feature: Registro de cuentas

  Como cliente o miembro del staff
  Quiero poder registrar una cuenta
  Para acceder a los servicios que ofrece la aplicación

  Scenario: Registro de cuenta exitoso
    Given que el usuario se encuentra en la pantalla de registro
    When completa todos los campos obligatorios correctamente
    And selecciona el tipo de usuario (cliente o miembro del staff)
    And envía el formulario de registro
    Then debería recibir una confirmación de cuenta creada exitosamente
    And debería poder acceder a su cuenta con las credenciales registradas

  Scenario: Registro fallido por campos incompletos
    Given que el usuario está en la pantalla de registro
    When intenta enviar el formulario sin completar los campos obligatorios
    Then debería ver un mensaje de error indicando los campos faltantes
