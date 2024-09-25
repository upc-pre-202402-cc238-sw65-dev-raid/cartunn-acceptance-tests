
# E3-US01 Barra de navegación

Feature: Sidebar de navegación
  Como cliente
  Quiero visualizar un sidebar con links de navegación
  Para navegar por la aplicación

  Scenario: El cliente quiere navegar por la aplicación
    Given que el cliente ha observado las interfaces de la aplicación
    When inicie sesión con su usuario y contraseña
    And vea la barra de navegación
    Then podrá interactuar con la aplicación con facilidad

  Scenario: El cliente quiere acceder a las secciones principales
    Given que el cliente ha iniciado sesión en la aplicación
    When el cliente hace clic en el ícono de sidebar de navegación
    Then el cliente ve la lista desplegable con los links principales
    And el cliente debe poder acceder rápidamente a las secciones principales al hacer clic en los links correspondientes

  Scenario: El cliente no ve la barra de navegación después de iniciar sesión
    Given que el cliente ha iniciado sesión en la aplicación
    When el cliente no ve la barra de navegación
    Then debe mostrarse un mensaje de error indicando que la barra de navegación no está disponible
    And el cliente podrá intentar actualizar la página o contactar al soporte técnico

  Scenario: El cliente quiere colapsar la barra de navegación
    Given que el cliente está utilizando la aplicación
    When el cliente hace clic en el ícono de colapsar del sidebar
    Then la barra de navegación se colapsa y solo muestra los íconos de las secciones
    And el cliente puede expandir la barra nuevamente haciendo clic en el ícono

  Scenario: El cliente quiere ocultar la barra de navegación en dispositivos móviles
    Given que el cliente está usando la aplicación en un dispositivo móvil
    When el cliente hace clic en el botón del menú de navegación
    Then el sidebar se despliega
    And el cliente puede ocultarlo deslizando o haciendo clic fuera del área de navegación

  Scenario: El cliente encuentra un link no funcional en la barra de navegación
    Given que el cliente está navegando en la aplicación
    When el cliente hace clic en un link de la barra de navegación que no funciona
    Then debe mostrarse un mensaje de error o un indicador de que el link no está disponible
    And el cliente podrá intentar acceder a otra sección o reportar el problema
