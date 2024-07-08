CREATE OR REPLACE FUNCTION inv_proyecto()
RETURNS TRIGGER AS
$$
	DECLARE
	id_update INT;
	estado VARCHAR(20);
	proyecto_id INT;
	pozo_id INT;
	solicitud_id INT;
	capacidad NUMERIC(10,2);
	mineral_id INT;
	cantidad_actual NUMERIC(20,2);
BEGIN
	select p.proes_id,e.est_nombre, p.proes_pro_id INTO id_update, estado, proyecto_id
	from pro_estatus p, proyecto, estatus e
	where proes_pro_id = pro_id
	and pro_id = NEW.proes_pro_id
	and e.est_id = p.proes_est_id
	ORDER BY proes_id DESC
	limit 1;

		IF(estado = 'Terminado')THEN
			SELECT pro_fk_po_id,pro_fk_sol_id,pro_fk_min_id INTO pozo_id, solicitud_id, mineral_id
			FROM  proyecto
			WHERE pro_id = proyecto_id;

			SELECT po_capacidad_max INTO capacidad
			FROM pozo
			where po_id = pozo_id;

			SELECT inv_cantidad_actual INTO cantidad_actual
			FROM inventario
			WHERE inv_min_id = mineral_id
			ORDER BY inv_fecha_mov DESC
			LIMIT 1;

			INSERT INTO INVENTARIO (inv_min_id,inv_pro_id,inv_cantidad_anterior,inv_cantidad_actual,inv_tipo,inv_fecha_mov)
			VALUES
				(mineral_id, proyecto_id,cantidad_actual,capacidad + cantidad_actual,'ING',current_timestamp);
		END IF;
	RETURN NEW;
END;
$$
language plpgsql;

CREATE OR REPLACE TRIGGER inventario_proyecto
AFTER INSERT ON PRO_ESTATUS
FOR EACH ROW
EXECUTE FUNCTION inv_proyecto();

-- TRIGGER de colocar estatus luego de ingresar solicitud aliado
CREATE OR REPLACE FUNCTION estatus_sol_aliado()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO EST_SOLICITUD (est_sol_fk_sol_ali, est_sol_fk_est_id,est_sol_fecha_ini) 
	VALUES (NEW.factura_ali_id, 16, CURRENT_DATE);
	RETURN NEW;
END;
$$
language plpgsql;

CREATE OR REPLACE TRIGGER stus_sol_aliado
AFTER INSERT ON SOLICITUD_ALIADO
FOR EACH ROW
EXECUTE FUNCTION estatus_sol_aliado();
-- FIN TRIGGER de colocar estatus luego de ingresar solicitud aliado


-- TRIGGER QUE CAMBIA EL ESTATUS DEL POZO QUE SE VA A USAR
CREATE OR REPLACE FUNCTION cambiar_estatus_pozo_proyecto()
RETURNS TRIGGER AS
$$
BEGIN
	UPDATE pozo_estatus
	SET poes_fecha_fin = CURRENT_DATE
	WHERE poes_po_id = NEW.pro_fk_po_id;
	
	INSERT INTO pozo_estatus (poes_po_id, poes_est_id, poes_fecha_ini, poes_fecha_fin)
	VALUES
		(NEW.pro_fk_po_id, 15, CURRENT_DATE, CURRENT_DATE);

	RETURN NEW;
END;
$$
	language plpgsql;

CREATE OR REPLACE TRIGGER despues_crear_proyecto
AFTER INSERT ON PROYECTO
FOR EACH ROW
EXECUTE FUNCTION cambiar_estatus_pozo_proyecto();
-----
CREATE OR REPLACE FUNCTION estatus_crear_proyecto()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO PRO_ESTATUS (proes_pro_id,proes_est_id,proes_fecha_ini,proes_fecha_fin)
	VALUES
		(NEW.pro_id,1,CURRENT_DATE,NULL);

	RETURN NEW;
END;
$$
 language plpgsql;

