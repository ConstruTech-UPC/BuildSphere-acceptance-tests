Feature: Eliminación de un Proyecto
  Como usuario,
  Quiero poder eliminar un proyecto que ya no es relevante o necesario,
  Para mantener la claridad y relevancia en mi cartera de proyectos.

  Scenario Outline: Eliminación correcta de un proyecto
    Given un usuario decide que un proyecto ya no es necesario
    When confirma la intención de eliminar el proyecto "<NombreProyecto>"
    Then el sistema elimina el proyecto y notifica al usuario con el mensaje "<MensajeConfirmacion>"

    Examples:
      | NombreProyecto | MensajeConfirmacion                   |
      | Proyecto Alpha | "El Proyecto Alpha ha sido eliminado." |
      | Proyecto Beta  | "El Proyecto Beta ha sido eliminado."  |

  Scenario Outline: Intento de eliminación de un proyecto con dependencias
    Given un usuario intenta eliminar un proyecto que tiene tareas o dependencias asociadas
    When el usuario intenta realizar la eliminación del proyecto "<NombreProyecto>"
    Then el sistema no permite la eliminación y notifica al usuario de las dependencias activas con el mensaje "<MensajeError>"

    Examples:
      | NombreProyecto | MensajeError                                              |
      | Proyecto Gamma | "No se puede eliminar Proyecto Gamma debido a dependencias activas." |

  Scenario Outline: Intento de eliminación de un proyecto sin confirmación
    Given un usuario comienza el proceso de eliminación de un proyecto
    When el usuario no confirma explícitamente la acción de eliminación para el proyecto "<NombreProyecto>"
    Then el sistema no realiza la eliminación y mantiene el proyecto intacto en la lista

    Examples:
      | NombreProyecto   |
      | Proyecto Delta   |
