CREATE OR REPLACE PROCEDURE agregar_metodo(IN id_cliente VARCHAR(11),IN denominacion VARCHAR(20),IN num_transferencia VARCHAR(18),
											IN num_cheque VARCHAR(7),IN num_tarjetaTDD varchar(16),IN tdd_vencimiento DATE,
											IN num_tarjetaTDC VARCHAR(16),IN tdc_vencimiento DATE,IN tipo_metodoP VARCHAR(60))
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO METODO_PAGO
		(met_cl_identificacion,efectivo_denominacion,trans_num_transferencia,cheque_num_cheque,tdd_numero_tarjeta,
		tdd_vencimiento,tdc_numero_tarjeta,tdc_vencimiento,tipo_metodo)
	VALUES
		(id_cliente,denominacion,num_transferencia,num_cheque,num_tarjetaTDD,tdd_vencimiento,num_tarjetaTDC,
		tdc_vencimiento,tipo_metodoP);
	
END $$;


-- Obtener las etapas del proyecto
CREATE OR REPLACE FUNCTION etapas_proyecto(IN proyecto_id INT)
RETURNS TABLE (numero_etapa INT, Nombre VARCHAR(40), fecha_inial DATE, fecha_final DATE)
AS
$$
BEGIN
    -- Lógica para llenar las columnas
    RETURN QUERY
   SELECT  etej_num_etapa AS numero_etapa, etej_nombre AS Nombre, etej_fecha_ini AS fecha_comienzo,
			etej_fecha_fin AS fecha_fin
	FROM etapa_ej
	WHERE proyecto_id = fk_pro_id;

END;
$$
LANGUAGE plpgsql;

-- PROCEDIMIENTO PARA CREAR PROYECTO
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

	/*	INSERT INTO RECURSO_EJ (reej_costo, reej_actej_id)
		SELECT ac.acre_costo, act_ej_id
		FROM ACTIVIDAD_RECURSO ac, actividad a, actividad_ej aej
		WHERE a.fk_et_id = registro.et_id
		AND	ac.acre_act_id = a.act_id
		AND aej.fk_etej_id = etapa_ej_id; */

    END LOOP;

END $$;
-- FIN PROCEDIMIENTO CREAR PROYECTO

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
