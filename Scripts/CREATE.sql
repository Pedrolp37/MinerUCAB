-- Database: minerucab

-- DROP DATABASE IF EXISTS minerucab;

--CREATE DATABASE minerucab;

DROP TABLE IF EXISTS LUGAR, YACIMIENTO, CLIENTE CASCADE;

CREATE TABLE LUGAR (
	lu_id SERIAL PRIMARY KEY,
	lu_nombre VARCHAR(90) NOT NULL,
	lu_tipo VARCHAR(20),
	fk_lu_id INT,

	-- relacion recursiva con la entidad LUGAR
	CONSTRAINT fk_se_divide FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id)
);

DROP TABLE IF EXISTS MINERAL CASCADE;
DROP TABLE IF EXISTS COMPOSICION_NO_METALICO, APLICACION_MINERAL;

CREATE TABLE MINERAL (
	min_id SERIAL PRIMARY KEY,
	min_nombre VARCHAR(30) NOT NULL,
	min_medicion VARCHAR(16) NOT NULL,
	min_formula_quimica VARCHAR(30) NOT NULL,
	min_pureza_ideal INT NOT NULL,
	met_maleabilidad VARCHAR(5), -- Si el mineral es metalico
	met_dureza INT,				 -- Si el mineral es metalico
	met_tipo_metal VARCHAR(10), -- Si el mineral es metalico
	nmet_aislante VARCHAR(9),   -- Si el mineral es no metalico
	min_tipo VARCHAR(11) NOT NULL, --Tipo del mineral

	-- expresion regular para el nombre del mineral
	CONSTRAINT ck_min_nombre CHECK (min_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),
	-- formas en que se mide el mineral
	CONSTRAINT ck_min_medicion CHECK (min_medicion IN ('Tonelada Metrica','Gramos','Quilates','Onzas')),
	-- expresion regular para la formula quimica del mineral
	CONSTRAINT ck_min_formula_quimica CHECK (min_formula_quimica ~ '[a-zA-Z0-9]+$'),
	-- rango en que se mide la pureza del mineral
	CONSTRAINT ck_min_pureza_ideal CHECK (min_pureza_ideal >= 0 AND min_pureza_ideal <= 100),
	-- formas en que se divide la maleabilidad del mineral
	CONSTRAINT ck_met_maleabilidad CHECK (met_maleabilidad IN ('Alta','Media','Baja')),
	-- rango en que se mide la dureza del mineral
	CONSTRAINT ck_met_dureza CHECK (met_dureza >=1 AND met_dureza <=10),
	-- formas en que se divide el tipo de metal del mineral
	CONSTRAINT ck_met_tipo_metal CHECK (met_tipo_metal IN ('Ferroso','No Ferroso')),
	-- formas en que se divide el aislamiento del mineral
	CONSTRAINT ck_nmet_aislante CHECK (nmet_aislante IN ('Termico','Electrico')),
	-- formas en que se divide un mineral
	CONSTRAINT ck_min_tipo CHECK (min_tipo IN ('Metalico','No Metalico'))
);


CREATE TABLE YACIMIENTO (
	yac_id SERIAL PRIMARY KEY,
	yac_descripcion TEXT NOT NULL,
	aut_origen VARCHAR(9),				--Si es autoctono
	aloc_tipo_transporte VARCHAR(13),	--Si ees aloctono
	yac_tipo VARCHAR(9) NOT NULL,		--Tipo del yacimiento
	fk_lu_id INT NOT NULL,

	-- llave foranea de yacimiento con respecto a lugar
	CONSTRAINT fk_encuentra FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id),
	-- expresion regular para descripcion de yacimiento
	CONSTRAINT ck_yac_descripcion CHECK (yac_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. ]+$'),
	CONSTRAINT ck_aut_origen CHECK (aut_origen IN ('Terrestre','Acuatico')),
	CONSTRAINT ck_aloc_tipo_transporte CHECK (aloc_tipo_transporte IN ('Viento','Agua','Desborde','Deslizamiento')),
	CONSTRAINT ck_yac_tipo CHECK (yac_tipo IN ('AUTOCTONO','ALOCTONO'))
);

DROP TABLE IF EXISTS ESTATUS CASCADE;
DROP TABLE IF EXISTS POZO_ESTATUS;

CREATE TABLE ESTATUS (
	est_id SERIAL PRIMARY KEY,
	est_nombre VARCHAR(20) NOT NULL,
	est_tipo VARCHAR(9) NOT NULL,

	-- expresion regular para el nombre del estatus
	CONSTRAINT ck_est_nombre CHECK (est_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),
	-- forma que se divide los tipos de estatus
	CONSTRAINT ck_est_tipo CHECK (est_tipo IN ('Actividad','Empleado','Recurso','Proyecto','Pozo','Solicitud'))
);

DROP TABLE IF EXISTS HORARIO CASCADE;

