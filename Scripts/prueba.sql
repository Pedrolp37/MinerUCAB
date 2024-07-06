-- PENSAR EN HACER UN TRIGGER PARA COPIAR Y PEGAR LA INFORMACION DEL PROYECTO
-- #######################################
select e.*
from etapa e
where fk_min_id = 1

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

select * from etapa;
select * from proyecto

	CALL proyecto_nuevo('hola','epale',1,1,1,ARRAY[1,2],ARRAY[1,2])
CREATE OR REPLACE PROCEDURE proyecto_nuevo(IN nombreP varchar(30),IN descripcion VARCHAR(200),IN mineral_id INT,
											IN pozo_id INT,IN solicitud_id INT,IN arreglo_cargos INT[], arreglo_recursos INT[])
language plpgsql
AS $$
	DECLARE
	proyecto_id INT;
	registro RECORD;
BEGIN
	INSERT INTO PROYECTO (pro_nombre,pro_descripcion,pro_fecha_ini,pro_fk_po_id,pro_fk_min_id)
		VALUES
		(nombreP,descripcion, CURRENT_DATE,pozo_id,mineral_id)
		RETURNING pro_id INTO proyecto_id;
	
/*	WITH etapa_temp AS (
		select e.et_num_etapa, e.et_nombre
		from etapa e
		where fk_min_id = mineral_id
	) */
	/*	FOR registro IN (select e.et_num_etapa, e.et_nombre from etapa e where fk_min_id = mineral_id)
		LOOP
   			INSERT INTO etapa_ej(etej_num_etapa,etej_nombre,etej_fecha_ini,fk_pro_id)
    		VALUES (registro.et_num_etapa, registro.et_nombre, CURRENT_DATE,proyecto_id);
		END LOOP;
		
	INSERT INTO etapa_ej (fk_pro_id, etej_num_etapa, etej_nombre, etej_fecha_ini)
		SELECT proyecto_id, et_num_etapa, et_nombre, CURRENT_DATE
		FROM etapa_temp; */

END $$;

CREATE OR REPLACE FUNCTION agregar_etapas_actividades()
RETURNS TRIGGER AS
$$
	DECLARE
	registro RECORD;
BEGIN

	 FOR registro IN SELECT et_num_etapa, et_nombre FROM etapa WHERE fk_min_id = NEW.pro_fk_min_id
    LOOP
        -- Lógica para insertar en la tabla etapa_ej
        INSERT INTO etapa_ej (fk_pro_id, etej_num_etapa, etej_nombre, etej_fecha_ini)
        VALUES (NEW.pro_id, registro.et_num_etapa, registro.et_nombre, CURRENT_DATE);
    END LOOP;

	RETURN NEW;
END;
$$
language plpgsql;

CREATE OR REPLACE TRIGGER despues_crear_proyecto
AFTER INSERT ON PROYECTO
FOR EACH ROW
EXECUTE FUNCTION agregar_etapas_actividades();