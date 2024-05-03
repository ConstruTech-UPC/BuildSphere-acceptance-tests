Feature: Gestión de Documentos
  Como usuario,
  Quiero una tabla de documentos
  Para gestionar los archivos que tengo en mi proyecto.

  Scenario Outline: Agregar un nuevo documento
    Given el usuario selecciona agregar de la tabla de documentos
    When completa los campos requeridos para agregar un nuevo documento
    And selecciona la opción de agregar
    Then el nuevo documento debe ser agregado a la tabla de documentos

  Example:
  | Document name            | Project Id   | Description           | Created at                        |
  | Plans for 2nd floor      | 1            | 2D view of 2nd floor  | Fri May 03 2024 02:54:50 GMT-0500 |

  Scenario Outline: Eliminar un documento existente
    Given el usuario accede a la tabla de documentos
    And hay documentos existentes
    When el usuario selecciona la opción de eliminar para un documento existente
    Then el documento seleccionado debe ser eliminado de la tabla de documentos

  Example:
  | Document name            | Project Id   | Description           | Created at                        |
  | Plans for 2nd floor      | 1            | 2D view of 2nd floor  | Fri May 03 2024 02:54:50 GMT-0500 |
  | Document name            | Project Id   | Description           | Created at                        |
  |                          |              |                       |                                   |
  Scenario Outline: Editar los detalles de un documento
    Given el usuario accede a la tabla de documentos
    And hay documentos existentes
    When el usuario selecciona la opción de editar para un documento existente
    And realiza los cambios necesarios en los campos y selecciona la opción de guardar
    Then los detalles del documento seleccionado deben ser actualizados en la tabla de documentos

  Example:
| Document name            | Project Id   | Description           | Created at                        |
| Plans for 2nd floor      | 1            | 2D view of 2nd floor  | Fri May 03 2024 02:54:50 GMT-0500 |
| Document name            | Project Id   | Description           | Created at                        |
| Plans for 2nd floor      | 1            | 3D view of 2nd floor  | Fri May 03 2024 02:54:50 GMT-0500 |
