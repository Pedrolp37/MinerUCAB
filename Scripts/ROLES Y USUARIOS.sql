-- Crear los roles
CREATE USER admin_admin WITH LOGIN SUPERUSER CREATEDB CREATEROLE PASSWORD 'admin' VALID UNTIL '2024-12-31 
23:59:59';
CREATE ROLE Desarrollador NOLOGIN;
CREATE ROLE MinerUCAB NOLOGIN;
CREATE ROLE Jefe_Proyecto NOLOGIN;
CREATE ROLE Coordinador_General NOLOGIN;


-- Crear los usuarios y asignarles los roles
CREATE USER paola_developer WITH PASSWORD 'developerpao' IN ROLE Desarrollador;
CREATE USER pedro_developer WITH PASSWORD 'developerpedro' IN ROLE Desarrollador;
CREATE USER arturo_developer WITH PASSWORD 'developerarturo' IN ROLE Desarrollador;
CREATE USER jefe WITH PASSWORD 'admin2' IN ROLE Jefe_Proyecto;
CREATE USER coordinador WITH PASSWORD 'coordinador' IN ROLE Coordinador_General;


DROP ROLE Desarrollador;
DROP ROLE MinerUCAB;
DROP ROLE Jefe_Proyecto;
DROP ROLE Coordinador_General;

