Feature: Edición de un Proyecto Existente
  Como usuario,
  Quiero poder actualizar la información de un proyecto que he creado,
  Para mantener la información del proyecto actual y precisa.

  Scenario Outline: Modificación exitosa de los detalles del proyecto
    Given un usuario selecciona un proyecto para actualizar
    When cambia el "<DetalleCambiado>" a "<NuevoValor>" y confirma la acción
    Then el sistema actualiza los detalles del proyecto y proporciona una notificación de confirmación "<MensajeConfirmacion>"

    Examples:
      | DetalleCambiado | NuevoValor   | MensajeConfirmacion                         |
      | Nombre          | Proyecto X   | "Detalles del proyecto actualizados con éxito" |
      | Descripción     | Más detallada| "Detalles del proyecto actualizados con éxito" |
      | Fecha de inicio | 2024-01-01   | "Detalles del proyecto actualizados con éxito" |

  Scenario Outline: Intento de modificación del nombre del proyecto con un nombre ya existente
    Given un usuario intenta cambiar el nombre de un proyecto
    When introduce un nombre "<NombreNuevo>" que ya está en uso por otro proyecto "<NombreExistente>"
    Then el sistema informa al usuario con el mensaje "<MensajeError>" y no permite el cambio

    Examples:
      | NombreNuevo   | NombreExistente  | MensajeError                                            |
      | Proyecto Gamma| Proyecto Gamma   | "Error: El nombre 'Proyecto Gamma' ya está en uso."      |
      | Proyecto Delta| Proyecto Delta   | "Error: El nombre 'Proyecto Delta' ya está en uso."      |

  Scenario Outline: Intento de eliminar información obligatoria durante la edición
    Given un usuario edita los detalles de un proyecto
    When intenta guardar la edición con el campo "<CampoObligatorio>" vacío
    Then el sistema informa al usuario que todos los campos obligatorios deben estar completos con el mensaje "<MensajeError>" y no guarda los cambios

    Examples:
      | CampoObligatorio | MensajeError                                         |
      | Nombre           | "Error: El campo 'Nombre' es obligatorio."           |
      | Descripción      | "Error: El campo 'Descripción' es obligatorio."      |
      | Fecha de inicio  | "Error: El campo 'Fecha de inicio' es obligatorio."  |
