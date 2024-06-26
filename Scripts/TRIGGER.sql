/* --  eliminar actividades enn base a la etapa
CREATE OR REPLACE FUNCTION eliminar_actividades_relacionadas()
RETURNS TRIGGER AS
$$
BEGIN
    -- Verifica si hay actividades relacionadas con la etapa que se va a eliminar
    IF EXISTS (
        SELECT 1
        FROM ACTIVIDAD
        WHERE fk_et_id = OLD.et_id
    ) THEN 
        -- Elimina las actividades relacionadas
        DELETE FROM ACTIVIDAD ac
        WHERE ac.fk_et_id = OLD.et_id;
    END IF;

    RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividades_relacionadas
BEFORE DELETE ON ETAPA
FOR EACH ROW
EXECUTE FUNCTION eliminar_actividades_relacionadas();

-------------------------------------------------
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

----------------------------------

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
EXECUTE FUNCTION eliminar_cargo_config(); */


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
        DELETE FROM CARGO_EJ
        WHERE caej_actej_id = OLD.actej_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividadEJ_verCargoEJ
BEFORE DELETE ON ACTIVIDAD_EJ
FOR EACH ROW
EXECUTE FUNCTION eliminar_cargo_ej();


/*
-------------------------------------FUNCIONA
-- ELIMINAR ACTIVIDADES RECURSIVAS
CREATE OR REPLACE FUNCTION eliminar_actividad_recursiva()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS (
		SELECT 1
		FROM ACTIVIDAD act_recur
		WHERE act_recur.fk_act_id = OLD.act_id
	) THEN
		DELETE FROM ACTIVIDAD act_recur
		WHERE act_recur.fk_act_id = OLD.act_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER eliminar_actividad_recursiva
BEFORE DELETE ON ACTIVIDAD
FOR EACH ROW
EXECUTE FUNCTION eliminar_actividad_recursiva();*/