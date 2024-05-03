Feature: Agregar máquina nueva al inventario
  Como usuario,
  Quiero poder ingresar una máquina nueva,
  Para mantener actualizado las máquinas disponibles en el proyecto.

  Scenario Outline:  Agregar una nueva máquina al inventario
  Given que el usuario desea ingresar una nueva máquina,
  When lo ingrese, coloca los detalles respectivos de la máquina de manera correcta,
  Then el sistema confirma el ingreso y redirige al usuario para visualizar los datos.

    Examples:
      | Machine | Description | Reception Date | End Date | Total cost |
      | Excavator | Machinery used to excavate ground | 2021-01-01 | 2021-01-10 | 1000

  Scenario Outline: Agregar una nueva máquina al inventario con datos inválidos
  Given que el usuario desea ingresar una nueva máquina,
  When lo ingrese, coloca los detalles respectivos de la máquina,
  And proporciona un dato erróneo que no cumple con las indicaciones,
  Then el sistema informa que el dato no es válido.

    Examples:
    | Error | Total cost | -822 |

  Scenario Outline: Agregar una nueva máquina al inventario de manera incompleta
  Given que el usuario desea ingresar una nueva máquina,
  When lo ingrese, coloca los detalles respectivos de la máquina,
  And evita un dato,
  Then el sistema informa que el usuario ingrese los datos completos.

    Examples:
    | Error | Total cost | Empty |

