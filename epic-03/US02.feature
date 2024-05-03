Feature: Acceso de Usuarios
  Como usuario con una cuenta existente,
  Quiero poder iniciar sesión en la aplicación,
  Para acceder a mi cuenta dentro de la aplicación.

  Scenario Outline: Inicio de sesión exitoso
    Given que un usuario desea acceder a su cuenta
    When el usuario proporciona credenciales válidas "<Email>", "<Contraseña>"
    Then el usuario accede a la página principal de la aplicación

    Examples:
      | Email                 | Contraseña    |
      | usuario@ejemplo.com   | Contraseña123 |
      | ejemplo@usuario.com   | 1234Abcd!     |

  Scenario Outline: Inicio de sesión con correo electrónico inválido
    Given que un usuario intenta iniciar sesión
    When el usuario proporciona un correo electrónico no registrado "<Email>"
    Then el sistema informa que las credenciales son incorrectas

    Examples:
      | Email                 |
      | noexiste@ejemplo.com  |

  Scenario Outline: Inicio de sesión con contraseña incorrecta
    Given que un usuario intenta iniciar sesión
    When el usuario proporciona una contraseña incorrecta para el correo "<Email>"
    Then el sistema informa que las credenciales son incorrectas

    Examples:
      | Email                 | Contraseña    |
      | usuario@ejemplo.com   | contraseñaErronea |

  Scenario Outline: Inicio de sesión con datos incompletos
    Given que un usuario intenta iniciar sesión
    When el usuario no proporciona todos los datos necesarios "<DatosIncompletos>"
    Then el sistema solicita el ingreso completo de los datos

    Examples:
      | DatosIncompletos       |
      | solo email             |
      | solo contraseña        |
