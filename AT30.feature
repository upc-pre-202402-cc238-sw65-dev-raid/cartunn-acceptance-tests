
Feature: Cerrar sesión

  Scenario: Cierre de sesión seguro
    Given el usuario está autenticado en la aplicación
    When selecciona la opción de cerrar sesión
    Then la sesión se cierra de manera segura
    And el usuario es redirigido a la pantalla de inicio de sesión
    And se muestra un mensaje de notificación indicando que la sesión se ha cerrado exitosamente

  Scenario: Redirección tras cierre de sesión
    Given el usuario ha cerrado sesión
    When intenta acceder a una página restringida sin autenticarse
    Then el sistema lo redirige automáticamente a la pantalla de inicio de sesión
