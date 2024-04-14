# Feature: Logo y descripción de la empresa
# Como usuario
# Quiero visualizar el logo y descripción de la empresa
# Para verificar que estoy en la landing page oficial de la empresa

## Scenario: Visualización del logo y descripción
Given que el usuario se encuentra en la 'landing page'
When el usuario selecciona 'Inicio' en la barra de navegación:
| Sección seleccionada |
| Inicio               |
Then se trasladará al usuario a la sección del logo y descripción de la empresa:
| Sección mostrada           |
| Descripción de la empresa  |