CREATE OR REPLACE TRIGGER estatus_despues_crear_proyecto
AFTER INSERT ON PROYECTO
FOR EACH ROW
EXECUTE FUNCTION estatus_crear_proyecto();
--------
-- TRIGGER DE INSERTAR ESTATUS A ETAPA_EJ LUEGO DE QUE SE CREA EL PROYECTO
CREATE OR REPLACE FUNCTION estatus_crear_etapa_ej()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO ETAPA_ESTATUS (etes_etej_id,etes_est_id,etes_fecha_ini,etes_fecha_fin)
	VALUES
		(NEW.etej_id,1,CURRENT_DATE,NULL);

	RETURN NEW;
END;
$$
 language plpgsql;

CREATE OR REPLACE TRIGGER estatus_despues_crear_etapaEJ
AFTER INSERT ON ETAPA_EJ
FOR EACH ROW
EXECUTE FUNCTION estatus_crear_etapa_ej();
--

-- TRIGGER DE INSERTAR ESTATUS A ACTIVIDAD_EJ LUEGO DE QUE SE CREA EL PROYECTO
CREATE OR REPLACE FUNCTION estatus_crear_actividad_ej()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO ACTIVIDAD_ESTATUS (actes_actej_id,actes_est_id,actes_fecha_ini,actes_fecha_fin)
	VALUES
		(NEW.actej_id,1,CURRENT_DATE,NULL);

	RETURN NEW;
END;
$$
 language plpgsql;

CREATE OR REPLACE TRIGGER estatus_despues_crear_actividadEJ
AFTER INSERT ON ACTIVIDAD_EJ
FOR EACH ROW
EXECUTE FUNCTION estatus_crear_actividad_ej();
-- #########

-- manejo de inventario cuando se genera una solicitud de un cliente
CREATE OR REPLACE FUNCTION manejo_inventario_sol_cliente()
RETURNS TRIGGER AS
$$
DECLARE
	cantidad_actual NUMERIC(20,2);
	solicitud_id_est INT;
BEGIN
	SELECT inv_cantidad_actual INTO cantidad_actual
FROM inventario
WHERE inv_min_id = NEW.factura_min_id
ORDER BY inv_fecha_mov DESC
LIMIT 1;

	IF(cantidad_actual >= NEW.factura_cli_cantidad) THEN
		-- REALIZO la nueva actualizacion del inventario con respecto al mineral
		INSERT INTO INVENTARIO (inv_min_id,inv_factura_cli_id,inv_cantidad_anterior,inv_cantidad_actual,inv_tipo,inv_fecha_mov)
		VALUES
			(NEW.factura_min_id,NEW.factura_cli_id,cantidad_actual,cantidad_actual - NEW.factura_cli_cantidad,'EGR',CURRENT_TIMESTAMP);
		-- ACTUALIZAMOS EL ULTIMO REGISTRO DE LA SOLICTUD CLIENTE EN ESTATUS DE SOLICITUD
		-- PARA POSTERIORMENTE HACER EL NUEVO INSERT CON EL NUEVO ESTADO
			SELECT escl_fk_sol_cliente INTO solicitud_id_est -- id relacionada en la solicitud cliente
				FROM est_sol_cliente
				WHERE escl_fk_sol_cliente = 2
				ORDER BY escl_fecha_ini DESC
				LIMIT 1;

			UPDATE est_sol_cliente
			SET escl_fecha_fin = CURRENT_DATE
			WHERE escl_fk_sol_cliente = solicitud_id_est;
		-- CREO UN REGISTRO EN EL ESTATUS DE LA SOLICITUD, ACTUALIZANDO EL REGISTRO
		INSERT INTO EST_SOL_CLIENTE(escl_fk_sol_cliente,escl_fk_est_id,escl_fecha_ini,escl_fecha_fin)
		VALUES
			(NEW.factura_cli_id,18,CURRENT_DATE,CURRENT_DATE);
	END IF;

	RETURN NEW;
END;
$$
language plpgsql;

