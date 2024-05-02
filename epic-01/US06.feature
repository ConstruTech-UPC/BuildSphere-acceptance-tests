Feature: Descripción de Planes de Suscripción
  Como visitante,
  Quiero ver todos los planes de suscripción disponibles,
  Para determinar cuál es el más conveniente para mí.

  Scenario Outline: Visualización de planes de suscripción
    Given el visitante está interesado en los planes de suscripción
    When busca información sobre los diferentes planes "<TipoPlan>"
    Then se presenta una descripción detallada de cada plan disponible

    Examples:
      | TipoPlan      |
      | Independiente |
      | Empresarial   |
