delete from actividad_ej;
select * from etapa

	WITH etapa_temp AS(
		select e.et_num_etapa, e.et_nombre
from etapa e
where fk_min_id = 1
	)
	select * from etapa_temp
INSERT INTO ETAPA_EJ ()
	SELECT	
	FROM etapa_temp

	select * from proyecto
	select * from recurso_ej
select * from etapa_ej where fk_pro_id = 110;
select * from proyecto

SELECT a.*
	FROM etapa, actividad a
	WHERE fk_min_id = 1
	AND et_id = fk_et_id
	
	CALL proyecto_nuevo('hola','epale',1,1,1);
CREATE OR REPLACE PROCEDURE proyecto_nuevo(IN nombreP varchar(30), IN descripcion VARCHAR(200), IN mineral_id INT,
                                            IN pozo_id INT, IN solicitud_id INT,
											IN arreglo_cargos INT[],IN arreglo_recursos INT[])
LANGUAGE plpgsql
AS $$
DECLARE
    proyecto_id INT;
	etapa_ej_id INT;
	act_ej_id INT;
    fecha DATE;
	registro RECORD;
	registro_act RECORD;
	ids_actividades INT[]; -- Arreglo para almacenar los IDs de las actividades generadas
BEGIN
    fecha := CURRENT_DATE;
    INSERT INTO PROYECTO (pro_nombre, pro_descripcion, pro_fecha_ini,pro_fecha_fin, pro_fk_po_id, pro_fk_min_id,pro_fk_sol_id)
    VALUES (nombreP, descripcion, fecha,NULL, pozo_id, mineral_id, solicitud_id)
	RETURNING pro_id INTO proyecto_id;

	 FOR registro IN (SELECT et_num_etapa, et_nombre, et_id FROM etapa WHERE fk_min_id = mineral_id)
    LOOP
        -- Lógica para insertar en la tabla etapa_ej
        INSERT INTO etapa_ej (etej_num_etapa, etej_nombre, etej_fecha_ini,etej_fecha_fin,fk_pro_id)
        VALUES ( registro.et_num_etapa, registro.et_nombre, fecha,NULL, proyecto_id)
		RETURNING etej_id INTO etapa_ej_id;

		
	 -- Insertar actividades directamente desde la consulta
   		INSERT INTO ACTIVIDAD_EJ(actej_nombre, fk_etej_id, actej_fecha_ini)
    	SELECT act_nombre, etapa_ej_id, CURRENT_DATE
    	FROM actividad
    	WHERE fk_et_id = registro.et_id
		RETURNING actej_id INTO act_ej_id;

	/*	INSERT INTO RECURSO_EJ (reej_costo, reej_actej_id)
		SELECT ac.acre_costo, act_ej_id
		FROM ACTIVIDAD_RECURSO ac, actividad a, actividad_ej aej
		WHERE a.fk_et_id = registro.et_id
		AND	ac.acre_act_id = a.act_id
		AND aej.fk_etej_id = etapa_ej_id; */

	  ids_actividades := array_append(ids_actividades, act_ej_id);
    END LOOP;

	-- Insertar recursos asociados a las actividades
    INSERT INTO RECURSO_EJ (reej_costo, reej_actej_id)
    SELECT ac.acre_costo, id_act
    FROM ACTIVIDAD_RECURSO ac
    CROSS JOIN unnest(ids_actividades) AS id_act; -- Asociar con los IDs almacenados
END $$;


SELECT ac.acre_id,ac.acre_act_id,ac.acre_tire_id,ac.acre_costo, a.act_nombre, r.tire_nombre
		FROM ACTIVIDAD_RECURSO ac, actividad a, etapa e, recurso r
		WHERE e.et_id = 1 
		AND a.fk_et_id = e.et_id
		AND	ac.acre_act_id = a.act_id
		AND r.tire_id=ac.acre_tire_id;

select * from actividad_recurso

SELECT a.act_nombre, ac.*, ca.carg_nombre
    	FROM etapa e, actividad a, actividad_cargo ac, cargo ca
    	WHERE fk_et_id = e.et_id
		AND act_id = acca_act_id
		AND e.et_id = 1
		AND carg_id = acca_carg_id

select * from actividad_cargo

SELECT po.pro_nombre, ej.*
FROM proyecto po, etapa ej, actividad_ej aej
WHERE po.pro_id = ej.fk_pro_id
AND ej.etej_id = aej.fk_etej_id
AND po.pro_id = 