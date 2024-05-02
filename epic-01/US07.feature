Feature: Compra de Planes de Suscripción
  Como visitante,
  Quiero poder adquirir un plan de suscripción directamente desde la landing page,
  Para ahorrar tiempo al no tener que navegar a otra parte de la aplicación.

  Scenario Outline: Compra de plan de suscripción exitosa
    Given el visitante decide suscribirse a un plan
    When confirma su elección de plan de suscripción "<PlanSeleccionado>"
    Then se procesa la compra y se espera la confirmación del inicio del plan con el mensaje "<MensajeConfirmacion>"

    Examples:
      | PlanSeleccionado | MensajeConfirmacion                            |
      | Básico          | "Tu suscripción al plan Básico ha sido activada"|
      | Avanzado        | "Tu suscripción al plan Avanzado ha sido activada"|
      | Premium         | "Tu suscripción al plan Premium ha sido activada"|

  Scenario Outline: Intento de compra de plan sin medios de pago
    Given el visitante desea suscribirse a un plan
    When no dispone de los medios de pago necesarios para el plan "<PlanElegido>"
    Then se le informa de la imposibilidad de procesar la suscripción con el mensaje "<MensajeError>"

    Examples:
      | PlanElegido | MensajeError                                              |
      | Básico      | "No se pudo procesar tu suscripción al plan Básico"        |
      | Avanzado    | "No se pudo procesar tu suscripción al plan Avanzado"      |
      | Premium     | "No se pudo procesar tu suscripción al plan Premium"       |
