Feature: Implementación de un Footer
  Como visitante,
  Quiero ver el footer al final de la página,
  Para obtener información adicional como las redes sociales asociadas a la empresa.

  Scenario Outline: Traslado a la sección de footer
    Given el visitante navega hasta el final de la landing page
    When alcanza el footer
    Then se muestra la información de contacto y las redes sociales de la empresa

    Examples:
      | RedSocial     | InformacionContacto       |
      | Facebook      | "Síguenos en Facebook"    |
      | Twitter       | "Síguenos en Twitter"     |
      | Instagram     | "Síguenos en Instagram"   |

  Scenario Outline: Traslado al usuario de la red social seleccionada
    Given el visitante desea seguir a la empresa en las redes sociales
    When requiere acceso a los enlaces de dichas redes "<RedSocial>"
    Then la información y enlaces están disponibles para la interacción con el mensaje "<MensajeAcceso>"

    Examples:
      | RedSocial  | MensajeAcceso                                     |
      | Facebook   | "Visita nuestra página de Facebook aquí: [link]"  |
      | Twitter    | "Sigue nuestras actualizaciones en Twitter aquí: [link]" |
      | Instagram  | "Descubre nuestras fotos en Instagram aquí: [link]" |
