Feature: Agregar material nuevo al inventario
  Como usuario,
  Quiero poder ingresar un material nuevo,
  Para mantener actualizado los materiales disponibles para el proyecto

  Scenario Outline: Agregar un nuevo material al inventario exitosamente
    Given que el usuario desea ingresar un nuevo material,
    When lo ingrese, coloca los detalles respectivos del materia de manera correcta,
    Then el sistema confirma el ingreso y redirige al usuario para visualizar los datos.

    Examples:
    | Material | Description | Reception date | Material status | Amount | Total cost |
    | Cement   | 50 kg       | 2021-09-01     | New             | 10     | 100        |

  Scenario Outline: Agregar un nuevo material al inventario con datos inválidos
    Given que el usuario desea ingresar un nuevo material,
    When lo ingrese, coloca los detalles respectivos del material,
    And proporciona un dato erróneo que no cumple con las indicaciones,
    Then el sistema informa que el dato no es válido.

    Examples:
    | Error | Amount | -10 |

  Scenario Outline: Agregar un nuevo material de manera incompleta
    Given que el usuario desea ingresar un nuevo material,
    When lo ingrese, coloca los detalles respectivos del material
    And evita un dato,
    Then el sistema informa que el usuario ingrese los datos completos.

    Examples:
    | Error | Material | Empty |
