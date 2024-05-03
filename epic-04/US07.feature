Feature: Ver presupuesto,  el uso actual del mismo y monto restante disponible
  Como usuario,
  Quiero poder ver el presupuesto inicial, cuánto se está usando y cuánto queda,
  Para tener un mejor control sobre el uso del presupuesto.

  Scenario: Ver presupuesto general
  Given que el usuario desea saber cuánto del presupuesto se está usando,
  When el usuario vea el presupuesto actual, cuánto se usa y cuánto queda
  Then el sistema mostrará en una lista los tres resultados