CREATE OR REPLACE TRIGGER despues_generar_sol_cliente
AFTER INSERT ON SOLICITUD_CLIENTE
FOR EACH ROW
EXECUTE FUNCTION manejo_inventario_sol_cliente();
-- #####


-- TRIGGER PARA INSERTAR ESTATUS DE SOLICITUD DEL CLIENTE
CREATE OR REPLACE FUNCTION estatus_sol_cliente()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO EST_SOL_CLIENTE (escl_fk_sol_cliente, escl_fk_est_id,escl_fecha_ini) 
	VALUES (NEW.factura_cli_id, 16, CURRENT_DATE);
	RETURN NEW;
END;
$$
language plpgsql;

CREATE OR REPLACE TRIGGER stus_sol_cliente
AFTER INSERT ON SOLICITUD_CLIENTE
FOR EACH ROW
EXECUTE FUNCTION estatus_sol_cliente();
-- FN DE TRIGGER PARA INSERTAR ESTATUS DE SOLICITUD DEL CLIENTE
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


CREATE OR REPLACE FUNCTION eliminar_pago_solicitud()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM PAGO
		WHERE pago_fk_sol_ali = OLD.factura_ali_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM PAGO
        WHERE pago_fk_sol_ali = OLD.factura_ali_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_solali_verpago
BEFORE DELETE ON SOLICITUD_ALIADO
FOR EACH ROW
EXECUTE FUNCTION eliminar_pago_solicitud();


CREATE OR REPLACE FUNCTION eliminar_recurso_EJ_solicitud()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM RECURSO_EJ
		WHERE reej_sol_ali_id = OLD.factura_ali_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM RECURSO_EJ
        WHERE reej_sol_ali_id = OLD.factura_ali_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_detSolAli_verRecursoEJ
BEFORE DELETE ON SOLICITUD_ALIADO
FOR EACH ROW
EXECUTE FUNCTION eliminar_recurso_EJ_solicitud();



CREATE OR REPLACE FUNCTION eliminar_cargo_ej_solicitud()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM CARGO_EJ
		WHERE caej_sol_ali_id = OLD.factura_ali_id
	) THEN
		-- Elimina los cargos asociados
        DELETE FROM CARGO_EJ
        WHERE caej_sol_ali_id =OLD.factura_ali_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_detSolAli_verCargoEJ
BEFORE DELETE ON SOLICITUD_ALIADO
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
CREATE OR REPLACE FUNCTION eliminar_actividad_EJ()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM ACTIVIDAD_EJ
		WHERE fk_etej_id = OLD.etej_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM ACTIVIDAD_EJ
        WHERE fk_etej_id = OLD.etej_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_etapaEJ_verActividadEJ
BEFORE DELETE ON ETAPA_EJ
FOR EACH ROW
EXECUTE FUNCTION eliminar_actividad_EJ();
--

CREATE OR REPLACE FUNCTION eliminar_etaEstatus_EJ()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM ETAPA_ESTATUS
		WHERE etes_etej_id = OLD.etej_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM ETAPA_ESTATUS
        WHERE etes_etej_id = OLD.etej_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_etapaEJ_verETAESTATUSEJ
BEFORE DELETE ON ETAPA_EJ
FOR EACH ROW
EXECUTE FUNCTION eliminar_etaEstatus_EJ();


CREATE OR REPLACE FUNCTION eliminar_actEstatus_EJ()
RETURNS TRIGGER AS
$$
BEGIN
	IF EXISTS(
		SELECT 1
		FROM ACTIVIDAD_ESTATUS
		WHERE actes_actej_id = OLD.actej_id
	) THEN
		-- Elimina los recursos asociados
        DELETE FROM ACTIVIDAD_ESTATUS
        WHERE actes_actej_id = OLD.actej_id;
	END IF;

	RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER antes_eliminar_actividadEJ_verACTESTATUSEJ
BEFORE DELETE ON ACTIVIDAD_EJ
FOR EACH ROW
EXECUTE FUNCTION eliminar_actEstatus_EJ();

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