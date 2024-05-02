Feature: Contacto con un Asesor
  Como visitante,
  Quiero comunicarme con un asesor desde la landing page,
  Para resolver dudas sobre la aplicación y sus funcionalidades.

  Scenario Outline: Acceso directo a la sección de contacto
    Given el visitante necesita contactar con la empresa
    When busca la "<SeccionContacto>"
    Then encuentra los detalles para iniciar la comunicación con un asesor

    Examples:
      | SeccionContacto |
      | formulario de contacto |
      | chat en vivo            |

  Scenario Outline: Envío de información de contacto
    Given el visitante ha completado los campos "<CamposCompletados>" en la sección de contacto
    When confirma su intención de enviar la información
    Then su consulta se procesa y se espera una respuesta

    Examples:
      | CamposCompletados       |
      | nombre, email, mensaje  |
      | empresa, teléfono, mensaje |

  Scenario Outline: Error por datos inválidos en contacto
    Given el visitante está completando la información de contacto
    When se ingresan datos "<DatosInvalidos>"
    Then se informa al visitante sobre los errores para que puedan corregirse

    Examples:
      | DatosInvalidos         |
      | email incorrecto       |
      | formato de teléfono erróneo |

  Scenario Outline: Campos incompletos en la sección de contacto
    Given el visitante intenta enviar un formulario de contacto
    When omite completar "<CamposFaltantes>"
    Then se notifica al visitante que todos los campos son obligatorios

    Examples:
      | CamposFaltantes        |
      | nombre, email          |
      | teléfono, mensaje      |
