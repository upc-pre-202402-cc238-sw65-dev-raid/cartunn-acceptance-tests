Feature: Gestión de Devoluciones por el Staff Mecánico

  Como un staff mecánico encargado de la personalización de vehículos,
  Quiero poder gestionar devoluciones de accesorios por parte de los usuarios,
  Para poder asegurar un proceso eficiente y satisfactorio para ambas partes.

  Scenario: Acceso a la Gestión de Devoluciones
    Given estoy autenticado como un staff mecánico
    When accedo al panel de administración de devoluciones
    Then debería ser dirigido a la página de gestión de devoluciones

  Scenario: Rechazo de Devoluciones
    Given estoy revisando una solicitud de devolución
    When decido rechazar la devolución
    Then debería poder marcar el estado de la devolución como <Rechazado>

  Scenario: Procesamiento de Devoluciones
    Given estoy revisando una solicitud de devolución
    When decido procesar la devolución
    Then debería poder marcar el estado de la devolución como <Procesamiento>

  Scenario: Devolución Procesada
    Given estoy revisando una solicitud de devolución
    When finalizo el proceso de devolución
    Then debería poder marcar el estado de la devolución como <Procesado>
