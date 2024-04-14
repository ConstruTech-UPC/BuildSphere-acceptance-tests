# Feature: Implementación de barra de navegación
# Como usuario
# Quiero tener la opción de atravesar todas las secciones de la landing page a través de una barra de navegación
# Para facilitar el acceso a la información

## Scenario: Traslado de una sección a otra en la landing page
Given que el usuario se encuentra en la landing page
When el usuario selecciona una de las secciones de la barra de navegación: '<Seccion>'
Then se trasladará a la sección seleccionada: '<Accion de la landing page>'

Examples: Acción en la barra de navegación
| Seccion   |
| Servicios |

Examples: Respuesta de la landing page
| Accion de la landing page    |
| Mostrar sección de servicios |

## Scenario: Selección de la misma sección de la landing page
Given que el usuario se encuentra en una sección específica de la landing page: '<Sección ubicada en landing page>'
When el usuario selecciona la misma sección en la barra de navegación: '<Sección seleccionada>'
Then la pantalla no se moverá a otra sección diferente y permanecerá en: '<Accion de landing page>'

Examples: Acción en la barra de navegación
| Sección ubicada en landing page | Sección seleccionada |
| Servicios                       | Servicios            |

Examples: Respuesta de landing page
| Accion de landing page |
| Misma ubicación        |
