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
	-- Elimina las actividades relacionadas con las etapas del mineral
    DELETE FROM ACTIVIDAD
    WHERE fk_et_id = etapa_id;

	DELETE FROM ETAPA WHERE et_id = etapa_id;
END $$;

--ELIMINAR MINERAL
CREATE OR REPLACE PROCEDURE eliminar_mineral(IN mineral_id INT)
	language plpgsql
AS $$
	DECLARE
	 proyecto_id INT;
BEGIN
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


/*
--     TRIGGER
---------------------------
--SOLICITUD ALIADO
CREATE OR REPLACE FUNCTION eliminar_estatus_solicictud_AL()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM est_solicitud
		WHERE est_sol_fk_sol_ali = OLD.factura_ali_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM est_solicitud
		WHERE est_sol_fk_sol_ali = OLD.factura_ali_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER ante_eliminar_solicitud_aliado
BEFORE DELETE ON SOLICITUD_ALIADO
FOR EACH ROW
EXECUTE FUNCTION  eliminar_estatus_solicictud_AL();

CREATE OR REPLACE FUNCTION eliminar_detalle_solicitudAli()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM DETALLE_SOL_AL
		WHERE det_sol_ali_id = OLD.factura_ali_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM DETALLE_SOL_AL
		WHERE det_sol_ali_id = OLD.factura_ali_id;
	END IF;

	RETURN OLD;
END; 
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_SolAli_verDetalle
BEFORE DELETE ON SOLICITUD_ALIADO
FOR EACH ROW
EXECUTE FUNCTION eliminar_detalle_solicitudAli();

	
CREATE OR REPLACE FUNCTION eliminar_recurso_EJ_solicitud()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM RECURSO_EJ
		WHERE reej_sol_ali_id = OLD.det_sol_ali_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM RECURSO_EJ
        WHERE reej_sol_ali_id = OLD.det_sol_ali_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_detSolAli_verRecursoEJ
BEFORE DELETE ON DETALLE_SOL_AL
FOR EACH ROW
EXECUTE FUNCTION eliminar_recurso_EJ_solicitud();



CREATE OR REPLACE FUNCTION eliminar_cargo_ej_solicitud()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM CARGO_EJ
		WHERE caej_sol_ali_id = OLD.det_sol_ali_id
	) THEN
		-- Elimina los cargos asociados
        DELETE FROM CARGO_EJ
        WHERE caej_sol_ali_id = OLD.det_sol_ali_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_detSolAli_verCargoEJ
BEFORE DELETE ON DETALLE_SOL_AL
FOR EACH ROW
EXECUTE FUNCTION eliminar_cargo_ej_solicitud();


--------------------------------------------------------

-- CONFIGURACION
-- ELIMINAR ACTIVIDAD_RECURSO EN BASE A LA ACTIVIDAD
CREATE OR REPLACE FUNCTION eliminar_recurso_config()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM ACTIVIDAD_RECURSO
		WHERE acre_act_id = OLD.act_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM ACTIVIDAD_RECURSO
        WHERE acre_act_id = OLD.act_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividad_verRecurso
BEFORE DELETE ON ACTIVIDAD
FOR EACH ROW
EXECUTE FUNCTION eliminar_recurso_config();


-- ELIMINAR ACTIVIDAD_CARGO EN BASE A LA ACTIVIDAD
CREATE OR REPLACE FUNCTION eliminar_cargo_config()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM ACTIVIDAD_CARGO
		WHERE acca_act_id = OLD.act_id
	) THEN
		-- Elimina los cargos asociados
        DELETE FROM ACTIVIDAD_CARGO
        WHERE acca_act_id = OLD.act_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividad_verCargo
BEFORE DELETE ON ACTIVIDAD
FOR EACH ROW
EXECUTE FUNCTION eliminar_cargo_config();

-- EJECUCION

-- ELIMINAR RECURSO_EJ EN BASE A LA ACTIVIDAD
CREATE OR REPLACE FUNCTION eliminar_recurso_EJ()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM RECURSO_EJ
		WHERE reej_actej_id = OLD.actej_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM RECURSO_EJ
        WHERE reej_actej_id = OLD.actej_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividadEJ_verRecursoEJ
BEFORE DELETE ON ACTIVIDAD_EJ
FOR EACH ROW
EXECUTE FUNCTION eliminar_recurso_EJ();


-- ELIMINAR ACTIVIDAD_CARGO EN BASE A LA ACTIVIDAD
CREATE OR REPLACE FUNCTION eliminar_cargo_ej()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM CARGO_EJ
		WHERE caej_actej_id = OLD.actej_id
	) THEN
		-- Elimina los cargos asociados
        DELETE FROM ACTIVIDAD_CARGO
        WHERE caej_actej_id = OLD.actej_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividadEJ_verCargoEJ
BEFORE DELETE ON ACTIVIDAD_EJ
FOR EACH ROW
EXECUTE FUNCTION eliminar_cargo_ej(); */
