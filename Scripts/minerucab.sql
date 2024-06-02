-- Database: minerucab

-- DROP DATABASE IF EXISTS minerucab;

--CREATE DATABASE minerucab;

DROP TABLE IF EXISTS LUGAR CASCADE;
DROP TABLE IF EXISTS CLIENTE, ALIADO_COMERCIAL, MINA, YACIMIENTO, MIN_YACIMIENTO;

CREATE TABLE LUGAR (
	lu_id SERIAL PRIMARY KEY,
	lu_nombre VARCHAR(90) NOT NULL,
	lu_tipo VARCHAR(20),
	fk_lu_id INT,

	-- relacion recursiva con la entidad LUGAR
	CONSTRAINT fk_se_divide FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id)
);

DROP TABLE IF EXISTS MINERAL CASCADE;
DROP TABLE IF EXISTS COMPOSICION_NO_METALICO, FASE, ETAPA, ACT_ETIQUETA, SEPARACION, ACTIVIDAD, APLICACION_MINERAL;

CREATE TABLE MINERAL (
	min_id SERIAL PRIMARY KEY,
	min_nombre VARCHAR(30) NOT NULL,
	min_medicion VARCHAR(8) NOT NULL,
	min_formula_quimica VARCHAR(30) NOT NULL,
	min_pureza_ideal INT NOT NULL,
	met_maleabilidad VARCHAR(5), -- Si el mineral es metalico
	met_dureza INT,				 -- Si el mineral es metalico
	met_tipo_metal VARCHAR(10), -- Si el mineral es metalico
	nmet_aislante VARCHAR(9),   -- Si el mineral es no metalico
	min_tipo VARCHAR(11) NOT NULL, --Tipo del mineral

	-- expresion regular para el nombre del mineral
	CONSTRAINT ck_min_nombre CHECK (min_nombre ~ '^[a-zA-ZñÑ]+$'),
	-- formas en que se mide el mineral
	CONSTRAINT ck_min_medicion CHECK (min_medicion IN ('Tonelada Metrica','Gramos','Quilates')),
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
	CONSTRAINT ck_yac_descripcion CHECK (yac_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$'),
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
	CONSTRAINT ck_est_nombre CHECK (est_nombre ~ '^[a-zA-ZñÑ]+$'),
	-- forma que se divide los tipos de estatus
	CONSTRAINT ck_est_tipo CHECK (est_tipo IN ('Actividad','Empleado','Recurso','Proyecto','Pozo'))
);

DROP TABLE IF EXISTS HORARIO;

CREATE TABLE HORARIO (
	hor_id SERIAL PRIMARY KEY,
	hor_dia VARCHAR(9) NOT NULL,
	hor_entrada TIME WITHOUT TIME ZONE NOT NULL,
	hor_salida TIME WITHOUT TIME ZONE NOT NULL,

	--Se comprende en los dias de la semana
	CONSTRAINT ck_hor_dia CHECK (hor_dia IN ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo')),
	--Usa el formato militar de hora
	CONSTRAINT ck_hor_entrada CHECK (CAST(hor_entrada AS text) ~'^(?:[0-1]?[0-9]|2[0-3]):[0-5][0-9]$'),
	--Usa el formato militar de hora
	CONSTRAINT ck_hor_salida CHECK (CAST(hor_salida AS text) ~'^(?:[0-1]?[0-9]|2[0-3]):[0-5][0-9]$'),
	--La hora de salida siempre tiene que ser mayor a la de entrada por cada registro
	CONSTRAINT ck_horario CHECK (hor_salida > hor_entrada)
);

DROP TABLE IF EXISTS TIPO_IDENTIFICACION CASCADE;

CREATE TABLE TIPO_IDENTIFICACION (
	tid_id SERIAL PRIMARY KEY,
	tid_sigla CHAR(1) NOT NULL UNIQUE,
	tid_tipo VARCHAR(10) NOT NULL,

	--Las siglas se comprenden de la forma establecida
	CONSTRAINT ck_tid_sigla CHECK (tid_sigla IN ('J','V','E','P')),
	--Los tipo de identificacion se comprenden de la forma establecida
	CONSTRAINT ck_tid_tipo CHECK (tid_tipo IN ('Juridico','Venezolano','Extranjero','Pasaporte')),
	--Cada sigla corresponde a un tipo de identificacion
	CONSTRAINT ck_sigla_tipo CHECK (
						(tid_sigla = 'J' AND tid_tipo = 'Juridico') OR
						(tid_sigla = 'V' AND tid_tipo = 'Venezolano') OR
						(tid_sigla = 'E' AND tid_tipo = 'Extranjero') OR
						(tid_sigla = 'P' AND tid_tipo = 'Pasaporte')
	)
);

DROP TABLE IF EXISTS PRIVILEGIO;

CREATE TABLE PRIVILEGIO (
	pri_id SERIAL PRIMARY KEY,
	pri_accion VARCHAR(9) NOT NULL,
	pri_entidad VARCHAR(20) NOT NULL,

	-- restriccion para las acciones posibles en el sistema
	CONSTRAINT ck_pri_accion CHECK (pri_accion IN ('CREAR','CONSULTAR','MODIFICAR','ELIMINAR'))
	
); 

DROP TABLE IF EXISTS ROL;

CREATE TABLE ROL (
	rol_id SERIAL PRIMARY KEY,  
	rol_tipo VARCHAR(20) NOT NULL,

	-- Restriccion para los tipos de roles existentes en el sistema
	CONSTRAINT ck_rol_tipo CHECK (rol_tipo IN ('Gerente','Supervisor',
												'Lider_Proyecto','Lider_Mina',
												'Finanzas','RRHH',
												'Aliado_Comercial','Empleado',
												'Cliente'))
);

DROP TABLE IF EXISTS EQUIPO;

CREATE TABLE EQUIPO (
	eq_id SERIAL PRIMARY KEY,
	eq_nombre VARCHAR(20) NOT NULL,
	eq_tipo VARCHAR(20) NOT NULL,
	eq_descripcion VARCHAR(80) NOT NULL,

	--Restriccion de expresion regular para nombres
	CONSTRAINT ck_eq_nombre CHECK (eq_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),
	--Restriccion de expresion regular para tipo
	CONSTRAINT ck_eq_tipo CHECK (eq_tipo ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),
	--Restriccion de expresion regular para descripcion
	CONSTRAINT ck_eq_descripciion CHECK (eq_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$')
);

DROP TABLE IF EXISTS ETIQUETA;

CREATE TABLE ETIQUETA (
	eti_id SERIAL PRIMARY KEY,
	eti_nombre VARCHAR(30) NOT NULL,

	--Restriccion de expresion regular para nombre
	CONSTRAINT ck_eti_nombre CHECK (eti_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$')
);

DROP TABLE IF EXISTS COMPOSICION;

CREATE TABLE COMPOSICION (
	com_id SERIAL PRIMARY KEY,
	com_nombre VARCHAR(30) NOT NULL,

	-- expresion regular para el nombre de la composicion
	CONSTRAINT ck_com_nombre CHECK (com_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$')
);


DROP TABLE IF EXISTS FASE;

CREATE TABLE FASE (
	fa_id SERIAL PRIMARY KEY,
	fa_numero INT NOT NULL,
	fk_min_id INT NOT NULL,

	CONSTRAINT fk_se_aplican FOREIGN KEY (fk_min_id) REFERENCES MINERAL (min_id)
);

DROP TABLE IF EXISTS ETAPA;

CREATE TABLE ETAPA(
	et_id SERIAL PRIMARY KEY,
	et_num_etapa INT NOT NULL,
	et_nombre VARCHAR(40) NOT NULL,
	fk_fa_id INT NOT NULL,

	CONSTRAINT fk_contiene FOREIGN KEY (fk_fa_id) REFERENCES FASE (fa_id),
	CONSTRAINT ck_et_nombre CHECK (et_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$)')
);

DROP TABLE IF EXISTS COSTO_ACTIVIDAD;

CREATE TABLE COSTO_ACTIVIDAD (
	cosAct_id SERIAL PRIMARY KEY,
	cos_monto NUMERIC(20,2) NOT NULL,
	cos_tiempo NUMERIC(20,2) NOT NULL
);

CREATE TABLE ACTIVIDAD (
	act_id SERIAL PRIMARY KEY,
	act_nombre VARCHAR(40) NOT NULL,
	act_descripcion TEXT NOT NULL,
	act_prioridad VARCHAR(8),
	fk_et_id INT NOT NULL, --CLAVE FORANEA TOTAL
	fk_act_id INT, --CLAVE FORANEA PARCIAL
	fk_cosAct_id INT NOT NULL UNIQUE, --CLAVE FORANEA TOTAL

	-- expresion regular para los nombres de las actividades
	CONSTRAINT ck_act_nombre CHECK (act_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),
	-- expresion regular para la descripcion de las actividades
	CONSTRAINT ck_act_descripcion CHECK (act_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),
	-- valores posibles para la prioridad de la actividad
	CONSTRAINT ck_act_prioridaad CHECK (act_prioridad IN('Alta','Media','Baja')),
	-- llave foranea con etapa
	CONSTRAINT fk_aplica FOREIGN KEY (fk_et_id) REFERENCES ETAPA (et_id),
	-- llave foranea recursiva
	CONSTRAINT fk_se_distribuye FOREIGN KEY (fk_act_id) REFERENCES ACTIVIDAD (act_id),
	-- llave foranea con COSTO_ACTIVIDAD
	CONSTRAINT fk_considera FOREIGN KEY (fk_cosAct_id) REFERENCES COSTO_ACTIVIDAD (cosAct_id)
);

CREATE TABLE SEPARACION (
	sep_id SERIAL PRIMARY KEY,
	sep_tipo VARCHAR(10) NOT NULL,
	fk_act_id INT NOT NULL, --ES TOTAL

	-- valores para el tipo de separacion posible
	CONSTRAINT ck_sep_tipo CHECK(sep_tipo IN('Gravedad','Magnetica')),
	--llave foranea con actividad
	CONSTRAINT fk_separarse FOREIGN KEY (fk_act_id) REFERENCES ACTIVIDAD (act_id)
);

CREATE TABLE ACT_ETIQUETA (
	act_id	INT NOT NULL,
	eti_id	INT NOT NULL,

	-- Llave compuesta
	CONSTRAINT pk_act_etiqueta PRIMARY KEY (act_id, eti_id),
	-- Llave foranea de actividad
	CONSTRAINT fk_caracterizado FOREIGN KEY (act_id) REFERENCES ACTIVIDAD (act_id),
	-- Llave foranea de etiqueta
	CONSTRAINT fk_caracteriza FOREIGN KEY (eti_id) REFERENCES ETIQUETA (eti_id)
);

DROP TABLE IF EXISTS APLICACION_MINERAL;

CREATE TABLE APLICACION_MINERAL (
	apl_id SERIAL PRIMARY KEY,
	apl_aplicacion VARCHAR(30) NOT NULL,
	apl_descripcion TEXT NOT NULL,
	fk_min_id INT NOT NULL,

	CONSTRAINT ck_apl_aplicacion CHECK (apl_aplicacion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),
	
	CONSTRAINT ck_apl_descripcion CHECK (apl_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$'),

	CONSTRAINT fk_aplicado FOREIGN KEY (fk_min_id) REFERENCES MINERAL (min_id)
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


CREATE TABLE MIN_YACIMIENTO (
	yac_id INT NOT NULL,
	min_id INT NOT NULL,

	-- Llave compuesta
	CONSTRAINT pk_min_yacimiento PRIMARY KEY (yac_id, min_id),
	-- Llave foranea con respecto a yacimiento
	CONSTRAINT fk_acumula FOREIGN KEY (yac_id) REFERENCES YACIMIENTO (yac_id),
	-- Llave compuesta con respecto a Mineral
	CONSTRAINT fk_se_ubica FOREIGN KEY (min_id) REFERENCES MINERAL (min_id)
);

DROP TABLE IF EXISTS POZO;

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
	
CREATE TABLE POZO_ESTATUS (
	po_id INT NOT NULL,
	est_id INT NOT NULL,
	poes_fecha DATE NOT NULL,

	-- Llave compuesta
	CONSTRAINT pk_pozo_estatus PRIMARY KEY (po_id, est_id),
	-- Llave foranea con respecto a pozo
	CONSTRAINT fk_usado FOREIGN KEY (po_id) REFERENCES POZO (po_id),
	-- Llave foranea con respecto a estatus
	CONSTRAINT fk_se_rota FOREIGN KEY (est_id) REFERENCES ESTATUS (est_id)
);

CREATE TABLE MINA (
	mina_id SERIAL PRIMARY KEY,
	mina_nombre VARCHAR(30) NOT NULL,
	mina_tipo VARCHAR(15) NOT NULL,
	fk_yac_id INT NOT NULL, -- relacion total

	-- expresion regular para el nombre de la mina
	CONSTRAINT ck_mina_nombre CHECK (mina_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),
	-- valores posibles para el tipo de mina
	CONSTRAINT ck_mina_tipo CHECK (mina_tipo IN('Superficie','Subterranea',
												'Submarina','InSitu')),
	-- Llave foranea con respecto a yacimiento
	CONSTRAINT fk_construye FOREIGN KEY (fk_yac_id) REFERENCES YACIMIENTO (yac_id)
);

-- el drop table va en lugar
CREATE TABLE CLIENTE (
	cl_identificacion VARCHAR(10) NOT NULL,
	cl_fk_tid_id INT NOT NULL,
	cl_p_nombre VARCHAR(30) NOT NULL,
	cl_s_nombre VARCHAR(30),
	cl_p_apellido VARCHAR(30) NOT NULL,
	cl_s_apellido VARCHAR(30),
	cl_telefono VARCHAR(8) NOT NULL,
	cl_direccion VARCHAR(180) NOT NULL,
	fk_lu_id INT NOT NULL,


	CONSTRAINT pk_cliente PRIMARY KEY (cl_identificacion, cl_fk_tid_id),
	--
	CONSTRAINT ck_cl_identificacion CHECK (cl_identificacion ~ '^[0-9]{8,10}$'),

	CONSTRAINT ck_cl_p_nombre CHECK (cl_p_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_cl_s_nombre CHECK (cl_s_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_cl_p_apellido CHECK (cl_p_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_cl_s_apellido CHECK (cl_s_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_cl_telefono CHECK (cl_telefono ~ '^\d{4}-\d{7}$'),

	CONSTRAINT ck_cl_direccion CHECK (cl_direccion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$'),

	CONSTRAINT fk_reside FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id),

	CONSTRAINT fk_se_distingue FOREIGN KEY (cl_fk_tid_id) REFERENCES TIPO_IDENTIFICACION (tid_id)
);

CREATE TABLE ALIADO_COMERCIAL (
	ali_RIF VARCHAR(9) NOT NULL,
	ali_fk_tid_id INT NOT NULL,
	ali_nombre VARCHAR(50) NOT NULL,
	ali_direccion VARCHAR(180) NOT NULL,
	ali_fecha_creacion DATE NOT NULL,
	ali_capital NUMERIC(30,2) NOT NULL,
	ali_num_telefono VARCHAR(8) NOT NULL,
	ali_descripcion VARCHAR(200),
	fk_lu_id INT NOT NULL,

	CONSTRAINT pk_aliado PRIMARY KEY (ali_RIF, ali_fk_tid_id),

	CONSTRAINT ck_ali_RIF CHECK (ali_RIF ~ '^[0-9]{9}$'),

	CONSTRAINT ck_ali_nombre CHECK (ali_nombre ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_ali_direccion CHECK (ali_direccion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$'),

	CONSTRAINT ck_ali_fecha_creacion CHECK (ali_fecha_creacion < CURRENT_DATE),

	CONSTRAINT ck_ali_capial CHECK (ali_capital > 0),

	CONSTRAINT ck_ali_num_telefono CHECK (ali_num_telefono ~ '^\d{4}-\d{7}$'),

	CONSTRAINT ck_ali_descripcion CHECK (ali_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$'),

	CONSTRAINT fk_radicado FOREIGN KEY (fk_lu_id) REFERENCES LUGAR (lu_id),

	CONSTRAINT cl_describe FOREIGN KEY (ali_fk_tid_id) REFERENCES TIPO_IDENTIFICACION (tid_id)
);

DROP TABLE IF EXISTS COSTO_HUMANO, CARGO_EMPLEADO, CARGO, ESTATUS_EMPLEADO, EMPLEADO;

CREATE TABLE EMPLEADO (
	emp_identificacion VARCHAR(10) NOT NULL,
	emp_fk_tid_id INT NOT NULL,
	emp_p_nombre VARCHAR(30) NOT NULL,
	emp_s_nombre VARCHAR(30),
	emp_p_apellido VARCHAR(30) NOT NULL,
	emp_s_apellido VARCHAR(30),
	emp_telefono VARCHAR(8) NOT NULL,
	emp_direccion VARCHAR(180) NOT NULL,
	emp_fk_lu_id INT NOT NULL,

	CONSTRAINT pk_empleado PRIMARY KEY (emp_identificacion, emp_fk_tid_id),

	CONSTRAINT ck_emp_identificacion CHECK (emp_identificacion ~ '^[0-9]{8,10}$'),

	CONSTRAINT ck_emp_p_nombre CHECK (emp_p_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_emp_s_nombre CHECK (emp_s_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_emp_p_apellido CHECK (emp_p_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_emp_s_apellido CHECK (emp_s_apellido ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_emp_telefono CHECK (emp_telefono ~ '^\d{4}-\d{7}$'),

	CONSTRAINT ck_emp_direccion CHECK (emp_direccion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$'),

	CONSTRAINT fk_vive FOREIGN KEY (emp_fk_lu_id) REFERENCES LUGAR (lu_id),

	CONSTRAINT fk_se_documenta FOREIGN KEY (emp_fk_tid_id) REFERENCES TIPO_IDENTIFICACION (tid_id)
);

CREATE TABLE ESTATUS_EMPLEADO (
	esem_id SERIAL NOT NULL,
	esem_fk_est_id INT NOT NULL,
	esem_fk_emp_identificacion VARCHAR(10) NOT NULL,
	esem_fk_emp_tid_id INT NOT NULL,
	esem_fecha_ini DATE NOT NULL,
	esem_fecha_fin DATE,

	CONSTRAINT pk_estatus_empleado PRIMARY KEY (esem_id, esem_fk_est_id, esem_fk_emp_identificacion, esem_fk_emp_tid_id),

	CONSTRAINT fk_tendra FOREIGN KEY(esem_fk_emp_identificacion,esem_fk_emp_tid_id) REFERENCES EMPLEADO(emp_identificacion,emp_fk_tid_id),

	CONSTRAINT fk_alterna_en FOREIGN KEY(esem_fk_est_id) REFERENCES ESTATUS (est_id),

	CONSTRAINT ck_esem_fecha_ini CHECK (esem_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_esem_fecha_fin CHECK (esem_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_esem_fecha_diff CHECK (esem_fecha_fin > esem_fecha_ini)
);

CREATE TABLE CARGO (
	carg_id SERIAL PRIMARY KEY,
	carg_nombre VARCHAR(30) NOT NULL,
	carg_descripcion VARCHAR(180) NOT NULL,

	CONSTRAINT ck_carg_nombre CHECK (carg_nombre ~ '^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$'),

	CONSTRAINT ck_carg_descripcion CHECK (carg_descripcion ~ '^[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ. ]+$')
);

CREATE TABLE CARGO_EMPLEADO (
	caem_id SERIAL NOT NULL,
	caem_fk_carg_id INT NOT NULL,
	caem_fk_emp_identificacion VARCHAR(10) NOT NULL,
	caem_fk_tid_id INT NOT NULL,
	caem_fecha_ini DATE NOT NULL,
	caem_fecha_fin DATE,

	CONSTRAINT pk_cargo_empleado PRIMARY KEY(caem_id,caem_fk_carg_id,caem_fk_emp_identificacion,caem_fk_tid_id),

	CONSTRAINT fk_asigna FOREIGN KEY (caem_fk_carg_id) REFERENCES CARGO (carg_id),

	CONSTRAINT fk_asignado FOREIGN KEY (caem_fk_emp_identificacion,caem_fk_tid_id) REFERENCES EMPLEADO (emp_identificacion,emp_fk_tid_id),

	CONSTRAINT ck_caem_fecha_ini CHECK (caem_fecha_ini <= CURRENT_DATE),

	CONSTRAINT ck_caem_fecha_fin CHECK (caem_fecha_fin <= CURRENT_DATE),

	CONSTRAINT ck_caem_fecha_diff CHECK (caem_fecha_fin > caem_fecha_ini)
);

CREATE TABLE COSTO_HUMANO (
	cosHum_id SERIAL PRIMARY KEY,
	cos_monto NUMERIC(10,2) NOT NULL,
	cos_tiempo INT NOT NULL,
	cosHum_tipo_costo VARCHAR(30) NOT NULL,
	carg_id INT NOT NULL,

	CONSTRAINT ck_cos_monto CHECK (cos_monto > 0),

	CONSTRAINT ck_cos_tiempo CHECK (cos_tiempo > 0),

	CONSTRAINT cosHum_tipo_costo CHECK (cosHum_tipo_costo IN('Nacional','Extranjero')),

	CONSTRAINT fk_se_valoriza FOREIGN KEY (carg_id) REFERENCES CARGO (carg_id)
);

