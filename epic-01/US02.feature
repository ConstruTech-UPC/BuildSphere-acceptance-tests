Feature: Logo y Descripción de la Empresa
  Como visitante,
  Quiero ver el logo y la descripción de la empresa al llegar a la landing page,
  Para confirmar que estoy en el sitio web oficial de la empresa.

  Scenario: Visualización del Logo
    Given el visitante accede a la landing page
    When la página carga inicialmente
    Then el logo y la descripción de la empresa se presentan claramente en la primera pantalla visible
