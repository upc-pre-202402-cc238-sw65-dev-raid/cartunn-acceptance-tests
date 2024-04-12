Feature: Notificación al Proveedor sobre Necesidades de Accesorios

  Como staff mecánico responsable de la personalización de vehículos,
  Quiero poder notificar al proveedor cuando se requieran accesorios específicos para una orden de personalización,
  Para asegurar la disponibilidad oportuna de los accesorios necesarios y evitar retrasos en el proceso de personalización.

  Scenario: Notificación al Proveedor
    Given estoy revisando una orden de usuario en la lista de personalización
    And la orden requiere accesorios específicos que no están disponibles en el inventario
    When decido notificar al proveedor sobre las necesidades de accesorios
    Then debería poder enviar una notificación al proveedor informándole sobre los accesorios necesarios y la cantidad requerida

  Scenario: Confirmación de Recepción de Notificación
    Given el proveedor ha sido notificado sobre las necesidades de accesorios
    When el proveedor confirma la recepción de la notificación y su disponibilidad para proporcionar los accesorios necesarios
    Then debería recibir una confirmación de que el proveedor ha recibido la notificación y está dispuesto a suministrar los accesorios requeridos
