Feature: Edición de datos de un material existente en el inventario
  Como usuario,
  Quiero poder editar los detalles de un material,
  Para corregir errores o actualizar información según sea necesario.

  Scenario Outline: Editar un material existente exitosamente
  Given que el usuario desea editar un material existente,
  When el usuario edita los detalles de manera correcta
  Then el sistema confirma la edición y redirige al usuario para visualizar los datos.

    Examples:
      | Material | Description | Reception date | Material status | Amount | Total cost |
      | Cement   | 50 kg       | 2021-09-01     | New             | 10     | 100        |

      | Material | Description | Reception date | Material status | Amount | Total cost |
      | Cement   | 60 kg      | 2021-09-01     | New             | 10     | 100        |

  Scenario Outline: Editar un material existente con datos inválidos
  Given que el usuario desea editar un material existente,
  When el usuario edita los detalles respectivos del material,
  And proporciona un dato erróneo que no cumple con las indicaciones,
  Then el sistema informa que el dato no es válido.

    Examples:
    | Error | Reception Date | -63 |

  Scenario Outline: Editar un material de manera incompleta
  Given que el usuario desea ingresar un nuevo material,
  When el usuario edita los detalles respectivos del material
  And evita un dato,
  Then el sistema informa que el usuario ingrese los datos completos.

    Examples:
    | Error | Material | Empty |

