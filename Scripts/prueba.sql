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

	select * from actividad_ej
select * from etapa_ej where fk_pro_id = 110;
select * from proyecto

SELECT a.*
	FROM etapa, actividad a
	WHERE fk_min_id = 1
	AND et_id = fk_et_id
	
	CALL proyecto_nuevo('hola','epale',1,1,1);
CREATE OR REPLACE PROCEDURE proyecto_nuevo(IN nombreP varchar(30), IN descripcion VARCHAR(200), IN mineral_id INT,
                                            IN pozo_id INT, IN solicitud_id INT)
LANGUAGE plpgsql
AS $$
DECLARE
    proyecto_id INT;
	etapa_ej_id INT;
    fecha DATE;
	registro RECORD;
	registro_act RECORD;
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
    	WHERE fk_et_id = registro.et_id;

    END LOOP;

END $$;


CREATE OR REPLACE FUNCTION agregar_etapas_actividades()
RETURNS TRIGGER AS
$$
DECLARE
    registro RECORD;
    fecha DATE;
BEGIN
    fecha := CURRENT_DATE;
    FOR registro IN (SELECT et_num_etapa, et_nombre FROM etapa WHERE fk_min_id = NEW.pro_fk_min_id)
    LOOP
        -- Lógica para insertar en la tabla etapa_ej
        INSERT INTO etapa_ej (fk_pro_id, etej_num_etapa, etej_nombre, etej_fecha_ini)
        VALUES (NEW.pro_id, registro.et_num_etapa, registro.et_nombre, fecha);
    END LOOP;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER despues_crear_proyecto
AFTER INSERT ON PROYECTO
FOR EACH ROW
EXECUTE FUNCTION agregar_etapas_actividades();