Feature: Eliminar una máquina del inventario
  Como usuario,
  Quiero poder eliminar una máquina del inventario,
  Para remover una máquina obsoleta o no necesitada.

  Scenario: Eliminar una máquina del inventario
  Given que el usuario desea eliminar una máquina,
  When el usuario lo elimine del inventario
  And confirme la acción,
  Then el sistema elimina la máquina.
