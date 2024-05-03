Feature: Eliminar un material del inventario
  Como usuario,
  Quiero poder eliminar un material,
  Para evitar confusiones en el desarrollo del proyecto.

  Scenario: Eliminar un material del inventario
  Given que el usuario desea eliminar un material,
  When el usuario lo elimine del inventario
  And confirme la acción,
  Then el sistema elimina el material