CREATE TABLE HORARIO (
	hor_id SERIAL PRIMARY KEY,
	hor_dia VARCHAR(9) NOT NULL,
	hor_entrada TIME WITHOUT TIME ZONE NOT NULL,
	hor_salida TIME WITHOUT TIME ZONE NOT NULL,

	--Se comprende en los dias de la semana
	CONSTRAINT ck_hor_dia CHECK (hor_dia IN ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo')),
	--Usa el formato militar de hora
	CONSTRAINT ck_hor_entrada CHECK (CAST(hor_entrada AS text) ~'^(?:[0-1]?[0-9]|2[0-3]):[0-5][0-9]:00$'),
	--Usa el formato militar de hora
	CONSTRAINT ck_hor_salida CHECK (CAST(hor_salida AS text) ~'^(?:[0-1]?[0-9]|2[0-3]):[0-5][0-9]:00$'),
	--La hora de salida siempre tiene que ser mayor a la de entrada por cada registro
	CONSTRAINT ck_horario CHECK (hor_salida > hor_entrada)
);

DROP TABLE IF EXISTS PRIVILEGIO CASCADE;

CREATE TABLE PRIVILEGIO (
	pri_id SERIAL PRIMARY KEY,
	pri_accion VARCHAR(9) NOT NULL,
	pri_entidad VARCHAR(20) NOT NULL,

	-- restriccion para las acciones posibles en el sistema
	CONSTRAINT ck_pri_accion CHECK (pri_accion IN ('CREAR','CONSULTAR','MODIFICAR','ELIMINAR'))
	
); 

DROP TABLE IF EXISTS ROL CASCADE;

CREATE TABLE ROL (
	rol_id SERIAL PRIMARY KEY,  
	rol_tipo VARCHAR(20) NOT NULL,

	-- Restriccion para los tipos de roles existentes en el sistema
	CONSTRAINT ck_rol_tipo CHECK (rol_tipo ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$')
);

DROP TABLE IF EXISTS ROL_PRIVILEGIO;

CREATE TABLE ROL_PRIVILEGIO(
	fk_pri_id INT NOT NULL,
	fk_rol_id INT NOT NULL,

	CONSTRAINT pk_rol_privilegio PRIMARY KEY (fk_pri_id, fk_rol_id),

	CONSTRAINT fk_pri_id FOREIGN KEY (fk_pri_id) REFERENCES PRIVILEGIO (pri_id),

	CONSTRAINT fk_rol_id FOREIGN KEY (fk_rol_id) REFERENCES ROL (rol_id)
);

DROP TABLE IF EXISTS COMPOSICION;

CREATE TABLE COMPOSICION (
	com_id SERIAL PRIMARY KEY,
	com_nombre VARCHAR(30) NOT NULL,

	-- expresion regular para el nombre de la composicion
	CONSTRAINT ck_com_nombre CHECK (com_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$')
);

DROP TABLE IF EXISTS ETAPA CASCADE;

CREATE TABLE ETAPA(
	et_id SERIAL PRIMARY KEY,
	et_num_etapa INT NOT NULL,
	et_nombre VARCHAR(40) NOT NULL,
	et_total_dias INT,
	fk_min_id INT NOT NULL,

	CONSTRAINT fk_contiene FOREIGN KEY (fk_min_id) REFERENCES MINERAL (min_id),
	CONSTRAINT ck_et_nombre CHECK (et_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]+$'),
	CONSTRAINT ck_et_total_dias CHECK (et_total_dias > 0)
);

DROP TABLE IF EXISTS ACTIVIDAD CASCADE;

CREATE TABLE ACTIVIDAD (
	act_id SERIAL PRIMARY KEY,
	act_nombre VARCHAR(40) NOT NULL,
	act_descripcion TEXT NOT NULL,
	act_prioridad VARCHAR(8),
	act_total_dias INT,
	fk_et_id INT NOT NULL, --CLAVE FORANEA TOTAL
	fk_act_id INT, --CLAVE FORANEA PARCIAL

	-- expresion regular para los nombres de las actividades
	CONSTRAINT ck_act_nombre CHECK (act_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]+$'),
	-- expresion regular para la descripcion de las actividades
	CONSTRAINT ck_act_descripcion CHECK (act_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ, ]+$'),
	-- valores posibles para la prioridad de la actividad
	CONSTRAINT ck_act_prioridaad CHECK (act_prioridad IN('Alta','Media','Baja')),
	-- valor minimo de dias para actividad
	CONSTRAINT ck_act_total_dias CHECK (act_total_dias > 0),
	-- llave foranea con etapa
	CONSTRAINT fk_aplica FOREIGN KEY (fk_et_id) REFERENCES ETAPA (et_id),
	-- llave foranea recursiva
	CONSTRAINT fk_se_distribuye FOREIGN KEY (fk_act_id) REFERENCES ACTIVIDAD (act_id)
);

CREATE TABLE COMPOSICION_NO_METALICO (
	com_id INT NOT NULL,
	min_id INT NOT NULL,

	-- Llave compuesta
	CONSTRAINT pk_composicion_nm PRIMARY KEY (com_id, min_id),
	-- LLave foranea con respecto a COMPOSICION
	CONSTRAINT fk_compone FOREIGN KEY (com_id) REFERENCES COMPOSICION (com_id),
	-- Llave foranea con respecto a MINERAL
	CONSTRAINT fk_compuesto FOREIGN KEY (min_id) REFERENCES MINERAL (min_id)
);

DROP TABLE IF EXISTS POZO, MINERAL_POZO CASCADE;

CREATE TABLE POZO (
	po_id SERIAL PRIMARY KEY,
	po_tipo_pozo VARCHAR(10) NOT NULL,
	po_diametro	NUMERIC(10,2) NOT NULL,
	po_fecha_perforacion DATE NOT NULL,
	po_num_tuneles INT NOT NULL,
	po_capacidad_max NUMERIC(10,2) NOT NULL,
	fk_yac_id INT NOT NULL,

	-- Valores posibles para tipo de pozo
	CONSTRAINT ck_po_tipo_pozo CHECK(po_tipo_pozo IN('Vertical','Inclinado')),
	-- el diametro tiene que ser mayor que 0
	CONSTRAINT ck_po_diametro CHECK(po_diametro > 0),
	-- La fecha de perforacion no puede ser posterior a la actual
	CONSTRAINT ck_po_fecha_perforacion CHECK (po_fecha_perforacion <= CURRENT_DATE),
	-- los numeros de tuneles tiene que ser mayor que 0
	CONSTRAINT ck_po_num_tuneles CHECK (po_num_tuneles > 0),
	-- la capacidad maxima debe establecerse mayor que 0
	CONSTRAINT ck_po_capacidad_max CHECK (po_capacidad_max > 0),

	CONSTRAINT fk_subyace FOREIGN KEY (fk_yac_id) REFERENCES YACIMIENTO (yac_id)
);

CREATE TABLE MINERAL_POZO (
	po_id INT NOT NULL,
	min_id INT NOT NULL,

	-- Llave compuesta
	CONSTRAINT pk_mineral_pozo PRIMARY KEY (po_id, min_id),
	-- Llave foranea con respecto a yacimiento
	CONSTRAINT fk_acumula FOREIGN KEY (po_id) REFERENCES POZO (po_id),
	-- Llave compuesta con respecto a Mineral
	CONSTRAINT fk_se_ubica FOREIGN KEY (min_id) REFERENCES MINERAL (min_id)
);
	
CREATE TABLE POZO_ESTATUS (
	poes_id SERIAL NOT NULL,
	poes_po_id INT NOT NULL,
	poes_est_id INT NOT NULL,
	poes_fecha_ini DATE NOT NULL,
	poes_fecha_fin DATE,

	-- Llave compuesta
	CONSTRAINT pk_pozo_estatus PRIMARY KEY (poes_id, poes_po_id , poes_est_id),
	-- Llave foranea con respecto a pozo
	CONSTRAINT fk_usado FOREIGN KEY (poes_po_id) REFERENCES POZO (po_id),
	-- Llave foranea con respecto a estatus
	CONSTRAINT fk_toma FOREIGN KEY (poes_est_id) REFERENCES ESTATUS (est_id),
	-- check de fecha tiene que ser menor o igual que la fecha actual
	CONSTRAINT ck_poes_fecha_ini CHECK (poes_fecha_ini <= CURRENT_DATE),
	-- check de que fecha final tiene que ser mayor a la inicial
	CONSTRAINT ck_poes_fecha_fin CHECK (poes_fecha_fin > poes_fecha_ini)
);

DROP TABLE IF EXISTS PROYECTO CASCADE;
DROP TABLE IF EXISTS PRO_ESTATUS;

CREATE TABLE PROYECTO(
	pro_id SERIAL PRIMARY KEY,
	pro_nombre VARCHAR(30) NOT NULL,
	pro_descripcion VARCHAR(200),
	pro_fecha_ini DATE NOT NULL,
	pro_fecha_fin DATE NOT NULL,
	pro_fk_po_id INT NOT NULL,
	pro_fk_min_id INT NOT NULL,

	CONSTRAINT fk_explora FOREIGN KEY (pro_fk_po_id, pro_fk_min_id) REFERENCES MINERAL_POZO(po_id,min_id),

	CONSTRAINT ck_pro_fecha_fin CHECK (pro_fecha_fin > pro_fecha_ini),

	CONSTRAINT ck_pro_fecha_diff CHECK (pro_fecha_fin > pro_fecha_ini),

	CONSTRAINT ck_pro_nombre CHECK (pro_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_pro_descripcion CHECK (pro_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$')
);

CREATE TABLE PRO_ESTATUS(
	proes_id SERIAL NOT NULL,
	proes_pro_id INT NOT NULL,
	proes_est_id INT NOT NULL,
	proes_fecha_ini DATE NOT NULL,
	proes_fecha_fin DATE,

	CONSTRAINT pk_pro_estatus PRIMARY KEY (proes_id, proes_pro_id, proes_est_id),

	CONSTRAINT fk_se_condiciona FOREIGN KEY (proes_pro_id) REFERENCES PROYECTO(pro_id),

	CONSTRAINT fk_se_desprende FOREIGN KEY (proes_est_id) REFERENCES ESTATUS(est_id),

	CONSTRAINT ck_proes_fecha_ini CHECK (proes_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_proes_fecha_fin CHECK (proes_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_proes_fecha_diff CHECK (proes_fecha_fin > proes_fecha_ini)
);

-- el drop table va en lugar
CREATE TABLE CLIENTE (
	cl_identificacion VARCHAR(11) NOT NULL,
	cl_p_nombre VARCHAR(30) NOT NULL,
	cl_s_nombre VARCHAR(30),
	cl_p_apellido VARCHAR(30) NOT NULL,
	cl_s_apellido VARCHAR(30),
	cl_telefono VARCHAR(12) NOT NULL,
	cl_direccion VARCHAR(180) NOT NULL,
	fk_lu_id INT NOT NULL,


	CONSTRAINT pk_cliente PRIMARY KEY (cl_identificacion),
	--
	CONSTRAINT ck_cl_identificacion CHECK (cl_identificacion ~ '^[VEJP]{1}[0-9]{9,10}$'),

	CONSTRAINT ck_cl_p_nombre CHECK (cl_p_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_cl_s_nombre CHECK (cl_s_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_cl_p_apellido CHECK (cl_p_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_cl_s_apellido CHECK (cl_s_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_cl_telefono CHECK (cl_telefono ~ '^\d{4}-\d{7}$'),

	CONSTRAINT ck_cl_direccion CHECK (cl_direccion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. ]+$'),

	CONSTRAINT fk_reside FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id)
);

DROP TABLE IF EXISTS ALIADO_COMERCIAL CASCADE;

CREATE TABLE ALIADO_COMERCIAL(
	ali_RIF VARCHAR(11) PRIMARY KEY,
	ali_nombre VARCHAR(50) NOT NULL,
	ali_direccion VARCHAR(180) NOT NULL,
	ali_fecha_creacion DATE NOT NULL,
	ali_capital NUMERIC(30,2) NOT NULL,
	ali_num_telefono VARCHAR(12) NOT NULL,
	ali_descripcion VARCHAR(200),
	fk_lu_id INT NOT NULL,

	CONSTRAINT ck_ali_RIF CHECK (ali_RIF ~ '^[J]{1}[0-9]{9,10}$'),

	CONSTRAINT ck_ali_nombre CHECK (ali_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ -]+$'),

	CONSTRAINT ck_ali_direccion CHECK (ali_direccion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. -]+$'),

	CONSTRAINT ck_ali_fecha_creacion CHECK (ali_fecha_creacion < CURRENT_DATE),

	CONSTRAINT ck_ali_capital CHECK (ali_capital > 0),

	CONSTRAINT ck_ali_num_telefono CHECK (ali_num_telefono ~ '^\d{4}-\d{7}$'),

	CONSTRAINT ck_ali_descripcion CHECK (ali_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. ]+$'),

	CONSTRAINT fk_radicado FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id)
);

DROP TABLE IF EXISTS CONCESION;

CREATE TABLE CONCESION(
	conce_id SERIAL NOT NULL,
	conce_fk_ali_RIF VARCHAR(11) NOT NULL,
	conce_fk_min_id INT NOT NULL,
	conce_cap_productiva NUMERIC(20,2) NOT NULL,
	conce_fecha_ini DATE NOT NULL,
	conce_fecha_fin DATE,

	CONSTRAINT pk_concesion PRIMARY KEY (conce_id,conce_fk_ali_RIF,conce_fk_min_id),

	CONSTRAINT fk_concedido FOREIGN KEY (conce_fk_ali_RIF) REFERENCES ALIADO_COMERCIAL(ali_RIF),

	CONSTRAINT fk_concede FOREIGN KEY (conce_fk_min_id) REFERENCES MINERAL(min_id),

	CONSTRAINT ck_cap_productiva CHECK (conce_cap_productiva > 0),

	CONSTRAINT ck_conce_fecha_ini CHECK (conce_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_conce_fecha_diff CHECK (conce_fecha_fin > conce_fecha_ini)
);

DROP TABLE IF EXISTS EMPLEADO,CARGO, CARGO_EMPLEADO CASCADE;
DROP TABLE IF EXISTS ESTATUS_EMPLEADO;

CREATE TABLE EMPLEADO (
	emp_identificacion VARCHAR(11) NOT NULL,
	emp_p_nombre VARCHAR(30) NOT NULL,
	emp_s_nombre VARCHAR(30),
	emp_p_apellido VARCHAR(30) NOT NULL,
	emp_s_apellido VARCHAR(30),
	emp_telefono VARCHAR(12) NOT NULL,
	emp_direccion VARCHAR(180) NOT NULL,
	emp_fk_lu_id INT NOT NULL,

	CONSTRAINT pk_empleado PRIMARY KEY (emp_identificacion),

	CONSTRAINT ck_emp_identificacion CHECK (emp_identificacion ~ '^[VEJP]{1}[0-9]{9,10}$'),

	CONSTRAINT ck_emp_p_nombre CHECK (emp_p_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_emp_s_nombre CHECK (emp_s_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_emp_p_apellido CHECK (emp_p_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_emp_s_apellido CHECK (emp_s_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_emp_telefono CHECK (emp_telefono ~ '^\d{4}-\d{7}$'),

	CONSTRAINT ck_emp_direccion CHECK (emp_direccion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. ]+$'),

	CONSTRAINT fk_vive FOREIGN KEY (emp_fk_lu_id) REFERENCES LUGAR (lu_id)
);

DROP TABLE IF EXISTS USUARIO;

CREATE TABLE USUARIO(
	usu_id SERIAL PRIMARY KEY,
	usu_usuario VARCHAR(8) NOT NULL,
	usu_contraseña VARCHAR(10) NOT NULL,
	usu_fk_ali_rif VARCHAR(11),
	usu_fk_cl_identificacion VARCHAR(11),
	usu_fk_emp_identificacion VARCHAR(11),
	usu_fk_rol_id INT NOT NULL,

	CONSTRAINT ck_usu_contraseña CHECK (LENGTH(usu_contraseña) BETWEEN 6 AND 10),

	CONSTRAINT ck_usu_usuario CHECK (LENGTH(usu_usuario) = 8),

	CONSTRAINT usu_fk_ali_rif FOREIGN KEY (usu_fk_ali_rif) REFERENCES ALIADO_COMERCIAL(ali_RIF),

	CONSTRAINT usu_fk_cl_identificacion FOREIGN KEY (usu_fk_cl_identificacion) REFERENCES CLIENTE(cl_identificacion),

	CONSTRAINT usu_fk_emp_identificacion FOREIGN KEY (usu_fk_emp_identificacion) REFERENCES EMPLEADO(emp_identificacion),

	CONSTRAINT usu_fk_rol_id FOREIGN KEY (usu_fk_rol_id) REFERENCES ROL(rol_id)
);

CREATE TABLE CARGO (
	carg_id SERIAL PRIMARY KEY,
	carg_nombre VARCHAR(30) NOT NULL,
	carg_descripcion VARCHAR(180) NOT NULL,

	CONSTRAINT ck_carg_nombre CHECK (carg_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_carg_descripcion CHECK (carg_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. ]+$')
);

CREATE TABLE CARGO_EMPLEADO (
	caem_id SERIAL NOT NULL,
	caem_fk_carg_id INT NOT NULL,
	caem_fk_emp_identificacion VARCHAR(11) NOT NULL,
	caem_fecha_ini DATE NOT NULL,
	caem_fecha_fin DATE,

	CONSTRAINT pk_cargo_empleado PRIMARY KEY(caem_id, caem_fk_carg_id,caem_fk_emp_identificacion),

	CONSTRAINT fk_asigna FOREIGN KEY (caem_fk_carg_id) REFERENCES CARGO (carg_id),

	CONSTRAINT fk_asignado FOREIGN KEY (caem_fk_emp_identificacion) REFERENCES EMPLEADO (emp_identificacion),

	CONSTRAINT ck_caem_fecha_ini CHECK (caem_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_caem_fecha_fin CHECK (caem_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_caem_fecha_diff CHECK (caem_fecha_fin > caem_fecha_ini)
);

CREATE TABLE ESTATUS_EMPLEADO (
	esem_id SERIAL NOT NULL,
	esem_fk_est_id INT NOT NULL,
	esem_fk_caem_id INT NOT NULL,
	esem_fk_caem_carg_id INT NOT NULL,
	esem_fk_caem_emp_identificacion VARCHAR(11) NOT NULL,
	esem_fecha_ini DATE NOT NULL,
	esem_fecha_fin DATE,

	CONSTRAINT pk_estatus_empleado PRIMARY KEY (esem_id, esem_fk_est_id, 
												esem_fk_caem_id, esem_fk_caem_carg_id,
												esem_fk_caem_emp_identificacion),

	CONSTRAINT fk_altera FOREIGN KEY(esem_fk_caem_id, esem_fk_caem_carg_id, esem_fk_caem_emp_identificacion) REFERENCES CARGO_EMPLEADO(caem_id, caem_fk_carg_id, caem_fk_emp_identificacion),
	
	CONSTRAINT fk_alterna_en FOREIGN KEY(esem_fk_est_id) REFERENCES ESTATUS (est_id),

	CONSTRAINT ck_esem_fecha_ini CHECK (esem_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_esem_fecha_fin CHECK (esem_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_esem_fecha_diff CHECK (esem_fecha_fin > esem_fecha_ini)
);

DROP TABLE IF EXISTS HORARIO_EMPLEADO;

CREATE TABLE HORARIO_EMPLEADO(
	horem_fk_emp_identificacion VARCHAR(11) NOT NULL,
	horem_fk_hor_id INT NOT NULL,

	CONSTRAINT pk_horario_empleado PRIMARY KEY (horem_fk_emp_identificacion, horem_fk_hor_id),

	CONSTRAINT fk_agendado FOREIGN KEY (horem_fk_emp_identificacion) REFERENCES EMPLEADO (emp_identificacion),

	CONSTRAINT fk_agenda FOREIGN KEY (horem_fk_hor_id) REFERENCES HORARIO (hor_id)
);

DROP TABLE IF EXISTS RECURSO CASCADE;

CREATE TABLE RECURSO(
	tire_id SERIAL PRIMARY KEY,
	tire_nombre VARCHAR(40) NOT NULL,

	CONSTRAINT ck_tire_nombre CHECK(tire_nombre in('Vehiculo','Registro',
													'Perforador','Muestra','Maquina'))
);

DROP TABLE IF EXISTS RECURSO_MATERIAL CASCADE;

CREATE TABLE RECURSO_MATERIAL(
	re_id SERIAL PRIMARY KEY,
	re_nombre VARCHAR(60) NOT NULL,
	re_descripcion VARCHAR(200),
	re_fk_tire_id INT NOT NULL,

	CONSTRAINT fk_fracciona FOREIGN KEY (re_fk_tire_id) REFERENCES RECURSO (tire_id),

	CONSTRAINT ck_re_nombre CHECK (re_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]+$'),

	CONSTRAINT ck_re_descripcion CHECK (re_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,./ ]+$')
);

DROP TABLE IF EXISTS RECURSO_ESTATUS;

CREATE TABLE RECURSO_ESTATUS(
	esre_id SERIAL NOT NULL,
	esre_fk_est_id INT NOT NULL,
	esre_fk_re_id INT NOT NULL,
	esre_fecha_ini DATE NOT NULL,
	esre_fecha_fin DATE,

	CONSTRAINT pk_recurso_estatus PRIMARY KEY (esre_id, esre_fk_est_id, esre_fk_re_id),

	CONSTRAINT fk_se_turna FOREIGN KEY (esre_fk_re_id) REFERENCES RECURSO_MATERIAL(re_id),

	CONSTRAINT fk_cambia FOREIGN KEY (esre_fk_est_id) REFERENCES ESTATUS (est_id),

	CONSTRAINT ck_esre_fecha_ini CHECK (esre_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_esre_fecha_fin CHECK (esre_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_esre_fecha_diff CHECK (esre_fecha_fin > esre_fecha_ini)
);

DROP TABLE IF EXISTS ACTIVIDAD_RECURSO CASCADE;

CREATE TABLE ACTIVIDAD_RECURSO(
	acre_id SERIAL NOT NULL,
	acre_act_id INT NOT NULL,
	acre_tire_id INT NOT NULL,
	acre_costo	NUMERIC(20,2) NOT NULL, -- costo unitario
	acre_cantidad INT NOT NULL,
	acre_fecha_ini DATE NOT NULL,
	acre_fecha_fin DATE,

	CONSTRAINT pk_act_recurso PRIMARY KEY (acre_id, acre_act_id, acre_tire_id),

	CONSTRAINT fk_maneja FOREIGN KEY (acre_act_id) REFERENCES ACTIVIDAD (act_id),

	CONSTRAINT fk_opera FOREIGN KEY (acre_tire_id) REFERENCES RECURSO (tire_id),

	CONSTRAINT ck_acre_costo CHECK (acre_costo > 0),

	CONSTRAINT ck_acre_cantidad CHECK (acre_cantidad > 0),

	CONSTRAINT ck_acre_fecha_ini CHECK (acre_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_acre_fecha_fin CHECK (acre_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_acre_fecha_diff CHECK (acre_fecha_fin > acre_fecha_ini)
);

DROP TABLE IF EXISTS ACTIVIDAD_CARGO CASCADE;

CREATE TABLE ACTIVIDAD_CARGO(
	acca_id SERIAL NOT NULL,
	acca_act_id INT NOT NULL,
	acca_carg_id INT NOT NULL,
	acca_costo	NUMERIC(20,2) NOT NULL, -- costo unitario
	acca_cantidad INT NOT NULL,
	acca_fecha_ini DATE NOT NULL,
	acca_fecha_fin DATE,

	CONSTRAINT pk_act_cargo PRIMARY KEY (acca_id, acca_act_id, acca_carg_id),

	CONSTRAINT fk_contempla FOREIGN KEY (acca_act_id) REFERENCES ACTIVIDAD (act_id),

	CONSTRAINT fk_emplean FOREIGN KEY (acca_carg_id) REFERENCES CARGO (carg_id),

	CONSTRAINT ck_acca_costo CHECK (acca_costo > 0),

	CONSTRAINT ck_acca_cantidad CHECK (acca_cantidad > 0),

	CONSTRAINT ck_acca_fecha_ini CHECK (acca_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_acca_fecha_fin CHECK (acca_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_acca_fecha_diff CHECK (acca_fecha_fin > acca_fecha_ini)
);

DROP TABLE IF EXISTS SOLICITUD_CLIENTE CASCADE;
DROP TABLE IF EXISTS EST_SOL_CLIEMTE, DETALLE_FACTURA;

CREATE TABLE SOLICITUD_CLIENTE(
	factura_cli_id SERIAL PRIMARY KEY,
	factura_cli_fecha DATE NOT NULL,
	factura_cli_total NUMERIC(20,2) NOT NULL,
	factura_cli_cantidad NUMERIC(20,2) NOT NULL,
	factura_cli_observacion VARCHAR(200),
	factura_fk_cl_identificacion VARCHAR(11),
	factura_min_id INT NOT NULL,

	CONSTRAINT fk_solicita FOREIGN KEY (factura_fk_cl_identificacion) REFERENCES CLIENTE(cl_identificacion),

	CONSTRAINT fk_contener FOREIGN KEY (factura_min_id) REFERENCES MINERAL (min_id),

	CONSTRAINT ck_factura_cli_fecha CHECK (factura_cli_fecha <= CURRENT_DATE),

	CONSTRAINT ck_factura_cli_total CHECK (factura_cli_total > 0),

	CONSTRAINT ck_factura_cli_observacion CHECK (factura_cli_observacion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ,. ]+$')
);

DROP TABLE IF EXISTS EST_SOL_CLIENTE;

CREATE TABLE EST_SOL_CLIENTE(
	escl_id SERIAL NOT NULL,
	escl_fk_sol_cliente INT NOT NULL,
	escl_fk_est_id INT NOT NULL,
	escl_fecha_ini DATE NOT NULL,
	escl_fecha_fin DATE,

	CONSTRAINT pk_est_sol_cliente PRIMARY KEY (escl_id, escl_fk_sol_cliente, escl_fk_est_id),

	CONSTRAINT fk_se_trasnforma FOREIGN KEY (escl_fk_sol_cliente) REFERENCES SOLICITUD_CLIENTE (factura_cli_id),

	CONSTRAINT fk_muda FOREIGN KEY (escl_fk_est_id) REFERENCES ESTATUS (est_id),

	CONSTRAINT ck_escl_fecha_ini CHECK (escl_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_escl_fecha_fin CHECK (escl_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_escl_fecha_diff CHECK (escl_fecha_fin > escl_fecha_ini)
);

-- CREATE CORRESPONDIENTES A METODOS DE PAGO
DROP TABLE IF EXISTS METODO_PAGO CASCADE;
DROP TABLE IF EXISTS PAGO, TRANSFERENCIA, CHEQUE, TARJETA_DEBITO, TARJETA_CREDITO, EFECTIVO;

CREATE TABLE METODO_PAGO(
	met_id SERIAL PRIMARY KEY,
	met_cl_identificacion VARCHAR(11),

	CONSTRAINT fk_registra FOREIGN KEY (met_cl_identificacion) REFERENCES CLIENTE (cl_identificacion)
);

CREATE TABLE EFECTIVO(
	efectivo_met_id INT NOT NULL,
	efectivo_denominacion VARCHAR(20) NOT NULL,

	CONSTRAINT pk_efectivo PRIMARY KEY (efectivo_met_id),

	CONSTRAINT fk_efectivo FOREIGN KEY (efectivo_met_id) REFERENCES METODO_PAGO (met_id),

	CONSTRAINT ck_denominacion CHECK (efectivo_denominacion ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$')
);

CREATE TABLE TRANSFERENCIA(
	trans_met_id INT NOT NULL,
	trans_num_transferencia VARCHAR(18) NOT NULL,

	CONSTRAINT pk_trans PRIMARY KEY (trans_met_id),

	CONSTRAINT fk_trans FOREIGN KEY (trans_met_id) REFERENCES METODO_PAGO(met_id),

	CONSTRAINT ck_trans_num_transferencia CHECK (trans_num_transferencia ~ '^[0-9]{18}$')
);

CREATE TABLE CHEQUE(
	cheque_met_id INT NOT NULL,
	cheque_num_cheque VARCHAR(7) NOT NULL,

	CONSTRAINT pk_cheque PRIMARY KEY (cheque_met_id),

	CONSTRAINT fk_cheque FOREIGN KEY (cheque_met_id) REFERENCES METODO_PAGO(met_id),

	CONSTRAINT ck_cheque_num_cheque CHECK (cheque_num_cheque ~ '^[0-9]{7}$')
);

CREATE TABLE TARJETA_DEBITO(
	tdd_met_id INT NOT NULL,
	tdd_numero_tarjeta VARCHAR(16) NOT NULL,
	tdd_vencimiento DATE NOT NULL,

	CONSTRAINT pk_tdd PRIMARY KEY (tdd_met_id),

	CONSTRAINT fk_tdd FOREIGN KEY (tdd_met_id) REFERENCES METODO_PAGO(met_id),

	CONSTRAINT ck_tdd_numero_tarjeta CHECK (tdd_numero_tarjeta ~ '^[0-9]{16}$')
);

CREATE TABLE TARJETA_CREDITO(
	tdc_met_id INT NOT NULL,
	tdc_numero_tarjeta VARCHAR(16) NOT NULL,
	tdc_vencimiento DATE NOT NULL,

	CONSTRAINT pk_tdc PRIMARY KEY (tdc_met_id),

	CONSTRAINT fk_tdc FOREIGN KEY (tdc_met_id) REFERENCES METODO_PAGO(met_id),

	CONSTRAINT ck_tdc_numero_tarjeta CHECK (tdc_numero_tarjeta ~ '^[0-9]{16}$')
);

-- FIN METODOS DE PAGO



DROP TABLE IF EXISTS ETAPA_EJ CASCADE;

CREATE TABLE ETAPA_EJ(
	etej_id SERIAL PRIMARY KEY,
	etej_nombre VARCHAR(40) NOT NULL,
	etej_fecha_ini DATE NOT NULL,
	etej_fecha_fin DATE,
	fk_pro_id INT NOT NULL,

	CONSTRAINT fk_se_estructura FOREIGN KEY (fk_pro_id) REFERENCES PROYECTO (pro_id),
	CONSTRAINT ck_etej_nombre CHECK (etej_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$)'),
	CONSTRAINT ck_etej_fecha_ini CHECK (etej_fecha_ini <= CURRENT_DATE),
	CONSTRAINT ck_etej_fecha_fin CHECK (etej_fecha_fin <= CURRENT_DATE),
	CONSTRAINT ck_etej_fecha_diff CHECK (etej_fecha_fin > etej_fecha_ini)
);

DROP TABLE IF EXISTS ACTIVIDAD_EJ CASCADE;
DROP TABLE IF EXISTS RECURSO_EJ, CARGO_EJ;

CREATE TABLE ACTIVIDAD_EJ (
	actej_id SERIAL PRIMARY KEY,
	actej_nombre VARCHAR(40) NOT NULL,
	fk_etej_id INT NOT NULL, --CLAVE FORANEA TOTAL
	fk_actej_id INT, --CLAVE FORANEA PARCIAL
	actej_fecha_ini DATE NOT NULL,
	actej_fecha_fin DATE,

	-- expresion regular para los nombres de las actividades
	CONSTRAINT ck_actej_nombre CHECK (actej_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]+$'),
	-- llave foranea con etapa
	CONSTRAINT fk_involucra FOREIGN KEY (fk_etej_id) REFERENCES ETAPA_EJ (etej_id),
	-- llave foranea recursiva
	CONSTRAINT fk_se_separa FOREIGN KEY (fk_actej_id) REFERENCES ACTIVIDAD_EJ (actej_id),

	CONSTRAINT ck_actej_fecha_ini CHECK (actej_fecha_ini <= CURRENT_DATE),
	CONSTRAINT ck_actej_fecha_fin CHECK (actej_fecha_fin <= CURRENT_DATE),
	CONSTRAINT ck_actej_fecha_diff CHECK (actej_fecha_fin > actej_fecha_ini)
);

DROP TABLE IF EXISTS SOLICITUD_ALIADO CASCADE;
DROP TABLE IF EXISTS EST_SOLICITUD;

CREATE TABLE SOLICITUD_ALIADO(
	factura_ali_id SERIAL PRIMARY KEY,
	factura_ali_fecha DATE NOT NULL,
	factura_ali_total NUMERIC(20,2) NOT NULL,
	factura_ali_cantidad NUMERIC(20,2) NOT NULL, -- cantidad de lo que se pide
	factura_ali_observacion VARCHAR(200),
	factura_fk_ali_RIF VARCHAR(11),
	factura_fk_pro_id INT NOT NULL,
	factura_ali_min_id INT,  -- FK MOVIDAS DE DETALLE 
	factura_ali_tire_id INT,
	factura_ali_carg_id INT,
	
	CONSTRAINT fk_ofrece FOREIGN KEY (factura_fk_ali_RIF) REFERENCES ALIADO_COMERCIAL(ali_RIF),

	CONSTRAINT fk_pide FOREIGN KEY (factura_fk_pro_id) REFERENCES PROYECTO(pro_id),
	-- FK MOVIDAS DE DETALLE
	CONSTRAINT fk_abarcar FOREIGN KEY (factura_ali_min_id) REFERENCES MINERAL (min_id),
	CONSTRAINT fk_dispone FOREIGN KEY (factura_ali_tire_id) REFERENCES RECURSO (tire_id),
	CONSTRAINT fk_proviene FOREIGN KEY (factura_ali_carg_id) REFERENCES CARGO (carg_id),
	--- #####
	CONSTRAINT ck_factura_ali_fecha CHECK (factura_ali_fecha <= CURRENT_DATE),

	CONSTRAINT ck_factura_ali_total CHECK (factura_ali_total > 0),

	CONSTRAINT ck_factura_ali_observacion CHECK (factura_ali_observacion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$')
);

CREATE TABLE EST_SOLICITUD(
	est_sol_id SERIAL NOT NULL,
	est_sol_fk_sol_ali INT NOT NULL,
	est_sol_fk_est_id INT NOT NULL,
	est_sol_fecha_ini DATE NOT NULL,
	est_sol_fecha_fin DATE,

	CONSTRAINT pk_estatus_sol_ali PRIMARY KEY (est_sol_id, est_sol_fk_sol_ali, est_sol_fk_est_id),

	CONSTRAINT fk_situa FOREIGN KEY (est_sol_fk_sol_ali) REFERENCES SOLICITUD_ALIADO (factura_ali_id),

	CONSTRAINT fk_varia FOREIGN KEY (est_sol_fk_est_id) REFERENCES ESTATUS (est_id),

	CONSTRAINT ck_est_sol_fecha_ini CHECK (est_sol_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_est_sol_fecha_fin CHECK (est_sol_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_est_sol_fecha_diff CHECK (est_sol_fecha_fin > est_sol_fecha_ini)
);


CREATE TABLE PAGO(
	pago_id SERIAL,
	pago_fk_sol_cl INT,
	pago_fk_sol_ali INT,
	pago_fk_met_id INT NOT NULL,
	pago_monto NUMERIC(20,2) NOT NULL,
	pago_fecha DATE NOT NULL,

	CONSTRAINT pk_pago PRIMARY KEY (pago_id),	

	CONSTRAINT fk_pagan FOREIGN KEY (pago_fk_met_id) REFERENCES METODO_PAGO(met_id),

	CONSTRAINT fk_paga FOREIGN KEY (pago_fk_sol_cl) REFERENCES SOLICITUD_CLIENTE(factura_cli_id),

	CONSTRAINT fk_se_paga FOREIGN KEY (pago_fk_sol_ali) REFERENCES SOLICITUD_ALIADO(factura_ali_id),
	
	CONSTRAINT ck_pago_monto CHECK (pago_monto > 0)
);

DROP TABLE IF EXISTS RECURSO_EJ, ETAPA_ESTATUS;

CREATE TABLE RECURSO_EJ(
	reej_id SERIAL PRIMARY KEY,
	reej_costo NUMERIC(20,2) NOT NULL,
	reej_sol_ali_id INT, -- fk solicitud aliado
	reej_re_id INT,
	reej_actej_id INT NOT NULL,

	CONSTRAINT fk_cede FOREIGN KEY (reej_sol_ali_id) REFERENCES SOLICITUD_ALIADO (factura_ali_id),

	CONSTRAINT fk_dispensa_de FOREIGN KEY (reej_re_id) REFERENCES RECURSO_MATERIAL (re_id),

	CONSTRAINT fk_posee FOREIGN KEY (reej_actej_id) REFERENCES ACTIVIDAD_EJ (actej_id)
	);

CREATE TABLE ETAPA_ESTATUS(
	etes_id SERIAL NOT NULL,
	etes_etej_id INT NOT NULL,
	etes_est_id INT NOT NULL,
	etes_fecha_ini DATE NOT NULL,
	etes_fecha_fin DATE,

	-- Llave compuesta
	CONSTRAINT pk_etapa_estatus PRIMARY KEY (etes_id, etes_etej_id , etes_est_id),
	-- Llave foranea con respecto a etapa
	CONSTRAINT fk_fase FOREIGN KEY (etes_etej_id) REFERENCES ETAPA_EJ(etej_id),
	-- Llave foranea con respecto a estatus
	CONSTRAINT fk_tramo FOREIGN KEY (etes_est_id) REFERENCES ESTATUS (est_id),
	-- check de fecha tiene que ser menor o igual que la fecha actual
	CONSTRAINT ck_etes_fecha_ini CHECK (etes_fecha_ini <= CURRENT_DATE),
	-- check de que fecha final tiene que ser mayor a la inicial
	CONSTRAINT ck_etes_fecha_fin CHECK (etes_fecha_fin > etes_fecha_ini)
);

DROP TABLE IF EXISTS ACTIVIDAD_ESTATUS;
CREATE TABLE ACTIVIDAD_ESTATUS(
	actes_id SERIAL NOT NULL,
	actes_actej_id INT NOT NULL,
	actes_est_id INT NOT NULL,
	actes_fecha_ini DATE NOT NULL,
	actes_fecha_fin DATE,

	-- Llave compuesta
	CONSTRAINT pk_actividad_estatus PRIMARY KEY (actes_id, actes_actej_id , actes_est_id),
	-- Llave foranea con respecto a etapa
	CONSTRAINT fk_ocupa FOREIGN KEY (actes_actej_id) REFERENCES ACTIVIDAD_EJ(actej_id),
	-- Llave foranea con respecto a estatus
	CONSTRAINT fk_ocupan FOREIGN KEY (actes_est_id) REFERENCES ESTATUS (est_id),
	-- check de fecha tiene que ser menor o igual que la fecha actual
	CONSTRAINT ck_actes_fecha_ini CHECK (actes_fecha_ini <= CURRENT_DATE),
	-- check de que fecha final tiene que ser mayor a la inicial
	CONSTRAINT ck_actes_fecha_fin CHECK (actes_fecha_fin > actes_fecha_ini)
);

CREATE TABLE CARGO_EJ(
	caej_id SERIAL PRIMARY KEY,
	caej_costo NUMERIC(20,2) NOT NULL,
	caej_sol_ali_id INT, -- fk solicitud aliado
	caej_caem_id INT,
	caej_caem_carg_id INT,
	caej_caem_emp_identificacion VARCHAR(11),
	caej_actej_id INT NOT NULL,

	CONSTRAINT fk_se_establece FOREIGN KEY (caej_sol_ali_id) REFERENCES SOLICITUD_ALIADO (factura_ali_id),

	CONSTRAINT fk_trabaja FOREIGN KEY (caej_caem_id,caej_caem_carg_id,caej_caem_emp_identificacion) REFERENCES CARGO_EMPLEADO (caem_id, caem_fk_carg_id,caem_fk_emp_identificacion),

	CONSTRAINT fk_administra FOREIGN KEY (caej_actej_id) REFERENCES ACTIVIDAD_EJ (actej_id)
);

DROP TABLE IF EXISTS INVENTARIO;

CREATE TABLE INVENTARIO(
	inv_id SERIAL PRIMARY KEY,
	inv_min_id INT NOT NULL,
	inv_pro_id INT,
	inv_factura_ali_id INT,
	inv_factura_cli_id INT,
	inv_cantidad_anterior NUMERIC(20,2) NOT NULL,
	inv_cantidad_actual NUMERIC(20,2) NOT NULL,
	inv_tipo CHAR(3) NOT NULL,
	inv_fecha_mov DATE NOT NULL,

	CONSTRAINT fk_se_almacena FOREIGN KEY (inv_min_id) REFERENCES MINERAL(min_id),

	CONSTRAINT fk_proveer FOREIGN KEY (inv_pro_id) REFERENCES PROYECTO(pro_id),

	CONSTRAINT fk_abastecer FOREIGN KEY (inv_factura_ali_id) REFERENCES SOLICITUD_ALIADO(factura_ali_id),

	CONSTRAINT fk_disminuir FOREIGN KEY (inv_factura_cli_id) REFERENCES SOLICITUD_CLIENTE (factura_cli_id),

	CONSTRAINT ck_cantidad_anterior CHECK (inv_cantidad_anterior > 0),

	CONSTRAINT ck_cantidad_actual CHECK (inv_cantidad_actual > 0),

	CONSTRAINT ck_inv_tipo CHECK (inv_tipo IN('ING','EGR'))
);