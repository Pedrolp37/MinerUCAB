--  eliminar actividades enn base a la etapa
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
        DELETE FROM ACTIVIDAD
        WHERE fk_et_id = OLD.et_id;
    END IF;

    RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER antes_eliminar_actividades_relacionadas
BEFORE DELETE ON ETAPA
FOR EACH ROW
EXECUTE FUNCTION eliminar_actividades_relacionadas();


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

CREATE TRIGGER antes_eliminar_actividad_verRecurso
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

CREATE TRIGGER antes_eliminar_actividad_verCargo
BEFORE DELETE ON ACTIVIDAD
FOR EACH ROW
EXECUTE FUNCTION eliminar_cargo_config();

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

CREATE TRIGGER eliminar_actividad_recursiva
BEFORE DELETE ON ACTIVIDAD
FOR EACH ROW
EXECUTE FUNCTION eliminar_actividad_recursiva();