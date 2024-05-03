Feature: Recuperación de Contraseña
  Como usuario,
  Quiero poder restablecer mi contraseña,
  Para poder ingresar nuevamente a mi cuenta.

  Scenario: Ingreso al entorno "Recuperar Contraseña"
    Given que un usuario ha olvidado su contraseña
    When el usuario solicita recuperar su contraseña
    Then el sistema presenta la opción para restablecer la contraseña

  Scenario Outline: Recuperación con dirección de correo electrónico válido
    Given que un usuario desea recuperar su contraseña
    When el usuario proporciona un correo electrónico registrado "<Email>"
    Then el sistema permite al usuario crear una nueva contraseña

    Examples:
      | Email               |
      | usuario@ejemplo.com |
      | ejemplo@usuario.com |

  Scenario Outline: Recuperación con dirección de correo electrónico inválido
    Given que un usuario desea recuperar su contraseña
    When el usuario proporciona un correo electrónico no registrado "<Email>"
    Then el sistema informa que la dirección de correo electrónico no está registrada

    Examples:
      | Email               |
      | noexiste@ejemplo.com|

  Scenario Outline: Restablecimiento de contraseña exitoso
    Given que un usuario está restableciendo su contraseña
    When el usuario establece una nueva contraseña válida "<NuevaContraseña>"
    Then el sistema confirma el restablecimiento de la contraseña y redirige al usuario para iniciar sesión

    Examples:
      | NuevaContraseña |
      | Nueva1234!      |
      | Contraseña2024! |

  Scenario Outline: Restablecimiento de contraseña con la misma contraseña que la original
    Given que un usuario está restableciendo su contraseña
    When el usuario intenta establecer la misma contraseña previa "<ContraseñaAnterior>"
    Then el sistema informa que debe elegir una contraseña diferente

    Examples:
      | ContraseñaAnterior |
      | Antigua123!        |
      | ViejaPass2020!     |

  Scenario: Restablecimiento de contraseña sin proporcionar una contraseña
    Given que un usuario está restableciendo su contraseña
    When el usuario intenta confirmar sin ingresar una nueva contraseña
    Then el sistema solicita la introducción de una nueva contraseña
