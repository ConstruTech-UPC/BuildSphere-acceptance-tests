
Feature: Implementación de Barra de Navegación
  Como visitante,
  Quiero navegar a través de todas las secciones de la landing page mediante una barra de navegación,
  Para acceder fácilmente a la información que necesito.

  Scenario: Navegación eficiente entre secciones
    Given el visitante desea explorar la landing page
    When elige "<Sección>" de la barra de navegación
    Then el contenido de la página se desplaza a la sección "<Sección>"

    Examples:
      | Sección        |
      | Inicio         |
      | Sobre Nosotros |
      | Productos      |
      | Contacto       |

  Scenario: Permanencia en la sección actual
    Given el visitante está en la sección "<SecciónActual>" de la landing page
    When intenta acceder nuevamente a la sección "<SecciónSeleccionada>"
    Then la vista actual de la página se mantiene sin cambios

    Examples:
      | SecciónActual  | SecciónSeleccionada |
      | Inicio         | Inicio              |
      | Sobre Nosotros | Sobre Nosotros      |
      | Productos      | Productos           |
      | Contacto       | Contacto            |
