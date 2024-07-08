GRANT SELECT, INSERT, UPDATE ON actividad, actividad_cargo, actividad_ej, actividad_estatus, actividad_recurso, 
aliado_Comercial, cargo, cargo_ej, cargo_empleado, cliente, concesion, recurso, recurso_ej, recurso_estatus,
recurso_material, proyecto, pro_estatus, mineral, mineral_pozo, yacimiento, horario, horario_empleado, 
empleado TO paola_developer;

GRANT SELECT, INSERT, UPDATE ON actividad, actividad_cargo, actividad_ej, actividad_estatus, actividad_recurso, 
aliado_Comercial, cargo, cargo_ej, cargo_empleado, cliente, concesion, recurso, recurso_ej, recurso_estatus,
recurso_material, proyecto, pro_estatus, mineral, mineral_pozo, yacimiento,
inventario, metodo_pago, horario, horario_empleado, empleado,
solicitud_aliado, solicitud_cliente TO pedro_developer;

GRANT SELECT, INSERT, UPDATE ON actividad, actividad_cargo, actividad_ej, actividad_estatus, actividad_recurso, 
aliado_Comercial, cargo, cargo_ej, cargo_empleado, cliente, concesion, recurso, recurso_ej, recurso_estatus,
recurso_material, proyecto, pro_estatus, mineral, mineral_pozo, yacimiento,
inventario, metodo_pago, horario, horario_empleado, empleado,
solicitud_aliado, solicitud_cliente,
metodo_pago TO arturo_developer;

GRANT SELECT ON  actividad, actividad_cargo, actividad_ej, actividad_estatus, actividad_recurso, cargo, cargo_ej, cargo_empleado, 
cliente, concesion, recurso, recurso_ej, recurso_estatus,
recurso_material, proyecto, pro_estatus, mineral, mineral_pozo, yacimiento,
inventario, horario, horario_empleado, empleado TO coordinador;

GRANT SELECT, INSERT, UPDATE ON actividad, actividad_cargo, actividad_ej, actividad_estatus, actividad_recurso, 
aliado_Comercial, cargo, cargo_ej, cargo_empleado, cliente, concesion, recurso, recurso_ej, recurso_estatus,
recurso_material, proyecto, pro_estatus, mineral, mineral_pozo, yacimiento,
	inventario, metodo_pago, horario, horario_empleado, empleado,
solicitud_aliado, solicitud_cliente TO jefe;