Feature: Registro de un Nuevo Usuario
  Como usuario nuevo,
  Quiero poder registrarme en la aplicación,
  Para acceder a todas las funcionalidades que ofrece la aplicación.

  Scenario: Entrada al entorno de registro
    Given que el usuario es nuevo y desea registrarse
    When el usuario inicia el proceso de creación de cuenta
    Then se le presenta la opción para registrar una cuenta nueva

  Scenario Outline: Registro de usuario exitoso
    Given que el usuario desea registrarse
    When el usuario completa el formulario de registro con datos válidos "<DatosUsuario>"
    Then el sistema confirma la creación de la cuenta y le informa sobre el próximo paso para iniciar sesión con el mensaje "<MensajeConfirmacion>"

    Examples:
      | DatosUsuario          | MensajeConfirmacion                             |
      | Juan, Perez, juan@ejemplo.com, Contraseña123 | "Tu cuenta ha sido creada exitosamente. Por favor inicia sesión." |

  Scenario Outline: Registro con correo electrónico ya registrado
    Given que un usuario desea registrarse
    When el usuario intenta registrarse con un correo electrónico ya existente en el sistema "<Email>"
    Then el sistema informa que el correo electrónico ya está en uso

    Examples:
      | Email               | Mensaje                                     |
      | usuario@ejemplo.com | "Este correo ya está vinculado a un usuario"|

  Scenario Outline: Registro con datos incompletos
    Given que un usuario intenta registrarse
    When el usuario envía un formulario de registro sin completar todos los campos requeridos "<CamposIncompletos>"
    Then el sistema solicita que todos los campos sean completados

    Examples:
      | CamposIncompletos      |
      | nombre, apellido       |
      | email, contraseña      |

  Scenario Outline: Registro con un nombre de usuario prohibido
    Given que un usuario intenta registrarse
    When el usuario selecciona un nombre de usuario que no está permitido "<NombreUsuario>"
    Then el sistema informa que el nombre de usuario no está disponible

    Examples:
      | NombreUsuario    |
      | admin            |
      | usuario          |

  Scenario Outline: Registro con una edad inválida
    Given que un usuario intenta registrarse
    When el usuario proporciona una edad que no cumple con las políticas de edad "<Edad>"
    Then el sistema informa que la edad proporcionada es inválida

    Examples:
      | Edad  |
      | 15    |
      | 100   |

  Scenario Outline: Registro con una contraseña débil
    Given que un usuario intenta registrarse
    When el usuario elige una contraseña que no cumple con las políticas de seguridad "<Contraseña>"
    Then el sistema informa que la contraseña elegida es demasiado débil

    Examples:
      | Contraseña |
      | password   |
      | 12345      |
