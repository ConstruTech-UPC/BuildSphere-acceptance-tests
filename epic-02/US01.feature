Feature: Creación de un Proyecto
  Como usuario,
  Quiero poder crear registros de los proyectos que tengo,
  Para conocer los detalles de cada uno de ellos.

  Scenario: Inicio del proceso de creación de un proyecto
    Given el usuario desea crear un nuevo proyecto
    When inicia el proceso de creación
    Then se le presenta la interfaz para introducir los detalles del proyecto

  Scenario Outline: Creación exitosa de un proyecto
    Given el usuario está introduciendo detalles para un nuevo proyecto
    When completa todos los campos requeridos y confirma la creación
    Then el sistema guarda el proyecto y proporciona una confirmación visual del éxito de la operación con el mensaje "<MensajeConfirmacion>"

    Examples:
      | MensajeConfirmacion              |
      | "Proyecto creado con éxito"      |

  Scenario Outline: Creación de un proyecto con nombre inválido
    Given el usuario introduce información para un nuevo proyecto
    When utiliza un nombre no permitido por el sistema "<NombreProyecto>"
    Then el sistema muestra una indicación de que el nombre no es aceptable

    Examples:
      | NombreProyecto     |
      | Caracteres especiales |
      | Demasiado largo    |

  Scenario Outline: Creación de un proyecto con nombre duplicado
    Given el usuario introduce información para un nuevo proyecto
    When introduce un nombre ya utilizado en otro proyecto "<NombreProyecto>"
    Then el sistema informa de la duplicidad y no permite la creación del proyecto

    Examples:
      | NombreProyecto  |
      | Proyecto Alpha  |

  Scenario Outline: Intento de creación de un proyecto sin completar todos los campos requeridos
    Given el usuario está creando un nuevo proyecto
    When omite completar los campos obligatorios "<CamposFaltantes>"
    Then el sistema informa de los campos incompletos y no permite la creación del proyecto

    Examples:
      | CamposFaltantes       |
      | Nombre, Descripción   |
      | Fecha de inicio       |

  Scenario Outline: Intento de creación de un proyecto con información numérica inválida
    Given el usuario está proporcionando detalles para un nuevo proyecto
    When introduce valores numéricos inválidos en los campos correspondientes "<CampoNumérico>"
    Then el sistema notifica sobre los valores inválidos y solicita corrección

    Examples:
      | CampoNumérico        |
      | Presupuesto          |
      | Número de participantes |
