Feature: Edición de datos de una máquina existente en el inventario
  Como usuario,
  Quiero poder editar los detalles de una máquina,
  Para corregir errores o actualizar información para mantener un orden en el proyecto.

  Scenario Outline: Editar una máquina existente exitosamente
  Given que el usuario desea editar una máquina existente,
  When el usuario edita los detalles de manera correcta,
  Then el sistema confirma la edición y redirige al usuario para visualizar los datos.

    Examples:
    | Machine | Description | Reception Date | End Date | Total cost |
    | Excavator | Machinery used to excavate ground | 2021-01-01 | 2021-01-10 | 1000 |

    | Machine | Description | Reception Date | End Date | Total cost |
    | Excavator | Machinery used to excavate ground | 2021-01-01 | 2021-01-10 | 2000 |

  Scenario Outline: Editar una máquina existente con datos inválidos
  Given que el usuario desea una máquina existente,
  When el usuario edita los detalles respectivos del material,
  And proporciona un dato erróneo que no cumple con las indicaciones,
  Then el sistema informa que el dato no es válido.

    Examples:
    | Error | Reception Date | -78 |

  Scenario Outline:  Editar una máquina de manera incompleta
    Given que el usuario desea ingresar una máquina material,
    When el usuario edita los detalles respectivos del material
    And evita un dato,
    Then el sistema informa que el usuario ingrese los datos completos.

    Examples:
    | Error | Total cost | Empty |

