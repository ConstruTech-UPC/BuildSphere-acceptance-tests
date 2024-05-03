
Feature: Gestión de Tareas
  Como usuario,
  Quiero una tabla de tareas
  Para gestionar a las tareas que he asignado.

  Scenario: Agregar una nueva tarea
    Given el usuario accede a la tabla de tareas
    When completa los campos requeridos para agregar una nueva tarea y selecciona la opción de agregar
    Then la nueva tarea debe ser agregada a la tabla de tareas

    Example:
      | Task name           | Description                                       | Start Date | Max end date | Completion Porcentage
      | Excavate terrain    | Excavate the terrain to prepare for construction  | 2024-04-01 | 2024-04-15   |   70%

  Scenario: Eliminar una tarea existente
    Given el usuario accede a la tabla de tareas 
    And hay tareas presentes
    When el usuario selecciona la opción de eliminar para una tarea existente
    Then la tarea seleccionada debe ser eliminada de la tabla de tareas

    Example:
      | Task name           | Description                                       | Start Date | Max end date | Completion Porcentage
      | Excavate terrain    | Excavate the terrain to prepare for construction  | 2024-04-01 | 2024-04-15   |   70%

      | Task name           | Description                                       | Start Date | Max end date | Completion Porcentage
      |                     |                                                   |            |              |   

  Scenario: Editar los detalles de una tarea
    Given el usuario accede a la tabla de tareas 
    And hay tareas presentes
    When el usuario selecciona la opción de editar para una tarea existente
    And realiza los cambios necesarios en los campos y selecciona la opción de guardar
    Then los detalles de la tarea seleccionada deben ser actualizados en la tabla de tareas

    Example:
      | Task name           | Description                                       | Start Date | Max end date | Completion Porcentage
      | Excavate terrain    | Excavate the terrain to prepare for construction  | 2024-04-01 | 2024-04-15   |   70%

      | Task name           | Description                                       | Start Date | Max end date | Completion Porcentage
      |  Install wiring     | Install electrical wiring in the building         | 2024-04-01 | 2024-04-15   |   70%
