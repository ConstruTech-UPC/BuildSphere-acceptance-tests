Feature: Gestión de Trabajadores
  Como usuario,
  Quiero una tabla de trabajadores
  Para gestionar a los trabajadores que tengo a cargo.

  Scenario Outline: Agregar un nuevo trabajador
    Given el usuario selecciona agregar de la tabla de trabajadores
    When completa los campos requeridos para agregar un nuevo trabajador 
    And selecciona la opción de agregar
    Then el nuevo trabajador debe ser agregado a la tabla de trabajadores

    Example:
      | Worker name              | Team Id   | Worker Role  | Hours worked |
      | Juan Perez               | 1         | Architect    |    20        |

  Scenario Outline: Eliminar un trabajador existente
    Given el usuario accede a la tabla de trabajadores 
    And hay trabajadores presentes
    When el usuario selecciona la opción de eliminar para un trabajador existente
    Then el trabajador seleccionado debe ser eliminado de la tabla de trabajadores

    Example:
      | Worker name              | Team Id   | Worker Role  | Hours worked |
      | Juan Perez               | 1         | Architect    |    20        |
      | Worker name              | Team Id   | Worker Role  | Hours worked |
      |                          |           |              |              |

  Scenario Outline: Editar los detalles de un trabajador
    Given el usuario accede a la tabla de trabajadores 
    And hay trabajadores presentes
    When el usuario selecciona la opción de editar para un trabajador existente
    And realiza los cambios necesarios en los campos y selecciona la opción de guardar
    Then los detalles del trabajador seleccionado deben ser actualizados en la tabla de trabajadores

    Example:
      | Worker name              | Team Id   | Worker Role  | Hours worked |
      | Juan Perez               | 1         | Architect    |    20        |
      | Worker name              | Team Id   | Worker Role  | Hours worked |
      | Maria Antonieta          |     2     | Architect    |       20     |
