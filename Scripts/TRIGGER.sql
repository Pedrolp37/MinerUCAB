
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

-- TRIGGER PARA VERIFICAR EL NUMERO DE ETAPA
CREATE OR REPLACE FUNCTION verificar_num_etapa()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM etapa
		WHERE et_num_etapa = NEW.et_num_etapa
		AND fk_min_id = NEW.fk_min_id
	)THEN
	 RAISE EXCEPTION 'El número de etapa ya existe para este mineral.';
	END IF;
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_insertar_etapa
BEFORE INSERT ON ETAPA
FOR EACH ROW
EXECUTE FUNCTION verificar_num_etapa();