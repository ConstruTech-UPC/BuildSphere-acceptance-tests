Feature: Gestión de Equipos
  Como usuario,
  Quiero una tabla de equipos
  Para gestionar a los equipos que tengo a cargo.

  Scenario: Agregar un nuevo equipo
    Given el usuario accede a la tabla de equipos
    When completa los campos requeridos para agregar un nuevo equipo 
    And selecciona la opción de agregar
    Then el nuevo equipo debe ser agregado a la tabla de equipos

    Example:
      | Team name            | Description                          | Assigned tasks |
      | Team A               | Construction team for the structure  | 1,2            |

  Scenario: Eliminar un equipo existente
    Given el usuario accede a la tabla de equipos 
    And hay equipos presentes
    When el usuario selecciona la opción de eliminar para un equipo existente
    Then el equipo seleccionado debe ser eliminado de la tabla de equipos

    Example:
      | Team name            | Description                          | Assigned tasks |
      | Team A               | Construction team for the structure  | 1,2            |

      | Team name            | Description                          | Assigned tasks |
      |                      |                                      |                |

  Scenario: Editar los detalles de un equipo
    Given el usuario accede a la tabla de equipos 
    And hay equipos presentes
    When el usuario selecciona la opción de editar para un equipo existente
    And realiza los cambios necesarios en los campos y selecciona la opción de guardar
    Then los detalles del equipo seleccionado deben ser actualizados en la tabla de equipos

    Example:
      | Team name            | Description                          | Assigned tasks |
      | Team A               | Construction team for the structure  | 1,2            |

      | Team name            | Description                          | Assigned tasks |
      | Team B               | Construction team for the structure  | 1,4            |