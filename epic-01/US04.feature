Feature: Detalles y Servicios de la Empresa
  Como visitante,
  Quiero conocer los detalles y servicios de la empresa,
  Para entender cómo puedo utilizar la aplicación.

  Scenario Outline: Traslado a la sección servicios
    Given el visitante busca información sobre lo que ofrece la empresa
    When busca detalles de los servicios en "<TipoServicio>"
    Then la información de los servicios se presenta de manera organizada y es fácilmente accesible

    Examples:
      | TipoServicio       |
      | servicios de gestión |
      | servicios de planifación |
      | soporte técnico    |
