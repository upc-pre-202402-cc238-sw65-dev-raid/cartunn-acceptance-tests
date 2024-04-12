Feature: Notificación de Finalización de Personalización al Cliente

  Como staff mecánico responsable de la personalización de vehículos,
  Quiero poder notificar al cliente cuando su auto esté listo para la entrega,
  Para asegurar una comunicación efectiva y una experiencia satisfactoria para el cliente.

  Scenario: Notificación al Cliente
    Given estoy revisando una orden de usuario en la lista de personalización
    When el proceso de personalización del vehículo ha sido completado
    Then debería poder enviar una notificación al cliente informándole que su auto está listo para la entrega

  Scenario: Confirmación de Recepción de Notificación
    Given el cliente ha sido notificado sobre la finalización de la personalización
    When el cliente confirma la recepción de la notificación
    Then debería recibir una confirmación de que el cliente ha recibido la notificación exitosamente
