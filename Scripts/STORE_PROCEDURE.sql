-- PROCEDIMIENTO PARA INSERTAR UNA SOLICITUD DE CLIENTE
CREATE OR REPLACE PROCEDURE insertar_sol_cliente(IN id_cliente VARCHAR(11),IN mineral_id INT,
												IN cantidad NUMERIC(20,2),IN obs VARCHAR(200),
												IN metodosP INT[], IN montoP INT[])
 language plpgsql
AS $$
	DECLARE
	costo_total INT;
	i INT;
	solicitud_id INT;
BEGIN

	--costo del mineral
	SELECT SUM (ar.acre_costo + ac.acca_costo) INTO costo_total
	FROM etapa e, actividad a, actividad_cargo ac, actividad_recurso ar
	WHERE e.fk_min_id = mineral_id --Asocio a partir del id del mineral
	AND e.et_id = a.fk_et_id
	AND a.act_id = ac.acca_act_id
	AND a.act_id = ar.acre_act_id;
	----
	INSERT INTO solicitud_cliente (factura_cli_fecha,factura_cli_total,factura_cli_cantidad,factura_cli_observacion,
									factura_fk_cl_identificacion,factura_min_id)
	VALUES(CURRENT_DATE, costo_total,cantidad,obs,id_cliente,mineral_id)
		RETURNING factura_cli_id INTO solicitud_id; -- obtengo el id del insert


  -- Insertar en la tabla pago
    FOR i IN 1..array_length(metodosP, 1)
    LOOP
        INSERT INTO pago (pago_fk_sol_cl,pago_fk_met_id, pago_monto,pago_fecha)
        VALUES (solicitud_id, metodosP[i], montoP[i], CURRENT_DATE);
    END LOOP;
END $$;
-- FIN DE PROCEDIMIENTO PARA INSERTAR UNA SOLICITUD DE CLIENTE

CREATE OR REPLACE PROCEDURE insertar_empleado(IN emp_id VARCHAR(11),IN p_nombre VARCHAR(30),IN p_apellido VARCHAR(30),
									IN direccion VARCHAR(180),IN tlf VARCHAR(12),IN cargo_id INT,IN lugar_id INT)
	language plpgsql
AS $$
	BEGIN
	INSERT INTO empleado(emp_identificacion, emp_p_nombre,emp_p_apellido, emp_telefono,emp_direccion,emp_fk_lu_id)
	VALUES
		(emp_id,p_nombre,p_apellido,tlf,direccion,lugar_id);

	INSERT INTO cargo_empleado (caem_fk_carg_id, caem_fk_emp_identificacion,caem_fecha_ini)
	VALUES 
		(cargo_id,emp_id,CURRENT_DATE);
END $$;

-- ELIMINAR ETAPA DE CONFIGURACION
CREATE OR REPLACE PROCEDURE eliminar_etapa(IN etapa_id INT)
  language plpgsql
AS $$
BEGIN
	-- Verificar si la etapa existe
    IF NOT EXISTS (SELECT 1 FROM ETAPA WHERE et_id = etapa_id) THEN
        RAISE EXCEPTION 'La etapa con ID % no existe', etapa_id;
    END IF;
	-- Elimina las actividades relacionadas con las etapas del mineral
    DELETE FROM ACTIVIDAD
    WHERE fk_et_id = etapa_id;

	DELETE FROM ETAPA WHERE et_id = etapa_id;
END $$;

--ELIMINA ACTIVIDAD CONFIGURACION
CREATE OR REPLACE PROCEDURE eliminar_actividad(IN actividad_id INT)
	language plpgsql
AS $$
BEGIN
	DELETE FROM ACTIVIDAD
	WHERE fk_act_id = actividad_id;

	DELETE FROM ACTIVIDAD
	WHERE act_id = actividad_id;
END $$;

--ELIMINAR MINERAL
CREATE OR REPLACE PROCEDURE eliminar_mineral(IN mineral_id INT)
	language plpgsql
AS $$
	DECLARE
	 proyecto_id INT;
BEGIN

	-- Verificar si el mineral existe
    IF NOT EXISTS (SELECT 1 FROM MINERAL WHERE min_id = mineral_id) THEN
        RAISE EXCEPTION 'El mineral con ID % no existe', mineral_id;
    END IF;
	  -- Elimina las actividades relacionadas con las etapas del mineral
    DELETE FROM ACTIVIDAD
    WHERE fk_et_id IN (SELECT et_id FROM ETAPA WHERE fk_min_id = mineral_id);
    
    -- Elimina las etapas relacionadas con el mineral
    DELETE FROM ETAPA WHERE fk_min_id = mineral_id;
	-- Elimina los inventarios relacionados a ese mineral
	DELETE FROM INVENTARIO WHERE mineral_id = inv_min_id;

	for proyecto_id IN (SELECT pro_id from proyecto where pro_fk_min_id=mineral_id)
		LOOP
			DELETE FROM ETAPA_EJ
			WHERE fk_pro_id = proyecto_id;

			DELETE FROM PRO_ESTATUS WHERE proyecto_id = proes_pro_id;
			DELETE FROM SOLICITUD_ALIADO WHERE proyecto_id = factura_fk_pro_id;
			DELETE FROM PROYECTO WHERE pro_id = proyecto_id;
		END LOOP;
	
	DELETE FROM MINERAL_POZO mipo WHERE mipo.min_id = mineral_id;
    
	DELETE FROM CONCESION WHERE mineral_id = conce_fk_min_id;
	-- Elimina el mineral
    DELETE FROM MINERAL WHERE min_id = mineral_id;
END $$;
