--TABLA LUGAR

-- Estados de Venezuela
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
	VALUES
	('Amazonas', 'estado', null),
	('Anzoátegui', 'estado', null),
	('Apure', 'estado', null),
	('Aragua', 'estado', null),
	('Barinas', 'estado', null),
	('Bolívar', 'estado', null),
	('Carabobo', 'estado', null),
	('Cojedes', 'estado', null),
	('Delta Amacuro', 'estado', null),
  ('Distrito Capital', 'estado', null),
	('Falcón', 'estado', null),
	('Guárico', 'estado', null),
	('Lara', 'estado', null),
  ('La Guaira', 'estado', null),
	('Mérida', 'estado', null),
	('Miranda', 'estado', null),
	('Monagas', 'estado', null),
	('Nueva Esparta', 'estado', null),
	('Portuguesa', 'estado', null),
	('Sucre', 'estado', null),
	('Táchira', 'estado', null),
	('Trujillo', 'estado', null),
	('Yaracuy', 'estado', null),
	('Zulia', 'estado', null);

--Municipios del Estado Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
	VALUES
	('Alto Orinoco', 'municipio', 1), 
	('Atabapo', 'municipio', 1),
	('Atures', 'municipio', 1),
	('Autana', 'municipio', 1),
	('Manapiare', 'municipio', 1),
	('Maroa', 'municipio', 1),
	('Río Negro', 'municipio', 1);

-- Municipios del Estado Anzoátegui
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
	VALUES
	('Anaco', 'municipio', 2),
	('Aragua', 'municipio', 2),
	('Bolívar', 'municipio', 2),
	('Bruzual', 'municipio', 2), 
	('Cajigal', 'municipio', 2),
	('Carvajal', 'municipio', 2),
	('Freites', 'municipio', 2),
	('Guanipa', 'municipio', 2),
	('Guanta', 'municipio', 2),
	('Independencia', 'municipio', 2),
	('Libertad', 'municipio', 2),
	('Sir Arthur McGregor', 'municipio', 2),
	('Miranda', 'municipio', 2),
	('Monagas', 'municipio', 2),
	('Peñalver', 'municipio', 2),
	('Píritu', 'municipio', 2),
	('San Juan de Capistrano', 'municipio', 2),
	('Santa Ana', 'municipio', 2),
	('Simón Rodríguez', 'municipio', 2),
	('Sotillo', 'municipio', 2),
	('Turístico Diego Bautista Urbaneja', 'municipio', 2);

-- Municipios del Estado Apure
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
	VALUES
	('Achaguas', 'municipio', 3),
	('Biruaca', 'municipio', 3),
	('Pedro Camejo', 'municipio', 3),
	('Muñoz', 'municipio', 3),
	('Páez', 'municipio', 3),
	('Rómulo Gallegos', 'municipio', 3),
	('San Fernando', 'municipio', 3);

-- Municipios del Estado Aragua
INSERT INTO Lugar (
    lu_nombre, lu_tipo, fk_lu_id)
    VALUES
    ('Alcántara', 'municipio', 4),
    ('Bolívar', 'municipio', 4),
    ('Camatagua', 'municipio', 4),
    ('Girardot', 'municipio', 4),
    ('Iragorry', 'municipio', 4),
    ('Lamas', 'municipio', 4),
    ('Libertador', 'municipio', 4),
    ('Mariño', 'municipio', 4),
    ('Michelena', 'municipio', 4),
    ('Ocumare de la Costa de Oro', 'municipio', 4),
    ('Revenga', 'municipio', 4),
    ('Ribas', 'municipio', 4),  
    ('San Casimiro', 'municipio', 4),
    ('San Sebastián', 'municipio', 4),
    ('Sucre', 'municipio', 4),
    ('Tovar', 'municipio', 4),
    ('Urdaneta', 'municipio', 4),
    ('Zamora', 'municipio', 4);

-- Municipios del Estado Barinas
INSERT INTO Lugar (
    lu_nombre, lu_tipo, fk_lu_id)
    VALUES
    ('Alberto Arvelo Torrealba', 'municipio', 5),
    ('Andrés Eloy Blanco', 'municipio', 5),
    ('Antonio José de Sucre', 'municipio', 5),
    ('Arismendi', 'municipio', 5),
    ('Barinas', 'municipio', 5),
    ('Bolívar', 'municipio', 5),
    ('Cruz Paredes', 'municipio', 5),
    ('Ezequiel Zamora', 'municipio', 5),
    ('Obispos', 'municipio', 5),
    ('Pedraza', 'municipio', 5),
    ('Rojas', 'municipio', 5),
    ('Sosa', 'municipio', 5);

-- Municipios del Estado Bolívar
INSERT INTO Lugar (
    lu_nombre, lu_tipo, fk_lu_id)
    VALUES
    ('Angostura', 'municipio', 6),
    ('Angostura del Orinoco', 'municipio', 6),
    ('Caroní', 'municipio', 6),
    ('Cedeño', 'municipio', 6),
    ('Chien', 'municipio', 6),
    ('El Callao', 'municipio', 6),
    ('Gran Sabana', 'municipio', 6),
    ('Piar', 'municipio', 6),
    ('Roscio', 'municipio', 6),
    ('Sifontes', 'municipio', 6),
    ('Sucre', 'municipio', 6);

-- Municipios del Estado Carabobo
INSERT INTO Lugar  (
    lu_nombre, lu_tipo, fk_lu_id)
    VALUES
    ('Bejuma', 'municipio', 7),
    ('Carlos Arvelo', 'municipio', 7),
    ('Diego Ibarra', 'municipio', 7),
    ('Guacara', 'municipio', 7),
    ('Juan José Mora', 'municipio', 7),
    ('Libertador', 'municipio', 7),
    ('Los Guayos', 'municipio', 7),
    ('Miranda', 'municipio', 7),
    ('Montalbán', 'municipio', 7),
    ('Naguanagua', 'municipio', 7),
    ('Puerto Cabello', 'municipio', 7),
    ('San Diego', 'municipio', 7),
    ('San Joaquín', 'municipio', 7),
    ('Valencia', 'municipio', 7);

-- Municipios del Estado Cojedes
INSERT INTO Lugar (
    lu_nombre, lu_tipo, fk_lu_id)
    VALUES
    ('Anzoátegui', 'municipio', 8),
    ('San Carlos', 'municipio', 8),
    ('Girardot', 'municipio', 8),
    ('Lima Blanco', 'municipio', 8),
    ('Pao de San Juan Bautista', 'municipio', 8),
    ('Ricaurte', 'municipio', 8),
    ('Rómulo Gallegos', 'municipio', 8),
    ('Tinaco', 'municipio', 8),
    ('Tinaquillo', 'municipio', 8);

-- Municipios del Estado Delta Amacuro
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Antonio Díaz', 'municipio', 9),
  ('Casacoima', 'municipio', 9),
  ('Pedernales', 'municipio', 9),
  ('Tucupita', 'municipio', 9);

-- Municipios del Distrito Capital
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Caracas', 'municipio', 10);

-- Municipios del Estado Falcón
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Acosta', 'municipio', 11),
  ('Bolívar', 'municipio', 11),
  ('Buchivacoa', 'municipio', 11),
  ('Carirubana', 'municipio', 11),
  ('Colina', 'municipio', 11),
  ('Dabajuro', 'municipio', 11),
  ('Democracia', 'municipio', 11),
  ('Falcón', 'municipio', 11),
  ('Federación', 'municipio', 11),
  ('Iturriza', 'municipio', 11),
  ('Jacura', 'municipio', 11),
  ('Los Taques', 'municipio', 11),
  ('Manaure', 'municipio', 11),
  ('Mauroa', 'municipio', 11),
  ('Miranda', 'municipio', 11),
  ('Palmasola', 'municipio', 11),
  ('Petit', 'municipio', 11),
  ('Píritu', 'municipio', 11),
  ('San Francisco', 'municipio', 11),
  ('Sucre', 'municipio', 11),
  ('Silva', 'municipio', 11),
  ('Tocópero', 'municipio', 11),
  ('Unión', 'municipio', 11),
  ('Urumaco', 'municipio', 11),
  ('Zamora', 'municipio', 11);

-- Municipios del Estado Guárico
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Camaguán', 'municipio', 12),
  ('Chaguaramas', 'municipio', 12),
  ('El Socorro', 'municipio', 12),
  ('Francisco de Miranda', 'municipio', 12),
  ('José Félix Ribas', 'municipio', 12),
  ('José Tadeo Monagas', 'municipio', 12),
  ('Juan Germán Roscio', 'municipio', 12),
  ('Juan José Rondón', 'municipio', 12),
  ('Julián Mellado', 'municipio', 12),
  ('Leonardo Infante', 'municipio', 12),
  ('Ortiz', 'municipio', 12),
  ('San Gerónimo de Guayabal', 'municipio', 12),
  ('San José de Guaribe', 'municipio', 12),
  ('Santa María de Ipire', 'municipio', 12),
  ('Zaraza', 'municipio', 12);

-- Municipios del Estado Lara
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Andrés Eloy Blanco', 'municipio', 13),
  ('Crespo', 'municipio', 13),
  ('Iribarren', 'municipio', 13),
  ('Jiménez', 'municipio', 13),
  ('Morán', 'municipio', 13),
  ('Palavecino', 'municipio', 13),
  ('Simón Planas', 'municipio', 13),
  ('Torres', 'municipio', 13),
  ('Urdaneta', 'municipio', 13);

-- Municipios del Estado La Guaira
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Vargas', 'municipio', 14);

-- Municipios del Estado Mérida
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Alberto Adriani', 'municipio', 15),
  ('Andrés Bello', 'municipio', 15),
  ('Antonio Pinto Salinas', 'municipio', 15),
  ('Aricagua', 'municipio', 15),
  ('Arzobispo Chacón', 'municipio', 15),
  ('Campo Elías', 'municipio', 15),
  ('Caracciolo Parra Olmedo', 'municipio', 15),
  ('Cardenal Quintero', 'municipio', 15),
  ('Guaraque', 'municipio', 15),
  ('Julio César Salas', 'municipio', 15),
  ('Justo Briceño', 'municipio', 15),
  ('Libertador', 'municipio', 15),
  ('Miranda', 'municipio', 15),
  ('Obispo Ramos de Lora', 'municipio', 15),
  ('Padre Noguera', 'municipio', 15),
  ('Pueblo Llano', 'municipio', 15),
  ('Rangel', 'municipio', 15),
  ('Rivas Dávila', 'municipio', 15),
  ('Santos Marquina', 'municipio', 15),
  ('Sucre', 'municipio', 15),
  ('Tovar', 'municipio', 15),
  ('Tulio Febres Cordero', 'municipio', 15),
  ('Zea', 'municipio', 15);

-- Municipios del Estado Miranda
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Acevedo', 'municipio', 16),
  ('Andrés Bello', 'municipio', 16),
  ('Baruta', 'municipio', 16),
  ('Bolívar', 'municipio', 16),
  ('Brión', 'municipio', 16),
  ('Buroz', 'municipio', 16),
  ('Carrizal', 'municipio', 16),
  ('Chacao', 'municipio', 16),
  ('Cristóbal Rojas', 'municipio', 16),
  ('El Hatillo', 'municipio', 16),
  ('Guaicaipuro', 'municipio', 16),
  ('Gual', 'municipio', 16),
  ('Independencia', 'municipio', 16),
  ('Lander', 'municipio', 16),
  ('Los Salias', 'municipio', 16),
  ('Páez', 'municipio', 16),
  ('Paz Castillo', 'municipio', 16),
  ('Plaza', 'municipio', 16),
  ('Sucre', 'municipio', 16),
  ('Urdaneta', 'municipio', 16),
  ('Zamora', 'municipio', 16);

-- Municipios del Estado Monagas
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Acosta', 'municipio', 17),
  ('Aguasay', 'municipio', 17),
  ('Bolívar', 'municipio', 17),
  ('Caripe', 'municipio', 17),
  ('Cedeño', 'municipio', 17),
  ('Libertador', 'municipio', 17),
  ('Maturín', 'municipio', 17),
  ('Piar', 'municipio', 17),
  ('Punceres', 'municipio', 17),
  ('Santa Bárbara', 'municipio', 17),
  ('Sotillo', 'municipio', 17),
  ('Uracoa', 'municipio', 17),
  ('Zamora', 'municipio', 17);

-- Municipios del Estado Nueva Esparta
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Antolín del Campo', 'municipio', 18),
  ('Antonio Díaz', 'municipio', 18),
  ('Arismendi', 'municipio', 18),
  ('García', 'municipio', 18),
  ('Gómez', 'municipio', 18),
  ('Macanao', 'municipio', 18),
  ('Maneiro', 'municipio', 18),
  ('Marcano', 'municipio', 18),
  ('Mariño', 'municipio', 18),
  ('Tubores', 'municipio', 18),
  ('Villalba', 'municipio', 18);

-- Municipios del Estado Portuguesa
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Agua Blanca', 'municipio', 19),
  ('Araure', 'municipio', 19),
  ('Esteller', 'municipio', 19),
  ('Guanare', 'municipio', 19),
  ('Guanarito', 'municipio', 19),
  ('José Vicente de Unda', 'municipio', 19),
  ('Ospino', 'municipio', 19),
  ('Páez', 'municipio', 19),
  ('Papelón', 'municipio', 19),
  ('San Genaro de Boconoíto', 'municipio', 19),
  ('San Rafael de Onoto', 'municipio', 19),
  ('Santa Rosalía', 'municipio', 19),
  ('Sucre', 'municipio', 19),
  ('Turén', 'municipio', 19);

-- Municipios del Estado Sucre
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Andrés Eloy Blanco', 'municipio', 20),
  ('Andrés Mata', 'municipio', 20),
  ('Arismendi', 'municipio', 20),
  ('Benítez', 'municipio', 20),
  ('Bermúdez', 'municipio', 20),
  ('Bolívar', 'municipio', 20),
  ('Cajigal', 'municipio', 20),
  ('Cruz Salmerón Acosta', 'municipio', 20),
  ('Libertador', 'municipio', 20),
  ('Mariño', 'municipio', 20),
  ('Mejía', 'municipio', 20),
  ('Montes', 'municipio', 20),
  ('Ribero', 'municipio', 20),
  ('Sucre', 'municipio', 20),
  ('Valdez', 'municipio', 20);

-- Municipios del Estado Táchira
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id) 
VALUES
  ('Andrés Bello', 'municipio', 21),
  ('Antonio Rómulo Costa', 'municipio', 21),
  ('Ayacucho', 'municipio', 21),
  ('Bolívar', 'municipio', 21),
  ('Cárdenas', 'municipio', 21),
  ('Córdoba', 'municipio', 21),
  ('Fernández', 'municipio', 21),
  ('Francisco de Miranda', 'municipio', 21),
  ('García de Hevia', 'municipio', 21),
  ('Guásimos', 'municipio', 21),
  ('Independencia', 'municipio', 21),
  ('Jáuregui', 'municipio', 21),
  ('José María Vargas', 'municipio', 21),
  ('Junín', 'municipio', 21),
  ('Libertad', 'municipio', 21),
  ('Libertador', 'municipio', 21),
  ('Lobatera', 'municipio', 21),
  ('Michelena', 'municipio', 21),
  ('Panamericano', 'municipio', 21),
  ('Pedro María Ureña', 'municipio', 21),
  ('Rafael Urdaneta', 'municipio', 21),
  ('Samuel Dario Maldonado', 'municipio', 21),
  ('San Cristóbal', 'municipio', 21),
  ('San Judas Tadeo', 'municipio', 21),
  ('Seboruco', 'municipio', 21),
  ('Simón Rodríguez', 'municipio', 21),
  ('Sucre', 'municipio', 21),
  ('Torbes', 'municipio', 21),
  ('Uribante', 'municipio', 21);

-- Municipios del Estado Trujillo
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id) 
VALUES
  ('Andrés Bello', 'municipio', 22),
  ('Boconó', 'municipio', 22),
  ('Bolívar', 'municipio', 22),
  ('Candelaria', 'municipio', 22),
  ('Carache', 'municipio', 22),
  ('Carvajal', 'municipio', 22),
  ('Escuque', 'municipio', 22),
  ('Juan Vicente Campos Elías', 'municipio', 22),
  ('La Ceiba', 'municipio', 22),
  ('Márquez Cañizales', 'municipio', 22),
  ('Miranda', 'municipio', 22),
  ('Monte Carmelo', 'municipio', 22),
  ('Motatán', 'municipio', 22),
  ('Pampán', 'municipio', 22),
  ('Pampanito', 'municipio', 22),
  ('Rangel', 'municipio', 22),
  ('Sucre', 'municipio', 22),
  ('Trujillo', 'municipio', 22),
  ('Urdaneta', 'municipio', 22),
  ('Valera', 'municipio', 22);

-- Municipios del Estado Yaracuy
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id) 
VALUES
  ('Arístides Bastidas', 'municipio', 23),
  ('Bolívar', 'municipio', 23),
  ('Bruzual', 'municipio', 23),
  ('Cocorote', 'municipio', 23),
  ('Independencia', 'municipio', 23),
  ('José Antonio Páez', 'municipio', 23),
  ('La Trinidad', 'municipio', 23),
  ('Manuel Monge', 'municipio', 23),
  ('Nirgua', 'municipio', 23),
  ('Peña', 'municipio', 23),
  ('San Felipe', 'municipio', 23),
  ('Sucre', 'municipio', 23),
  ('Urachiche', 'municipio', 23),
  ('Veroes', 'municipio', 23);

-- Municipios del Estado Zulia
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id) 
VALUES
  ('Almirante Padilla', 'municipio', 24),
  ('Baralt', 'municipio', 24),
  ('Cabimas', 'municipio', 24),
  ('Catatumbo', 'municipio', 24),
  ('Colón', 'municipio', 24),
  ('Francisco Javier Pulgar', 'municipio', 24),
  ('Guajira', 'municipio', 24),
  ('Jesús Enrique Losada', 'municipio', 24),
  ('Jesús María Semprún', 'municipio', 24),
  ('La Cañada de Urdaneta', 'municipio', 24),
  ('Lagunillas', 'municipio', 24),
  ('Machiques de Perijá', 'municipio', 24),
  ('Mara', 'municipio', 24),
  ('Maracaibo', 'municipio', 24),
  ('Miranda', 'municipio', 24),
  ('Rosario de Perijá', 'municipio', 24),
  ('San Francisco', 'municipio', 24),
  ('Santa Rita', 'municipio', 24),
  ('Simón Bolívar', 'municipio', 24),
  ('Sucre', 'municipio', 24),
  ('Valmore Rodríguez', 'municipio', 24);
  
-- ##################  Parroquias  #########################

-- Parroquias del municipio Alto Orinoco, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LA ESMERALDA', 'parroquia', 25),
  ('HUACHAMACARE', 'parroquia', 25),
  ('MARAWAKA', 'parroquia', 25),
  ('MAVACA', 'parroquia', 25),
  ('SIERRA PARIMA', 'parroquia', 25);

-- Parroquias del municipio Atabapo, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN FERNANDO DE ATABA', 'parroquia', 26),
  ('UCATA', 'parroquia', 26),
  ('YAPACANA', 'parroquia', 26),
  ('CANAME', 'parroquia', 26);

-- Parroquias del municipio Atures, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('FERNANDO GIRON TOVAR', 'parroquia', 27),
  ('LUIS ALBERTO GOMEZ', 'parroquia', 27),
  ('PARHUEÑA', 'parroquia', 27),
  ('PLATANILLAL', 'parroquia', 27);

-- Parroquias del municipio Autana, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ISLA DE RATON', 'parroquia', 28),
  ('SAMARIAPO', 'parroquia', 28),
  ('SIPAPO', 'parroquia', 28),
  ('MUNDUAPO', 'parroquia', 28),
  ('GUAYAPO', 'parroquia', 28);

-- Parroquias del municipio Manapiare, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN JUAN DE MANAPIARE', 'parroquia', 29),
  ('ALTO VENTUARI', 'parroquia', 29),
  ('MEDIO VENTUARI', 'parroquia', 29),
  ('BAJO VENTUARI', 'parroquia', 29);

-- Parroquias del municipio Maroa, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. MAROA', 'parroquia', 30),
  ('VICTORINO', 'parroquia', 30),
  ('COMUNIDAD', 'parroquia', 30);

-- Parroquias del municipio Río Negro, Amazonas
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN CARLOS DE RIO NEG', 'parroquia', 31),
  ('SOLANO', 'parroquia', 31),
  ('COCUY', 'parroquia', 31);

-- Parroquias del municipio Anaco, Anzoátegui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ANACO', 'parroquia', 32),
  ('SAN JOAQUIN', 'parroquia', 32),
  ('BUENA VISTA', 'parroquia', 32);

-- Parroquias del municipio Aragua, Anzoátegui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ARAGUA DE BARCELONA', 'parroquia', 33),
  ('CACHIPO', 'parroquia', 33);

-- Parroquias del municipio Bolívar, Anzoátegui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL CARMEN', 'parroquia', 34),
  ('SAN CRISTOBAL', 'parroquia', 34),
  ('BERGANTIN', 'parroquia', 34),
  ('CAIGUA', 'parroquia', 34),
  ('EL PILAR', 'parroquia', 34),
  ('NARICUAL', 'parroquia', 34);

-- Parroquias del municipio Bruzual, Anzoátegui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. CLARINES', 'parroquia', 35),
  ('GUANAPE', 'parroquia', 35),
  ('SABANA DE UCHIRE', 'parroquia', 35);

--Parroquias del municipio Cajigal, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. ONOTO', 'parroquia', 36),
  ('SAN PABLO', 'parroquia', 36);

--Parroquias del municipio Carvajal, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('VALLE DE GUANAPE', 'parroquia', 37),
  ('SANTA BARBARA', 'parroquia', 37);

-- Parroquias del municipio Freites, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. CANTAURA', 'parroquia', 38),
  ('LIBERTADOR', 'parroquia', 38),
  ('SANTA ROSA', 'parroquia', 38),
  ('URICA', 'parroquia', 38);

--Parroquia del municipio Guanipa, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. SAN JOSE DE GUANIPA', 'parroquia', 39);

--Parroquias del municipio Guanta, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('GUANTA', 'parroquia', 40),
  ('CHORRERON', 'parroquia', 40);

--Parroquias del municipio Independencia, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. SOLEDAD', 'parroquia', 41),
  ('MAMO', 'parroquia', 41);

--Parroquias del municipio Libertad, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. SAN MATEO', 'parroquia', 42),
  ('EL CARITO', 'parroquia', 42),
  ('SANTA INES', 'parroquia', 42);

--Parroquias del municipio McGregor
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('EL CHAPARRO', 'parroquia', 43),
  ('TOMAS ALFARO CALATRAVA', 'parroquia', 43);

--Parroquias del municicpio Miranda, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. PARIAGUAN', 'parroquia', 44),
  ('ATAPIRIRE', 'parroquia', 44),
  ('BOCA DEL PAO', 'parroquia', 44),
  ('EL PAO', 'parroquia', 44);

--Parroquias del municipio Monagas, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. MAPIRE', 'parroquia', 45),
  ('PIAR', 'parroquia', 45),
  ('SN DIEGO DE CABRUTICA', 'parroquia', 45),
  ('SANTA CLARA', 'parroquia', 45),
  ('UVERITO', 'parroquia', 45),
  ('ZUATA', 'parroquia', 45);

--Parroquias del municipio Peñalver, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('CM. PUERTO PIRITU', 'parroquia', 46),
  ('SAN MIGUEL', 'parroquia', 46),
  ('SUCRE', 'parroquia', 46);

--Parroquias del municipio Piritu, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('PIRITU', 'parroquia', 47),
  ('SAN FRANCISCO', 'parroquia', 47);

--Parroquias del municipio San Juan de Capistrano, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('BOCA UCHIRE', 'parroquia', 48),
  ('BOCA DE CHAVEZ', 'parroquia', 48);

--Parroquias del municicpio Santa Ana, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('SANTA ANA', 'parroquia', 49),
  ('PUEBLO NUEVO', 'parroquia', 49);

--Parroquias del municicpio Simon Rodriguez, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('EDMUNDO BARRIOS', 'parroquia', 50),
  ('MIGUEL OTERO SILVA', 'parroquia', 50),
  ('CM. EL TIGRE', 'parroquia', 50);

--Parroquias del municipio /sotillo, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('POZUELOS', 'parroquia', 51),
  ('CM PTO. LA CRUZ', 'parroquia', 51);

--Parroquias del municipio Diego Bautista Urdaneja, Anzoategui
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('LECHERIAS', 'parroquia', 52),
  ('EL MORRO', 'parroquia', 52);

--Parroquias del municipio Achaguas, Apure
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('ACHAGUAS', 'parroquia', 53),
  ('APURITO', 'parroquia', 53),
  ('EL YAGUAL', 'parroquia', 53),
  ('GUACHARA', 'parroquia', 53),
  ('MUCURITAS', 'parroquia', 53),
  ('QUESERAS DEL MEDIO', 'parroquia', 53);

-- Parroquia del municipio Biruaca, Apure
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BIRUACA', 'parroquia', 54);

-- Parroquias del municipio Pedro Camejo, Apure
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JUAN DE PAYARA', 'parroquia', 55),
  ('CODAZZI', 'parroquia', 55),
  ('CUNAVICHE', 'parroquia', 55);

--PArroquias del municipio Bruzual, Apure
INSERT INTO Lugar (
  lu_nombre, lu_tipo, fk_lu_id)
  VALUES
  ('BRUZUAL', 'parroquia', 56),
  ('MANTECAL', 'parroquia', 56),
  ('QUINTERO', 'parroquia', 56),
  ('SAN VICENTE', 'parroquia', 56),
  ('RINCON HONDO', 'parroquia', 56);

-- Parroquias del municipio Paez, Apure
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUASDUALITO', 'parroquia', 57),
  ('ARAMENDI', 'parroquia', 57),
  ('EL AMPARO', 'parroquia', 57),
  ('SAN CAMILO', 'parroquia', 57),
  ('URDANETA', 'parroquia', 57);

-- Parroquias del municipio Romulo GAllegos, Apure
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ELORZA', 'parroquia', 58),
  ('LA TRINIDAD', 'parroquia', 58);

-- Parroquias del municipio San Fernando, Apure
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN FERNANDO', 'parroquia', 59),
  ('PEÑALVER', 'parroquia', 59),
  ('EL RECREO', 'parroquia', 59),
  ('SN RAFAEL DE ATAMAICA', 'parroquia', 59);

-- Parroquias del municipio Alcantara, Aragua
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SANTA RITA', 'parroquia', 60),
  ('FRANCISCO DE MIRANDA', 'parroquia', 60),
  ('MONS FELICIANO G', 'parroquia', 60);

-- Parroquia del municipio Bolivar, Aragua
INSERT INTO Lugar (
	lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN MATEO', 'parroquia', 61);

-- Parroquias del municipio Camatagua, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CAMATAGUA', 'parroquia', 62),
  ('CARMEN DE CURA', 'parroquia', 62);

-- Parroquias del municipio Girardot, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LAS DELICIAS', 'parroquia', 63),
  ('CHORONI', 'parroquia', 63),
  ('MADRE MA DE SAN JOSE', 'parroquia', 63),
  ('JOAQUIN CRESPO', 'parroquia', 63),
  ('PEDRO JOSE OVALLES', 'parroquia', 63),
  ('JOSE CASANOVA GODOY', 'parroquia', 63),
  ('ANDRES ELOY BLANCO', 'parroquia', 63),
  ('LOS TACARIGUAS', 'parroquia', 63);

-- Parroquias del municipio Iragorry, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. EL LIMON', 'parroquia', 64),
  ('CA A DE AZUCAR', 'parroquia', 64);

--Parroquia del municipio Lamas, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SANTA CRUZ', 'parroquia', 65);

-- Parroquias del municipio Libertador
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PALO NEGRO', 'parroquia', 66),
  ('SAN MARTIN DE PORRES', 'parroquia', 66);

-- Parroquias del municipio MAriño, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TURMERO', 'parroquia', 67),
  ('SAMAN DE GUERE', 'parroquia', 67),
  ('ALFREDO PACHECO M', 'parroquia', 67),
  ('CHUAO', 'parroquia', 67),
  ('AREVALO APONTE', 'parroquia', 67);

-- PArroquias del municipio Michelenas, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LAS TEJERIAS', 'parroquia', 68),
  ('TIARA', 'parroquia', 68);

-- Parroquia del municipio Ocumare de la costa de oro, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('OCUMARE DE LA COSTA', 'parroquia', 69);

-- Parroquia del municipio Revenga, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. EL CONSEJO', 'parroquia', 70);

-- Parroquias del municipio Ribas, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LA VICTORIA', 'parroquia', 71),
  ('ZUATA', 'parroquia', 71),
  ('PAO DE ZARATE', 'parroquia', 71),
  ('CASTOR NIEVES RIOS', 'parroquia', 71),
  ('LAS GUACAMAYAS', 'parroquia', 71);

-- Parroquias del municipio San Casimiro, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN CASIMIRO', 'parroquia', 72),
  ('VALLE MORIN', 'parroquia', 72),
  ('GUIRIPA', 'parroquia', 72),
  ('OLLAS DE CARAMACATE', 'parroquia', 72);

-- Parroquia del municipio San Sebastian, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN SEBASTIAN', 'parroquia', 73);

-- Parroquias del municipio Sucre, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CAGUA', 'parroquia', 74),
  ('BELLA VISTA', 'parroquia', 74);

-- Parroquia del municipio Tovar, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. COLONIA TOVAR', 'parroquia', 75);

-- PArroquias del municipio Urdaneta, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BARBACOAS', 'parroquia', 76),
  ('SAN FRANCISCO DE CARA', 'parroquia', 76),
  ('TAGUAY', 'parroquia', 76),
  ('LAS PEÑITAS', 'parroquia', 76);

-- Parroquias del municipio Zamora, Aragua
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. VILLA DE CURA', 'parroquia', 77),
  ('MAGDALENO', 'parroquia', 77),
  ('SAN FRANCISCO DE ASIS', 'parroquia', 77),
  ('VALLES DE TUCUTUNEMO', 'parroquia', 77),
  ('PQ AUGUSTO MIJARES', 'parroquia', 77);

-- Parroquias del municipio Alberto Arvelo Torrealba, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('RODRIGUEZ DOMINGUEZ', 'parroquia', 78),
  ('SABANETA', 'parroquia', 78);

-- Parroquias del municipio Andres Eloy Blanco
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL CANTON', 'parroquia', 79),
  ('SANTA CRUZ DE GUACAS', 'parroquia', 79),
  ('PUERTO VIVAS', 'parroquia', 79);

-- Parroquias del municipio Antonio Jose de Sucre, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('TICOPORO', 'parroquia', 80),
  ('NICOLAS PULIDO', 'parroquia', 80),
  ('ANDRES BELLO', 'parroquia', 80);

-- Parroquias del municipio Arismendi, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ARISMENDI', 'parroquia', 81),
  ('GUADARRAMA', 'parroquia', 81),
  ('LA UNION', 'parroquia', 81),
  ('SAN ANTONIO', 'parroquia', 81);

-- PArroquias del municipio Barinas, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('Méndez', 'parroquia', 82),
  ('Alto Barinas', 'parroquia', 82),
  ('Corazón de Jesús', 'parroquia', 82),
  ('El Carmen', 'parroquia', 82),
  ('Betancourt', 'parroquia', 82),
  ('Barinas', 'parroquia', 82),
  ('Torunos', 'parroquia', 82),
  ('Fajardo', 'parroquia', 82),
  ('Larriva', 'parroquia', 82),
  ('Páez', 'parroquia', 82),
  ('San Silvestre', 'parroquia', 82),
  ('Santa Inés', 'parroquia', 82),
  ('Santa Lucía', 'parroquia', 82),
  ('Domínguez', 'parroquia', 82);

-- Parroquias del municipio Bolivar, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ALTAMIRA', 'parroquia', 83),
  ('BARINITAS', 'parroquia', 83),
  ('CALDERAS', 'parroquia', 83);

-- Parroquias de municipio Cruz Paredes, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BARRANCAS', 'parroquia', 84),
  ('EL SOCORRO', 'parroquia', 84),
  ('MASPARRITO', 'parroquia', 84);

-- Parroquias del municipio Ezequiel Zamora, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SANTA BARBARA', 'parroquia', 85),
  ('JOSE IGNACIO DEL PUMAR', 'parroquia', 85),
  ('RAMON IGNACIO MENDEZ', 'parroquia', 85),
  ('PEDRO BRICEÑO MENDEZ', 'parroquia', 85);

-- Parroquias del municipio Obispos, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL REAL', 'parroquia', 86),
  ('LA LUZ', 'parroquia', 86),
  ('OBISPOS', 'parroquia', 86),
  ('LOS GUASIMITOS', 'parroquia', 86);

-- Parroquias del municipio Pedraza, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CIUDAD BOLIVIA', 'parroquia', 87),
  ('IGNACIO BRICEÑO', 'parroquia', 87),
  ('PAEZ', 'parroquia', 87),
  ('JOSE FELIX RIBAS', 'parroquia', 87);

-- Parroquias del municipio Rojas, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('DOLORES', 'parroquia', 88),
  ('LIBERTAD', 'parroquia', 88),
  ('PALACIO FAJARDO', 'parroquia', 88),
  ('SANTA ROSA', 'parroquia', 88);

-- Parroquias el municipio Sosa, Barinas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CIUDAD DE NUTRIAS', 'parroquia', 89),
  ('EL REGALO', 'parroquia', 89),
  ('PUERTO DE NUTRIAS', 'parroquia', 89),
  ('SANTA CATALINA', 'parroquia', 89);

-- Parroquias del municipio Angostura, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CIUDAD PIAR', 'parroquia', 90),
  ('SAN FRANCISCO', 'parroquia', 90),
  ('BARCELONETA', 'parroquia', 90),
  ('SANTA BARBARA', 'parroquia', 90);

-- PArroquias del municipio Angostura del orinoco, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CATEDRAL', 'parroquia', 91),
  ('AGUA SALADA', 'parroquia', 91),
  ('LA SABANITA', 'parroquia', 91),
  ('VISTA HERMOSA', 'parroquia', 91),
  ('MARHUANTA', 'parroquia', 91),
  ('JOSE ANTONIO PAEZ', 'parroquia', 91),
  ('ORINOCO', 'parroquia', 91),
  ('PANAPANA', 'parroquia', 91),
  ('ZEA', 'parroquia', 91);

-- Parroquias del municipio Caroni, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SIMON BOLIVAR', 'parroquia', 92),
  ('ONCE DE ABRIL', 'parroquia', 92),
  ('VISTA AL SOL', 'parroquia', 92),
  ('CHIRICA', 'parroquia', 92),
  ('DALLA COSTA', 'parroquia', 92),
  ('CACHAMAY', 'parroquia', 92),
  ('UNIVERSIDAD', 'parroquia', 92),
  ('UNARE', 'parroquia', 92),
  ('YOCOIMA', 'parroquia', 92),
  ('POZO VERDE', 'parroquia', 92);

-- PArroquias del municipio cedeño, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CAICARA DEL ORINOCO', 'parroquia', 93),
  ('ASCENSION FARRERAS', 'parroquia', 93),
  ('ALTAGRACIA', 'parroquia', 93),
  ('LA URBANA', 'parroquia', 93),
  ('GUANIAMO', 'parroquia', 93),
  ('PIJIGUAOS', 'parroquia', 93);

-- Parroquias del municipio Chien, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES  
  ('CM. EL PALMAR', 'parroquia', 94);

--PAroquia del municipio El Callao, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. EL CALLAO', 'parroquia', 95);

-- Parroquias del municipio Gran Sabana, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SANTA ELENA DE UAIREN', 'parroquia', 96),
  ('IKABARU', 'parroquia', 96);

-- Parroquias del municipio Piar, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. UPATA', 'parroquia', 97),
  ('ANDRES ELOY BLANCO', 'parroquia', 97),
  ('PEDRO COVA', 'parroquia', 97);

-- Parroquias del municipio Roscio, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. GUASIPATI', 'parroquia', 98),
  ('SALOM', 'parroquia', 98);

-- Parroquias del municipio Sifontes, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TUMEREMO', 'parroquia', 99),
  ('DALLA COSTA', 'parroquia', 99),
  ('SAN ISIDRO', 'parroquia', 99);

-- Parroquias del municipio Sucre, Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. MARIPA', 'parroquia', 100),
  ('ARIPAO', 'parroquia', 100),
  ('LAS MAJADAS', 'parroquia', 100),
  ('MOITACO', 'parroquia', 100),
  ('GUARATARO', 'parroquia', 100);

-- Parroquias del municipio Bejuma, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BEJUMA', 'parroquia', 101),
  ('CANOABO', 'parroquia', 101),
  ('SIMON BOLIVAR', 'parroquia', 101);

-- Parroquias del municipio Carlos Arvelo, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUIGUE', 'parroquia', 102),
  ('BELEN', 'parroquia', 102),
  ('TACARIGUA', 'parroquia', 102);

-- Parroquias del municipio Dieo IBarra, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MARIARA', 'parroquia', 103),
  ('AGUAS CALIENTES', 'parroquia', 103);

-- Parroquias del municipio Guacara, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUACARA', 'parroquia', 104),
  ('CIUDAD ALIANZA', 'parroquia', 104),
  ('YAGUA', 'parroquia', 104);

-- Parroquias del municipio Juan Jose Mora, Carabobo  
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MORON', 'parroquia', 105),
  ('URAMA', 'parroquia', 105);

--Parroquias del municipio Libertador, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('U TOCUYITO', 'parroquia', 106),
  ('U INDEPENDENCIA', 'parroquia', 106);

--Parroquias del municipio Los Guayos, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('U LOS GUAYOS', 'parroquia', 107);

-- Parroquia del municipio Miranda, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MIRANDA', 'parroquia', 108);

--Parroquia del municipio Montalban, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MONTALBAN', 'parroquia', 109);

--Parroquia del municipio NAguanagua, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('NAGUANAGUA', 'parroquia', 110);

-- Parroquias del municipio Puerto Cabello, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('DEMOCRACIA', 'parroquia', 111),
  ('FRATERNIDAD', 'parroquia', 111),
  ('GOAIGOAZA', 'parroquia', 111),
  ('JUAN JOSE FLORES', 'parroquia', 111),
  ('BARTOLOME SALOM', 'parroquia', 111),
  ('UNION', 'parroquia', 111),
  ('BORBURATA', 'parroquia', 111),
  ('PATANEMO', 'parroquia', 111);

-- Parroquia del municipio San Diego, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('URB SAN DIEGO', 'parroquia', 112);

--PArroquia del municipio San Joaquin, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JOAQUIN', 'parroquia', 113);

--PArroquias del municipio Valencia, Carabobo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CANDELARIA', 'parroquia', 114),
  ('CATEDRAL', 'parroquia', 114),
  ('EL SOCORRO', 'parroquia', 114),
  ('MIGUEL PEÑA', 'parroquia', 114),
  ('SAN BLAS', 'parroquia', 114),
  ('SAN JOSE', 'parroquia', 114),
  ('SANTA ROSA', 'parroquia', 114),
  ('RAFAEL URDANETA', 'parroquia', 114),
  ('NEGRO PRIMERO', 'parroquia', 114);

-- Parroquias del municipio Anzoategui, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('COJEDES', 'parroquia', 115),
  ('JUAN DE MATA SUAREZ', 'parroquia', 115);

--PArroquias del municipio San Carlos, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN CARLOS DE AUSTRIA', 'parroquia', 116),
  ('JUAN ANGEL BRAVO', 'parroquia', 116),
  ('MANUEL MANRIQUE', 'parroquia', 116);

--PArroquias del municipio Girardot, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL BAUL', 'parroquia', 117),
  ('SUCRE', 'parroquia', 117);

--Parroquias del municipio Lima Blanco, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MACAPO', 'parroquia', 118),
  ('LA AGUADITA', 'parroquia', 118);

--PArroquias del municipio PAo de San Juan Bautista, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL PAO', 'parroquia', 119);

--Parroquias del municipio Ricaurte, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LIBERTAD DE COJEDES', 'parroquia', 120),
  ('EL AMPARO', 'parroquia', 120);
  
--Parroquia del municipio Romulo Gallegos, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ROMULO GALLEGOS', 'parroquia', 121);

-- Parroquia del municipio Tinaco, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GRL/JEFE JOSE L SILVA', 'parroquia', 122);

-- PArroquia del municipio Tinaquillo, Cojedes
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('TINAQUILLO', 'parroquia', 123);

-- Parroquias del municipio ANdres Diaz, Delta Amacura
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CURIAPO', 'parroquia', 124),
  ('SANTOS DE ABELGAS', 'parroquia', 124),
  ('MANUEL RENAUD', 'parroquia', 124),
  ('PADRE BARRAL', 'parroquia', 124),
  ('ANICETO LUGO', 'parroquia', 124),
  ('ALMIRANTE LUIS BRION', 'parroquia', 124);

-- Parroquias del municipio Casacoima, Delta Amacuro
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('IMATACA', 'parroquia', 125),
  ('ROMULO GALLEGOS', 'parroquia', 125),
  ('JUAN BAUTISTA ARISMEN', 'parroquia', 125),
  ('MANUEL PIAR', 'parroquia', 125),
  ('5 DE JULIO', 'parroquia', 125);

-- Parroquias del municipio Pedernales, Delta Amacuro
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PEDERNALES', 'parroquia', 126),
  ('LUIS B PRIETO FIGUERO', 'parroquia', 126);

-- Parroquia del municipio Tucupita, Delta Amacuro
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JOSE', 'parroquia', 127),
  ('VIRGEN DEL VALLE', 'parroquia', 127),
  ('SAN RAFAEL', 'parroquia', 127),
  ('JOSE VIDAL MARCANO', 'parroquia', 127),
  ('LEONARDO RUIZ PINEDA', 'parroquia', 127),
  ('MONS. ARGIMIRO GARCIA', 'parroquia', 127),
  ('MCL.ANTONIO J DE SUCRE', 'parroquia', 127),
  ('JUAN MILLAN', 'parroquia', 127);

-- Parroquias del municipio Distrito Capital, Caracas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ALTAGRACIA', 'parroquia', 128),
  ('CANDELARIA', 'parroquia', 128),
  ('CATEDRAL', 'parroquia', 128),
  ('LA PASTORA', 'parroquia', 128),
  ('SAN AGUSTIN', 'parroquia', 128),
  ('SAN JOSE', 'parroquia', 128),
  ('SAN JUAN', 'parroquia', 128),
  ('SANTA ROSALIA', 'parroquia', 128),
  ('SANTA TERESA', 'parroquia', 128),
  ('SUCRE', 'parroquia', 128),
  ('23 DE ENERO', 'parroquia', 128),
  ('ANTIMANO', 'parroquia', 128),
  ('EL RECREO', 'parroquia', 128),
  ('EL VALLE', 'parroquia', 128),
  ('LA VEGA', 'parroquia', 128),
  ('MACARAO', 'parroquia', 128),
  ('CARICUAO', 'parroquia', 128),
  ('EL JUNQUITO', 'parroquia', 128),
  ('COCHE', 'parroquia', 128),
  ('SAN PEDRO', 'parroquia', 128),
  ('SAN BERNARDINO', 'parroquia', 128),
  ('EL PARAISO', 'parroquia', 128);

-- Parroquiasd el municipio Acosta, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JUAN DE LOS CAYOS', 'parroquia', 129),
  ('CAPADARE', 'parroquia', 129),
  ('LA PASTORA', 'parroquia', 129),
  ('LIBERTADOR', 'parroquia', 129);

-- Parroquias del municipio Bolivar, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN LUIS', 'parroquia', 130),
  ('ARACUA', 'parroquia', 130),
  ('LA PEÑA', 'parroquia', 130);

-- Parroquias del municipio Buchivacoa, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CAPATARIDA', 'parroquia', 131),
  ('BOROJO', 'parroquia', 131),
  ('SEQUE', 'parroquia', 131),
  ('ZAZARIDA', 'parroquia', 131),
  ('BARIRO', 'parroquia', 131),
  ('GUAJIRO', 'parroquia', 131);

-- Parroquias del municipio Carirubana, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('NORTE', 'parroquia', 132),
  ('CARIRUBANA', 'parroquia', 132),
  ('PUNTA CARDON', 'parroquia', 132),
  ('SANTA ANA', 'parroquia', 132);

-- Parroquias del municipio COlina, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LA VELA DE CORO', 'parroquia', 133),
  ('ACURIGUA', 'parroquia', 133),
  ('GUAIBACOA', 'parroquia', 133),
  ('MACORUCA', 'parroquia', 133),
  ('LAS CALDERAS', 'parroquia', 133);

-- Parroquia del municipio Dabajuro, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. DABAJURO', 'parroquia', 134);

-- Parroquias del municipio Democracia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PEDREGAL', 'parroquia', 135),
  ('AGUA CLARA', 'parroquia', 135),
  ('AVARIA', 'parroquia', 135),
  ('PIEDRA GRANDE', 'parroquia', 135),
  ('PURURECHE', 'parroquia', 135);

--Parroquias del municipio Falcon, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PUEBLO NUEVO', 'parroquia', 136),
  ('ADICORA', 'parroquia', 136),
  ('BARAIVED', 'parroquia', 136),
  ('BUENA VISTA', 'parroquia', 136),
  ('JADACAQUIVA', 'parroquia', 136),
  ('MORUY', 'parroquia', 136),
  ('EL VINCULO', 'parroquia', 136),
  ('EL HATO', 'parroquia', 136),
  ('ADAURE', 'parroquia', 136);

-- Parroquias del municipio Federacion, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CHURUGUARA', 'parroquia', 137),
  ('AGUA LARGA', 'parroquia', 137),
  ('INDEPENDENCIA', 'parroquia', 137),
  ('MAPARARI', 'parroquia', 137),
  ('EL PAUJI', 'parroquia', 137);

--Parroquias del municipio Iturriza, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CHICHIRIVICHE', 'parroquia', 138),
  ('BOCA DE TOCUYO', 'parroquia', 138),
  ('TOCUYO DE LA COSTA', 'parroquia', 138);

--Parroquias del municipio JAcura, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('JACURA', 'parroquia', 139),
  ('AGUA LINDA', 'parroquia', 139),
  ('ARAURIMA', 'parroquia', 139);

-- Parroquias del municipio Los Taques, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LOS TAQUES', 'parroquia', 140),
  ('JUDIBANA', 'parroquia', 140);

-- Parroquia del minicipio Manaure, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. YARACAL', 'parroquia', 141);

-- Parroquias del municipio Mauroa, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MENE DE MAUROA', 'parroquia', 142),
  ('CASIGUA', 'parroquia', 142),
  ('SAN FELIX', 'parroquia', 142);

-- Parroquias del municipio Miranda, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN ANTONIO', 'parroquia', 143),
  ('SAN GABRIEL', 'parroquia', 143),
  ('SANTA ANA', 'parroquia', 143),
  ('GUZMAN GUILLERMO', 'parroquia', 143),
  ('MITARE', 'parroquia', 143),
  ('SABANETA', 'parroquia', 143),
  ('RIO SECO', 'parroquia', 143);

--Parroquia del municipio Palmasola, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PALMA SOLA', 'parroquia', 144);

-- Parroquias del municipio Petit, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CABURE', 'parroquia', 145),
  ('CURIMAGUA', 'parroquia', 145),
  ('COLINA', 'parroquia', 145);

--Parroquias del municipio Piritu, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PIRITU', 'parroquia', 146),
  ('SAN JOSE DE LA COSTA', 'parroquia', 146);

--PArroquia del municipio San Francisco, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. MIRIMIRE', 'parroquia', 147);

--Parroquias del municipio Sucre, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SUCRE', 'parroquia', 148),
  ('PECAYA', 'parroquia', 148);

-- Parroquias del municipio Silva, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('TUCACAS', 'parroquia', 149),
  ('BOCA DE AROA', 'parroquia', 149);

-- Parroquia del municipio Tocopero, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TOCOPERO', 'parroquia', 150);

-- Parroquias del municipio Union
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('STA.CRUZ DE BUCARAL', 'parroquia', 151),
  ('EL CHARAL', 'parroquia', 151),
  ('LAS VEGAS DEL TUY', 'parroquia', 151);

--PArroquias del municipio Urumaco, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('URUMACO', 'parroquia', 152),
  ('BRUZUAL', 'parroquia', 152);

--PArroquias del municipio Zamora, Falcon
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PUERTO CUMAREBO', 'parroquia', 153),
  ('LA CIENAGA', 'parroquia', 153),
  ('LA SOLEDAD', 'parroquia', 153),
  ('PUEBLO CUMAREBO', 'parroquia', 153),
  ('ZAZARIDA', 'parroquia', 153);

--Parroquias del municipio Camaguan, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CAMAGUAN', 'parroquia', 154),
  ('PUERTO MIRANDA', 'parroquia', 154),
  ('UVERITO', 'parroquia', 154);

-- Parroquia del municipio Chaguaramas, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CHAGUARAMAS', 'parroquia', 155);

--PArroquias del municipio El Socorro, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL SOCORRO', 'parroquia', 156);

-- Parroquias del municipio Frnacisco de Miranda, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CALABOZO', 'parroquia', 157),
  ('EL CALVARIO', 'parroquia', 157),
  ('EL RASTRO', 'parroquia', 157),
  ('GUARDATINAJAS', 'parroquia', 157);

-- Parroquias del municipio Jose Felix Ribas, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('TUCUPIDO', 'parroquia', 158),
  ('SAN RAFAEL DE LAYA', 'parroquia', 158);
  
-- Parroquias del municicpio Jose Tadeo Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ALTAGRACIA DE ORITUCO', 'parroquia', 161),
  ('LEZAMA', 'parroquia', 161),
  ('LIBERTAD DE ORITUCO', 'parroquia', 161),
  ('SAN FCO DE MACAIRA', 'parroquia', 161),
  ('SAN RAFAEL DE ORITUCO', 'parroquia', 161),
  ('SOUBLETTE', 'parroquia', 161),
  ('PASO REAL DE MACAIRA', 'parroquia', 161);

--Parroquias del municipio Juan Roman Roscio
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JUAN DE LOS MORROS', 'parroquia', 160),
  ('PARAPARA', 'parroquia', 160),
  ('CANTAGALLO', 'parroquia', 160);

--Parroquias del municipio Juan Jose Rondon, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LAS MERCEDES', 'parroquia', 161),
  ('STA RITA DE MANAPIRE', 'parroquia', 161),
  ('CABRUTA', 'parroquia', 161);

--Parroquias del municipio Julian Mellado, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL SOMBRERO', 'parroquia', 162),
  ('SOSA', 'parroquia', 162);

--Parroquias del municipio Leonardo Infante, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('VALLE DE LA PASCUA', 'parroquia', 163),
  ('ESPINO', 'parroquia', 163);

--Parroquias del municipio Ortiz, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ORTIZ', 'parroquia', 164),
  ('SAN FCO. DE TIZNADOS', 'parroquia', 164),
  ('SAN JOSE DE TIZNADOS', 'parroquia', 164),
  ('S LORENZO DE TIZNADOS', 'parroquia', 164);

-- Parroquias del municipio San Geronimo de Guayabal, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUAYABAL', 'parroquia', 165),
  ('CAZORLA', 'parroquia', 165);

--Parroquias del municipio San Jose de Guaribe
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JOSE DE GUARIBE', 'parroquia', 166);

-- Parroquias del municipio Santa Maria de Ipire, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SANTA MARIA DE IPIRE', 'parroquia', 167),
  ('ALTAMIRA', 'parroquia', 167);

-- Parroquias del municipio Zaraza, Guarico
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ZARAZA', 'parroquia', 168),
  ('SAN JOSE DE UNARE', 'parroquia', 168);

-- Parroquias del municipio Andres Eloy Blanco, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PIO TAMAYO', 'parroquia', 169),
  ('YACAMBU', 'parroquia', 169),
  ('QBDA. HONDA DE GUACHE', 'parroquia', 169);

-- Parroquias del municipio Crespo, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('FREITEZ', 'parroquia', 170),
  ('JOSE MARIA BLANCO', 'parroquia', 170);

-- Parroquias del municipio Iribarren
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CATEDRAL', 'parroquia', 171),
  ('LA CONCEPCION', 'parroquia', 171),
  ('SANTA ROSA', 'parroquia', 171),
  ('UNION', 'parroquia', 171),
  ('EL CUJI', 'parroquia', 171),
  ('TAMACA', 'parroquia', 171),
  ('JUAN DE VILLEGAS', 'parroquia', 171),
  ('AGUEDO F. ALVARADO', 'parroquia', 171),
  ('BUENA VISTA', 'parroquia', 171),
  ('JUAREZ', 'parroquia', 171);

-- Parroquias del municipio Jimenez, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('JUAN B RODRIGUEZ', 'parroquia', 172),
  ('DIEGO DE LOZADA', 'parroquia', 172),
  ('SAN MIGUEL', 'parroquia', 172),
  ('CUARA', 'parroquia', 172),
  ('PARAISO DE SAN JOSE', 'parroquia', 172),
  ('TINTORERO', 'parroquia', 172),
  ('JOSE BERNARDO DORANTE', 'parroquia', 172),
  ('CRNEL. MARIANO PERAZA', 'parroquia', 172);

-- Parroquias del municipio Moran, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BOLIVAR', 'parroquia', 173),
  ('ANZOATEGUI', 'parroquia', 173),
  ('GUARICO', 'parroquia', 173),
  ('HUMOCARO ALTO', 'parroquia', 173),
  ('HUMOCARO BAJO', 'parroquia', 173),
  ('MORAN', 'parroquia', 173),
  ('HILARIO LUNA Y LUNA', 'parroquia', 173),
  ('LA CANDELARIA', 'parroquia', 173);

-- Parroquias del municipio Palavecino, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CABUDARE', 'parroquia', 174),
  ('JOSE G. BASTIDAS', 'parroquia', 174),
  ('AGUA VIVA', 'parroquia', 174);

-- Parroquias del municipio Simon Planas, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SARARE', 'parroquia', 175),
  ('GUSTAVO VEGAS LEON', 'parroquia', 175),
  ('BURIA', 'parroquia', 175);

-- Parroquias del municipio Torres, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('TRINIDAD SAMUEL', 'parroquia', 176),
  ('ANTONIO DIAZ', 'parroquia', 176),
  ('CAMACARO', 'parroquia', 176),
  ('CASTAÑEDA', 'parroquia', 176),
  ('CHIQUINQUIRA', 'parroquia', 176),
  ('ESPINOZA LOS MONTEROS', 'parroquia', 176),
  ('LARA', 'parroquia', 176),
  ('MANUEL MORILLO', 'parroquia', 176),
  ('MONTES DE OCA', 'parroquia', 176),
  ('TORRES', 'parroquia', 176),
  ('EL BLANCO', 'parroquia', 176),
  ('MONTA A VERDE', 'parroquia', 176),
  ('HERIBERTO ARROYO', 'parroquia', 176),
  ('LAS MERCEDES', 'parroquia', 176),
  ('CECILIO ZUBILLAGA', 'parroquia', 176),
  ('REYES VARGAS', 'parroquia', 176),
  ('ALTAGRACIA', 'parroquia', 176);

-- Parroquias del municipio Urdaneta, Lara
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SIQUISIQUE', 'parroquia', 177),
  ('SAN MIGUEL', 'parroquia', 177),
  ('XAGUAS', 'parroquia', 177),
  ('MOROTURO', 'parroquia', 177);

-- Parroquias del municipio Vargas, La Guaira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CARABALLEDA', 'parroquia', 178),
  ('CARAYACA', 'parroquia', 178),
  ('CARUAO', 'parroquia', 178),
  ('CATIA LA MAR', 'parroquia', 178),
  ('LA GUAIRA', 'parroquia', 178),
  ('MACUTO', 'parroquia', 178),
  ('MAIQUETIA', 'parroquia', 178),
  ('NAIGUATA', 'parroquia', 178),
  ('EL JUNKO', 'parroquia', 178),
  ('PQ RAUL LEONI', 'parroquia', 178),
  ('PQ CARLOS SOUBLETTE', 'parroquia', 178);

-- Parroquias del municipio Alberto Adriani, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GABRIEL PICON G.', 'parroquia', 179),
  ('HECTOR AMABLE MORA', 'parroquia', 179),
  ('JOSE NUCETE SARDI', 'parroquia', 179),
  ('PULIDO MENDEZ', 'parroquia', 179),
  ('PTE. ROMULO GALLEGOS', 'parroquia', 179),
  ('PRESIDENTE BETANCOURT', 'parroquia', 179),
  ('PRESIDENTE PAEZ', 'parroquia', 179);

-- Parroquia del municipio Andres Bello, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LA AZULITA', 'parroquia', 180);

-- Parroquias del municipio Antonio pinto Salinas, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. STA CRUZ DE MORA', 'parroquia', 181),
  ('MESA BOLIVAR', 'parroquia', 181),
  ('MESA DE LAS PALMAS', 'parroquia', 181);

-- Parroquias del municipio Aricagua, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ARICAGUA', 'parroquia', 182),
  ('SAN ANTONIO', 'parroquia', 182);

-- Parroquias del municipio Arzobispo Chacon, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CANAGUA', 'parroquia', 183),
  ('CAPURI', 'parroquia', 183),
  ('CHACANTA', 'parroquia', 183),
  ('EL MOLINO', 'parroquia', 183),
  ('GUAIMARAL', 'parroquia', 183),
  ('MUCUTUY', 'parroquia', 183),
  ('MUCUCHACHI', 'parroquia', 183);

-- Parroquias del municipio Campo Elias, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ACEQUIAS', 'parroquia', 184),
  ('JAJI', 'parroquia', 184),
  ('LA MESA', 'parroquia', 184),
  ('SAN JOSE', 'parroquia', 184),
  ('MONTALBAN', 'parroquia', 184),
  ('MATRIZ', 'parroquia', 184),
  ('FERNANDEZ PEÑA', 'parroquia', 184);

-- Parroquias del municipio Caracciolo Parra Olmedo, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TUCANI', 'parroquia', 185),
  ('FLORENCIO RAMIREZ', 'parroquia', 185);

-- Parroquias del municipio Cardenal Quintero, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SANTO DOMINGO', 'parroquia', 186),
  ('LAS PIEDRAS', 'parroquia', 186);

-- Parroquias del municipio Guaraque, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. GUARAQUE', 'parroquia', 187),
  ('MESA DE QUINTERO', 'parroquia', 187),
  ('RIO NEGRO', 'parroquia', 187);


-- Parroquias del municipio Julio Cesar Salas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ARAPUEY', 'parroquia', 188),
  ('PALMIRA', 'parroquia', 188);

-- Parroquias del municipio Justo Briceño, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TORONDOY', 'parroquia', 189),
  ('SAN CRISTOBAL DE T', 'parroquia', 189);

-- Parroquias del municipio Libertador, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ARIAS', 'parroquia', 190),
  ('SAGRARIO', 'parroquia', 190),
  ('MILLA', 'parroquia', 190),
  ('EL LLANO', 'parroquia', 190),
  ('JUAN RODRIGUEZ SUAREZ', 'parroquia', 190),
  ('JACINTO PLAZA', 'parroquia', 190),
  ('DOMINGO PEÑA', 'parroquia', 190),
  ('GONZALO PICON FEBRES', 'parroquia', 190),
  ('OSUNA RODRIGUEZ', 'parroquia', 190),
  ('LASSO DE LA VEGA', 'parroquia', 190),
  ('CARACCIOLO PARRA P', 'parroquia', 190),
  ('MARIANO PICON SALAS', 'parroquia', 190),
  ('ANTONIO SPINETTI DINI', 'parroquia', 190),
  ('EL MORRO', 'parroquia', 190),
  ('LOS NEVADOS', 'parroquia', 190);

--Parroquias del municipio Miranda, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TIMOTES', 'parroquia', 191),
  ('ANDRES ELOY BLANCO', 'parroquia', 191),
  ('PIÑANGO', 'parroquia', 191),
  ('LA VENTA', 'parroquia', 191);

-- Parroquias del municipio Obispo Ramos de Lora, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. STA ELENA DE ARENALES', 'parroquia', 192),
  ('ELOY PAREDES', 'parroquia', 192),
  ('PQ R DE ALCAZAR', 'parroquia', 192);

-- Parroquias del municipio Padre Noguera, MErida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. STA MARIA DE CAPARO', 'parroquia', 193);

-- PArroquia del municipio Pueblo Llano, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PUEBLO LLANO', 'parroquia', 194);

-- Parroquias del municipio Rangel, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. MUCUCHIES', 'parroquia', 195),
  ('MUCURUBA', 'parroquia', 195),
  ('SAN RAFAEL', 'parroquia', 195),
  ('CACUTE', 'parroquia', 195),
  ('LA TOMA', 'parroquia', 195);

-- Parroquias del municipio Rivas Davila, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BAILADORES', 'parroquia', 196),
  ('GERONIMO MALDONADO', 'parroquia', 196);

-- PArroquias del municipio Santos MArquina, MErida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TABAY', 'parroquia', 197);

-- Parroquias del municipio Sucre, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LAGUNILLAS', 'parroquia', 198),
  ('CHIGUARA', 'parroquia', 198),
  ('ESTANQUES', 'parroquia', 198),
  ('SAN JUAN', 'parroquia', 198),
  ('PUEBLO NUEVO DEL SUR', 'parroquia', 198),
  ('LA TRAMPA', 'parroquia', 198);

-- PArroquias del municipio Tovar, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL LLANO', 'parroquia', 199),
  ('TOVAR', 'parroquia', 199),
  ('EL AMPARO', 'parroquia', 199),
  ('SAN FRANCISCO', 'parroquia', 199);

-- Parroquias del municipio Tulio Febres Cordero, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. NUEVA BOLIVIA', 'parroquia', 200),
  ('INDEPENDENCIA', 'parroquia', 200),
  ('MARIA C PALACIOS', 'parroquia', 200),
  ('SANTA APOLONIA', 'parroquia', 200);

-- Parroquias del municipio Zea, Merida
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ZEA', 'parroquia', 201),
  ('CAÑO EL TIGRE', 'parroquia', 201);

-- PArroquias del municipio Acevedo, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CAUCAGUA', 'parroquia', 202),
  ('ARAGUITA', 'parroquia', 202),
  ('AREVALO GONZALEZ', 'parroquia', 202),
  ('CAPAYA', 'parroquia', 202),
  ('PANAQUIRE', 'parroquia', 202),
  ('RIBAS', 'parroquia', 202),
  ('EL CAFE', 'parroquia', 202),
  ('MARIZAPA', 'parroquia', 202);

-- Parroquias del municipio Andres BEllo, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JOSE DE BARLOVENTO', 'parroquia', 203),
  ('CUMBO', 'parroquia', 203);

-- PArroquias del municipio Baruta, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BARUTA', 'parroquia', 204),
  ('EL CAFETAL', 'parroquia', 204),
  ('LAS MINAS DE BARUTA', 'parroquia', 204);

-- Parroquias del municipio Bolivar, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN FCO DE YARE', 'parroquia', 205),
  ('S ANTONIO DE YARE', 'parroquia', 205);

-- Parroquias del municipio Brion, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('HIGUEROTE', 'parroquia', 206),
  ('CURIEPE', 'parroquia', 206),
  ('TACARIGUA', 'parroquia', 206);

-- PArroquia del municipio Buroz, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MAMPORAL', 'parroquia', 207);

-- Parroquia del municipio Carrizal, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CARRIZAL', 'parroquia', 208);

-- Parroquia del municipio Chacao, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CHACAO', 'parroquia', 209);

-- Parroquias del municipio Cristobal Rojas, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CHARALLAVE', 'parroquia', 210),
  ('LAS BRISAS', 'parroquia', 210);

-- Parroquia del municipio El Hatillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL HATILLO', 'parroquia', 211);

-- Parroquias del municipio Guaicaipuro, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LOS TEQUES', 'parroquia', 212),
  ('CECILIO ACOSTA', 'parroquia', 212),
  ('PARACOTOS', 'parroquia', 212),
  ('SAN PEDRO', 'parroquia', 212),
  ('TACATA', 'parroquia', 212),
  ('EL JARILLO', 'parroquia', 212),
  ('ALTAGRACIA DE LA M', 'parroquia', 212);

-- PArroquias del municipio Gual, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CUPIRA', 'parroquia', 213),
  ('MACHURUCUTO', 'parroquia', 213);

-- Parroquias del municipio Independencia, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('STA TERESA DEL TUY', 'parroquia', 214),
  ('EL CARTANAL', 'parroquia', 214);

-- Parroquias del municipio Lander, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('OCUMARE DEL TUY', 'parroquia', 215),
  ('LA DEMOCRACIA', 'parroquia', 215),
  ('SANTA BARBARA', 'parroquia', 215);

-- Parroquia del municipio Los Salias, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN ANTONIO LOS ALTOS', 'parroquia', 216);

-- Parroquias del municipio Paez, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('RIO CHICO', 'parroquia', 217),
  ('EL GUAPO', 'parroquia', 217),
  ('TACARIGUA DE LA LAGUNA', 'parroquia', 217),
  ('PAPARO', 'parroquia', 217),
  ('SN FERNANDO DEL GUAPO', 'parroquia', 217);

-- Parroquia del municipio Paz Castillo, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SANTA LUCIA', 'parroquia', 218);

-- PArroquia del municipio Plaza, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUARENAS', 'parroquia', 219);

-- PArroquias del municipio Sucre, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PETARE', 'parroquia', 220),
  ('LEONCIO MARTINEZ', 'parroquia', 220),
  ('CAUCAGUITA', 'parroquia', 220),
  ('FILAS DE MARICHES', 'parroquia', 220),
  ('LA DOLORITA', 'parroquia', 220);

-- Parroquias del municipio Urdaneta, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CUA', 'parroquia', 221),
  ('NUEVA CUA', 'parroquia', 221);

-- Parroquias del municipio Zamora, Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUATIRE', 'parroquia', 222),
  ('ARAIRA', 'parroquia', 222);

-- Parroquias del municipio Acosta, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN ANTONIO', 'parroquia', 223),
  ('SAN FRANCISCO', 'parroquia', 223);

-- Parroquia del municipio Aguasay
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. AGUASAY', 'parroquia', 224);

-- Parroquia del municipio Bolivar, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CARIPITO', 'parroquia', 225);

--PArroquias del municipio Caripe, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CARIPE', 'parroquia', 226),
  ('TERESEN', 'parroquia', 226),
  ('EL GUACHARO', 'parroquia', 226),
  ('SAN AGUSTIN', 'parroquia', 226),
  ('LA GUANOTA', 'parroquia', 226),
  ('SABANA DE PIEDRA', 'parroquia', 226);

-- Parroquias del municipio Cedeño, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CAICARA', 'parroquia', 227),
  ('AREO', 'parroquia', 227),
  ('SAN FELIX', 'parroquia', 227),
  ('VIENTO FRESCO', 'parroquia', 227);

-- Parroquias del municipio Libertador, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TEMBLADOR', 'parroquia', 228),
  ('TABASCA', 'parroquia', 228),
  ('LAS ALHUACAS', 'parroquia', 228),
  ('CHAGUARAMAS', 'parroquia', 228);

-- Parroquias del municipio MAturin, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL FURRIAL', 'parroquia', 229),
  ('JUSEPIN', 'parroquia', 229),
  ('EL COROZO', 'parroquia', 229),
  ('SAN VICENTE', 'parroquia', 229),
  ('LA PICA', 'parroquia', 229),
  ('ALTO DE LOS GODOS', 'parroquia', 229),
  ('BOQUERON', 'parroquia', 229),
  ('LAS COCUIZAS', 'parroquia', 229),
  ('SANTA CRUZ', 'parroquia', 229),
  ('SAN SIMON', 'parroquia', 229);

-- Parroquias del municipio Piar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ARAGUA', 'parroquia', 230),
  ('CHAGUARAMAL', 'parroquia', 230),
  ('GUANAGUANA', 'parroquia', 230),
  ('APARICIO', 'parroquia', 230),
  ('TAGUAYA', 'parroquia', 230),
  ('EL PINTO', 'parroquia', 230),
  ('LA TOSCANA', 'parroquia', 230);

-- Parroquias del municipio Punceres, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. QUIRIQUIRE', 'parroquia', 231),
  ('CACHIPO', 'parroquia', 231);

-- Parroquias del municipio Santa Barbara, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MORON', 'parroquia', 232),
  ('CM. SANTA BARBARA', 'parroquia', 232);

-- Parroquias del municipio Sotillo, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BARRANCAS', 'parroquia', 233),
  ('LOS BARRANCOS DE FAJARDO', 'parroquia', 233);

-- Parroquias del municipio Uracoa, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. URACOA', 'parroquia', 234);

-- Parroquias del municipio Zamora, Monagas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PUNTA DE MATA', 'parroquia', 235),
  ('EL TEJERO', 'parroquia', 235);

-- Parroquia del municipio Antolin del CAmpo, Nueva esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ANTOLIN DEL CAMPO', 'parroquia', 236),
  ('CM.LA PLAZA DE PARAGUACHI', 'parroquia', 236);

-- Parroquias del municipio Antonio Diaz, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN JUAN BAUTISTA', 'parroquia', 237),
  ('ZABALA', 'parroquia', 237);

-- Parroquia del muncicipio Arismendi, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ARISMENDI', 'parroquia', 238),
  ('CM. LA ASUNCION', 'parroquia', 238);

-- PArroquias del municipio GArcia, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. VALLE ESP SANTO', 'parroquia', 239),
  ('FRANCISCO FAJARDO', 'parroquia', 239);

-- Parroquias del municipio Gomez, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SANTA ANA', 'parroquia', 240),
  ('GUEVARA', 'parroquia', 240),
  ('MATASIETE', 'parroquia', 240),
  ('BOLIVAR', 'parroquia', 240),
  ('SUCRE', 'parroquia', 240);

-- Parroquias del municipio Macanao, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BOCA DEL RIO', 'parroquia', 241),
  ('SAN FRANCISCO', 'parroquia', 241);

-- Parroquias del municipio MAneiro, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PAMPATAR', 'parroquia', 242),
  ('AGUIRRE', 'parroquia', 242);

-- PArroquia del municipio Marcano, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. JUAN GRIEGO', 'parroquia', 243),
  ('ADRIAN', 'parroquia', 243);

-- Parroquias del municipio Mariño, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MARIÑO', 'parroquia', 244),
  ('CM. PORLAMAR', 'parroquia', 244);

-- Parroquias del municipio Tubores, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PUNTA DE PIEDRAS', 'parroquia', 245),
  ('LOS BARALES', 'parroquia', 245);

-- Parroquias del municipio Villalba, Nueva Esparta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN PEDRO DE COCHE', 'parroquia', 246),
  ('VICENTE FUENTES', 'parroquia', 246);

-- Parroquia del municipio Agua Blanca, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. AGUA BLANCA', 'parroquia', 247);

-- Parroquias del municipio Araure, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ARAURE', 'parroquia', 248),
  ('RIO ACARIGUA', 'parroquia', 248);

-- Parroquias del municipio Esteller, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PIRITU', 'parroquia', 249),
  ('UVERAL', 'parroquia', 249);

-- Parroquias del municipio Guanare, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. GUANARE', 'parroquia', 250),
  ('CORDOBA', 'parroquia', 250),
  ('SAN JUAN GUANAGUANARE', 'parroquia', 250),
  ('VIRGEN DE LA COROMOTO', 'parroquia', 250),
  ('SAN JOSE DE LA MONTAÑA', 'parroquia', 250);

-- Parroquias del municipio Guanarito, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. GUANARITO', 'parroquia', 251),
  ('TRINIDAD DE LA CAPILLA', 'parroquia', 251),
  ('DIVINA PASTORA', 'parroquia', 251);

-- Parroquias del municipio Jose Vicente de Unda, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CHABASQUEN', 'parroquia', 252),
  ('PEÑA BLANCA', 'parroquia', 252);

-- Parroquias del municipio OSpino, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. OSPINO', 'parroquia', 253),
  ('APARICION', 'parroquia', 253),
  ('LA ESTACION', 'parroquia', 253);

-- Parroquias del municipio Paez, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ACARIGUA', 'parroquia', 254),
  ('PAYARA', 'parroquia', 254),
  ('PIMPINELA', 'parroquia', 254),
  ('RAMON PERAZA', 'parroquia', 254);

-- Parroquias del municipio Papelon, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PAPELON', 'parroquia', 255),
  ('CAÑO DELGADITO', 'parroquia', 255);

-- Parroquias del municipio San Genaro de Boconoito, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BOCONOITO', 'parroquia', 256),
  ('ANTOLIN TOVAR AQUINO', 'parroquia', 256);

-- Parroquias del municipio San Rafael de Onoto, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN RAFAEL DE ONOTO', 'parroquia', 257),
  ('SANTA FE', 'parroquia', 257),
  ('THERMO MORLES', 'parroquia', 257);

-- Parroquias del municipio Santa Rosalia, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. EL PLAYON', 'parroquia', 258),
  ('FLORIDA', 'parroquia', 258);

-- Parroquias del municipio Sucre, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BISCUCUY', 'parroquia', 259),
  ('CONCEPCION', 'parroquia', 259),
  ('SAN RAFAEL PALO ALZADO', 'parroquia', 259),
  ('UVENCIO A VELASQUEZ', 'parroquia', 259),
  ('SAN JOSE DE SAGUAZ', 'parroquia', 259),
  ('VILLA ROSA', 'parroquia', 259);

-- PArroquias del municipio Turen, Portuguesa
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. VILLA BRUZUAL', 'parroquia', 260),
  ('CANELONES', 'parroquia', 260),
  ('SANTA CRUZ', 'parroquia', 260),
  ('SAN ISIDRO LABRADOR', 'parroquia', 260);

-- Parroquias del municipio Andres Eloy Blanco, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MARIÑO', 'parroquia', 261),
  ('ROMULO GALLEGOS', 'parroquia', 261);

-- Parroquias del municipio Andres Mata, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JOSE DE AREOCUAR', 'parroquia', 262),
  ('TAVERA ACOSTA', 'parroquia', 262);

-- Parroquias del municipio Arismendi, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('RIO CARIBE', 'parroquia', 263),
  ('SAN JUAN GALDONAS', 'parroquia', 263),
  ('PUERTO SANTO', 'parroquia', 263),
  ('EL MORRO DE PTO SANTO', 'parroquia', 263),
  ('ANTONIO JOSE DE SUCRE', 'parroquia', 263);

-- Parroquias del municipio Benitez, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL PILAR', 'parroquia', 264),
  ('EL RINCON', 'parroquia', 264),
  ('GUARAUNOS', 'parroquia', 264),
  ('TUNAPUICITO', 'parroquia', 264),
  ('UNION', 'parroquia', 264),
  ('GRAL FCO. A VASQUEZ', 'parroquia', 264);

-- Parroquiasd el municipio Bermudez, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SANTA CATALINA', 'parroquia', 265),
  ('SANTA ROSA', 'parroquia', 265),
  ('SANTA TERESA', 'parroquia', 265),
  ('BOLIVAR', 'parroquia', 265),
  ('MACARAPANA', 'parroquia', 265);

-- Parroquias del municipio Bolivar, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. MARIGUITAR', 'parroquia', 266);

-- Parroquias del municipio Cajigal, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('YAGUARAPARO', 'parroquia', 267),
  ('LIBERTAD', 'parroquia', 267),
  ('PAUJIL', 'parroquia', 267);

-- PArroquias del municipio Cruz Salmeron Acosta, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ARAYA', 'parroquia', 268),
  ('MANICUARE', 'parroquia', 268),
  ('CHACOPATA', 'parroquia', 268);

-- Parroquias del municipio Libertador
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('TUNAPUY', 'parroquia', 269),
  ('CAMPO ELIAS', 'parroquia', 269);

-- Parroquias del municipio Mariño, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('IRAPA', 'parroquia', 270),
  ('CAMPO CLARO', 'parroquia', 270),
  ('SORO', 'parroquia', 270),
  ('SAN ANTONIO DE IRAPA', 'parroquia', 270),
  ('MARABAL', 'parroquia', 270);

-- Parroqui del municipio Mejia, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN ANT DEL GOLFO', 'parroquia', 271);

-- Parroquias del municipio Montes, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CUMANACOA', 'parroquia', 272),
  ('ARENAS', 'parroquia', 272),
  ('ARICAGUA', 'parroquia', 272),
  ('COCOLLAR', 'parroquia', 272),
  ('SAN FERNANDO', 'parroquia', 272),
  ('SAN LORENZO', 'parroquia', 272);

-- Parroquias del municipio Ribero, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CARIACO', 'parroquia', 273),
  ('CATUARO', 'parroquia', 273),
  ('RENDON', 'parroquia', 273),
  ('SANTA CRUZ', 'parroquia', 273),
  ('SANTA MARIA', 'parroquia', 273);

-- Parroquias del municipio Sucre, Sucre
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ALTAGRACIA', 'parroquia', 274),
  ('AYACUCHO', 'parroquia', 274),
  ('SANTA INES', 'parroquia', 274),
  ('VALENTIN VALIENTE', 'parroquia', 274),
  ('SAN JUAN', 'parroquia', 274),
  ('GRAN MARISCAL', 'parroquia', 274),
  ('RAUL LEONI', 'parroquia', 274);

-- Parroquias del municipio Valdez
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GUIRIA', 'parroquia', 275),
  ('CRISTOBAL COLON', 'parroquia', 275),
  ('PUNTA DE PIEDRA', 'parroquia', 275),
  ('BIDEAU', 'parroquia', 275);

-- Parroquias del municipio Andres BEllo, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CORDERO', 'parroquia', 276);

-- Parroquias del municipio Antonio Romulo Costa, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LAS MESAS', 'parroquia', 277);

-- Parroquias del municipio Ayacucho, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. COLON', 'parroquia', 278),
  ('RIVAS BERTI', 'parroquia', 278),
  ('SAN PEDRO DEL RIO', 'parroquia', 278);

-- Parroquias del municipio Bolivar, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN ANT DEL TACHIRA', 'parroquia', 279),
  ('PALOTAL', 'parroquia', 279),
  ('JUAN VICENTE GOMEZ', 'parroquia', 279),
  ('ISAIAS MEDINA ANGARITA', 'parroquia', 279);

-- Parroquias del municipio Cardenas, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. TARIBA', 'parroquia', 280),
  ('LA FLORIDA', 'parroquia', 280),
  ('AMENODORO RANGEL LAMU', 'parroquia', 280);

-- Parroquias del municipio Cordoba, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. STA. ANA  DEL TACHIRA', 'parroquia', 281);

-- Parroquias del municipio Fernandez, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM.SAN RAFAEL DEL PINAL', 'parroquia', 282),
  ('SANTO DOMINGO', 'parroquia', 282),
  ('ALBERTO ADRIANI', 'parroquia', 282);

-- Parroquia del municipio Francisco de Miranda
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN JOSE DE BOLIVAR', 'parroquia', 283);

-- Parroquias del municipio Garcia de Hevia, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LA FRIA', 'parroquia', 284),
  ('BOCA DE GRITA', 'parroquia', 284),
  ('JOSE ANTONIO PAEZ', 'parroquia', 284);

-- Parroquias del municipio Guasimas, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PALMIRA', 'parroquia', 285);

-- Parroquias del municipio Independencia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CAPACHO NUEVO', 'parroquia', 286),
  ('JUAN GERMAN ROSCIO', 'parroquia', 286),
  ('ROMAN CARDENAS', 'parroquia', 286);

-- Parroquias del municipio Jauregui, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LA GRITA', 'parroquia', 287),
  ('EMILIO C. GUERRERO', 'parroquia', 287),
  ('MONS. MIGUEL A SALAS', 'parroquia', 287);

-- Parroquia del municipio Jose MAria Vargas, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. EL COBRE', 'parroquia', 288);

-- Parroquias del municipio Junin, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. RUBIO', 'parroquia', 289),
  ('BRAMON', 'parroquia', 289),
  ('LA PETROLEA', 'parroquia', 289),
  ('QUINIMARI', 'parroquia', 289);

-- PArroquias del municipio Libertad, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CAPACHO VIEJO', 'parroquia', 290),
  ('CIPRIANO CASTRO', 'parroquia', 290),
  ('MANUEL FELIPE RUGELES', 'parroquia', 290);

-- Parroquias del municipio Libertador, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. ABEJALES', 'parroquia', 291),
  ('SAN JOAQUIN DE NAVAY', 'parroquia', 291),
  ('DORADAS', 'parroquia', 291),
  ('EMETERIO OCHOA', 'parroquia', 291);

-- Parroquias del municipio Lobatera, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LOBATERA', 'parroquia', 292),
  ('CONSTITUCION', 'parroquia', 292);

-- Parroquia del municipio Michelena
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. MICHELENA', 'parroquia', 293);

-- Parroquias del municipio Panamericano, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. COLONCITO', 'parroquia', 294),
  ('LA PALMITA', 'parroquia', 294);

-- Parroquias del municipio Pedro Maria Ureña, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. UREÑA', 'parroquia', 295),
  ('NUEVA ARCADIA', 'parroquia', 295);

-- Parroqui del municipio Rafael Urdaneta, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. DELICIAS', 'parroquia', 296);

-- Parroquias del municipio Samuel Dario Maldonado
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. LA TENDIDA', 'parroquia', 297),
  ('BOCONO', 'parroquia', 297),
  ('HERNANDEZ', 'parroquia', 297);

-- Parroquias del municipio San Cristobal, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LA CONCORDIA', 'parroquia', 298),
  ('PEDRO MARIA MORANTES', 'parroquia', 298),
  ('SN JUAN BAUTISTA', 'parroquia', 298),
  ('SAN SEBASTIAN', 'parroquia', 298),
  ('DR. FCO. ROMERO LOBO', 'parroquia', 298);

-- Parroquia del municipio San Judas Tadeo, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. UMUQUENA', 'parroquia', 299);

-- Parroquias del municipio Seboruco, TAchira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SEBORUCO', 'parroquia', 300);

-- Parroquias del municipio Simon Rodriguez, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN SIMON', 'parroquia', 301);

-- Parroquias del municipio Sucre, TAchira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. QUENIQUEA', 'parroquia', 302),
  ('SAN PABLO', 'parroquia', 302),
  ('ELEAZAR LOPEZ CONTRERA', 'parroquia', 302);

-- Parroquias del municipio Torbes, Tachira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN JOSECITO', 'parroquia', 303);

-- Parroquias del municipio Uribante, TAchira
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. PREGONERO', 'parroquia', 304),
  ('CARDENAS', 'parroquia', 304),
  ('POTOSI', 'parroquia', 304),
  ('JUAN PABLO PEÑALOZA', 'parroquia', 304);


-- PArroquias del municipio Andres Bello, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SANTA ISABEL', 'parroquia', 305),
  ('ARAGUANEY', 'parroquia', 305),
  ('EL JAGUITO', 'parroquia', 305),
  ('LA ESPERANZA', 'parroquia', 305);

-- Parroquias del municipio Bocono, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BOCONO', 'parroquia', 306),
  ('EL CARMEN', 'parroquia', 306),
  ('MOSQUEY', 'parroquia', 306),
  ('AYACUCHO', 'parroquia', 306),
  ('BURBUSAY', 'parroquia', 306),
  ('GENERAL RIVAS', 'parroquia', 306),
  ('MONSEÑOR JAUREGUI', 'parroquia', 306),
  ('RAFAEL RANGEL', 'parroquia', 306),
  ('SAN JOSE', 'parroquia', 306),
  ('SAN MIGUEL', 'parroquia', 306),
  ('GUARAMACAL', 'parroquia', 306),
  ('LA VEGA DE GUARAMACAL', 'parroquia', 306);

-- Parroquias del municipio Bolivar
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SABANA GRANDE', 'parroquia', 307),
  ('CHEREGUE', 'parroquia', 307),
  ('GRANADOS', 'parroquia', 307);

-- Parroquias del municipio Candelaria, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CHEJENDE', 'parroquia', 308),
  ('CARRILLO', 'parroquia', 308),
  ('CEGARRA', 'parroquia', 308),
  ('BOLIVIA', 'parroquia', 308),
  ('MANUEL SALVADOR ULLOA', 'parroquia', 308),
  ('SAN JOSE', 'parroquia', 308),
  ('ARNOLDO GABALDON', 'parroquia', 308);

-- Parroquias del municipio Carache, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CARACHE', 'parroquia', 309),
  ('LA CONCEPCION', 'parroquia', 309),
  ('CUICAS', 'parroquia', 309),
  ('PANAMERICANA', 'parroquia', 309),
  ('SANTA CRUZ', 'parroquia', 309);

-- Parroquias del municipio Carvajal, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CARVAJAL', 'parroquia', 310),
  ('ANTONIO N BRICEÑO', 'parroquia', 310),
  ('CAMPO ALEGRE', 'parroquia', 310),
  ('JOSE LEONARDO SUAREZ', 'parroquia', 310);

-- Parroquias del municipio Escuque
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ESCUQUE', 'parroquia', 311),
  ('SABANA LIBRE', 'parroquia', 311),
  ('LA UNION', 'parroquia', 311),
  ('SANTA RITA', 'parroquia', 311);

-- Parroquias del municipio Juan Vicente Campos Elias
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CAMPO ELIAS', 'parroquia', 312),
  ('ARNOLDO GABALDON', 'parroquia', 312),
  ('SANTA APOLONIA', 'parroquia', 312);

-- PArroquias del municipio La Ceiba, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LA CEIBA', 'parroquia', 313),
  ('EL PROGRESO', 'parroquia', 313),
  ('TRES DE FEBRERO', 'parroquia', 313);

-- Parroquias del municipio Marquez Cañizales
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL SOCORRO', 'parroquia', 314),
  ('LOS CAPRICHOS', 'parroquia', 314),
  ('ANTONIO JOSE DE SUCRE', 'parroquia', 314);

-- PArroquias del municipio Miranda, TRujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('EL DIVIDIVE', 'parroquia', 315),
  ('AGUA CALIENTE', 'parroquia', 315),
  ('EL CENIZO', 'parroquia', 315),
  ('AGUA SANTA', 'parroquia', 315),
  ('VALERITA', 'parroquia', 315);

-- Parroquias del municipio Monte Carmelo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MONTE CARMELO', 'parroquia', 316),
  ('BUENA VISTA', 'parroquia', 316),
  ('STA MARIA DEL HORCON', 'parroquia', 316);

-- PArroquias del municipio Motatan, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MOTATAN', 'parroquia', 317),
  ('EL BAÑO', 'parroquia', 317),
  ('JALISCO', 'parroquia', 317);

-- Parroquias del municipio Pampan, TRujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PAMPAN', 'parroquia', 318),
  ('SANTA ANA', 'parroquia', 318),
  ('LA PAZ', 'parroquia', 318),
  ('FLOR DE PATRIA', 'parroquia', 318);

-- Parroquias del municipio PAmpanito, TRujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PAMPANITO', 'parroquia', 319),
  ('PAMPANITO II', 'parroquia', 319),
  ('LA CONCEPCION', 'parroquia', 319);

-- Parroquias del municipio Rangel, TRujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BETIJOQUE', 'parroquia', 320),
  ('JOSE G HERNANDEZ', 'parroquia', 320),
  ('LA PUEBLITA', 'parroquia', 320),
  ('EL CEDRO', 'parroquia', 320);

-- Parroquias del municipio Sucre, TRujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SABANA DE MENDOZA', 'parroquia', 321),
  ('JUNIN', 'parroquia', 321),
  ('VALMORE RODRIGUEZ', 'parroquia', 321),
  ('EL PARAISO', 'parroquia', 321);

-- Parroquias del municipio Trujillo, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CRISTOBAL MENDOZA', 'parroquia', 322),
  ('CHIQUINQUIRA', 'parroquia', 322),
  ('MATRIZ', 'parroquia', 322),
  ('MONSEÑOR CARRILLO', 'parroquia', 322),
  ('CRUZ CARRILLO', 'parroquia', 322),
  ('ANDRES LINARES', 'parroquia', 322),
  ('TRES ESQUINAS', 'parroquia', 322);

-- Parroquias del municipio Urdaneta, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LA QUEBRADA', 'parroquia', 323),
  ('JAJO', 'parroquia', 323),
  ('LA MESA', 'parroquia', 323),
  ('SANTIAGO', 'parroquia', 323),
  ('CABIMBU', 'parroquia', 323),
  ('TUÑAME', 'parroquia', 323);

--Parroquias del municipio Valera, Trujillo
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MERCEDES DIAZ', 'parroquia', 324),
  ('JUAN IGNACIO MONTILLA', 'parroquia', 324),
  ('LA BEATRIZ', 'parroquia', 324),
  ('MENDOZA', 'parroquia', 324),
  ('LA PUERTA', 'parroquia', 324),
  ('SAN LUIS', 'parroquia', 324);

-- Parroquias del municipio Aristides Bastidas, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN PABLO', 'parroquia', 325);

-- Parroquia del municipio Bolivar, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. AROA', 'parroquia', 326);

-- Parroquias del municipio Bruzual
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. CHIVACOA', 'parroquia', 327),
  ('CAMPO ELIAS', 'parroquia', 327);

-- Parroquias del municipio Cocorote, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. COCOROTE', 'parroquia', 328);

-- Parroquia del municipio Independencia, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. INDEPENDENCIA', 'parroquia', 329);

-- Parroquia del municipio Jose Antonio Paez, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SABANA DE PARRA', 'parroquia', 330);

-- Parroquia del municipio La Trinidad, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. BORAURE', 'parroquia', 331);

-- Parroquia del municipio MAnuel Monge, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. YUMARE', 'parroquia', 332);

-- Parroquias del municipio Nirgua, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. NIRGUA', 'parroquia', 333),
  ('SALOM', 'parroquia', 333),
  ('TEMERLA', 'parroquia', 333);

-- Parroquias del municipio Peña, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. YARITAGUA', 'parroquia', 334),
  ('SAN ANDRES', 'parroquia', 334);

-- Parroquias del municipio San Felipe
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. SAN FELIPE', 'parroquia', 335),
  ('ALBARICO', 'parroquia', 335),
  ('SAN JAVIER', 'parroquia', 335);

-- Parroquia del municipio Sucre, Yaracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. GUAMA', 'parroquia', 336);

-- PArroquia del municipio Urachiche, YAracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. URACHICHE', 'parroquia', 337);

-- Parroquias del municipio Veroes, YAracuy
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('CM. FARRIAR', 'parroquia', 338),
  ('EL GUAYABO', 'parroquia', 338);

-- Parroquias del municipio Almirante Padilla, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MONAGAS', 'parroquia', 339),
  ('ISLA DE TOAS', 'parroquia', 339);

-- Parroquias del municipio BAralt, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GENERAL URDANETA', 'parroquia', 340),
  ('LIBERTADOR', 'parroquia', 340),
  ('MANUEL GUANIPA MATOS', 'parroquia', 340),
  ('MARCELINO BRICEÑO', 'parroquia', 340),
  ('SAN TIMOTEO', 'parroquia', 340),
  ('PUEBLO NUEVO', 'parroquia', 340);

-- Parroquias del municipio Cabimas, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('AMBROSIO', 'parroquia', 341),
  ('GERMAN RIOS LINARES', 'parroquia', 341),
  ('JORGE HERNANDEZ', 'parroquia', 341),
  ('LA ROSA', 'parroquia', 341),
  ('PUNTA GORDA', 'parroquia', 341),
  ('CARMEN HERRERA', 'parroquia', 341),
  ('SAN BENITO', 'parroquia', 341),
  ('ROMULO BETANCOURT', 'parroquia', 341),
  ('ARISTIDES CALVANI', 'parroquia', 341);

-- PArroquias del municipio Catatumbo, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('UDON PEREZ', 'parroquia', 342),
  ('ENCONTRADOS', 'parroquia', 342);

-- Parroquias del municipio Colon, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SANTA CRUZ DEL ZULIA', 'parroquia', 343),
  ('URRIBARRI', 'parroquia', 343),
  ('MORALITO', 'parroquia', 343),
  ('SAN CARLOS DEL ZULIA', 'parroquia', 343),
  ('SANTA BARBARA', 'parroquia', 343);

-- Parroquias del municipio Francisco JAvier Pulgar, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SIMON RODRIGUEZ', 'parroquia', 344),
  ('CARLOS QUEVEDO', 'parroquia', 344),
  ('FRANCISCO J PULGAR', 'parroquia', 344);

-- PArroquias del municipio Guajira, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GOAJIRA', 'parroquia', 345),
  ('ELIAS SANCHEZ RUBIO', 'parroquia', 345),
  ('SINAMAICA', 'parroquia', 345),
  ('ALTA GUAJIRA', 'parroquia', 345);

-- Parroquias del municipio Jesus Enrique Lossada, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('JOSE RAMON YEPEZ', 'parroquia', 346),
  ('LA CONCEPCION', 'parroquia', 346),
  ('SAN JOSE', 'parroquia', 346),
  ('MARIANO PARRA LEON', 'parroquia', 346);

-- Parroquias del municipio Jesus Maria Semprun
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BARI', 'parroquia', 347),
  ('JESUS M SEMPRUN', 'parroquia', 347);

-- Parroquias del municipio La Cañada de Urdaneta
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ANDRES BELLO', 'parroquia', 348),
  ('POTRERITOS', 'parroquia', 348),
  ('EL CARMELO', 'parroquia', 348),
  ('CHIQUINQUIRA', 'parroquia', 348),
  ('CONCEPCION', 'parroquia', 348);

-- Parroquias del municipio Lagunillas
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('ELEAZAR LOPEZ C', 'parroquia', 349),
  ('ALONSO DE OJEDA', 'parroquia', 349),
  ('VENEZUELA', 'parroquia', 349),
  ('CAMPO LARA', 'parroquia', 349),
  ('LIBERTAD', 'parroquia', 349);

-- PArroquias del municipio Machiques de Perija, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('SAN JOSE DE PERIJA', 'parroquia', 350),
  ('BARTOLOME DE LAS CASAS', 'parroquia', 350),
  ('LIBERTAD', 'parroquia', 350),
  ('RIO NEGRO', 'parroquia', 350);

-- Parroquias del municipio Mara, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('LUIS DE VICENTE', 'parroquia', 351),
  ('RICAURTE', 'parroquia', 351),
  ('MONS.MARCOS SERGIO G', 'parroquia', 351),
  ('SAN RAFAEL', 'parroquia', 351),
  ('LAS PARCELAS', 'parroquia', 351),
  ('TAMARE', 'parroquia', 351),
  ('LA SIERRITA', 'parroquia', 351);

-- Parroquias del municipio Maracaibo, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('BOLIVAR', 'parroquia', 352),
  ('COQUIVACOA', 'parroquia', 352),
  ('CRISTO DE ARANZA', 'parroquia', 352),
  ('CHIQUINQUIRA', 'parroquia', 352),
  ('SANTA LUCIA', 'parroquia', 352),
  ('OLEGARIO VILLALOBOS', 'parroquia', 352),
  ('JUANA DE AVILA', 'parroquia', 352),
  ('CARACCIOLO PARRA PEREZ', 'parroquia', 352),
  ('IDELFONZO VASQUEZ', 'parroquia', 352),
  ('CACIQUE MARA', 'parroquia', 352),
  ('CECILIO ACOSTA', 'parroquia', 352),
  ('RAUL LEONI', 'parroquia', 352),
  ('FRANCISCO EUGENIO B', 'parroquia', 352),
  ('MANUEL DAGNINO', 'parroquia', 352),
  ('LUIS HURTADO HIGUERA', 'parroquia', 352),
  ('VENANCIO PULGAR', 'parroquia', 352),
  ('ANTONIO BORJAS ROMERO', 'parroquia', 352),
  ('SAN ISIDRO', 'parroquia', 352);

-- Parroquias del municipio Miranda, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('FARIA', 'parroquia', 353),
  ('SAN ANTONIO', 'parroquia', 353),
  ('ANA MARIA CAMPOS', 'parroquia', 353),
  ('SAN JOSE', 'parroquia', 353),
  ('ALTAGRACIA', 'parroquia', 353);

-- Parroquias del municipio Rosario de Perija, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('DONALDO GARCIA', 'parroquia', 354),
  ('SIXTO ZAMBRANO', 'parroquia', 354),
  ('EL ROSARIO', 'parroquia', 354);

-- Parroquia del municipio San Francisco, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('MARCIAL HERNANDEZ', 'parroquia', 355),
  ('FRANCISCO OCHOA', 'parroquia', 355),
  ('SAN FRANCISCO', 'parroquia', 355),
  ('EL BAJO', 'parroquia', 355),
  ('DOMITILA FLORES', 'parroquia', 355),
  ('LOS CORTIJOS', 'parroquia', 355);

-- Parroquias del municipio Santa Rita, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('PEDRO LUCAS URRIBARRI', 'parroquia', 356),
  ('SANTA RITA', 'parroquia', 356),
  ('JOSE CENOVIO URRIBARR', 'parroquia', 356),
  ('EL MENE', 'parroquia', 356);

-- PArroquias del municipio Simon Bolivar, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('RAFAEL MARIA BARALT', 'parroquia', 357),
  ('MANUEL MANRIQUE', 'parroquia', 357),
  ('RAFAEL URDANETA', 'parroquia', 357);

-- Parroquias del municipio Sucre, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('GIBRALTAR', 'parroquia', 358),
  ('HERAS', 'parroquia', 358),
  ('M.ARTURO CELESTINO A', 'parroquia', 358),
  ('ROMULO GALLEGOS', 'parroquia', 358),
  ('BOBURES', 'parroquia', 358),
  ('EL BATEY', 'parroquia', 358);

-- Parroquias del municipio Valmore Rodriguez, Zulia
INSERT INTO Lugar (lu_nombre, lu_tipo, fk_lu_id)
VALUES
  ('RAUL CUENCA', 'parroquia', 359),
  ('LA VICTORIA', 'parroquia', 359),
  ('RAFAEL URDANETA', 'parroquia', 359);

-- ################# MINERAL #######################
INSERT INTO MINERAL (min_nombre, min_medicion, min_formula_quimica, min_pureza_ideal, met_maleabilidad,
met_dureza, met_tipo_metal, nmet_aislante, min_tipo ) 
VALUES
  ('Oro', 'Quilates', 'Au', 99, 'Alta', 3, 'No Ferroso', NULL, 'Metalico'),

('Diamante', 'Quilates', 'C', 100, NULL, NULL, NULL, 'Electrico', 'No Metalico'),

('Hierro', 'Tonelada Metrica', 'Fe', 90, 'Media', 6, 'Ferroso', NULL, 'Metalico'),

('Bauxita', 'Tonelada Metrica', 'AI2O3', 50, NULL, NULL, NULL,'Termico', 'No Metalico'),

('Carbon', 'Tonelada Metrica', 'C', 70, NULL, NULL, NULL, 'Termico', 'No Metalico'),

('Manganeso', 'Tonelada Metrica', 'Mn', 99, 'Media', 7, 'Ferroso', NULL,'Metalico'),

('Niquel', 'Tonelada Metrica','Ni', 99, 'Media', 6, 'No Ferroso',NULL, 'Metalico'),

('Cobre','Tonelada Metrica','Cu', 99, 'Alta', 5, 'No Ferroso',NULL, 'Metalico'),

('Mercurio', 'Gramos', 'Hg', 99,'Alta',1, 'No Ferroso',NULL,'Metalico'),

('Plomo', 'Tonelada Metrica','Pb',99,'Alta', 2,'No Ferroso',NULL,'Metalico'),

('Plata','Gramos','Ag',99,'Alta',3,'No Ferroso',NULL,'Metalico'),

('Bario','Tonelada Metrica','Ba',95,'Media',2,'No Ferroso',NULL,'Metalico'),

('Calcio','Gramos','Ca',99,'Media',2,'No Ferroso',NULL,'Metalico'),

('Caolin','Tonelada Metrica','Al2Si2O5(OH)4',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Caliza','Tonelada Metrica','CaCO3',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Pirita','Tonelada Metrica','FeS2',90,'Baja',6,'Ferroso',NULL,'Metalico'),

('Talco','Tonelada Metrica','Mg3Si4O10(OH)2',90,NULL,NULL,NULL,'Termico','No Metalico'),

('Zinc','Tonelada Metrica','Zn',99,'Media', 2.5, 'No Ferroso',NULL, 'Metalico'),

('Cianita','Tonelada Metrica','Al2SiO5',95,NULL,NULL,NULL,'Electrico','No Metalico'),

('Dolomita','Tonelada Metrica','CaMg(CO3)2',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Titanio','Tonelada Metrica','Ti',99,'Alta',5,'No Ferroso',NULL,'Metalico'),

('Tungsteno','Tonelada Metrica','W',99,'Media',8,'No Ferroso',NULL,'Metalico'),

('Magnesio','Tonelada Metrica','Mg',99,'Baja',2,'No Ferroso',NULL,'Metalico'),

('Andalucita','Tonelada Metrica','Al2SiO5',95,NULL,NULL,NULL,'Electrico','No Metalico'),

('Antimonio','Tonelada Metrica','Sb',99,'Baja',3.5,'No Ferroso',NULL,'Metalico'),

('Cromo','Tonelada Metrica','Cr',99,'Media',6.5,'No Ferroso',NULL,'Metalico'),

('Asbesto','Tonelada Metrica','MG3Si2H4O9',90,NULL,NULL,NULL,'Termico','No Metalico'),

('Feldespato','Tonelada Metrica','XAlSiO8',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Arena','Tonelada Metrica','SiO2',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Cal','Tonelada Metrica','CaO',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Granito','Tonelada Metrica','XAlSiO8',92,NULL,NULL,NULL,'Termico','No Metalico'),

('Yeso','Tonelada Metrica','CaSO4·2H2O',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Arcilla','Tonelada Metrica','Al2O32SiO22H2O',90,NULL,NULL,NULL,'Termico','No Metalico'),

('Baritina','Tonelada Metrica','BaSO4',95,NULL,NULL,NULL,'Termico','No Metalico'),
	
('Bentonita','Tonelada Metrica','Al2Si3O10(OH)2nH2O',95,NULL,NULL,NULL,'Termico','No Metalico'),

('Azufre','Tonelada Metrica','S8',95,NULL,NULL,NULL,'Electrico','No Metalico');

--######################## HORARIOS ####################################

-- Lunes
INSERT INTO HORARIO (hor_dia, hor_entrada, hor_salida) VALUES
('Lunes', '08:00', '17:00'),
('Lunes', '09:00', '18:00'),
('Lunes', '10:00', '19:00'),
('Lunes', '11:00', '20:00');

-- Martes
INSERT INTO HORARIO (hor_dia, hor_entrada, hor_salida) VALUES
('Martes', '08:30', '17:30'),
('Martes', '09:30', '18:30'),
('Martes', '10:30', '19:30'),
('Martes', '11:30', '20:30');

-- Miercoles
INSERT INTO HORARIO (hor_dia, hor_entrada, hor_salida) VALUES
('Miercoles', '08:15', '17:15'),
('Miercoles', '09:15', '18:15'),
('Miercoles', '10:15', '19:15'),
('Miercoles', '11:15', '20:15');

-- Jueves
INSERT INTO HORARIO (hor_dia, hor_entrada, hor_salida) VALUES
('Jueves', '08:45', '17:45'),
('Jueves', '09:45', '18:45'),
('Jueves', '10:45', '19:45'),
('Jueves', '11:45', '20:45');

-- Viernes
INSERT INTO HORARIO (hor_dia, hor_entrada, hor_salida) VALUES
('Viernes', '08:30','16:00');

-- ################## TABLA RECURSO ###########
INSERT INTO RECURSO (tire_nombre) VALUES
 ('Vehiculo'),
 ('Registro'),
 ('Perforador'),
 ('Muestra'),
 ('Maquina');

INSERT INTO RECURSO_MATERIAL (re_nombre, re_descripcion, re_fk_tire_id) VALUES
	-- Recursos para maquina - 20 maquinas
	('Excavadora Minera','Gigantes de acero que excavan y cargan grandes cantidades de material',5),
	('Dragalina','Máquina excavadora de grandes dimensiones, útil en lugares inundados',5),
	('Pala Excavadora','Maquina autopropulsada que excava terrenos o carga materiales',5),
	('Jumbo Minero','Se encarga de la ejecución de trabajos de perforación',5),
	('Pala Cargadora Scoop','Carga, transporta y vierte tierra y/o roca',5),
	('Dumper','Contiene una tolva para cargar y transportar materiales con flexibilidad',5),
	('Bulldozer','Sirve para mover tierras empujándolas sobre el terreno',5),
	('Rozadora','Diseñada para la construcción de túneles',5),
	('Grúa de Levante','Utilizada para levantar y mover grandes estructuras o materiales',5),
	('Shotcrete','Material aplicado en forma líquida que se endurece rápidamente para proteger las paredes de las minas',5),
	('Cinta Transportadora','Se utiliza para mover materiales a lo largo de grandes distancias dentro de la mina',5),
	('Rotopala','máquina de producción continua',5),
	('Horno Eléctrico','Utilizado para la fundición de metales preciosos y semipreciosos',5),
	('Cargador Frontal','Equipado con una pala grande que se utiliza para cargar materiales en camiones o trenes',5),
	('Trituradora','Reducen el tamaño de los minerales al aplicar fuerza mecánica',5),
	('Molino','Se utilizan para moler y triturar los minerales para aumentar su superficie de contacto',5),
	('Calcinador','Se calientan los minerales para eliminar gases y humedad',5),
	('Reductor','Se utilizan para reducir el óxido metálico a metal mediante un agente reductor',5),
	('Refinador','Se emplean para purificar el metal y eliminar impurezas',5),
	('Alto horno','Se utiliza para unir y reducir minerales de hierro para hacer el proceso de fundición',5),
	--Vehiculos - 20 Vehiculos
	('Camion Minero Convencional','Ideal para operaciones a gran escala, con capacidad para cargar más de 400 toneladas métricas',1),
	('Camion Minero Fuera de Carretera','Equipado con neumáticos masivos y motores potentes para terrenos irregulares',1),
	('Camion Minero Electrico','Utiliza motores eléctricos y está alimentado por baterías o cables eléctricos',1),
	('Bus de transporte','para el traslado de trabajadores',1),
	('Camión Volquete','Utilizado para mover grandes cantidades de material extraído',1),
	('Camión Cisterna','Transporta líquidos como agua o combustible',1),
	('Motoniveladora','se utilizan en las operaciones de superficie alrededor de las minas para crear y mantener carreteras',1),
	('Montacargas','Vehículo industrial para levantar y mover cargas pesadas',1),
	('Camión Caterpillar','Camión de gran tamaño para el transporte de grandes volúmenes de material',1),
	('Camión Lectrahoul','Camión de gran tamaño para el transporte de grandes volúmenes de material',1),
	('Mixer','Camión mezclador que prepara y transporta concreto',1),
	('Camion Bajo Perfil','Para operaciones en espacios reducidos bajo tierra',1),
	('Minicargadora','Versátiles para múltiples tareas en espacios reducidos',1),
	('Camión de Acarreo','Vehículos robustos para el transporte de material extraído',1),
	('Cargador de ruedas','Para cargar y transportar materiales en la mina',1),
	('Tracto Camión','Camión diseñado para arrastrar remolques de carga pesada',1),
	('Semi trailer',' Camión de gran capacidad para el transporte de materiales',1),
	('Omnibus','Vehículo para el transporte colectivo de trabajadores',1),
	('Camioneta Pickup','Vehículo versátil para el transporte de personal y materiales ligeros dentro de la mina',1),
	('Camion de rescate','Especializados para situaciones de emergencia y rescate en la mina',1);

INSERT INTO ESTATUS (est_nombre, est_tipo) VALUES
	--Estatus de actividad
	('Pendiente','Actividad'),
	('Proceso','Actividad'),
	('Hecha','Actividad'),
	('Atrasada','Actividad'),
	--Estatus de empleado
	('Disponible','Empleado'),
	('Ocupado','Empleado'),
	('Vacaciones','Empleado'),
	--Estatus de recursos
	('Disponible','Recurso'),
	('Ocupado','Recurso'),
	--Estatus de Proyecto
	('Pendiente','Proyecto'),
	('Proceso','Proyecto'),
	('Terminado','Proyecto'),
	('Atrasado','Proyecto'),
	--Estatus de pozzo
	('Disponible','Pozo'),
	('Usado','Pozo'),
	--Estatus de solicitud
	('Pendiente','Solicitud'),
	('Revision','Solicitud'),
	('Atendida','Solicitud');

-- ################## CLIENTE ###############################

INSERT INTO CLIENTE (cl_identificacion, cl_p_nombre, cl_s_nombre, cl_p_apellido, cl_s_apellido, cl_telefono, cl_direccion, fk_lu_id)
 VALUES 
--AMAZONAS
('V115345678', 'Juan', 'José', 'Pérez', 'Gómez', '0412-1234567', 'Avenida Orinoco, Ciudad Bolívar', 1),
 ('V205987412', 'María', 'Luisa', 'Fernández', 'Rodríguez', '0416-7654321', 'Calle Principal, Puerto Ayacucho', 1),
('J119368545', 'Pedro', 'Enrique', 'Gutiérrez', 'Jiménez', '0424-9876543', 'Urbanización Las Palmas, San Carlos de Río Negro', 1),
 ('E835360447', 'Sofía', 'Alejandra', 'Ramírez', 'Vargas', '0418-5432109', 'Carretera Panamericana, Atures', 1),
 --ANZOATEGUI
('V123456789', 'Carlos', 'Andrés', 'Martínez', 'Herrera', '0414-2345678', 'Avenida Bolívar, Barcelona.', 2),
 ('J176543210', 'Gabriela', 'Alejandra', 'Sánchez', 'Ortiz', '0424-7654321', 'Calle Sucre Cantaura.', 2),
 ('E828765443', 'José', 'Enrique', 'Mendoza', 'Peña', '0416-0987654', 'Urbanización Los Olivos, Puerto La Cruz.', 2),
 ('V134567890', 'Ana', 'Lucía', 'Fernández', 'Díaz', '0412-3456789', 'Carretera El Tigre Puerto Píritu, El Tigre.', 2),
 --APURE
('J154321098', 'Marcos', 'Enrique', 'Gómez', 'Vargas', '0426-5432109', 'Avenida Páez, San Fernando de Apure.', 3),
('V145675891', 'Natalia', 'Alejandra', 'Rodríguez', 'Jiménez', '0414-4567890', 'Calle Bolívar, Guasdualito.', 3),
('E876545321', 'Jaime', 'Antonio', 'Hernández', 'Peña', '0424-8765432', 'Urbanización Los Laureles, Elorza', 3),
 ('J905756543', 'Ana', 'María', 'Castillo', 'Ramírez', '0416-9807654', 'Carretera Apure Cojedes, Muñoz.', 3),
-- ARAGUA
('V156789012', 'Ángel', 'José', 'Gutiérrez', 'Fernández', '0412-5678901', 'Avenida Carabobo, Maracay', 4),
 ('J121098765', 'Daniela', 'Alejandra', 'Martínez', 'Herrera', '0424-2109876', 'Calle Bolívar, La Victoria', 4),
('E865432109', 'Pedro', 'Enrique', 'Sánchez', 'Díaz', '0416-6543210', 'Urbanización Los Mangos, Turmero', 4),
('J187650321', 'María', 'Luisa', 'Rodríguez', 'Ortiz', '0414-8765032', 'Carretera Maracay Valencia, San Mateo', 4),
--BARINAS
('V192203835', 'Mateo', 'Emiliano', 'Aguirre', 'Jiménez', '0273-9632514', 'Urb. San Isidro, Calle 8, Casa 17, Barinas', 5),
 ('V241789632', 'Valeria', 'Gabriela', 'Rivas', 'Díaz', '0273-4178963', 'Av. Libertador, Edif. Barinas, Apto. 2A, Barinas', 5),
 ('V198741236', 'Isabella', 'Valentina', 'Suárez', 'Gómez', '0273-9874123', 'Urb. Los Andes, Calle 12, Casa 45, Barinas', 5),
 ('E8236987412', 'Emiliano', 'Sebastián', 'Rodríguez', 'Díaz', '0273-3698741', 'Av. Orinoco, Edif. Barinas, Apto. 9B, Barinas', 5),
--BOLIVAR
('V296325741', 'Thiago', 'Alejandro', 'Fernández', 'Rojas', '0285-9632574', 'Urb. Caura, Calle 5, Casa 19, Ciudad Bolívar', 6),
('V445121987', 'Sofía', 'Isabella', 'Gutiérrez', 'Pérez', '0285-4512198', 'Av. Orinoco, Edif. Bolívar, Apto. 3D, Ciudad Bolívar', 6),
 ('V172741236', 'Valentina', 'Isabella', 'Rojas', 'Gutiérrez', '0285-9874123', 'Urb. Las Palmas, Calle 9, Casa 27, Ciudad Bolívar', 6),
 ('E845698712', 'Alejandro', 'Mateo', 'Pérez', 'Hernández', '0285-4569871', 'Av. Piar, Edif. Bolívar, Apto. 6C, Ciudad Bolívar', 6),
--CARBOBO
 ('V185412369', 'Alejandro', 'Andrés', 'Pérez', 'Gutiérrez', '0241-8541236', 'Urb. Los Mangos, Calle 12, Casa 25, Valencia', 7),
('V174185296', 'Sofía', 'Isabela', 'Rodríguez', 'Acosta', '0241-7418529', 'Av. Bolívar, Edif. Carabobo, Apto. 4B, Valencia', 7),
('E863214789', 'Camila', 'Valentina', 'Hernández', 'Fernández', '0241-6321478', 'Urb. La Ceiba, Calle 6, Casa 32, Valencia', 7),
 ('J174125896', 'Lucas', 'Matías', 'Contreras', 'Rojas', '0241-7412589', 'Av. Universidad, Edif. Carabobo, Apto. 7D, Valencia', 7),
-- COJEDES
 ('V223145678', 'Julieta', 'Valentina', 'Guevara', 'Martínez', '0258-2314567', 'Urb. Las Flores, Calle 6, Casa 9, San Carlos', 8),
 ('V178452136', 'Thiago', 'Emiliano', 'Sánchez', 'Herrera', '0258-7845213', 'Av. Bolívar, Edif. Cojedes, Apto. 4B, San Carlos', 8),
('V141789632', 'Isabella', 'Sofía', 'Martínez', 'Ruiz', '0258-4178963', 'Urb. El Parque, Calle 3, Casa 11, San Carlos', 8),
 ('V768563214', 'Mateo', 'Emiliano', 'Vargas', 'Guzmán', '0258-7856321', 'Av. Páez, Edif. Cojedes, Apto. 2C, San Carlos', 8),
-- DELTA AMACURO
('V142641236', 'Gabriela', 'Valentina', 'Suárez', 'Gutiérrez', '0287-9874123', 'Av. Orinoco, Edif. Delta, Apto. 5C, Tucupita', 9),
 ('V145632187', 'Matías', 'Emiliano', 'Rodríguez', 'Hernández', '0287-4563218', 'Urb. Boca de Uracoa, Calle 7, Casa 14, Tucupita', 9),
 ('V152147896', 'Andrés', 'David', 'Gutiérrez', 'Álvarez', '0287-5214789', 'Urb. La Riviera, Calle 5, Casa 12, Tucupita', 9),
 ('V174125896', 'Isabela', 'Valentina', 'Rodríguez', 'Castillo', '0287-7412589', 'Av. Orinoco, Edif. Iguaná, Apto. 3D, Tucupita', 9),
 --DISTRITO CAPITAL
	 ('V112345678', 'María', 'Alejandra', 'Rodríguez', 'Gómez', '0212-1234567', 'Av. Libertador, Edif. Torre Norte, Piso 10, Caracas.', 10),
 	('V187654321', 'José', 'Luis', 'Hernández', 'Pérez', '0212-7654321', 'Calle El Paraíso, Casa 45, Chacao, Caracas.', 10),
	('V242680135', 'Ana', 'María', 'Fernández', 'Díaz', '0212-2468013', 'Urb. Las Mercedes, Edif. Mirador, Piso 6, Caracas.', 10),
 	('V197531486', 'Carlos', 'Andrés', 'González', 'Sánchez', '0212-9753148', 'Av. Francisco de Miranda, Edif. Parque Cristal, Piso 15, Caracas.', 10),
-- FALCON
 ('V252341678', 'Gabriela', 'Alejandra', 'Medina', 'Vargas', '0268-5234167', 'Urb. Paraíso, Calle 8, Casa 12, Punto Fijo', 11),
 ('V278921345', 'Emilio', 'Enrique', 'Rodríguez', 'Flores', '0268-7892134', 'Av. Intercomunal, Edif. Oasis, Apto. 5D, Coro', 11),
 ('V163789012', 'Rodrigo', 'Enrique', 'Peraza', 'Hernández', '0268-6378901', 'Urb. Las Acacias, Calle 5, Casa 20, Punto Fijo', 11),
 ('E885412369', 'Gabriela', 'Cristina', 'Márquez', 'Ramos', '0268-8541236', 'Av. Panamericana, Edif. Falcón, Apto. 3D, Coro', 11),
--GUARICO
('V224680136', 'Gabriela', 'Alejandra', 'Morales', 'Soto', '0246-2468013', 'Calle Bolívar, Urb. Las Delicias, San Juan de los Morros', 12),
('V197531487', 'Miguel', 'Ángel', 'Rodríguez', 'Díaz', '0246-9753148', 'Av. Libertador, Edif. Caroní, Piso 3, Calabozo', 12),
 ('V248219756', 'Valeria', 'Camila', 'Salazar', 'Molina', '0246-4821975', 'Calle Bolívar, Urb. Valle Encantado, San Juan de los Morros', 12),
 ('V163819274', 'Mateo', 'Alejandro', 'Fernández', 'Sánchez', '0246-6381927', 'Av. Libertador, Edif. Caroní, Piso 8, Calabozo', 12),
-- LARA
('V158951236', 'Catalina', 'Sofía', 'Reyes', 'Gómez', '0251-4895123', 'Urb. Santa Paula, Calle 12, Casa 7, Barquisimeto', 13),
('V244912345', 'Nicolás', 'Alejandro', 'Fernández', 'Morales', '0251-7891234', 'Av. Libertador, Edif. Carabobo, Piso 8, Barquisimeto', 13),
 ('V165941785', 'Isabella', 'Valentina', 'Gómez', 'Pérez', '0251-2694178', 'Av. Libertador, Urb. Santa Inés, Barquisimeto', 13),
 ('V258426139', 'Santiago', 'Alejandro', 'Vargas', 'Medina', '0251-5842613', 'Calle 19, Edif. Carabobo, Piso 6, Barquisimeto', 13),
--LA GUAIRA
 ('E878563214', 'Emilio', 'Alejandro', 'Fernández', 'Castillo', '0212-7856321', 'Urb. Playa Grande, Calle 2, Casa 5, Catia La Mar', 14),
 ('V145789632', 'Valentina', 'Julieta', 'Gómez', 'Vásquez', '0212-4578963', 'Av. Soublette, Edif. Vargas, Apto. 6C, Macuto', 14),
 ('V178965412', 'Sofía', 'Gabriela', 'Martínez', 'Jiménez', '0212-7896541', 'Urb. Playa Azul, Calle 3, Casa 8, Macuto', 14),
 ('V245632187', 'Mateo', 'Alejandro', 'Castillo', 'Vásquez', '0212-4563218', 'Av. Bolívar, Edif. Vargas, Apto. 4A, Catia La Mar', 14),
-- MERIDA
  ('V212345680', 'Sofía', 'Valentina', 'Pérez', 'Gómez', '0274-1234568', 'Calle Las Tapias, Urb. Pedregosa Alta, Mérida', 15),
 ('V287654323', 'Daniel', 'Alejandro', 'Fernández', 'Medina', '0274-7654322', 'Av. Las Americas, Edif. Torre Mirador, Piso 12, Mérida', 15),
 ('V215248963', 'Isabella', 'Valentina', 'Gómez', 'Pérez', '0274-1524896', 'Urb. Pedregosa Alta, Calle El Mirador, Casa 45, Mérida', 15),
('V184256139', 'Santiago', 'Alejandro', 'Vargas', 'Medina', '0274-8425613', 'Av. Las Americas, Edif. Torre Central, Piso 7, Mérida', 15),
--MIRANDA	 
('V132345679', 'Luisa', 'Gabriela', 'Martínez', 'Ramírez', '0212-1234568', 'Calle Principal, Urb. La Lagunita, Los Teques', 16),
 ('V187654322', 'Juan', 'Pablo', 'Gutiérrez', 'Jiménez', '0212-7654322', 'Av. Páez, Edif. Mirador, Piso 8, Guarenas', 16),
 ('V142197865', 'Vanessa', 'Carolina', 'Márquez', 'Díaz', '0212-4219786', 'Av. Páez, Urb. Terrazas del Ávila, Guatire', 16),
 ('V179136824', 'Julián', 'Enrique', 'Rodríguez', 'Gómez', '0212-7913682', 'Av. Intercomunal, Urb. Jesús Soto, Los Teques', 16),
--MONAGAS
('V132345670', 'Petra', 'Gabriela', 'Narcisa', 'Ramírez', '0414-1564468', 'Urb. Terrasur ', 17),
 ('V187654310', 'Bastardo', 'Diego', 'Jiménez', 'Jiménez', '0414-7434322', 'San Miguel, Maturin', 17),
 ('V142197850', 'Vanieslka', 'Carolina', 'Márquez', 'Díaz', '0416-4210086', 'Urb. Los Samanes, Maturin', 17),
 ('V179136810', 'Antonio', 'Yuriel', 'Rodríguez', 'De Marti', '0412-7003682', 'Urb. Los Samanes, Maturin', 17),
--NUEVA ESPARTA
('V192365147', 'María', 'Fernanda', 'Rodríguez', 'Gómez', '0295-9236514', 'Av. Alterna, Edif. Margarita, Apto. 3B, Porlamar', 18),
 ('E718451236', 'Andrés', 'Felipe', 'Jiménez', 'Ríos', '0295-7845123', 'Urb. Playa El Agua, Calle 5, Casa 12, Margarita', 18),
('V174185263', 'Carlos', 'Enrique', 'Gómez', 'Pérez', '0295-7418526', 'Urb. Playa El Tirano, Calle 3, Casa 9, Pampatar', 18),
('V196325147', 'Camila', 'Valentina', 'Rojas', 'Martínez', '0295-9632514', 'Av. Costanera, Edif. Margarita, Apto. 4A, La Asunción', 18),
-- PORTUGUESA
('V126412389', 'Valentina', 'Lucía', 'Contreras', 'Ramos', '0256-4561238', 'Urb. Tierra de Gracia, Calle 2, Casa 6, Acarigua', 19),
 ('V176857412', 'Sebastián', 'Alejandro', 'Díaz', 'Guzmán', '0256-9685741', 'Av. Libertador, Edif. Portuguesa, Apto. 7A, Guanare', 19),
 ('V297689632', 'Juliana', 'Valentina', 'Rodríguez', 'Fernández', '0256-4578963', 'Urb. Las Palmas, Calle 6, Casa 9, Acarigua', 19),
 ('V416325741', 'Thiago', 'Alejandro', 'Herrera', 'Morales', '0256-9632574', 'Av. Bolívar, Edif. Portuguesa, Apto. 5A, Guanare', 19),		 
--SUCRE
('V165874123', 'Luisa', 'Alejandra', 'Fernández', 'Castillo', '0293-6587412', 'Av. Cumaná, Edif. Sucre, Apto. 8D, Cumaná', 20),
('V241258963', 'Sebastián', 'Alejandro', 'Ramos', 'Díaz', '0293-4125896', 'Urb. La Tortuga, Calle 2, Casa 18, Cumaná', 20),
 ('V274123658', 'Javier', 'Alejandro', 'Sánchez', 'Díaz', '0293-7412365', 'Urb. Campeche, Calle 8, Casa 21, Cumaná', 20),
 ('V163258741', 'Sofía', 'Catalina', 'Rondón', 'Vargas', '0293-6325874', 'Av. Sucre, Edif. Miranda, Apto. 6B, Cumaná', 20),
-- TACHIRA
 ('V247859612', 'Lucía', 'Alejandra', 'Vivas', 'Méndez', '0276-4785961', 'Urb. Villa del Rosario, Calle 5, Casa 23, San Cristóbal', 21),
 ('V178951236', 'Matías', 'Enrique', 'Guzmán', 'Rojas', '0276-7895123', 'Av. Páez, Edif. Torre Norte, Apto. 7B, San Cristóbal', 21),
 ('V239162857', 'Sofía', 'Valentina', 'Rojas', 'Castillo', '0276-3916285', 'Av. Los Próceres, Urb. San Cristóbal, San Cristóbal', 21),
 ('V184612957', 'Andrés', 'Alejandro', 'Gutiérrez', 'Hernández', '0276-8461295', 'Calle Bolívar, Edif. Torre Sur, Apto. 17B, San Cristóbal', 21),
 -- TRUJILLO
('V269847125', 'Emma', 'Valentina', 'Ramírez', 'Álvarez', '0272-6984712', 'Urb. Los Andes, Calle 9, Casa 41, Valera', 22),
('V167125896', 'Benjamín', 'Alejandro', 'Suárez', 'Castillo', '0272-4712589', 'Av. Bolívar, Edif. Trujillo, Apto. 3C, Trujillo', 22),
 ('V156792851', 'Valeria', 'Camila', 'Salazar', 'Molina', '0272-4679285', 'Av. Bolívar, Urb. Los Alpes, Valera', 22),
 ('V245616258', 'Mateo', 'Alejandro', 'Fernández', 'Sánchez', '0272-7941625', 'Calle 5, Edif. Caroní, Piso 3, Trujillo', 22),
-- YARACUY
  ('V141258963', 'Isabella', 'Sofía', 'Jiménez', 'Suárez', '0254-4125896', 'Urb. Las Palmas, Calle 4, Casa 18, San Felipe', 23),
 ('V169875412', 'Mateo', 'Alejandro', 'Vásquez', 'Rincón', '0254-6987541', 'Av. Lara, Edif. Yaracuy, Apto. 2C, San Felipe', 23),
 ('V274185296', 'Valeria', 'Juliana', 'Reyes', 'Gómez', '0254-7418529', 'Urb. Los Naranjos, Calle 8, Casa 14, San Felipe', 23),
('V196325148', 'Emiliano', 'Alejandro', 'Cordero', 'Pérez', '0254-9632514', 'Av. Vargas, Edif. Yaracuy, Apto. 6B, San Felipe', 23),
-- ZULIA
 ('V127395864', 'Gabriela', 'Alejandra', 'Morales', 'Olivares', '0261-2739586', 'Av. 5 de Julio, Urb. El Milagro, Maracaibo', 24),
 ('V251837642', 'Javier', 'Enrique', 'Ramírez', 'Pérez', '0261-5183764', 'Calle 72, Edif. Los Almendros, Apto. 4B, Maracaibo', 24),
('V292814765', 'Manuela', 'Sofía', 'Ramos', 'Herrera', '0261-9281476', 'Urb. La Lago, Calle 72, Casa 15, Maracaibo', 24),
 ('V136795412', 'Sebastián', 'Emiliano', 'Díaz', 'Contreras', '0261-3679541', 'Av. 5 de Julio, Edif. Panorama, Apto. 9C, Maracaibo', 24);

-- ################### EMPLEADO ######################

INSERT INTO EMPLEADO (emp_identificacion, emp_p_nombre, emp_s_nombre, emp_p_apellido, emp_s_apellido, emp_telefono, emp_direccion, emp_fk_lu_id)
VALUES
('V123789875', 'Juan', 'Maria', 'Perez', 'Marotta', '0212-1234567', 'Calle 1 Arturo Celestino.', 24),
('V116313035', 'Maria', 'Sophia', 'Garcia', 'Garmendia', '0212-7654321', 'Avenida 7 Urb. Los Chorros.', 16),
('V789678985', 'Pedro', 'José', 'González', 'Linares', '0248-1234567', 'Calle Bolivar Cagua.',4 ),
('V109077735', 'Ana', 'Valentina', 'Lopez', 'Kakalanos', '0414-1534567', 'Barrio El Carmen Maracay.', 4),
('V145343567', 'Jose', 'Ignacio', 'Rodriguez', 'Lopez', '0261-1534467', 'Urbanización La Delicia Valencia.', 7),
('V166633346', 'Carmen', 'Leticia', 'Flores', 'Marcano', '0295-1434567', 'Avenida Libertador Barquisimeto.', 13),
('E842565985', 'Luis', 'Beltran', 'Mendez', 'Kouri', '0281-1234447', 'Calle Miranda Urbanización La Mata Maturín.', 17),
('J122785546', 'Sofia', 'Paola', 'Silva', 'Ascanio', '0251-2564567', 'Avenida Belgrano Maracaibo.', 24),
('V120900780', 'David', 'Leandro', 'Campos', 'Hernandez', '0294-1234678', 'Calle Carabobo Puerto Ordaz.', 6),
('V179775356', 'Andrea', 'Isabella', 'Romero', 'Fernandez', '0286-7811248', 'Avenida Universidad Los Caobos San Antonio.', 16),
('E896674565', 'Francisco', 'Ignacio', 'Bravo', 'Perotto', '0212-1458567', 'Calle Sucre Edificio Otoman, Caracas.', 10),
('V129923456', 'Isabel', 'Victoria', 'Morales', 'Cruz', '0212-7654321', 'Avenida Venezuela con Cruce Av Buenos Aires Caracas.', 10),
('J113546789', 'Roberto', 'Antonio', 'Sanchez', 'Gondar', '0248-1234567', 'Calle Vargas Barrio Sofia Aponte La Victoria.', 4),
('V111547529', 'Gloria', 'Romina', 'Ramirez', 'Galiñanes', '0414-1234567', 'Barrio 23 de Enero Maracay.', 4),
('V122987765', 'Raul', NULL, 'Perez', 'Duran', '0261-1234567', 'Urbanizacion La California Valencia.', 7),
('V128312556', 'Alejandra', 'Barbara', 'Gutierrez', 'Berroteran', '0295-1234567', 'Avenida Morazan, Barquisimeto.', 13),
('V199857763', 'Carlos', 'Felipe', 'Montero', 'Martinez', '0281-1234567', 'Calle Guzman Sucre Los Aviadores Maturin.', 17),
('V175823654', 'Maria', 'Gabriela', 'Rodriguez', 'Lopez', '0212-1234567', 'Calle Páez edificio Washington El Paraíso.', 10),
('J159822224', 'José', 'Antonio', 'Gonzalez', 'Perez', '0212-7654321', 'Avenida Libertador Perez Catia.', 10),
('J120097556', 'Ana', 'Isabel', 'Garcia', 'Millan', '0248-1234567', 'Calle Miranda Maracay Norte.', 4),
('V111131986', 'Carlos', 'Alberto', 'Lopez', 'Mendez', '0414-1234567', 'Urbanización La Coromoto Maracay.', 4),
('J154256774', 'Luis', 'Miguel', 'Romero', 'Blanco', '0261-1234567', 'Avenida Bolívar San Diego.', 7),
('V128835673', 'Francisco', 'Javier', 'Bravo', 'Silva', '0295-1234567', 'Calle Vargas con Francisco Fajardo Cabudare.', 13),
('V116532964', 'Rafael', 'Alejandro', 'Morales', 'Gonzalez', '0281-1234567', 'Urbanización La Esperanza Maturín.', 17),
('V177853292', 'Juan', 'Carlos', 'Perez', 'Lopez', '0251-1234567', 'Avenida Don Julio Centeno Maracaibo.', 24),
('J156663778', 'Diego', 'José', 'Sanchez', 'Garcia', '0294-1234567', 'Calle El Callao Puerto Ordaz.', 4),
('V198567754', 'Miguel', 'Angel', 'Ramirez', 'Rodriguez', '0286-1234567', 'Avenida Bolivar Puerto La Cruz.', 2),
('E897265278', 'Pedro', 'Luis', 'Gutierrez', 'Montero', '0212-1234567', 'Calle Colombia El Silencio.', 10),
('V109056773', 'Jesus', 'Maria', 'Vasquez', 'Perez', '0212-7654321', 'Avenida Sucre Los Chaguaramos.', 10),
('V120673003', 'Eduardo', 'Rafael', 'Lopez', 'Mendez', '0248-1234567', 'Calle El Tamarindo Redoma 8 La Victoria.', 4),
('V151632304', 'Jose', 'Gregorio', 'Garcia', 'Blanco', '0414-1234567', 'Urbanización La Morita Maracay.', 4),
('V122987678', 'Luis', 'David', 'Romero', 'Silva', '0261-1234567', 'Avenida Cedeño Barrio Tomás San Diego.', 7),
('J142456789', 'Alberto', 'Enrique', 'Bravo', 'Gonzalez', '0295-1234567', 'Calle 23 Barrio La boyera.', 9),
('J121326987', 'Alejandro', 'Francisco', 'Morales', 'Lopez', '0281-1234567', 'Urbanización Palo Seco.', 12),
('V135515250', 'Ricardo', 'Jesus', 'Perez', 'Garcia', '0251-1234567', 'Avenida Bella Vista con Calle Las Acacias.',22 ),
('V129922756', 'Andrea', NULL, 'Rodriguez', 'Bustillos', '0212-5679670', 'Calle Principal La Buena Vista Urb. El Marques.',21 ),
('J120636905', 'Carlos', 'Eduardo', 'Gonzalez', 'Lopez', '0212-7654321', 'Avenida Andrés Bello Calle Pequón.', 16),
('J197895774', 'Maria', 'Gabriela', 'Garcia', 'Millan', '0248-4619587', 'Calle Páez Urbanización La Florida.', 18),
('V146994773', 'Luis', 'Miguel', 'Lopez', 'Mendez', '0414-2502878', 'Urbanización La Coromoto, Maracay.', 4),
('V153536077', 'Francisco', 'Javier', 'Romero', 'Blanco', '0261-1279874', 'Avenida San Diego Calle Los Ocumitos.', 11);

-- ############################## EMPLEADO Y SU HORARIO #############################

INSERT INTO HORARIO_EMPLEADO (horem_fk_emp_identificacion,horem_fk_hor_id ) VALUES
	('V123789875',1),
	('V123789875',9),
	('V123789875',17),
	('V123789875',14),
	--
	('V116313035',2),
	('V116313035',5),
	('V116313035',12),
	('V116313035',16),
	--
	('V109077735',3),
	('V109077735',6),
	('V109077735',11),
	('V109077735',17),
	--
	('V145343567',2),
	('V145343567',7),
	('V145343567',12),
	('V145343567',16),
	--
	('V166633346',1),
	('V166633346',10),
	('V166633346',14),
	('V166633346',17),
	--
	('E842565985',3),
	('E842565985',5),
	('E842565985',9),
	--
	('J122785546',1),
	('J122785546',5),
	('J122785546',8),
	('J122785546',17),
	--
	('V120900780',4),
	('V120900780',7),
	('V120900780',11),
	('V120900780',17),
	--
	('V179775356',4),
	('V179775356',6),
	('V179775356',10),
	('V179775356',15),
	--
	('E896674565',3),
	('E896674565',16),
	('E896674565',17),
	--
	('V129923456',2),
	('V129923456',6),
	('V129923456',12),
	('V129923456',16),
	--
	('J113546789',1),
	('J113546789',8),
	('J113546789',15),
	--
	('V111547529',4),
	('V111547529',8),
	('V111547529',13),
	('V111547529',17),
	--
	('V122987765',3),
	('V122987765',6),
	('V122987765',12),
	('V122987765',16),
	--
	('V128312556',2),
	('V128312556',6),
	('V128312556',10),
	--
	('V199857763',9),
	('V199857763',14),
	('V199857763',17),
	--
	('V175823654',10),
	('V175823654',13),
	('V175823654',17),
	--
	('J159822224',11),
	('J159822224',15),
	('J159822224',17),
	--
	('J120097556',12),
	('J120097556',16),
	('J120097556',17),
	--
	('V111131986',1),
	('V111131986',5),
	('V111131986',9),
	--
	('J154256774',2),
	('J154256774',6),
	('J154256774',10),
	--
	('V128835673',3),
	('V128835673',7),
	('V128835673',11),
	
	('V116532964',4),
	('V116532964',8),
	('V116532964',12),
	
	('V177853292',5),
	('V177853292',9),
	('V177853292',13),
	--
	('J156663778',6),
	('J156663778',10),
	('J156663778',14),
	--
	('V198567754',7),
	('V198567754',11),
	('V198567754',15),
	--
	('E897265278',8),
	('E897265278',12),
	('E897265278',16),
	--
	('V109056773',4),
	('V109056773',9),
	('V109056773',17),
	
	('V120673003',4),
	('V120673003',10),
	('V120673003',17),
	
	('V151632304',3),
	('V151632304',11),
	('V151632304',17),
	
	('V122987678',5),
	('V122987678',13),
	('V122987678',17),
	--
	('J142456789',5),
	('J142456789',13),
	('J142456789',17),
	--
	('J121326987',5),
	('J121326987',14),
	('J121326987',17),
	--
	('V135515250',6),
	('V135515250',14),
	('V135515250',17),
	--
	('V129922756',6),
	('V129922756',14),
	('V129922756',17),
	--
	('J120636905',7),
	('J120636905',15),
	('J120636905',17),
	--
	('J197895774',7),
	('J197895774',14),
	('J197895774',17),
	--
	('V146994773',4),
	('V146994773',6),
	('V146994773',17),
	--
	('V153536077',3),
	('V153536077',8);

--######################### CARGOS #########################################

INSERT INTO CARGO (carg_nombre, carg_descripcion) VALUES
 ('Geólogo I', 'Estudia la Tierra y sus procesos, desde la superficie hasta el núcleo'),
 ('Geólogo II', 'Estudia la Tierra y sus procesos, desde la superficie hasta el núcleo'),
 ('Geólogo III', 'Estudia la Tierra y sus procesos, desde la superficie hasta el núcleo'),
 ('Ayudante de campaña', 'Asiste en las tareas de campo durante el reconocimiento geológico.'),
 ('Chofer', 'Conductor de vehículos para el equipo de campo.'),
 ('Muestrero', 'Encargado de recolectar muestras en el campo.'),
 ('Técnico de análisis', 'Apoya en el análisis de las muestras recolectadas.'),
 ('Portamiras', 'Asiste en el levantamiento topográfico y geológico.'),
 ('Cocinero', 'Prepara alimentos para el equipo de campo.'),
 ('supervisor de perforaciones', 'Supervisa las operaciones de perforación.'),
 ('Perforista', 'Opera las máquinas de perforación.'),
 ('Ayudante de perforaciones', 'Asiste en las operaciones de perforación.'),
 ('Jefe de proyecto', 'Lidera y gestiona el proyecto completo.'),
 ('Lider de Mina', 'Coordina las actividades generales del proyecto como sub jefe.'),
 ('Supervisor de campo', 'Supervisa las actividades en el campo.'),
 ('Consultor del proyecto', 'Evalúa y asesora en aspectos técnicos y económicos del proyecto.'),
 ('Obrero', 'Trabajador que realiza labores manuales'),
 ('Secretaria','Asistente administrativo'),
 ('Dibujante', 'crear dibujos y planos precisos'),
 ('Topografo',' profesional especializado en la medición y representación de la superficie terrestre'),
 ('Tecnico cartografia', ' especializado en la creación y el manejo de mapas y planos'),
 ('Tecnico fotogrametría', ' se dedica al estudio y procesamiento de fotografías aéreas o imágenes satelitales para obtener información métrica precisa de la superficie terrestre');

-- ############################ ALIADOS COMERCIALES ##########################################

INSERT INTO ALIADO_COMERCIAL ( ali_RIF, ali_nombre, ali_direccion, ali_fecha_creacion, ali_capital, ali_num_telefono, ali_descripcion, fk_lu_id ) 
VALUES 
 ( 'J2310001238', 'Minera Amazonas', 'Municipio Autónomo Alto Orinoco, Puerto Ayacucho, Amazonas', '2022-06-17', 3000000.00, '0283-1234567', 'Empresa dedicada a la extracción de oro en Amazonas.', 1 ),
 ( 'J1590004598', 'Minerales Amazonas', 'Municipio Autónomo Atabapo, San Fernando de Atabapo, Amazonas', '2015-02-20', 2500000.00, '0284-7654321', 'Empresa dedicada a la extracción de diamantes en Amazonas.', 1 ),
 ( 'J1100001240', 'Industrias Mineras Anzoátegui', 'Zona Industrial Barcelona, Barcelona, Anzoátegui', '2004-09-17', 4000000.00, '0281-1234567', 'Empresa dedicada a la minería en Anzoátegui.', 2 ),
 ( 'J1250001241', 'Mineria Anzoátegui', 'Avenida Arismendi, Lechería, Anzoátegui', '2009-06-17', 3000000.00, '0282-7654321',NULL, 2),
 ( 'J1991001242', ' MinerApure', 'Hato El Rincón, Biruaca, Apure', '1992-01-12', 5000000.00, '0257-1234567', NULL, 3 ),
 ( 'J0000001243', 'MinVen Apure', 'Zona Industrial Guasdualito, Guasdualito, Apure', '1998-02-27', 4000000.00, '0256-7654321', NULL, 3 ),
 ( 'J0000005897', 'CVG Aragua', 'Calle Principal, Maracay, Aragua', '2006-06-17', 1000000.00, '0241-1234567', 'Empresa en Aragua, con más de 15 años en el país.', 4),
 ( 'J1000002992', 'MinerAragua', 'Avenida Libertador, San Mateo, Aragua', '2002-09-14', 500000.00, '0243-7654321', 'Minería segura para todos .', 4 ),
 ( 'J1560201244', 'Minbarina', 'Campo Petrolero Las Moritas, Barinas, Barinas', '2001-02-10', 6000000.00, '0273-1234567', 'Empresa dedicada a la extracción de Oro.', 5),
 ( 'J1690001215', 'Minerubi', 'Avenida Bolívar, Barinas, Barinas', '1984-01-17', 5000000.00, '0274-7654321', NULL, 5),
 ( 'J1200002874', 'CVG Industria Venezolana de Aluminio', 'Av. Fuerzas Armadas - Zona Industrial Matanzas. Puerto Ordaz ', '1978-06-10', 7000000.00, '0289-1234567', 'Empresa dedicada a la extracción de oro en Bolívar.', 6),
 ( 'J1580001247', 'Minerboli', 'Municipio Autónomo Cedeño, Caicara del Orinoco, Bolívar', '2012-04-06', 6000000.00, '0288-7654321', 'Empresa dedicada a la extracción de coltán en Bolívar.', 6 ),
 ( 'J6980005841', 'Minería Carabobo', 'Sector La Morita, Mariara, Carabobo', '2020-01-08', 5000000.00, '0241-1234567', 'Empresa dedicada a la extracción de bauxita.',7),
 ( 'J0000001249', 'Minería Carabobo 2', 'Sector La California, San Diego, Carabobo', '1960-06-06', 4000000.00, '0242-7654321', 'Empresa dedicada a la extracción de caliza.', 7),
 ( 'J2480001250', 'Minería Cojedes', 'Municipio Autónomo Rómulo Gallegos, San Juan de los Morros, Cojedes', '2002-10-29', 3000000.00, '0258-1234567', 'Empresa dedicada a la extracción de arena en Cojedes.', 8 ),
 ( 'J1110005252', 'Minería Tinaquillo', 'Municipio Autónomo Tinaquillo, Tinaquillo, Cojedes', '2004-01-21', 2000000.00, '0259-7654321', 'Empresa dedicada a la extracción de arcilla en Cojedes.', 8 ),
 ( 'J1587000136', 'Minería Delta Amacuro', 'Municipio Autónomo Antonio Díaz, San José de Buja, Delta Amacuro', '2014-03-17', 1500000.00, '0296-1234567', 'Empresa dedicada a la extracción de oro en Delta Amacuro.', 9),
 ( 'J0000001258', 'Minería ElDelta', 'Municipio Autónomo Pedernales, Pedernales, Delta Amacuro', '2009-09-17', 1000000.00, '0297-7654321', 'Empresa dedicada a la extracción de diamantes en Delta Amacuro.', 9),
 ( 'J0000001259', 'MinerUcab', 'Cotiza, Caracas, Distrito Capital', '2007-01-12', 2500000.00, '0212-1234567', null, 10 ),
 ( 'J0000001260', 'Minería Urbana Distrito Capital', 'El Cementerio, Caracas, Distrito Capital', '1998-08-17', 2000000.00, '0212-7654321',NULL, 10 ),
 ('J1569001261', 'Minería Falcón', 'Municipio Autónomo Miranda, Coro, Falcón', '1994-01-07', 3000000.00, '0250-1234567', 'Empresa dedicada a la extracción de caliza en Falcón.', 11 ),
 ( 'J1500801262', 'Yesos Falcón', 'Municipio Autónomo Carirubana, Punto Fijo, Falcón', '2003-02-25', 2500000.00, '0251-7654321', 'Empresa dedicada a la extracción de yeso en Falcón.', 11),
 ( 'J1890001263', 'Minería Guárico', 'Municipio Autónomo Camaguán, San Juan de los Morros, Guárico', '2004-04-17', 2000000.00, '0236-1234567', 'Empresa dedicada a la extracción de arena sílice en Guárico.', 12), 
 ( 'J1450002995', 'ArciGuarico', 'Municipio Autónomo Valle de la Pascua, Valle de la Pascua, Guárico', '1969-02-20', 1500000.00, '0236-7654321', 'Empresa dedicada a la extracción de arcilla en Guárico.', 12 ),
 ( 'J1890007895', 'Minería Lara', 'Municipio Autónomo Iribarren, Barquisimeto, Lara', '2006-01-19', 4000000.00, '0251-1234567', 'Empresa dedicada a la extracción de oro en Lara.', 13 ),
 ('J2680001267', 'MinerLara', 'Municipio Autónomo Jiménez, Quibor, Lara', '2005-07-27', 3500000.00, '0252-7654321', 'Empresa dedicada a la extracción de Oro', 13 ),
 ('J1320001268', 'Minería La Guaira', 'Municipio Autónomo Vargas, La Guaira, La Guaira', '2006-01-23', 2000000.00, '0233-1234567', 'Empresa dedicada a la extracción de arena sílice en La Guaira.', 14 ),
 ('J1520001269', 'La Guairita', 'Municipio Autónomo Vargas, Maiquetía, La Guaira', '2014-12-17', 1500000.00, '0233-7874321', NULL, 14 ),
 ('J2650005870', 'Minería Mérida', 'Municipio Autónomo Libertador, Mérida, Mérida', '2007-12-09', 2500000.00, '0274-1234567', 'Empresa dedicada a la extracción de mármol en Mérida.', 15 ),
 ('J2992001271', 'Merimineral', 'Municipio Autónomo Rangel, Mucuchíes, Mérida', '2009-02-11', 2000000.00, '0274-7654321', 'Empresa dedicada a la extracción de granito en Mérida.', 15 ),
 ('J1268001852', 'Minería Miranda', 'Municipio Autónomo Chacao, Chacao, Miranda', '2004-09-17', 3000000.00, '0212-1237867', 'Empresa dedicada a la extracción de arena en Miranda.', 16),
 ( 'J2580001274', 'Mirandina', 'Municipio Autónomo Zamora, Guatire, Miranda', '2002-08-20', 2000000.00, '0212-7812567', 'Empresa dedicada a la extracción de arcilla en Miranda.', 16 ),
 ( 'J1212001585', 'Minería Monagas', 'Municipio Autónomo Maturín, Maturín, Monagas', '2014-06-28', 2500000.00, '0292-2987567', 'Empresa dedicada a la extracción de bauxita en Monagas.', 17), 
 ( 'J0000001276', 'MinerMonagas', 'Municipio Autónomo Libertador, Caripito, Monagas', '2013-02-07', 2000000.00, '0292-7814321', 'Empresa dedicada a la extracción de oro en Monagas.', 17),
 ( 'J0000001277', 'Minería Nueva Esparta', 'Municipio Autónomo Arismendi, Porlamar, Nueva Esparta', '2018-06-17', 3000000.00, '0292-1234567', 'Empresa dedicada a la extracción de caliza en Nueva Esparta.', 18), 
 ( 'J0000001278', 'Minería Nueva Esparta 2', 'Municipio Autónomo Maneiro, Pampatar, Nueva Esparta', '2013-06-17', 2500000.00, '0292-7654321', 'Empresa dedicada a la extracción de arena sílice en Nueva Esparta.', 18),
 ( 'J1690001244', 'PortuOro', 'Municipio Autónomo Guanare, Guanare, Portuguesa', '1984-10-10', 2000000.00, '0257-1234567', 'Empresa dedicada a la extracción de Oro en Portuguesa.', 19 ),
 ( 'J1350005890', 'Minería Portuguesa', 'Municipio Autónomo Biruaca, Biruaca, Portuguesa', '1984-02-17', 1500000.00, '0257-7654321', 'Empresa dedicada a la extracción de arena Bauxita.', 19),
 ( 'J1680001281', 'MingenSu', 'Municipio Autónomo Cumaná, Cumaná, Sucre', '03-05-1969', 2500000.00, '0291-4598567',NULL, 20 ),
 ( 'J2500005841', 'Subauxita', 'Municipio Autónomo Andrés Mata, San Cristóbal, Sucre', '2002-04-09', 2000000.00, '0291-7658741', NULL, 20 ),
 ( 'J2130005841', 'TachiIndustrial', 'Municipio Autónomo San Cristóbal, San Cristóbal, Táchira', '2006-08-27', 3000000.00, '0276-7811248', NULL, 21 ), 
 ( 'J1585076312', 'MinerGochos', 'Municipio Autónomo Andrés Bello, Cordero, Táchira', '1976-12-12', 2500000.00, '0276-7654321',NULL, 21 ),
 ( 'J2992251275', 'MinerTruji', 'Municipio Autónomo Valera, Valera, Trujillo', '06-09-2003', 2000000.00, '0271-4618667', 'Empresa dedicada y responsable en el país.', 22),
 ( 'J1353641286', 'FundiVen', 'Municipio Autónomo Boconó, Boconó, Trujillo', '2001-12-01', 1500000.00, '0271-7816670', NULL, 22 ),
 ( 'J1110007889', 'Yaracimiento', 'Municipio Autónomo San Felipe, San Felipe, Yaracuy', '29-06-1985', 2500000.00, '0253-1234567',NULL, 23), 
 ( 'J1354871290', 'Minería Yaracuy', 'Municipio Autónomo Nirgua, Nirgua, Yaracuy', '2020-06-17', 2000000.00, '0254-7524721',null, 23),
 ( 'J1163151220', 'Minería Zulia', 'Municipio Autónomo Maracaibo, Maracaibo, Zulia', '1950-06-18', 3500000.00, '0261-1234567',null, 24), 
 ( 'J5890001288', 'MinerVen', 'Municipio Autónomo Cabimas, Cabimas, Zulia', '2015-06-17', 3000000.00, '0261-8974321', null, 24);

-- ################## CARGO_EMPLEADO #######################################

INSERT INTO CARGO_EMPLEADO (caem_fk_emp_identificacion, caem_fk_carg_id, caem_fecha_ini) 
VALUES 
('V123789875',1,'1983-07-12'),
('V116313035',2,'1987-03-22'),
('V789678985',3,'1980-11-05'),
('V109077735',5,'1989-06-01'),
('V145343567',5,'2002-06-18'),
('V166633346', 5,'1993-02-17'),
('E842565985',1,'1996-08-29'),
('J122785546',4,'2001-04-13'),
('V120900780',4,'2003-12-25'),
('V179775356',4,'2005-09-30'),
('E896674565',2,'2010-06-21'),
('V129923456',7,'2012-01-11'),
('J113546789',7,'2014-07-03'),
('V111547529',6,'2016-03-15'),
('V122987765',6,'2017-10-27'),
('V128312556',6,'2019-05-09'),
('V199857763',6,'2021-12-20'),
('V175823654',8,'2023-08-04'),
('J159822224',8,'2004-02-01'),
('J120097556',8,'2011-12-08'),
('V111131986',8,'2015-04-02'),
('J154256774',9,'2013-08-20'),
('V128835673',9,'2018-11-13'),
('V116532964',9,'2020-07-25'),
('V177853292',13,'1982-03-07'),
('J156663778',13,'1982-03-07'),
('V198567754',13,'1982-03-07'),
('E897265278',13,'2017-05-03'),
('V109056773',13,'2016-03-02'),
('V120673003',17,'2014-07-16'),
('V151632304',17,'2014-07-16'),
('V122987678',17,'2014-07-16'),
('J142456789',17,'2014-07-19'),
('J121326987',17,'2014-07-16'),
('V135515250',17,'2014-07-08'),
('V129922756',17,'2014-07-16'),
('J120636905',17,'2014-07-04'),
('J197895774',17,'2014-07-13'),
('V146994773',16,'2014-02-13'),
('V153536077',14,'2014-04-25');

-- #################### ESTATUS PARA EMPLEADO Y RECURSO_MATERIAL

-- EMPLEADOS
INSERT INTO ESTATUS_EMPLEADO (esem_fk_est_id, esem_fk_caem_id ,esem_fk_caem_emp_identificacion, esem_fk_caem_carg_id, esem_fecha_ini) 
VALUES 
(5,1,'V123789875',1,'1983-07-12'),
(5,2,'V116313035',2,'1987-03-22'),
(5,3,'V789678985',3,'1980-11-05'),
(5,4,'V109077735',5,'1989-06-01'),
(5,5,'V145343567',5,'2002-06-18'),
(5,6,'V166633346', 5,'1993-02-17'),
(5,7,'E842565985',1,'1996-08-29'),
(5,8,'J122785546',4,'2001-04-13'),
(5,9,'V120900780',4,'2003-12-25'),
(5,10,'V179775356',4,'2005-09-30'),
(5,11,'E896674565',2,'2010-06-21'),
(5,12,'V129923456',7,'2012-01-11'),
(5,13,'J113546789',7,'2014-07-03'),
(5,14,'V111547529',6,'2016-03-15'),
(5,15,'V122987765',6,'2017-10-27'),
(5,16,'V128312556',6,'2019-05-09'),
(5,17,'V199857763',6,'2021-12-20'),
(5,18,'V175823654',8,'2023-08-04'),
(5,19,'J159822224',8,'2004-02-01'),
(5,20,'J120097556',8,'2011-12-08'),
(5,21,'V111131986',8,'2015-04-02'),
(5,22,'J154256774',9,'2013-08-20'),
(5,23,'V128835673',9,'2018-11-13'),
(5,24,'V116532964',9,'2020-07-25'),
(5,25,'V177853292',13,'1982-03-07'),
(5,26,'J156663778',13,'1982-03-07'),
(5,27,'V198567754',13,'1982-03-07'),
(5,28,'E897265278',13,'2017-05-03'),
(5,29,'V109056773',13,'2016-03-02'),
(5,30,'V120673003',17,'2014-07-16'),
(5,31,'V151632304',17,'2014-07-16'),
(5,32,'V122987678',17,'2014-07-16'),
(5,33,'J142456789',17,'2014-07-19'),
(5,34,'J121326987',17,'2014-07-16'),
(5,35,'V135515250',17,'2014-07-08'),
(5,36,'V129922756',17,'2014-07-16'),
(5,37,'J120636905',17,'2014-07-04'),
(5,38,'J197895774',17,'2014-07-13'),
(5,39,'V146994773',16,'2014-02-13'),
(5,40,'V153536077',14,'2014-04-25');

--RECURSO
INSERT INTO RECURSO_ESTATUS (esre_fk_est_id, esre_fk_re_id , esre_fecha_ini) 
VALUES 
(8,1,'2000-07-12'),
(8,2,'1990-03-22'),
(8,3,'1995-11-05'),
(8,4,'1989-06-01'),
(8,5,'2002-06-18'),
(8,6,'1993-02-17'),
(8,7,'1996-08-29'),
(8,8,'2001-04-13'),
(8,9,'2003-12-25'),
(8,10,'2005-09-30'),
(8,11,'2010-06-21'),
(8,12,'2012-01-11'),
(8,13,'2014-07-03'),
(8,14,'2016-03-15'),
(8,15,'2017-10-27'),
(8,16,'2019-05-09'),
(8,17,'2021-12-20'),
(8,18,'2023-08-04'),
(8,19,'2004-02-01'),
(8,20,'2011-12-08'),
(8,21,'2015-04-02'),
(8,22,'2013-08-20'),
(8,23,'2018-11-13'),
(8,24,'2020-07-25'),
(8,25,'2006-03-07'),
(8,26,'2007-03-07'),
(8,27,'2010-03-07'),
(8,28,'2017-05-03'),
(8,29,'2016-03-02'),
(8,30,'2014-07-16'),
(8,31,'2014-07-16'),
(8,32,'2014-07-16'),
(8,33,'2014-07-19'),
(8,34,'2014-07-16'),
(8,35,'2014-07-08'),
(8,36,'2014-07-16'),
(8,37,'2014-07-04'),
(8,38,'2014-07-13'),
(8,39,'2014-02-13'),
(8,40,'2014-04-25');

-- ############################### YACIMIENTOS ##########################
INSERT INTO YACIMIENTO (yac_descripcion, aut_origen, aloc_tipo_transporte, yac_tipo, fk_lu_id) VALUES
('Yacimiento con alta concentración de Oro', 'Terrestre', NULL, 'AUTOCTONO',95),
('Fuente rica en Diamante de calidad gemológica', NULL, 'Viento', 'ALOCTONO',92),
('Depósito extenso de Hierro utilizado en siderurgia', 'Acuatico', NULL, 'AUTOCTONO',97),
('Bauxita, principal mineral para la producción de aluminio', NULL, 'Agua', 'ALOCTONO',96),
('Carbon, esencial para la industria energética', 'Terrestre', NULL, 'AUTOCTONO',159),
('Manganeso presente en cantidades industriales', NULL, 'Desborde', 'ALOCTONO',97),
('Niquel en forma de lateritas y sulfuros', 'Acuatico', NULL, 'AUTOCTONO',123),
('Cobre, utilizado ampliamente en electrónica', NULL, 'Deslizamiento', 'ALOCTONO',351),
('Mercurio encontrado en cinabrio', 'Terrestre', NULL, 'AUTOCTONO',171),
('Plomo primario para baterías y aleaciones', NULL, 'Viento', 'ALOCTONO',95),
('Plata con potencial para joyería y acuñación', 'Acuatico', NULL, 'AUTOCTONO',96),
('Bario en forma de baritina para perforación petrolera', NULL, 'Agua', 'ALOCTONO',97),
('Calcio esencial para la industria de la construcción', 'Terrestre', NULL, 'AUTOCTONO',99),
('Caolin utilizado en cerámica y papel', NULL, 'Desborde', 'ALOCTONO',100),
('Caliza rica en carbonato de calcio para cemento', 'Acuatico', NULL, 'AUTOCTONO',100), -- #######
('Pirita conocida como el oro de los tontos', NULL, 'Deslizamiento', 'ALOCTONO',99),
('Talco suave al tacto para productos cosméticos y cerámicos', 'Terrestre', NULL, 'AUTOCTONO',97),
('Zinc importante para galvanización y aleaciones', NULL, 'Viento', 'ALOCTONO',96),
('Cianita utilizada como refractario y cerámica industrial', 'Acuatico', NULL, 'AUTOCTONO',95),
('Dolomita usada en agricultura y como material refractario', NULL, 'Agua', 'ALOCTONO',95);

INSERT INTO YACIMIENTO (yac_descripcion, aut_origen, aloc_tipo_transporte, yac_tipo, fk_lu_id) VALUES
('Titanio abundante, clave para aleaciones ligeras y resistentes', 'Terrestre', NULL, 'AUTOCTONO',53),
('Tungsteno con alta densidad para aplicaciones industriales', NULL, 'Viento', 'ALOCTONO',59),
('Magnesio ligero y versátil para diversas industrias', 'Acuatico', NULL, 'AUTOCTONO',78),
('Andalucita con propiedades refractarias únicas', NULL, 'Agua', 'ALOCTONO',79),
('Antimonio valioso para semiconductores y baterías', 'Terrestre', NULL, 'AUTOCTONO',87),
('Cromo esencial para la producción de acero inoxidable', NULL, 'Desborde', 'ALOCTONO',87),
('Asbesto natural con aplicaciones en construcción y aislamiento', 'Acuatico', NULL, 'AUTOCTONO',88),
('Feldespato común en la corteza terrestre para cerámica y vidrio', NULL, 'Deslizamiento', 'ALOCTONO',154),
('Arena silícea para fabricación de vidrio y fundición', 'Terrestre', NULL, 'AUTOCTONO',81),
('Cal esencial en construcción y tratamiento de aguas', NULL, 'Viento', 'ALOCTONO',84),
('Granito resistente utilizado en construcción y decoración', 'Acuatico', NULL, 'AUTOCTONO',223),
('Yeso utilizado en construcción y como fertilizante agrícola', NULL, 'Agua', 'ALOCTONO',224),
('Arcilla versátil para cerámica y productos refractarios', 'Terrestre', NULL, 'AUTOCTONO',158),
('Baritina densa para lodos de perforación petrolera', NULL, 'Desborde', 'ALOCTONO',157),
('Bentonita con propiedades absorbentes y sellantes únicas', 'Acuatico', NULL, 'AUTOCTONO',164),
('deposito de Azufre','Terrestre',NULL,'AUTOCTONO',1375);

-- ######################################## POZO ################################

INSERT INTO POZO (po_tipo_pozo, po_diametro, po_fecha_perforacion, po_num_tuneles, po_capacidad_max, fk_yac_id)
VALUES
('Vertical', 100.00, '2024-06-17', 2, 5000.00, 1), --ORO
('Inclinado', 150.00, '2024-06-16', 3, 7500.00, 1),
('Vertical', 120.00, '2024-06-15', 1, 6000.00, 1),
('Inclinado', 130.00, '2024-06-14', 4, 6500.00, 2), -- DIAMANTE
('Vertical', 110.00, '2024-06-13', 2, 5500.00, 2),
('Inclinado', 140.00, '2024-06-12', 3, 7000.00, 2),
('Vertical', 115.00, '2024-06-11', 2, 5750.00, 3), --HIERRO
('Inclinado', 125.00, '2024-06-10', 3, 6250.00, 3),
('Vertical', 105.00, '2024-06-09', 1, 5250.00, 3),
('Inclinado', 135.00, '2024-06-08', 4, 6750.00, 4), -- BAUXITA
('Vertical', 95.00, '2024-06-07', 2, 4750.00, 4),
('Inclinado', 145.00, '2024-06-06', 3, 7250.00, 4),
('Vertical', 125.00, '2024-06-05', 1, 6250.00, 5), -- CARBON
('Inclinado', 115.00, '2024-06-04', 4, 5750.00, 5),
('Vertical',105.00,'2024-06-03',2 ,5250 ,5 ),
('Inclinado' ,135 ,'2024-06-02' ,3 ,6750 ,6 ), -- MANGANESO
('Vertical' ,95 ,'2024-06-01' ,1 ,4750 ,6 ),
('Inclinado' ,145 ,'2024-05-31' ,2 ,7250 ,6 ),
('Vertical' ,125 ,'2024-05-30' ,3 ,6250 ,7 ), --NIQUEL
('Inclinado' ,115 ,'2024-05-29' ,1 ,5750 ,7 ),
('Vertical' ,105 ,'2024-05-28' ,2 ,5250 ,7 ),
('Inclinado' ,135 ,'2024-05-27' ,3 ,6750 ,8 ), -- COBRE
('Vertical' ,95 ,'2024-05-26' ,1 ,4750 ,8 ),
('Inclinado' ,145 ,'2024-05-25' ,2 ,7250 ,8 ),
('Vertical' ,125 ,'2024-05-24' ,3 ,6250 ,9 ), --MERCURIO
('Inclinado' ,115 ,'2024-05-23' ,1 ,5750 ,9 ),
('Vertical' ,105 ,'2024-05-22' ,2 ,5250,9 ),
('Inclinado' ,135 ,'2024-05-21',3 ,6750,10 ), --PLOMO
('Vertical' ,95 ,'2024-05-20',1 ,4750,10 ),
('Inclinado',145,'2024-05-19',2 ,7250,10 ),
('Vertical', 90.00, '2022-12-31', 2, 4500.00, 11), -- PLATA
('Inclinado', 160.00, '2022-12-30', 3, 8000.00, 11),
('Vertical', 130.00, '2022-12-29', 1, 6500.00, 11),
('Inclinado', 140.00, '2022-12-28', 4, 7000.00, 12), --BARIO
('Vertical', 120.00, '2022-12-27', 2, 6000.00, 12),
('Inclinado', 150.00, '2022-12-26', 3, 7500.00, 12),
('Vertical', 110.00, '2022-12-25', 2, 5500.00, 13), --CALCIO
('Inclinado', 170.00, '2022-12-24', 3, 8500.00, 13),
('Vertical', 100.00, '2022-12-23', 1, 5000.00, 13),
('Inclinado', 180.00, '2022-12-22', 4, 9000.00, 14), -- CAOLIN
('Vertical',95,'2022-12-21',1 ,4750 ,14 ),
('Inclinado' ,145 ,'2022-12-20' ,3 ,7250 ,14 ),
('Vertical' ,125 ,'2022-12-19' ,2 ,6250 ,15 ), --CALIZA
('Inclinado' ,115 ,'2022-12-18' ,4 ,5750 ,15 ),
('Vertical' ,105 ,'2022-12-17' ,1 ,5250 ,15 ),
('Inclinado' ,135 ,'2022-12-16' ,3 ,6750 ,16 ), --PIRITA
('Vertical' ,95 ,'2022-12-15' ,2 ,4750 ,16 ),
('Inclinado' ,145 ,'2022-12-14' ,4 ,7250 ,16 ),
('Vertical' ,125 ,'2022-12-13' ,1 ,6250 ,17 ), --TALCO
('Inclinado' ,115 ,'2022-12-12' ,3 ,5750 ,17 ),
('Vertical' ,105 ,'2022-12-11',1 ,5250 ,17 ),
('Inclinado',135,'2022-12-10',4 ,6750 ,18 ), --ZINC
('Vertical',95,'2022-12-09',2 ,4750 ,18 ),
('Inclinado',145,'2022-12-08',3 ,7250 ,18 ),
('Vertical',125,'2022-12-07',1 ,6250 ,19 ), --CIANITA
('Inclinado',115,'2022-12-06',4 ,5750 ,19 ),
('Vertical',105,'2022-12-05',1 ,5250 ,19 ),
('Inclinado',135,'2022-12-04',3 ,6750 ,20 ), --DOLOMITA
('Vertical',95,'2022-12-03',1 ,4750 ,20 ),
('Vertical',87,'2020-11-10',2 ,4340 ,20 ),
('Vertical', 90.00, '2021-12-31', 2, 4500.00, 21), -- TITANIO
('Inclinado', 160.00, '2021-12-30', 3, 8000.00, 21),
('Vertical', 130.00, '2021-12-29', 1, 6500.00, 21),
('Inclinado', 140.00, '2021-12-28', 4, 7000.00, 22), -- TUNGSTENO
('Vertical', 120.00, '2021-12-27', 2, 6000.00, 22),
('Inclinado', 150.00, '2021-12-26', 3, 7500.00, 22),
('Vertical', 110.00, '2021-12-25', 2, 5500.00, 23), -- MAGNESIO
('Inclinado', 170.00, '2021-12-24', 3, 8500.00, 23),
('Vertical', 100.00, '2021-12-23', 1, 5000.00, 23),
('Inclinado', 180.00, '2021-12-22', 4, 9000.00, 24), -- ANDALUCITA
('Vertical',95,'2021-12-21',1 ,4750 ,24 ),
('Inclinado' ,145 ,'2021-12-20' ,3 ,7250 ,24 ),
('Vertical' ,125 ,'2021-12-19' ,2 ,6250 ,25 ), -- ANTIMONIO
('Inclinado' ,115 ,'2021-12-18' ,4 ,5750 ,25 ),
('Vertical' ,105 ,'2021-12-17' ,1 ,5250 ,25 ),
('Inclinado' ,135 ,'2021-12-16' ,3 ,6750 ,26 ), -- CROMO
('Vertical' ,95 ,'2021-12-15' ,2 ,4750 ,26 ),
('Inclinado' ,145 ,'2021-12-14' ,4 ,7250 ,26 ),
('Vertical' ,125 ,'2021-12-13' ,1 ,6250 ,27 ), -- ASBESTO
('Inclinado' ,115 ,'2021-12-12',3 ,5750 ,27 ),
('Inclinado' ,115 ,'2020-12-12',3 ,5750 ,27 ),
('Vertical' ,125 ,'2021-12-13' ,1 ,6250 ,28 ), -- FELDESPATO
('Inclinado' ,115 ,'2021-12-12',3 ,5750 ,28 ),
('Inclinado' ,115 ,'2020-12-12',3 ,5750 ,28 ),
('Vertical' ,125 ,'2021-12-13' ,1 ,6250 ,29 ), -- ARENA
('Inclinado' ,115 ,'2021-12-12',3 ,5750 ,29 ),
('Inclinado' ,115 ,'2020-12-12',3 ,5750 ,29 ),
('Vertical' ,125 ,'2021-12-13' ,1 ,6250 ,30 ), -- CAL
('Inclinado' ,115 ,'2021-12-12',3 ,5750 ,30 ),
('Inclinado' ,115 ,'2020-12-12',3 ,5750 ,30 ),
('Vertical', 90.00, '2020-12-31', 2, 4500.00, 31), --GRANITO
('Inclinado', 160.00, '2020-12-30', 3, 8000.00, 31),
('Vertical', 130.00, '2020-12-29', 1, 6500.00, 31),
('Inclinado', 140.00, '2020-12-28', 4, 7000.00, 32), --YESO
('Vertical', 120.00, '2020-12-27', 2, 6000.00, 32),
('Inclinado', 150.00, '2020-12-26', 3, 7500.00, 32),
('Vertical', 110.00, '2020-12-25', 2, 5500.00, 33), --ARCILLA
('Inclinado', 170.00, '2020-12-24', 3, 8500.00, 33),
('Vertical', 100.00, '2020-12-23', 1, 5000.00, 33),
('Inclinado', 180.00, '2020-12-22', 4, 9000.00, 34), -- BARITINA
('Vertical',95,'2020-12-21',1 ,4750 ,34 ),
('Inclinado' ,145 ,'2020-12-20' ,3 ,7250 ,34 ),
('Vertical' ,125 ,'2020-12-19' ,2 ,6250 ,35 ), -- BENTONITA
('Inclinado' ,115 ,'2020-12-18' ,4 ,5750 ,35 ),
('Vertical' ,105 ,'2020-12-17' ,1 ,5250 ,35 ),
('Vertical' ,165 ,'2010-12-19' ,2 ,9830 ,36 ), --AZUFRE
('Inclinado' ,235 ,'2017-12-18' ,4 ,4650 ,36 ),
('Vertical' ,100 ,'2014-12-17' ,1 ,5330 ,36);

--####################### MINERAL_POZO ######################################

INSERT INTO MINERAL_POZO (min_id, po_id) VALUES
(1,1),
(1,2),
(1,3),
(2,4),
(2,5),
(2,6),
(3,7),
(3,8),
(3,9),
(4,10),
(4,11),
(4,12),
(5,13),
(5,14),
(5,15),
(6,16),
(6,17),
(6,18),
(7,19),
(7,20),
(7,21),
(8,22),
(8,23),
(8,24),
(9,25),
(9,26),
(9,27),
(10,28),
(10,29),
(10,30),
(11,31),
(11,32),
(11,33),
(12,34),
(12,35),
(12,36),
(13,37),
(13,38),
(13,39),
(14,40),
(14,41),
(14,42),
(15,43),
(15,44),
(15,45),
(16,46),
(16,47),
(16,48),
(17,49),
(17,50),
(17,51),
(18,52),
(18,53),
(18,54),
(19,55),
(19,56),
(19,57),
(20,58),
(20,59),
(20,60),
(21,61),
(21,62),
(21,63),
(22,64),
(22,65),
(22,66),
(23,67),
(23,68),
(23,69),
(24,70),
(24,71),
(24,72),
(25,73),
(25,74),
(25,75),
(26,76),
(26,77),
(26,78),
(27,79),
(27,80),
(27,81),
(28,82),
(28,83),
(28,84),
(29,85),
(29,86),
(29,87),
(30,88),
(30,89),
(30,90),
(31,91), 
(31,92),
(31,93),
(32,94),
(32,95),
(32,96),
(33,97), 
(33,98),
(33,99),
(34,100),
(34,101),
(34,102),
(35,103),
(35,104),
(35,105),
(36,106),
(36,107),
(36,108);

-- ######################## POZO_ESTATUS #########################

INSERT INTO POZO_ESTATUS (poes_po_id, poes_est_id, poes_fecha_ini, poes_fecha_fin) VALUES 
(1, 14, '2024-06-17', NULL),
(2, 14, '2024-06-16', NULL),
(3, 14, '2024-06-15', NULL),
(4, 14, '2024-06-14', NULL),
(5, 14, '2024-06-13', NULL),
(6, 14, '2024-06-12', NULL),
(7, 14, '2024-06-11', NULL),
(8, 14, '2024-06-10', NULL),
(9, 14, '2024-06-09', NULL),
(10, 14, '2024-06-08', NULL),
(11, 14, '2024-06-07', NULL),
(12, 14, '2024-06-06', NULL),
(13, 14, '2024-06-05', NULL),
(14, 14, '2024-06-04', NULL),
(15, 14, '2024-06-03', NULL),
(16, 14, '2024-06-02', NULL),
(17, 14, '2024-06-01', NULL),
(18, 14, '2024-05-31', NULL),
(19, 14, '2024-05-30', NULL),
(20, 14, '2024-05-29', NULL),
(21, 14, '2024-05-28', NULL),
(22, 14, '2024-05-27', NULL),
(23, 14, '2024-05-26', NULL),
(24, 14, '2024-05-25', NULL),
(25, 14,'2024-05-24',NULL), 
(26, 14,'2024-05-23',NULL), 
(27, 14,'2024-05-22',NULL), 
(28, 14,'2024-05-21',NULL), 
(29, 14,'2024-05-20',NULL), 
(30, 14,'2024-05-19',NULL),
(31, 14, '2022-12-31', NULL),
(32, 14, '2022-12-30', NULL),
(33, 14, '2022-12-29', NULL),
(34, 14, '2022-12-28', NULL),
(35, 14, '2022-12-27', NULL),
(36, 14, '2022-12-26', NULL),
(37, 14, '2022-12-25', NULL),
(38, 14, '2022-12-24', NULL),
(39, 14, '2022-12-23', NULL),
(40, 14, '2022-12-22', NULL),
(41, 14,'2022-12-21',NULL), 
(42, 14,'2022-12-20',NULL), 
(43, 14,'2022-12-19',NULL), 
(44, 14,'2022-12-18',NULL), 
(45, 14,'2022-12-17',NULL), 
(46, 14,'2022-12-16',NULL), 
(47, 14,'2022-12-15',NULL), 
(48, 14,'2022-12-14',NULL), 
(49, 14,'2022-12-13',NULL), 
(50, 14,'2022-12-12',NULL), 
(51, 14,'2022-12-11',NULL), 
(52, 14,'2022-12-10',NULL), 
(53, 14,'2022-12-09',NULL), 
(54, 14,'2022-12-08',NULL), 
(55, 14,'2022-12-07',NULL), 
(56, 14,'2022-12-06',NULL), 
(57, 14,'2022-12-05',NULL), 
(58, 14,'2022-12-04',NULL), 
(59, 14,'2022-12-03',NULL), 
(60, 14,'2020-11-10',NULL),
(61, 14,'2021-12-31',NULL),
(62, 14,'2021-12-30',NULL),
(63, 14,'2021-12-29',NULL),
(64, 14,'2021-12-28',NULL),
(65, 14,'2021-12-27',NULL),
(66, 14,'2021-12-26',NULL),
(67, 14,'2021-12-25',NULL),
(68, 14,'2021-12-24',NULL),
(69, 14,'2021-12-23',NULL),
(70, 14,'2021-12-22',NULL),
(71, 14, '2021-12-21', NULL),
(72, 14, '2021-12-20', NULL),
(73, 14, '2021-12-19', NULL),
(74, 14, '2021-12-18', NULL),
(75, 14, '2021-12-17', NULL),
(76, 14, '2021-12-16', NULL),
(77, 14, '2021-12-15', NULL),
(78, 14, '2021-12-14', NULL),
(79, 14, '2021-12-13', NULL),
(80, 14, '2021-12-12', NULL),
(81, 14,'2020-12-12',NULL), 
(82, 14,'2021-12-13',NULL), 
(83, 14,'2021-12-12',NULL), 
(84, 14,'2020-12-12',NULL), 
(85, 14,'2021-12-13',NULL), 
(86, 14,'2021-12-12',NULL), 
(87, 14,'2020-12-12',NULL), 
(88, 14,'2021-12-13',NULL), 
(89, 14,'2021-12-12',NULL), 
(90, 14,'2020-12-12',NULL), 
(91, 14,'2020-12-31',NULL), 
(92, 14,'2020-12-30',NULL), 
(93, 14,'2020-12-28',NULL), 
(94, 14,'2020-12-27',NULL), 
(95, 14,'2020-12-26',NULL), 
(96, 14,'2020-12-25',NULL), 
(97, 14,'2020-12-24',NULL), 
(98, 14,'2020-12-23',NULL), 
(99, 14,'2020-12-22',NULL), 
(100, 14,'2020-12-21',NULL),
(101, 14,'2020-12-20',NULL),
(102, 14,'2020-12-19',NULL),
(103, 14,'2020-12-18',NULL),
(104, 14,'2020-12-17',NULL),
(105, 14,'2017-12-19',NULL),
(106, 14,'2017-12-18',NULL),
(107, 14,'2014-12-17',NULL),
(108, 14,'2023-12-19',NULL);

-- ###################### ETAPA (CONFIGURACION)###########################

INSERT INTO ETAPA (et_num_etapa, et_nombre, et_total_dias, fk_min_id) VALUES
(1,'Exploracion e Informacion',NULL,1),
(2,'Geologia de superficie',NULL,1),
(3,'Desarrollo mina',NULL,1),
(4,'Explotacion',NULL,1),
(5,'Procesamiento',NULL,1),
(1,'Exploracion e informacion',NULL,2),
(2,'Geologia de superficie',NULL,2),
(3,'Perforacion',NULL,2),
(4,'Extraccion',NULL,2),
(5,'Procesamiento',NULL,2),
(1,'Exploracion e informacion',NULL,3),
(2,'Geologia',NULL,3),
(3,'Extraccion',NULL,3),
(4,'Procesamiento',NULL,3),
(5,'Refinado y conformado',NULL,3),
(1,'Exploracion',NULL,4),
(2,'Geologia',NULL,4),
(3,'Extraccion de la bauxita',NULL,4),
(4,'Procesamiento aluminio',NULL,4),
(5,'Envio material',NULL,4),
(1,'Exploracion e informacion',NULL,5),
(2,'Diseño y planificacion de la mina',NULL,5), --carbon
(3,'construccion mina',NULL,5),
(4,'Extraccion y produccion del mineral',NULL,5),
(5,'Ciere mina y recuperacion zona',NULL,5),
(1,'Exploración',NULL,6),
(2,'Desarrollo Mina',NULL,6),
(3,'Extraccion',NULL,6),
(4,'Procesamiento Nodulizacion',NULL,6),
(5,'Transformacion final',NULL,6),
(1,'Exploracion',NULL,7),
(2,'Perforación explorativa',NULL,7),
(3,'Extraccion',NULL,7),
(4,'Procesamiento',NULL,7),
(5,'Fundicion y Refinacion',NULL,7),
(1,'Exploracion y prospeccion',NULL,8),
(2,'Extraccion',NULL,8),
(3,'Procesamiento',NULL,8),
(4,'Fundicion',NULL,8),
(5,'Refinacion',NULL,8),
(1,'Exploracion Geológica',NULL,9),
(2,'Muestreo del suelo y roca',NULL,9),
(3,'Geofisica',NULL,9),
(4,'Perforacion en subsuelo',NULL,9),
(5,'Extraccion',NULL,9),
(1,'Exploracion y prospeccion',NULL,10),
(2,'Extraccion',NULL,10),
(3,'Procesamiento',NULL,10),
(4,'Fundicion',NULL,10),
(5,'Refinacion',NULL,10),
(1,'Exploracion e informacion',NULL,11),
(2,'Desarrollo Mina',NULL,11),
(3,'Extraccion',NULL,11),
(4,'Procesamiento plata pura',NULL,11),
(5,'Funcion y refinado',NULL,11),
(1,'Exploracion',NULL,12),
(2,'Desarrollo Mina',NULL,12),
(3,'Extraccion',NULL,12),
(4,'Procesamiento',NULL,12),
(5,'Refinado',NULL,12),
(1,'Exploracion',NULL,13),
(2,'Explotacion',NULL,13),
(3,'Trituracion y moliendaa',NULL,13),
(4,'Separacion',NULL,13),
(5,'Procesamiento',NULL,13),
(1,'Exploracion',NULL,14),
(2,'Extraccion',NULL,14),
(3,'Procesamiento',NULL,14),
(4,'Secado',NULL,14),
(5,'Clasificacion',NULL,14),
(1,'Exploracion y prospeccion',NULL,15),
(2,'Extraccion caliza',NULL,15),
(3,'Trituracion y Molienda',NULL,15),
(4,'Calcinacion',NULL,15),
(5,'Hidratacion',NULL,15),
(1,'Exploracion',NULL,16),
(2,'Desarrollo Mina',NULL,16),
(3,'Extraccion Pirita',NULL,16),
(4,'Procesamiento',NULL,16),
(5,'Fundicion y refinado',NULL,16),
(1,'Exploracion',NULL,17),
(2,'Extraccion',NULL,17),
(3,'Clasificacion',NULL,17),
(4,'Seleccion',NULL,17),
(5,'Procesamiento',NULL,17),
(1,'Exploracion',NULL,18),
(2,'Extraccion Zinc',NULL,18),
(3,'Calcinado',NULL,18),
(4,'Lixiviacion',NULL,18),
(5,'Neutralizacion',NULL,18),
(1,'Exploracion',NULL,19),
(2,'Extraccion',NULL,19),
(3,'Clasificacion',NULL,19),
(4,'Trituracion',NULL,19),
(5,'Procesamiento',NULL,19),
(1,'Exploracion',NULL,20),
(2,'Perforacion',NULL,20),
(3,'Voladura',NULL,20),
(4,'Trituracion y Clasificacion',NULL,20),
(5,'Procesamiento',NULL,20),
(1,'Exploracion',NULL,21),
(2,'Extraccion titanio',NULL,21),
(3,'Trituraacion',NULL,21),
(4,'Molienda',NULL,21),
(5,'Separacion',NULL,21),
(1,'Exploracion',NULL,22),
(2,'Extraccion',NULL,22),
(3,'Trituracion',NULL,22),
(4,'Molienda',NULL,22),
(5,'Flotacion',NULL,22),
(1,'Exploracion',NULL,23),
(2,'Extraccion',NULL,23),
(3,'Preparacion',NULL,23),
(4,'Calcinacion',NULL,23),
(5,'Refinacion',NULL,23),
(1,'Exploracion',NULL,24),
(2,'Desarrollo',NULL,24),
(3,'Extraccion',NULL,24),
(4,'Trituracion',NULL,24),
(5,'Clasificacion',NULL,24),
(1,'Exploracion',NULL,25),
(2,'Extraccion',NULL,25),
(3,'Trituracion',NULL,25),
(4,'Molienda',NULL,25),
(5,'Flotacion',NULL,25),
(1,'Exploracion',NULL,26),
(2,'Desarrollo Mina',NULL,26),
(3,'Extraccion',NULL,26),
(4,'Trituracion',NULL,26),
(5,'Separacion',NULL,26),
(1,'Exploracion',NULL,27),
(2,'Desarrollo',NULL,27),
(3,'Extraccion',NULL,27),
(4,'Procesamiento',NULL,27),
(5,'Purificacion',NULL,27),
(1,'Exploracion',NULL,28),
(2,'Desarrollo',NULL,28),
(3,'Extraccion',NULL,28),
(4,'Procesamiento',NULL,28),
(5,'Purificacion',NULL,28),
(1,'Explorcion',NULL,29),
(2,'Extraccion',NULL,29),
(3,'Clasificacion',NULL,29),
(4,'Lavado',NULL,29),
(5,'Secado',NULL,29),
(1,'Extraccion',NULL,30),
(2,'Coccion',NULL,30),
(3,'Apagado',NULL,30),
(4,'Molienda',NULL,30),
(5,'Envasado',NULL,30),
(1,'Estudio Geológico',NULL,31),
(2,'Desarrollo del transporte',NULL,31),
(3,'Extraccion inicial',NULL,31),
(4,'Extraccion del granito',NULL,31),
(5,'Corte y elevación de bloques',NULL,31),
(1,'Exploracion',NULL,32),
(2,'Perforacion',NULL,32),
(3,'Voladura',NULL,32),
(4,'Extraccion',NULL,32),
(5,'Procesamiento',NULL,32),
(1,'Geologia',NULL,33),
(2,'Exploracion Avanzada',NULL,33),
(3,'Perforacion',NULL,33),
(4,'Extraccion',NULL,33),
(5,'Procesamiento',NULL,33),
(1,'Exploracion y prospeccion',NULL,34),
(2,'Perforacion',NULL,34),
(3,'Voladura',NULL,34),
(4,'Extraccion',NULL,34),
(5,'Procesamiento',NULL,34),
(1,'Exploracion',NULL,35),
(2,'Diseño',NULL,35),
(3,'Construccion Mina',NULL,35),
(4,'Extraccion',NULL,35),
(5,'Produccion',NULL,35),
(1,'Exploracion',NULL,36),
(2,'Diseño',NULL,36),
(3,'Construccion Mina',NULL,36),
(4,'Extraccion',NULL,36),
(5,'Produccion',NULL,36);

-- ACTIVIDADES


INSERT INTO ACTIVIDAD (act_nombre, act_descripcion, act_prioridad, act_total_dias, fk_et_id, fk_act_id)
VALUES
	-- ORO
--ETAPA 1
('Estudio Geofisico','Análisis de las características geológicas para identificar posibles yacimientos','Alta',NULL,1,NULL),
('Mapear geologia','Creación de mapas detallados de la zona','Media',NULL,1,NULL),
('Perforacion Exploratoria','Implica la perforación de la corteza terrestre para obtener muestras de roca y evaluar la presencia de minerales','Alta',NULL,1,2),
('Analisis datos historicos','estudio de registros y datos anteriores relacionados con la geología y la minería en la zona','Media',NULL,1,NULL),
('Estudios topografia y cartografia','Involucra la creación de mapas detallados del área minera','Alta',NULL,1,4),
--ETAPA 2
('Mapeo','trazar y registrar la ubicación precisa de características geológicas, como vetas, fallas y estructuras','Alta',NULL,2,NULL),
('Mineralogía','estudio de minerales y sus propiedades','Media',NULL,2,6),
('Muestreo de suelo','toman muestras de suelo para analizar su contenido mineral','Alta', NULL, 2, NULL),
('Mapeo de vetas','Similar al mapeo general, pero se enfoca específicamente en las vetas de minerales','Media', NULL, 2, NULL),
('Teledeteccion','Utiliza imágenes satelitales y sensores remotos para recopilar datos sobre la superficie terrestre','Alta', NULL, 2, NULL),
--ETAPA 3
('Excavacion','Implica la remoción de tierra, roca u otros materiales para crear espacios subterráneos o superficiales','Media', NULL, 3, NULL),
('Reforzar excavaciones','Se trata de fortalecer las paredes y techos de las excavaciones para evitar derrumbes','Media', NULL, 3, NULL),
('Construir infraestructura','Involucra la creación de instalaciones necesarias para la operación minera','Media', NULL, 3, NULL),
('Establecer area de trabajo','delimita la zona donde se llevarán a cabo las actividades mineras','Media', NULL, 3, NULL),
('Estudios geotécnicos','Se realizan para evaluar la estabilidad del terreno y prevenir riesgos geotécnicos','Media', NULL, 3, NULL),
--ETAPA 4
('Extraer mineral','Consiste en la extracción física del mineral de la mina','Media', NULL, 4, NULL),
('Cargar y transportar mineral','Después de la extracción, el mineral se carga en camiones, cintas transportadoras o equipos similares','Media', NULL, 4, NULL),
('Realizar voladuras controladas','En la minería a cielo abierto, se utilizan explosivos para fragmentar la roca y facilitar la extracción','Alta', NULL, 4, NULL),
('Monitorear la calidad del mineral','Se analiza la composición y calidad del mineral extraído','Media', NULL, 4, NULL),
('Practicas de seguridad','Se implementan medidas para proteger a los trabajadores y prevenir accidentes','Alta', NULL, 4, NULL),
--ETAPA 5
('Triturar y moler',' el mineral extraído se tritura y muele en partículas más pequeñas','Media', NULL, 5, NULL),
('Separacion','separación de los componentes del mineral','Media', NULL, 5, NULL),
('Refinar concentrado de oro',' se eliminan impurezas y se purifica el concentrado para obtener un producto más valioso','Media', NULL, 5, NULL),
('Fundir el oro','El concentrado de oro se funde a altas temperaturas para separar el metal precioso de otros materiales','Media', NULL, 5, NULL),
('Analisis de calidad','Se realizan pruebas y análisis para evaluar la calidad del producto final','Media', NULL, 5, NULL),
-- DIAMANTE
--ETAPA 1
  ('Prospectar y Muestrear', 'Búsqueda y recolección de información sobre el diamante', 'Media', NULL, 6, NULL),
  ('Estudios Geológicos', 'Análisis de características geológicas para identificar depósitos', 'Alta', NULL, 6, NULL),
  ('Análisis de Suelo y Roca', 'Evaluación de la composición del suelo y las rocas', 'Media', NULL, 6, NULL),
  ('Estudios de Topografía', 'Medición y mapeo del terreno para planificar la explotación', 'Baja', NULL, 6, NULL),
  ('Estudios Ambientales', 'Evaluación del impacto ambiental potencial', 'Alta', NULL, 6, NULL),
-- Geología de Superficie
  ('Mapeo Geológico', 'Creación de un mapa detallado de las formaciones geológicas', 'Media', NULL, 7, NULL),
  ('Estudios de Sedimentos', 'Análisis de los sedimentos superficiales en busca de diamantes', 'Baja', NULL, 7, NULL),
  ('Estudios de Vegetación', 'Observación de la vegetación para identificar áreas prometedoras', 'Media', NULL, 7, NULL),
  ('Estudios Hidrogeológicos', 'Investigación de la presencia de agua subterránea', 'Alta', NULL, 7, NULL),
  ('Estudios de Suelo', 'Evaluación de la calidad del suelo', 'Baja', NULL, 7, NULL),
  -- Perforación
  ('Perforación de Exploración', 'Realización de perforaciones para obtener muestras de roca y suelo', 'Alta', NULL, 8, NULL),
  ('Perforación de Diamantina', 'Perforación para extraer núcleos de diamante', 'Media', NULL, 8, NULL),
  ('Pruebas de Permeabilidad', 'Evaluación de la permeabilidad del suelo', 'Baja', NULL, 8, NULL),
  ('Pruebas de Resistencia', 'Medición de la resistencia de la roca', 'Alta', NULL, 8, NULL),
  ('Estudios de Estratigrafía', 'Análisis de la disposición de las capas geológicas', 'Media', NULL, 8, NULL),
  -- Extracción
  ('Minado a Cielo Abierto', 'Extracción del diamante de depósitos superficiales', 'Alta', NULL, 9, NULL),
  ('Minado Subterráneo', 'Extracción del diamante de depósitos más profundos', 'Media', NULL, 9, NULL),
  ('Carga y Transporte', 'Llevar el material extraído a la superficie', 'Baja', NULL, 9, NULL),
  ('Clasificación Preliminar', 'Separación del diamante de otros minerales', 'Alta', NULL, 9, NULL),
  ('Almacenamiento Temporal', 'Almacenamiento del diamante antes del procesamiento', 'Media', NULL, 9, NULL),
 -- Procesamiento
  ('Trituración y Molienda', 'Reducción del tamaño del material extraído', 'Baja', NULL, 10, NULL),
  ('Separación por Densidad', 'Separación de los diamantes según su densidad', 'Alta', NULL, 10, NULL),
  ('Lavado y Tamizado', 'Limpieza y clasificación de los diamantes', 'Media', NULL, 10, NULL),
  ('Separación por Rayos X', 'Detección de diamantes ocultos', 'Baja', NULL, 10, NULL),
  ('Pulido y Corte', 'Dar forma y pulir el diamante', 'Alta', NULL, 10, NULL),

-- HIERRO
	-- Exploración e Información
  ('Prospectar y Muestrear', 'Búsqueda y recolección de información sobre los depósitos de mineral de hierro', 'Media', NULL, 11, NULL),
  ('Estudios Geológicos', 'Análisis de las características geológicas para identificar posibles yacimientos', 'Alta', NULL, 11, NULL),
  ('Exploración Geoquímica', 'Evaluación de la composición química de las rocas y sedimentos', 'Media', NULL, 11, NULL),
  ('Exploración Geofísica', 'Uso de técnicas físicas para detectar anomalías en el subsuelo', 'Baja', NULL, 11, NULL),
  ('Mapeo Geológico Regional', 'Creación de mapas detallados de la zona', 'Alta', NULL, 11, NULL),
  -- Geología
  ('Mapeo con Drones', 'Uso de drones para obtener imágenes detalladas del terreno', 'Media', NULL, 12, NULL),
  ('Exploración Geoquímica Local', 'Muestreo de suelos, rocas y sedimentos en áreas específicas', 'Baja', NULL, 12, NULL),
  ('Mapeo Geológico Detallado', 'Estudio minucioso de las formaciones geológicas', 'Alta', NULL, 12, NULL),
  ('Exploración Geofísica Local', 'Aplicación de métodos geofísicos para detectar estructuras subterráneas', 'Media', NULL, 12, NULL),
  ('Perforación Minera', 'Extracción de muestras del subsuelo mediante perforación', 'Baja', NULL, 12, NULL),
  -- Extracción
  ('Minado a Cielo Abierto', 'Extracción del mineral de hierro de depósitos superficiales', 'Alta', NULL, 13, NULL),
  ('Minado Subterráneo', 'Extracción de depósitos más profundos', 'Media', NULL, 13, NULL),
  ('Carga y Transporte', 'Movimiento del mineral extraído', 'Baja', NULL, 13, NULL),
  ('Clasificación Preliminar', 'Separación del mineral de hierro de otros materiales', 'Alta', NULL, 13, NULL),
  ('Almacenamiento Temporal', 'Reserva temporal antes del procesamiento', 'Media', NULL, 13, NULL),
  -- Procesamiento
  ('Trituración y Molienda', 'Reducción del tamaño del mineral', 'Baja', NULL, 14, NULL),
  ('Separación Magnética', 'Separación del hierro de otros minerales mediante campos magnéticos', 'Alta', NULL, 14, NULL),
  ('Lavado y Tamizado', 'Limpieza y clasificación del mineral', 'Media', NULL, 14, NULL),
  ('Secado y Aglomeración', 'Preparación para la siguiente etapa', 'Baja', NULL, 14, NULL),
  ('Pulido y Conformado', 'Acondicionamiento final del mineral', 'Alta', NULL, 14, NULL),
  -- Refinado y Conformado
  ('Fundición', 'Conversión del mineral en hierro fundido', 'Alta', NULL, 15, NULL),
  ('Conformado y Forjado', 'Modelado del hierro en productos específicos', 'Media', NULL, 15, NULL),
  ('Tratamientos Térmicos', 'Mejora de las propiedades físicas del hierro', 'Baja', NULL, 15, NULL),
  ('Galvanización', 'Recubrimiento con zinc para protección contra la corrosión', 'Alta', NULL, 15, NULL),
  ('Inspección de Calidad', 'Verificación de la calidad del producto final', 'Media', NULL, 15, NULL),

-- BAUXITA

-- Exploración
  ('Prospectar y Muestrear', 'Búsqueda y recolección de información sobre los depósitos de bauxita', 'Media', NULL, 16, NULL),
  ('Estudios Geológicos', 'Análisis de las características geológicas para identificar posibles yacimientos', 'Alta', NULL, 16, NULL),
  ('Exploración Geoquímica', 'Evaluación de la composición química de las rocas y sedimentos', 'Media', NULL, 16, NULL),
  ('Exploración Geofísica', 'Uso de técnicas físicas para detectar anomalías en el subsuelo', 'Baja', NULL, 16, NULL),
  ('Mapeo Geológico Regional', 'Creación de mapas detallados de la zona', 'Alta', NULL, 16, NULL),
  -- Geología
  ('Mapeo con Drones', 'Uso de drones para obtener imágenes detalladas del terreno', 'Media', NULL, 17, NULL),
  ('Exploración Geoquímica Local', 'Muestreo de suelos, rocas y sedimentos en áreas específicas', 'Baja', NULL, 17, NULL),
  ('Mapeo Geológico Detallado', 'Estudio minucioso de las formaciones geológicas', 'Alta', NULL, 17, NULL),
  ('Exploración Geofísica Local', 'Aplicación de métodos geofísicos para detectar estructuras subterráneas', 'Media', NULL, 17, NULL),
  ('Perforación Minera', 'Extracción de muestras del subsuelo mediante perforación', 'Baja', NULL, 17, NULL),
  -- Extracción de la bauxita
  ('Voladura y Extracción', 'Perforación y voladura para extraer la bauxita', 'Alta', NULL, 18, NULL),
  ('Carga y Transporte', 'Movimiento del mineral extraído', 'Baja', NULL, 18, NULL),
  ('Clasificación Preliminar', 'Separación de la bauxita de otros materiales', 'Alta', NULL, 18, NULL),
  ('Almacenamiento Temporal', 'Reserva temporal antes del procesamiento', 'Media', NULL, 18, NULL),
  ('Preparación del Sitio', 'Acondicionamiento del área de extracción', 'Baja', NULL, 18, NULL),
  -- Procesamiento aluminio
  ('Trituración y Molienda', 'Reducción del tamaño de la bauxita', 'Baja', NULL, 19, NULL),
  ('Lavado y Tamizado', 'Limpieza y clasificación del mineral', 'Media', NULL, 19, NULL),
  ('Digestión y Precipitación', 'Extracción de la alúmina', 'Alta', NULL, 19, NULL),
  ('Electrólisis', 'Obtención del aluminio metálico', 'Baja', NULL, 19, NULL),
  ('Fundición y Moldeo', 'Formación de lingotes de aluminio', 'Alta', NULL, 19, NULL),
  -- Envío de Material
  ('Embalaje y Almacenamiento', 'Preparación para el transporte', 'Media', NULL, 20, NULL),
  ('Transporte Terrestre o Marítimo', 'Envío de la bauxita a las plantas de aluminio', 'Baja', NULL, 20, NULL),
  ('Descarga y Almacenamiento Final', 'Recepción y almacenamiento en destino', 'Alta', NULL, 20, NULL),
  ('Inspección de Calidad', 'Verificación de la calidad del material', 'Media', NULL, 20, NULL),
  ('Distribución a Clientes', 'Entrega a los compradores', 'Baja', NULL, 20, NULL),

-- CARBON

('Prospección y muestreo', 'Identificación de áreas con potencial de yacimientos de carbón', 'Alta', NULL, 21, NULL),
('Análisis geofísico y geoquímico', 'Evaluación de calidad y cantidad del carbón', 'Media', NULL, 21, NULL),
('Estudios de viabilidad', 'Análisis económico y ambiental', 'Alta', NULL, 21, NULL),
('Elaboración de informes', 'Presentación de resultados', 'Baja', NULL, 21, NULL),
('Obtención de permisos', 'Licencias para la exploración', 'Alta', NULL, 21, NULL),

('Diseño de infraestructura', 'Galerías, túneles y accesos', 'Alta', NULL, 22, NULL),
('Planificación de extracción', 'Secuencia de extracción y transporte', 'Media', NULL, 22, NULL),
('Evaluación de riesgos', 'Seguridad en la mina', 'Alta', NULL, 22, NULL),
('Selección de maquinaria', 'Equipos necesarios', 'Media', NULL, 22, NULL),
('Cronogramas y presupuestos', 'Establecimiento de plazos y costos', 'Baja', NULL, 22, NULL),

('Excavación de galerías', 'Creación de espacios subterráneos', 'Alta', NULL, 23, NULL),
('Sistemas de ventilación', 'Asegurar aire fresco en la mina', 'Media', NULL, 23, NULL),
('Construcción de accesos', 'Vías de entrada y salida', 'Alta', NULL, 23, NULL),
('Montaje de equipos', 'Instalación de maquinaria', 'Media', NULL, 23, NULL),
('Medidas de seguridad', 'Protección de los trabajadores', 'Baja', NULL, 23, NULL),

('Extracción de carbón', 'Mediante palas, cargadores o cintas transportadoras', 'Alta', NULL, 24, NULL),
('Trituración y clasificación', 'Según tamaño y calidad', 'Media', NULL,24 , NULL),
('Carga y transporte', 'Hacia la superficie o puntos de procesamiento', 'Alta', NULL, 24, NULL),
('Limpieza y lavado', 'Eliminación de impurezas', 'Media', NULL, 24, NULL),
('Almacenamiento temporal', 'Previo a la comercialización', 'Baja', NULL, 24, NULL),

('Retiro de equipos', 'Desmantelamiento de maquinaria', 'Alta', NULL, 25, NULL),
('Relleno y sellado', 'Cierre seguro de galerías y túneles', 'Media', NULL, 25, NULL),
('Rehabilitación del terreno', 'Restauración del entorno afectado', 'Alta', NULL, 25, NULL),
('Monitoreo ambiental', 'Seguimiento a largo plazo', 'Media', NULL, 25, NULL),
('Informes finales', 'Cierre administrativo', 'Baja', NULL, 25, NULL),

-- MANGANESO

('Prospección geológica', 'Identificación de áreas con mineral', 'Alta', NULL, 26, NULL),
('Análisis de calidad', 'Evaluación del mineral detectado', 'Media', NULL, 26, NULL),
('Evaluación económica', 'Viabilidad del proyecto', 'Alta', NULL, 26, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 26, NULL),
('Informes técnicos', 'Presentación de resultados', 'Media', NULL, 26, NULL),

('Construcción de obras', 'Tiros, frentes, rampas', 'Alta', NULL, 27, NULL),
('Preparación para explotación', 'Acondicionamiento del área', 'Media', NULL, 27, NULL),
('Diseño de la mina', 'Planificación de operaciones', 'Alta', NULL, 27, NULL),
('Evaluación de riesgos', 'Seguridad en la mina', 'Media', NULL, 27, NULL),
('Selección de equipos', 'Maquinaria necesaria', 'Baja', NULL, 27, NULL),

('Extracción racional', 'Sistemas sostenibles', 'Alta', NULL, 28, NULL),
('Uso de sistemas', 'Tecnología de extracción', 'Media', NULL, 28, NULL),
('Minas subterráneas', 'Unidad Molango', 'Alta', NULL, 28, NULL),
('Transporte del mineral', 'Hacia planta de procesamiento', 'Media', NULL, 28, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 28, NULL),

('Calcinar y reducir', 'Carbonatos de manganeso', 'Alta', NULL, 29, NULL),
('Horno de nodulización', 'Formación de nódulos de manganeso', 'Media', NULL, 29, NULL),
('Enfriamiento y endurecimiento', 'Proceso posterior al horno', 'Alta', NULL, 29, NULL),
('Almacenamiento temporal', 'Previo a la siguiente etapa', 'Media', NULL, 29, NULL),
('Transporte', 'Traslado de nódulos', 'Baja', NULL, 29, NULL),

('Trituración y molienda', 'Nódulos de manganeso', 'Alta', NULL, 30, NULL),
('Separación magnética', 'Obtención de concentrados', 'Media', NULL, 30, NULL),
('Fundición y refinamiento', 'Procesamiento del concentrado', 'Alta', NULL, 30, NULL),
('Moldeo y fabricación', 'Productos de manganeso', 'Media', NULL, 30, NULL),
('Almacenamiento y distribución', 'Listos para su uso', 'Baja', NULL, 30, NULL),

-- NIQUEL

('Prospección geológica', 'Identificación de áreas con níquel', 'Alta', NULL, 31, NULL),
('Análisis de muestras', 'Evaluación de presencia de níquel', 'Media', NULL, 31, NULL),
('Estudios geofísicos', 'Definición de posibles yacimientos', 'Alta', NULL, 31, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 31, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 31, NULL),

('Perforaciones', 'Obtención de muestras', 'Alta', NULL, 32, NULL),
('Análisis de muestras', 'Evaluación de contenido de níquel', 'Media', NULL, 32, NULL),
('Calidad y cantidad', 'Determinación de recursos', 'Alta', NULL, 32, NULL),
('Diseño de futuras perforaciones', 'Planificación de exploración', 'Media', NULL, 32, NULL),
('Registro y documentación', 'Datos para futuras etapas', 'Baja', NULL, 32, NULL),

('Extracción de mineral', 'Minas a cielo abierto o subterráneas', 'Alta', NULL, 33, NULL),
('Carga y transporte', 'Hacia planta de procesamiento', 'Media', NULL, 33, NULL),
('Trituración y clasificación', 'Preparación del mineral', 'Alta', NULL, 33, NULL),
('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 33, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 33, NULL),

('Reducción a NiO', 'Proceso de tostación al aire', 'Alta', NULL, 34, NULL),
('Obtención de ferroníquel', 'Aleaciones de níquel y hierro', 'Media', NULL, 34, NULL),
('Separación de elementos', 'Otros componentes presentes', 'Alta', NULL, 34, NULL),
('Refinamiento y purificación', 'Mejora de la calidad del níquel', 'Media', NULL, 34, NULL),
('Almacenamiento', 'Previo a la siguiente etapa', 'Baja', NULL, 34, NULL),

('Refinamiento', 'Refinmiento para su proceso de fundicion', 'Alta',NULL,35, NULL),
('Fundición de níquel', 'Obtención de lingotes', 'Alta', NULL, 35, NULL),
('Ajuste de composición', 'Adaptación a requerimientos', 'Media', NULL, 35, NULL),
('Verificación de calidad', 'Control de pureza', 'Alta', NULL, 35, NULL),
('Almacenamiento', 'Productos finales listos para uso', 'Media', NULL, 35, NULL),

-- COBRE
('Estudios geológicos', 'Identificación de áreas con potencial', 'Alta', NULL, 36, NULL),
('Análisis de muestras', 'Evaluación de presencia de cobre', 'Media', NULL, 36, NULL),
('Evaluación económica', 'Viabilidad del yacimiento', 'Alta', NULL, 36, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 36, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 36,NULL),

('Extracción de mineral', 'Minería a cielo abierto o subterránea', 'Alta', NULL, 37, NULL),
('Carga y transporte', 'Hacia planta de procesamiento', 'Media', NULL, 37, NULL),
('Trituración y clasificación', 'Preparación del mineral', 'Alta', NULL, 37, NULL),
('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 37, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 37, NULL),

('Trituración y molienda', 'Preparación del mineral', 'Alta', NULL, 38, NULL),
('Concentración por flotación', 'Separación de minerales', 'Media', NULL, 38, NULL),
('Separación de elementos', 'Otros componentes presentes', 'Alta', NULL, 38, NULL),
('Preparación del concentrado', 'Producto listo para fundición', 'Media', NULL, 38, NULL),
('Almacenamiento temporal', 'Previo a fundición', 'Baja', NULL, 38, NULL),

-- Etapa de Fundición
('Fusión de concentrado', 'Obtención de ánodo de cobre', 'Alta', NULL, 39, NULL),
('Separación de impurezas', 'Proceso de purificación', 'Media', NULL, 39, NULL),
('Ánodo de cobre impuro', 'Resultado de la fundición', 'Alta', NULL, 39, NULL),
('Almacenamiento temporal', 'Previo a la refinación', 'Media', NULL, 39, NULL),
('Recuperación de metales valiosos', 'Extracción de otros metales presentes', 'Baja', NULL, 39, NULL),
-- Etapa de Refinación
('Electrorrefinación', 'Purificación del ánodo', 'Alta', NULL, 40, NULL),
('Electrodo de cobre puro', 'Resultado final', 'Media', NULL, 40, NULL),
('Separación de elementos', 'Ajuste de composición química', 'Alta', NULL, 40, NULL),
('Verificación de calidad', 'Control de pureza', 'Baja', NULL, 40, NULL),
('Almacenamiento', 'Cobre listo para uso', 'Media', NULL, 40, NULL),

-- MERCURIO
('Estudios geológicos', 'Identificación de áreas con potencial', 'Alta', NULL, 41, NULL),
('Análisis de muestras', 'Evaluación de presencia de mercurio', 'Media', NULL, 41, NULL),
('Evaluación económica', 'Viabilidad del yacimiento', 'Alta', NULL, 41, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 41, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 41, NULL),

('Recolección de muestras', 'Representativas de suelo y roca', 'Alta', NULL, 42, NULL),
('Análisis químico', 'Determinación de concentración de mercurio', 'Media', NULL, 42, NULL),
('Calidad y cantidad', 'Evaluación de recursos', 'Alta', NULL, 42, NULL),
('Diseño de futuras campañas', 'Planificación de muestreo', 'Media', NULL, 42, NULL),
('Registro y documentación', 'Datos para futuras etapas', 'Baja', NULL, 42, NULL),

('Métodos geofísicos', 'Detección de anomalías', 'Alta', NULL, 43, NULL),
('Interpretación de datos', 'Identificación de yacimientos', 'Media', NULL, 43, NULL),
('Evaluación de riesgos', 'Seguridad en la exploración', 'Alta', NULL, 43, NULL),
('Informes técnicos', 'Resultados geofísicos', 'Media', NULL, 43, NULL),
('Integración de datos', 'Complemento con otros estudios', 'Baja', NULL, 43, NULL),

('Perforaciones en subsuelo', 'Obtención de muestras', 'Alta', NULL, 44, NULL),
('Análisis de muestras', 'Evaluación de contenido de mercurio', 'Media', NULL, 44, NULL),
('Calidad y cantidad', 'Determinación de recursos', 'Alta', NULL, 44, NULL),
('Diseño de futuras campañas', 'Planificación de muestreo', 'Media', NULL, 44, NULL),
('Registro y documentación', 'Datos para futuras etapas', 'Baja', NULL, 44, NULL),

('Tecnologías libres de mercurio', 'Separación del mineral', 'Alta', NULL, 45, NULL),
('Recuperación de mercurio', 'Uso de retortas', 'Media', NULL, 45, NULL),
('Almacenamiento seguro', 'Mercurio recuperado', 'Alta', NULL, 45, NULL),
('Evaluación ambiental', 'Cumplimiento de normativas', 'Media', NULL, 45, NULL),
('Prácticas sostenibles', 'Seguridad en la extracción', 'Baja', NULL, 45, NULL),

-- ######################## PLOMO #####################################

('Estudios geológicos', 'Identificación de áreas con potencial', 'Alta', NULL, 46, NULL),
('Análisis de muestras', 'Evaluación de presencia de plomo', 'Media', NULL, 46, NULL),
('Evaluación económica', 'Viabilidad del yacimiento', 'Alta', NULL, 46, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 46, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 46, NULL),

('Extracción de mineral', 'Minería a cielo abierto o subterránea', 'Alta', NULL, 47, NULL),
('Carga y transporte', 'Hacia planta de procesamiento', 'Media', NULL, 47, NULL),
('Trituración y clasificación', 'Preparación del mineral', 'Alta', NULL, 47, NULL),
('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 47, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 47, NULL),

('Trituración y molienda', 'Preparación del mineral', 'Alta', NULL, 48, NULL),
('Concentración por flotación', 'Separación de minerales', 'Media', NULL, 48, NULL),
('Separación de elementos', 'Otros componentes presentes', 'Alta', NULL, 48, NULL),
('Preparación del concentrado', 'Producto listo para fundición', 'Media', NULL, 48, NULL),
('Almacenamiento temporal', 'Previo a fundición', 'Baja', NULL, 48, NULL),

('Fusión de concentrado', 'Obtención de plomo bruto', 'Alta', NULL, 49, NULL),
('Separación de impurezas', 'Proceso de purificación', 'Media', NULL, 49, NULL),
('Plomo bruto impuro', 'Resultado de la fundición', 'Alta', NULL, 49, NULL),
('Almacenamiento temporal', 'Previo a la refinación', 'Media', NULL, 49, NULL),
('Recuperación de metales valiosos', 'Extracción de otros metales presentes', 'Baja', NULL, 49, NULL),

('Electrorrefinación', 'Purificación del plomo bruto', 'Alta', NULL, 50, NULL),
('Electrodo de plomo puro', 'Resultado final', 'Media', NULL, 50, NULL),
('Separacion de otros elementos', 'Se separa el plomo de otros elementos','Alta' ,NULL, 50, NULL),
('Ajuste composicion quimica','Ajuste composicion segun las necesidades del mercado','Alta', NULL, 50, NULL),
('Almacenamiento', 'Plomo listo para uso', 'Alta', NULL, 50, NULL),

-- PLATA

('Estudios geológicos', 'Identificación de áreas con potencial', 'Alta', NULL, 51, NULL),
('Análisis de muestras', 'Evaluación de presencia de plata', 'Media', NULL, 51, NULL),
('Evaluación económica', 'Viabilidad del yacimiento', 'Alta', NULL, 51, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 51, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 51, NULL),

('Construcción de infraestructura', 'Preparación para la explotación', 'Alta', NULL, 52, NULL),
('Preparación de accesos', 'Galerías y túneles', 'Media', NULL, 52,NULL),
('Sistemas de ventilación', 'Seguridad en la mina', 'Alta', NULL, 52, NULL),
('Áreas de trabajo y almacenamiento', 'Organización del espacio', 'Media', NULL, 52, NULL),
('Evaluación continua', 'Seguridad y rendimiento', 'Baja', NULL, 52, NULL),

('Extracción de mineral', 'Minería subterránea o a cielo abierto', 'Alta', NULL, 53, NULL),
('Carga y transporte', 'Hacia planta de procesamiento', 'Media', NULL, 53, NULL),
('Trituración y clasificación', 'Preparación del mineral', 'Alta', NULL, 53, NULL),
('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 53, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 53, NULL),

('Trituración y molienda', 'Preparación del mineral', 'Alta', NULL, 54, NULL),
('Concentración por flotación', 'Separación de minerales', 'Media', NULL, 54, NULL),
('Separación de elementos', 'Otros componentes presentes', 'Alta', NULL, 54, NULL),
('Preparación de plata pura', 'Producto listo para fundición', 'Media', NULL, 54, NULL),
('Almacenamiento temporal', 'Previo a función y refinado', 'Baja', NULL, 54, NULL),

('Electrorrefinación', 'Purificación de plata pura', 'Alta', NULL, 55, NULL),
('Eliminación de impurezas', 'Proceso de refinado', 'Media', NULL, 55, NULL),
('Plata de alta pureza', 'Resultado final', 'Alta', NULL, 55, NULL),
('Almacenamiento seguro', 'Producto listo para uso', 'Media', NULL, 55, NULL),
('Evaluación de calidad', 'Cumplimiento de estándares', 'Baja', NULL, 55, NULL),

-- BARIO
('Estudios geológicos', 'Identificación de áreas con potencial', 'Alta', NULL, 56, NULL),
('Análisis de muestras', 'Evaluación de presencia de bario', 'Media', NULL, 56, NULL),
('Evaluación económica', 'Viabilidad del yacimiento', 'Alta', NULL, 56, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 56, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 56, NULL),

('Construcción de infraestructura', 'Preparación para la explotación', 'Alta', NULL, 57, NULL),
('Preparación de accesos', 'Galerías y túneles', 'Media', NULL, 57, NULL),
('Sistemas de ventilación', 'Seguridad en la mina', 'Alta', NULL, 57, NULL),
('Áreas de trabajo y almacenamiento', 'Organización del espacio', 'Media', NULL, 57, NULL),
('Evaluación continua', 'Seguridad y rendimiento', 'Baja', NULL, 57, NULL),

('Extracción de mineral', 'Minería subterránea o a cielo abierto', 'Alta', NULL, 58, NULL),
('Carga y transporte', 'Hacia planta de procesamiento', 'Media', NULL, 58, NULL),
('Trituración y clasificación', 'Preparación del mineral', 'Alta', NULL, 58, NULL),
('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 58, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 58, NULL),
	
('Trituración y molienda', 'Preparación del mineral', 'Alta', NULL, 59, NULL),
('Concentración por flotación', 'Separación de minerales', 'Media', NULL, 59, NULL),
('Separación de elementos', 'Otros componentes presentes', 'Alta', NULL, 59, NULL),
('Preparación de bario', 'Producto listo para refinado', 'Media', NULL, 59, NULL),
('Almacenamiento temporal', 'Previo a la refinación', 'Baja', NULL, 59, NULL),
	
('Refinado químico', 'Purificación del bario', 'Alta', NULL, 60, NULL),
('Eliminación de impurezas', 'Proceso de refinado', 'Media', NULL, 60, NULL),
('Bario de alta pureza', 'Resultado final', 'Alta', NULL, 60, NULL),
('Almacenamiento seguro', 'Producto listo para uso', 'Media', NULL, 60, NULL),
('Evaluación de calidad', 'Cumplimiento de estándares', 'Baja', NULL, 60, NULL),

-- CALCIO

('Estudios geológicos', 'Identificación de áreas con potencial', 'Alta', NULL, 61, NULL),
('Análisis de muestras', 'Evaluación de presencia de calcio', 'Media', NULL, 61, NULL),
('Evaluación económica', 'Viabilidad del yacimiento', 'Alta', NULL, 61, NULL),
('Obtención de permisos', 'Licencias para exploración', 'Baja', NULL, 61, NULL),
('Informes técnicos', 'Resultados de la exploración', 'Media', NULL, 61, NULL),
	
('Extracción de mineral', 'Minería subterránea o a cielo abierto', 'Alta', NULL, 62, NULL),
('Carga y transporte', 'Hacia planta de procesamiento', 'Media', NULL, 62, NULL),
('Preparación del mineral', 'Clasificación y trituración', 'Alta', NULL, 62, NULL),
('Evaluación continua', 'Seguridad y rendimiento', 'Media', NULL, 62, NULL),
('Almacenamiento temporal', 'Previo a procesamiento', 'Baja', NULL, 62, NULL),
	
('Trituración', 'Reducción del tamaño del mineral', 'Alta', NULL, 63, NULL),
('Molienda', 'Obtención de partículas finas', 'Media', NULL, 63, NULL),
('Clasificación', 'Separación por tamaño', 'Alta', NULL, 63, NULL),
('Almacenamiento temporal', 'Material triturado y molido', 'Media', NULL, 63, NULL),
('Preparación para procesamiento', 'Siguiente etapa', 'Baja', NULL, 63, NULL),

('Separación de impurezas', 'Proceso de purificación', 'Alta', NULL, 64, NULL),
('Eliminación de elementos no deseados', 'Refinado del material', 'Media', NULL, 64, NULL),
('Concentrado de calcio puro', 'Resultado final', 'Alta', NULL, 64, NULL),
('Almacenamiento temporal', 'Previo a procesamiento final', 'Media', NULL, 64, NULL),
('Preparación para procesamiento', 'Siguiente etapa', 'Baja', NULL, 64, NULL),

('Calcifiacion','se transforma el mineral de calcio en productos como la cal o el carbonato de calcio','Alta',NULL, 65,NULL),
('Control calidad','Se realizan pruebas y análisis para garantizar que el producto cumpla con los estándares requeridos','Media',NULL,65, NULL),
('Empaquetado','Se prepara el producto final para su distribución y uso, asegurando su calidad y presentación','Alta',NULL,65,NULL),
('Almacenamiento',' El producto se almacena adecuadamente para su posterior comercialización','Alta',NULL,65,NULL),
('Cierre','Rehabilitación del sitio minero','Media',NULL,65,NULL),

-- CAOLIN

-- Exploración
    ('Estudios geológicos', 'Identificación de áreas de caolín', 'Alta', NULL, 66, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 66, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 66, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 66, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL,66, NULL),
-- Extracción
    ('Excavación', 'Remoción del caolín de la mina', 'Alta', NULL, 67, NULL),
    ('Carga y transporte', 'Envío a planta de procesamiento', 'Media', NULL, 67, NULL),
    ('Medidas de seguridad', 'Prevención de accidentes', 'Baja', NULL, 67, NULL),
    ('Monitoreo de calidad', 'Verificación del caolín extraído', 'Media', NULL, 67, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Alta', NULL, 67, NULL),
-- Procesamiento
    ('Trituración y molienda', 'Reducción del tamaño del caolín', 'Alta', NULL, 68, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 68, NULL),
    ('Secado del caolín', 'Eliminación de humedad', 'Baja', NULL, 68, NULL),
    ('Mezcla y homogeneización', 'Preparación para clasificación', 'Media', NULL, 68, NULL),
    ('Control de calidad', 'Verificación durante el procesamiento', 'Alta', NULL, 68, NULL),
-- Secado
    ('Secado industrial', 'Reducción de humedad del caolín', 'Alta', NULL, 69, NULL),
    ('Control de temperatura', 'Ajuste para consistencia deseada', 'Media', NULL, 69, NULL),
    ('Almacenamiento temporal', 'Caolín seco antes de clasificación', 'Baja', NULL, 69, NULL),
    ('Verificación de humedad', 'Antes de la clasificación', 'Media', NULL, 69, NULL),
    ('Registro de datos', 'Seguimiento del proceso de secado', 'Alta', NULL, 69, NULL),
-- Clasificación
    ('Separación por pureza', 'Clasificación del caolín según su calidad', 'Alta', NULL, 70, NULL),
    ('Etiquetado', 'Identificación de lotes de caolín', 'Media', NULL, 70, NULL),
    ('Empaque para envío', 'Preparación para clientes', 'Baja', NULL, 70, NULL),
    ('Documentación de lotes', 'Registro de datos de clasificación', 'Media', NULL, 70, NULL),
    ('Monitoreo de demanda', 'Ajuste de producción según mercado', 'Alta', NULL, 70, NULL),

-- #################### CALIZA ##########################

-- Exploración y prospección
    ('Estudios geológicos', 'Identificación de áreas de caliza', 'Alta', NULL, 71, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 71, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 71, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 71, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 71, NULL),
-- Extracción de caliza
    ('Excavación', 'Remoción de la caliza de la mina', 'Alta', NULL, 72, NULL),
    ('Carga y transporte', 'Envío a planta de procesamiento', 'Media', NULL, 72, NULL),
    ('Medidas de seguridad', 'Prevención de accidentes', 'Baja', NULL, 72, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Media', NULL, 72, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Alta', NULL, 72, NULL),
-- Trituración y Molienda
    ('Trituración', 'Reducción del tamaño de la caliza', 'Alta', NULL, 73, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL,73, NULL),
    ('Mezcla y homogeneización', 'Preparación para procesamiento', 'Baja', NULL, 73, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 73, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 73, NULL),
-- Calcinación
    ('Calcinación', 'Proceso de alta temperatura', 'Alta', NULL, 74, NULL),
    ('Control de temperatura', 'Ajuste preciso durante la calcinación', 'Media', NULL, 74, NULL),
    ('Enfriamiento y almacenamiento', 'Tratamiento posterior a la calcinación', 'Baja', NULL, 74, NULL),
    ('Verificación de calidad', 'Evaluación del producto calcinado', 'Media', NULL, 74, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Alta', NULL, 74, NULL),
-- Hidratación
    ('Hidratación', 'Mezcla con agua para cal apagada', 'Alta', NULL, 75, NULL),
    ('Control de proporción', 'Adecuado mezclado', 'Media', NULL, 75, NULL),
    ('Almacenamiento y envasado', 'Preparación del producto final', 'Baja', NULL, 75, NULL),
    ('Verificación de calidad', 'Consistencia del producto', 'Media', NULL, 75, NULL),
    ('Documentación de lotes', 'Registro de cal apagada', 'Alta', NULL, 75, NULL),

-- ########################### PIRITA #######################################
    ('Estudios geológicos', 'Identificación de áreas de pirita', 'Alta', NULL, 76, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 76, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 76, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 76, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 76, NULL),

    ('Diseño de infraestructura', 'Planificación de accesos y túneles', 'Alta', NULL, 77, NULL),
    ('Construcción de caminos', 'Preparación de vías de acceso', 'Media', NULL, 77, NULL),
    ('Instalación de ventilación', 'Sistemas para la mina', 'Baja', NULL, 77, NULL),
    ('Medidas de seguridad', 'Prevención de riesgos', 'Media', NULL, 77, NULL),
    ('Preparación para extracción', 'Acondicionamiento de la mina', 'Alta', NULL, 77, NULL),

    ('Excavación', 'Remoción de la pirita de la mina', 'Alta', NULL, 78, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 78, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 78, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 78, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 78, NULL),

    ('Trituración y molienda', 'Reducción del tamaño de la pirita', 'Alta', NULL, 79, NULL),
    ('Separación de impurezas', 'Concentración del mineral', 'Media', NULL, 79, NULL),
    ('Flotación', 'Obtención de concentrado de pirita', 'Baja', NULL, 79, NULL),
    ('Secado y almacenamiento', 'Guardado temporal del concentrado', 'Media', NULL, 79, NULL),
    ('Control de calidad', 'Verificación durante el procesamiento', 'Alta', NULL, 79, NULL),

    ('Fundición', 'Obtención de sulfuro de hierro', 'Alta', NULL, 80, NULL),
    ('Refinado', 'Producción de pirita pura', 'Media', NULL, 80, NULL),
    ('Moldeado y enfriamiento', 'Formación del producto fundido', 'Baja', NULL, 80, NULL),
    ('Verificación de calidad', 'Evaluación del producto final', 'Media', NULL, 80, NULL),
    ('Documentación de lotes', 'Registro de pirita refinada', 'Alta', NULL, 80, NULL),

-- ########### TALCO #######################

    ('Estudios geológicos', 'Identificación de áreas de talco', 'Alta', NULL, 81, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 81, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 81, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 81, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 81, NULL),

    ('Excavación', 'Remoción de talco de la mina', 'Alta', NULL, 82, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 82, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 82, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 82, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 82, NULL),
	
    ('Separación por calidad', 'Clasificación del talco', 'Alta', NULL, 83, NULL),
    ('Etiquetado', 'Identificación de lotes de talco', 'Media', NULL, 83, NULL),
    ('Empaque para envío', 'Preparación para clientes', 'Baja', NULL, 83, NULL),
    ('Documentación de lotes', 'Registro de datos de clasificación', 'Media', NULL, 83, NULL),
    ('Monitoreo de demanda', 'Ajuste de producción según mercado', 'Alta', NULL, 83, NULL),

    ('Inspección visual', 'Verificación de calidad', 'Alta', NULL, 84, NULL),
    ('Selección manual', 'Separación de impurezas', 'Media', NULL, 84, NULL),
    ('Control de tamaño', 'Ajuste según especificaciones', 'Baja', NULL, 84, NULL),
    ('Registro de datos', 'Documentación de selección', 'Media', NULL, 84, NULL),
    ('Empaque y almacenamiento', 'Preparación para su uso', 'Alta', NULL, 84, NULL),

    ('Trituración y molienda', 'Reducción del tamaño del talco', 'Alta', NULL, 85, NULL),
    ('Separación de impurezas', 'Limpieza y concentración', 'Media', NULL, 85, NULL),
    ('Secado y almacenamiento', 'Guardado temporal del talco procesado', 'Baja', NULL, 85, NULL),
    ('Control de calidad', 'Verificación durante el procesamiento', 'Media', NULL, 85, NULL),
    ('Documentación de lotes', 'Registro de datos del producto final', 'Alta', NULL, 85, NULL),

-- ################################## ZINC ###################
    ('Estudios geológicos', 'Identificación de áreas de zinc', 'Alta', NULL, 86, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 86, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 86, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 86, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 86, NULL),

    ('Excavación', 'Remoción de zinc de la mina', 'Alta', NULL, 87, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 87, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 87, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 87, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 87, NULL),

    ('Calcinación', 'Oxidación del zinc y sulfuro', 'Alta', NULL, 88, NULL),
    ('Reducción a polvo', 'Obtención de óxido de zinc', 'Media', NULL, 88, NULL),
    ('Lixiviación con ácido sulfúrico', 'Extracción del zinc', 'Baja', NULL, 88, NULL),
    ('Neutralización', 'Ajuste del pH', 'Media', NULL, 88, NULL),
    ('Filtración de contaminantes', 'Eliminación de impurezas', 'Alta', NULL, 88, NULL),

    ('Lixiviación con ácido', 'Extracción de zinc disuelto', 'Alta', NULL, 89, NULL),
    ('Filtración', 'Separación de sólidos', 'Media', NULL, 89, NULL),
    ('Ajuste de pH', 'Control de la solución', 'Baja', NULL, 89, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 89, NULL),
    ('Preparación para neutralización', 'Tratamiento posterior', 'Alta', NULL, 89, NULL),

    ('Ajuste de pH', 'Equilibrio de la solución', 'Alta', NULL, 90, NULL),
    ('Neutralización con cal', 'Estabilización del pH', 'Media', NULL, 90, NULL),
    ('Almacenamiento temporal', 'Guardado del zinc procesado', 'Baja', NULL, 90, NULL),
    ('Verificación de calidad', 'Evaluación del producto final', 'Media', NULL, 90, NULL),
    ('Documentación de lotes', 'Registro de datos', 'Alta', NULL, 90, NULL),

-- ################# CIANITA ########################
    ('Estudios geológicos', 'Identificación de áreas de cianita', 'Alta', NULL, 91, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 91, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 91, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 91, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 91, NULL),

    ('Excavación', 'Remoción de cianita de la mina', 'Alta', NULL, 92, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 92, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 92, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 92, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 92, NULL),

    ('Separación por calidad', 'Clasificación de la cianita', 'Alta', NULL, 93, NULL),
    ('Etiquetado', 'Identificación de lotes de cianita', 'Media', NULL, 93, NULL),
    ('Empaque para envío', 'Preparación para clientes', 'Baja', NULL, 93, NULL),
    ('Documentación de lotes', 'Registro de datos de clasificación', 'Media', NULL, 93, NULL),
    ('Monitoreo de demanda', 'Ajuste de producción según mercado', 'Alta', NULL, 93, NULL),

    ('Trituración', 'Reducción del tamaño de la cianita', 'Alta', NULL, 94, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 94, NULL),
    ('Mezcla y homogeneización', 'Preparación para procesamiento', 'Baja', NULL, 94, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 94, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 94, NULL),

    ('Secado y almacenamiento', 'Guardado temporal de la cianita', 'Alta', NULL, 95, NULL),
    ('Control de calidad', 'Verificación durante el procesamiento', 'Media', NULL, 95, NULL),
    ('Documentación de lotes', 'Registro de datos del producto final', 'Baja', NULL, 95, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Media', NULL, 95, NULL),
    ('Verificación de pureza', 'Evaluación de la calidad', 'Alta', NULL, 95, NULL),

-- ##################  DOLOMITA

    ('Estudios geológicos', 'Identificación de áreas de dolomita', 'Alta', NULL, 96, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 96, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 96, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 96, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 96, NULL),

    ('Planificación de perforación', 'Diseño de la estrategia de perforación', 'Alta', NULL, 97, NULL),
    ('Perforación de testigos', 'Obtención de muestras de dolomita', 'Media', NULL, 97, NULL),
    ('Control geológico', 'Verificación de la información obtenida', 'Baja', NULL,97, NULL),
    ('Registro de datos', 'Documentación de los testigos', 'Media', NULL, 97, NULL),
    ('Análisis de muestras', 'Determinación de la calidad de la dolomita', 'Alta', NULL, 97, NULL),

    ('Diseño de voladura', 'Planificación de explosiones controladas', 'Alta', NULL, 98, NULL),
    ('Perforación de barrenos', 'Preparación para la voladura', 'Media', NULL, 98, NULL),
    ('Carga de explosivos', 'Introducción de material explosivo', 'Baja', NULL, 98, NULL),
    ('Voladura controlada', 'Obtención de fragmentos de dolomita', 'Media', NULL, 98, NULL),
    ('Seguridad en la voladura', 'Prevención de riesgos', 'Alta', NULL, 98, NULL),

    ('Trituración', 'Reducción del tamaño de la dolomita', 'Alta', NULL, 99, NULL),
    ('Clasificación por tamaño', 'Separación de fragmentos', 'Media', NULL, 99, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 99, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 99, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 99, NULL),

    ('Secado y almacenamiento', 'Guardado temporal de la dolomita procesada', 'Alta', NULL, 100, NULL),
    ('Control de calidad', 'Verificación durante el procesamiento', 'Media', NULL, 100, NULL),
    ('Documentación de lotes', 'Registro de datos del producto final', 'Baja', NULL, 100, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Media', NULL, 100, NULL),
    ('Verificación de pureza', 'Evaluación de la calidad', 'Alta', NULL, 100, NULL),

-- #################### titanio

    ('Estudios geológicos', 'Identificación de áreas de titanio', 'Alta', NULL, 101, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 101, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 101, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 101, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL,101, NULL),

    ('Excavación', 'Remoción de titanio de la mina', 'Alta', NULL, 102, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 102, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 102, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 102, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 102, NULL),
	
    ('Trituración', 'Reducción del tamaño del titanio', 'Alta', NULL, 103, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 103, NULL),
    ('Mezcla y homogeneización', 'Preparación para procesamiento', 'Baja', NULL, 103, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 103, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 103, NULL),

    ('Molienda', 'Reducción adicional del tamaño del titanio', 'Alta', NULL, 104, NULL),
    ('Clasificación por tamaño', 'Separación de partículas', 'Media', NULL, 104, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 104, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 104, NULL),
    ('Almacenamiento temporal', 'Guardado del material molido', 'Alta', NULL, 104, NULL),

    ('Separación magnética', 'Extracción de titanio mediante imanes', 'Alta', NULL, 105, NULL),
    ('Flotación', 'Separación de titanio de otros minerales', 'Media', NULL, 105, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 105, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 105, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 105, NULL),

-- ################ TUNGSTENO

    ('Estudios geológicos', 'Identificación de áreas de tungsteno', 'Alta', NULL, 106, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 106, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 106, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 106, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 106, NULL),

    ('Excavación', 'Remoción de tungsteno de la mina', 'Alta', NULL, 107, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 107, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 107, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 107, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 107, NULL),

    ('Trituración', 'Reducción del tamaño del tungsteno', 'Alta', NULL, 108, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 108, NULL),
    ('Mezcla y homogeneización', 'Preparación para procesamiento', 'Baja', NULL, 108, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 108, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 108, NULL),

    ('Molienda', 'Reducción adicional del tamaño del tungsteno', 'Alta', NULL, 109, NULL),
    ('Clasificación por tamaño', 'Separación de partículas', 'Media', NULL, 109, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 109, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 109, NULL),
    ('Almacenamiento temporal', 'Guardado del material molido', 'Alta', NULL, 109, NULL),

    ('Flotación', 'Separación de tungsteno de otros minerales', 'Alta', NULL, 110, NULL),
    ('Control de pH', 'Ajuste de la solución', 'Media', NULL, 110, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 110, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 110, NULL),
    ('Empaque', 'Listo para su uso o envío', 'Alta', NULL,110, NULL),

--  ########### magnesio

    ('Estudios geológicos', 'Identificación de áreas de magnesio', 'Alta', NULL, 111, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 111, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 111, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 111, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 111, NULL),

    ('Excavación', 'Remoción de magnesio de la mina', 'Alta', NULL, 112, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 112, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 112, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 112, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 112, NULL),

    ('Trituración', 'Reducción del tamaño del magnesio', 'Alta', NULL, 113, NULL),
    ('Clasificación por tamaño', 'Separación de fragmentos', 'Media', NULL, 113, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 113, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 113, NULL),
    ('Almacenamiento temporal', 'Guardado del material preparado', 'Alta', NULL, 113, NULL),

    ('Calcinación', 'Proceso de calentamiento controlado', 'Alta', NULL, 114, NULL),
    ('Reducción de carbonato de magnesio', 'Obtención de óxido de magnesio', 'Media', NULL, 114, NULL),
    ('Control de temperatura', 'Ajuste para la calcinación', 'Baja', NULL, 114, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 114, NULL),
    ('Almacenamiento temporal', 'Guardado del material calcinado', 'Alta', NULL, 114, NULL),

    ('Separación magnética', 'Extracción de magnesio mediante imanes', 'Alta', NULL, 115, NULL),
    ('Flotación', 'Separación de magnesio de otros minerales', 'Media', NULL, 115, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 115, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 115, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 115, NULL),

--  ################### ANDALUCITA 

    ('Estudios geológicos', 'Identificación de áreas de andalucita', 'Alta', NULL, 116, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 116, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 116, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 116, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 116, NULL),

    ('Planificación de infraestructura', 'Diseño y preparación', 'Alta', NULL, 117, NULL),
    ('Construcción de accesos', 'Vías de acceso a la mina', 'Media', NULL, 117, NULL),
    ('Instalación de servicios', 'Agua, electricidad, u otros', 'Baja', NULL, 117, NULL),
    ('Preparación de áreas de trabajo', 'Acondicionamiento del sitio', 'Media', NULL, 117, NULL),
    ('Seguridad y señalización', 'Medidas para la operación', 'Alta', NULL, 117, NULL),

    ('Excavación', 'Remoción de andalucita de la mina', 'Alta', NULL, 118, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 118, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 118, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 118, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 118, NULL),

    ('Trituración', 'Reducción del tamaño de la andalucita', 'Alta', NULL, 119, NULL),
    ('Clasificación por tamaño', 'Separación de fragmentos', 'Media', NULL, 119, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 119, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 119, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 119, NULL),

    ('Separación por calidad', 'Clasificación de la andalucita', 'Alta', NULL, 120, NULL),
    ('Etiquetado', 'Identificación de lotes de andalucita', 'Media', NULL, 120, NULL),
    ('Empaque para envío', 'Preparación para clientes', 'Baja', NULL, 120, NULL),
    ('Documentación de lotes', 'Registro de datos de clasificación', 'Media', NULL, 120, NULL),
    ('Monitoreo de demanda', 'Ajuste de producción según mercado', 'Alta', NULL, 120, NULL),

--  antmonio

    ('Estudios geológicos', 'Identificación de áreas de antimonio', 'Alta', NULL, 121, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 121, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 121, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 121, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 121, NULL),

    ('Excavación', 'Remoción de antimonio de la mina', 'Alta', NULL, 122, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 122, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 122, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 122, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 122, NULL),

    ('Trituración', 'Reducción del tamaño del antimonio', 'Alta', NULL, 123, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 123, NULL),
    ('Mezcla y homogeneización', 'Preparación para procesamiento', 'Baja', NULL, 123, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 123, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 123, NULL),

    ('Molienda', 'Reducción adicional del tamaño del antimonio', 'Alta', NULL, 124, NULL),
    ('Clasificación por tamaño', 'Separación de partículas', 'Media', NULL, 124, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 124, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 124, NULL),
    ('Almacenamiento temporal', 'Guardado del material molido', 'Alta', NULL, 124, NULL),

    ('Flotación', 'Separación de antimonio de otros minerales', 'Alta', NULL, 125, NULL),
    ('Control de pH', 'Ajuste de la solución', 'Media', NULL, 125, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 125, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 125, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 125, NULL),

-- ############################# cromo

    ('Estudios geológicos', 'Identificación de áreas de cromo', 'Alta', NULL, 126, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 126, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 126, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 126, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 126, NULL),

    ('Planificación de infraestructura', 'Diseño y preparación', 'Alta', NULL, 127, NULL),
    ('Construcción de accesos', 'Vías de acceso a la mina', 'Media', NULL, 127, NULL),
    ('Instalación de servicios', 'Agua, electricidad, u otros', 'Baja', NULL, 127, NULL),
    ('Preparación de áreas de trabajo', 'Acondicionamiento del sitio', 'Media', NULL, 127, NULL),
    ('Seguridad y señalización', 'Medidas para la operación', 'Alta', NULL, 127, NULL),

    ('Excavación', 'Remoción de cromo de la mina', 'Alta', NULL, 128, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 128, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 128, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 128, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 128, NULL),

    ('Trituración', 'Reducción del tamaño del cromo', 'Alta', NULL, 129, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Media', NULL, 129, NULL),
    ('Mezcla y homogeneización', 'Preparación para procesamiento', 'Baja', NULL, 129, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 129, NULL),
    ('Almacenamiento temporal', 'Guardado del material triturado', 'Alta', NULL, 129, NULL),

    ('Separación magnética', 'Extracción de cromo mediante imanes', 'Alta', NULL, 130, NULL),
    ('Flotación', 'Separación de cromo de otros minerales', 'Media', NULL, 130, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 130, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 130, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 130, NULL),

-- ######### asbesto

    ('Estudios geológicos', 'Identificación de áreas de asbesto', 'Alta', NULL, 131, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 131, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 131, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 131, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 131, NULL),

    ('Planificación de infraestructura', 'Diseño y preparación', 'Alta', NULL, 132, NULL),
    ('Construcción de accesos', 'Vías de acceso a la mina', 'Media', NULL, 132, NULL),
    ('Instalación de servicios', 'Agua, electricidad, u otros', 'Baja', NULL, 132, NULL),
    ('Preparación de áreas de trabajo', 'Acondicionamiento del sitio', 'Media', NULL, 132, NULL),
    ('Seguridad y señalización', 'Medidas para la operación', 'Alta', NULL, 132, NULL),

    ('Excavación', 'Remoción de asbesto de la mina', 'Alta', NULL, 133, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 133, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 133, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL,133, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 133, NULL),

    ('Trituración', 'Reducción del tamaño del asbesto', 'Alta', NULL, 134, NULL),
    ('Clasificación por tamaño', 'Separación de fibras', 'Media', NULL, 134, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 134, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 134, NULL),
    ('Almacenamiento temporal', 'Guardado del material procesado', 'Alta', NULL, 134, NULL),

    ('Separación magnética', 'Extracción de fibras de asbesto mediante imanes', 'Alta', NULL, 135, NULL),
    ('Flotación', 'Separación de asbesto de otros minerales', 'Media', NULL, 135, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 135, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 135, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 135, NULL),

-- feldestapo

    ('Estudios geológicos', 'Identificación de áreas de feldespato', 'Alta', NULL, 136, NULL),
    ('Muestreo del suelo', 'Análisis para determinar presencia y calidad', 'Media', NULL, 136, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL,136, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 136, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 136, NULL),

    ('Planificación de infraestructura', 'Diseño y preparación', 'Alta', NULL, 137, NULL),
    ('Construcción de accesos', 'Vías de acceso a la mina', 'Media', NULL, 137, NULL),
    ('Instalación de servicios', 'Agua, electricidad, u otros', 'Baja', NULL, 137, NULL),
    ('Preparación de áreas de trabajo', 'Acondicionamiento del sitio', 'Media', NULL, 137, NULL),
    ('Seguridad y señalización', 'Medidas para la operación', 'Alta', NULL, 137, NULL),

    ('Excavación', 'Remoción de feldespato de la mina', 'Alta', NULL, 138, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 138, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 138, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 138, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 138, NULL),

    ('Trituración', 'Reducción del tamaño del feldespato', 'Alta', NULL, 139, NULL),
    ('Clasificación por tamaño', 'Separación de partículas', 'Media', NULL, 139, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 139, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 139, NULL),
    ('Almacenamiento temporal', 'Guardado del material procesado', 'Alta', NULL, 139, NULL),

    ('Separación magnética', 'Extracción de feldespato mediante imanes', 'Alta', NULL, 140, NULL),
    ('Flotación', 'Separación de feldespato de otros minerales', 'Media', NULL, 140, NULL),
    ('Filtración', 'Eliminación de partículas no deseadas', 'Baja', NULL, 140, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 140, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 140, NULL),

--  arena

    ('Estudios geológicos', 'Identificación de áreas de arena', 'Alta', NULL, 141, NULL),
    ('Muestreo del suelo', 'Análisis para determinar calidad y cantidad', 'Media', NULL, 141, NULL),
    ('Evaluación económica y ambiental', 'Viabilidad de la explotación', 'Baja', NULL, 141, NULL),
    ('Investigación de permisos', 'Obtención de licencias', 'Media', NULL, 141, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de exploración', 'Alta', NULL, 141, NULL),

    ('Excavación', 'Remoción de arena de la mina', 'Alta', NULL, 142, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 142, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 142, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 142, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 142, NULL),

    ('Separación por tamaño', 'Clasificación de partículas de arena', 'Alta', NULL, 143, NULL),
    ('Eliminación de impurezas', 'Limpieza y separación', 'Media', NULL, 143, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Baja', NULL, 143, NULL),
    ('Almacenamiento temporal', 'Guardado del material clasificado', 'Media', NULL, 143, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 143, NULL),

    ('Lavado de arena', 'Eliminación de impurezas mediante agua', 'Alta', NULL, 144, NULL),
    ('Clasificación por tamaño', 'Separación de partículas lavadas', 'Media', NULL, 144, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Baja', NULL, 144, NULL),
    ('Almacenamiento temporal', 'Guardado del material lavado', 'Media', NULL, 144, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 144, NULL),

    ('Secado de arena', 'Eliminación de humedad', 'Alta', NULL, 145, NULL),
    ('Clasificación final', 'Última separación por tamaño', 'Media', NULL, 145, NULL),
    ('Control de calidad', 'Verificación antes del almacenamiento', 'Baja', NULL, 145, NULL),
    ('Almacenamiento final', 'Guardado del material seco', 'Media', NULL, 145, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 145, NULL),

--  cal

    ('Excavación de caliza', 'Remoción de caliza de la mina', 'Alta', NULL, 146, NULL),
    ('Transporte', 'Envío a planta de procesamiento', 'Media', NULL, 146, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 146, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación', 'Media', NULL, 146, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 146, NULL),

    ('Cocción de caliza', 'Calentamiento para obtener cal viva', 'Alta', NULL, 147, NULL),
    ('Control de temperatura', 'Ajuste para la cocción', 'Media', NULL, 147, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Baja', NULL, 147, NULL),
    ('Almacenamiento temporal', 'Guardado del material cocido', 'Media', NULL, 147, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 147, NULL),

    ('Apagado de cal viva', 'Reacción con agua para obtener cal hidratada', 'Alta', NULL, 148, NULL),
    ('Control de pH', 'Ajuste para la reacción', 'Media', NULL, 148, NULL),
    ('Filtración', 'Eliminación de impurezas', 'Baja', NULL,  148, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 148, NULL),
    ('Almacenamiento temporal', 'Guardado del material apagado', 'Alta', NULL, 148, NULL),

    ('Molienda de cal hidratada', 'Reducción del tamaño del material', 'Alta', NULL, 149, NULL),
    ('Clasificación por tamaño', 'Separación de partículas molidas', 'Media', NULL, 149, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 149, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 149, NULL),
    ('Almacenamiento temporal', 'Guardado del material molido', 'Alta', NULL, 149, NULL),

    ('Envasado de cal', 'Preparación para su comercialización', 'Alta', NULL, 150, NULL),
    ('Etiquetado', 'Identificación de lotes de cal', 'Media', NULL, 150, NULL),
    ('Empaque para envío', 'Listo para distribución', 'Baja', NULL, 150, NULL),
    ('Registro de datos', 'Documentación del proceso', 'Media', NULL, 150, NULL),
    ('Almacenamiento final', 'Guardado del material envasado', 'Alta', NULL, 150, NULL),

-- granito

    ('Estudios geológicos', 'Análisis y evaluación del yacimiento de granito', 'Alta', NULL, 151, NULL),
    ('Prospectiva de recursos', 'Determinación de la cantidad y calidad del granito', 'Media', NULL, 151, NULL),
    ('Planificación de la explotación', 'Definición de estrategias y métodos', 'Baja', NULL, 151, NULL),
    ('Permisos y licencias', 'Trámites legales y autorizaciones', 'Media', NULL, 151, NULL),
    ('Establecimiento de campamentos', 'Logística para el equipo de estudio', 'Alta', NULL, 151, NULL),

    ('Planificación de rutas', 'Diseño de caminos y accesos', 'Alta', NULL, 152, NULL),
    ('Infraestructura de transporte', 'Construcción de vías y puentes', 'Media', NULL, 152, NULL),
    ('Equipamiento de transporte', 'Adquisición de maquinaria', 'Baja', NULL, 152, NULL),
    ('Seguridad vial', 'Medidas para el transporte seguro', 'Media', NULL, 152, NULL),
    ('Logística de carga', 'Optimización del transporte de bloques', 'Alta', NULL, 152, NULL),

    ('Remoción de capa superficial', 'Eliminación de suelo y roca no mineral', 'Alta', NULL, 153, NULL),
    ('Excavación de granito', 'Extracción de la capa de granito', 'Media', NULL, 153, NULL),
    ('Carga y transporte', 'Envío a planta de procesamiento', 'Baja', NULL, 153, NULL),
    ('Control de calidad', 'Verificación del material extraído', 'Media', NULL, 153, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 153, NULL),

    ('División de bloques', 'Separación de grandes masas de granito', 'Alta', NULL, 154, NULL),
    ('Corte con hilo diamantado', 'Precisión en la extracción', 'Media', NULL, 154, NULL),
    ('Control de calidad', 'Verificación de la calidad del granito', 'Baja', NULL, 154, NULL),
    ('Almacenamiento temporal', 'Guardado de bloques extraídos', 'Media', NULL, 154, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 154, NULL),

    ('Corte de bloques', 'Precisión en la conformación', 'Alta', NULL, 155, NULL),
    ('Elevación de bloques', 'Levantamiento y transporte vertical', 'Media', NULL, 155, NULL),
    ('Control de calidad', 'Verificación antes del almacenamiento', 'Baja', NULL, 155, NULL),
    ('Almacenamiento final', 'Guardado de bloques listos', 'Media', NULL, 155, NULL),
    ('Empaque y preparación', 'Listo para su uso o envío', 'Alta', NULL, 155, NULL),

-- yeso
    ('Estudios geológicos', 'Análisis y evaluación del yacimiento de yeso', 'Alta', NULL, 156, NULL),
    ('Prospectiva de recursos', 'Determinación de las reservas de yeso', 'Media', NULL, 156, NULL),
    ('Planificación de la explotación', 'Definición de método y ritmo de explotación', 'Baja', NULL, 156, NULL),
    ('Ubicación de escombreras', 'Determinación de áreas para desechos', 'Media', NULL, 156, NULL),
    ('Instalaciones de acceso', 'Planificación de caminos y accesos', 'Alta', NULL, 156, NULL),

    ('Perforación de yeso', 'Creación de perforaciones para voladuras', 'Alta', NULL, 157, NULL),
    ('Control de calidad', 'Verificación de la calidad del material perforado', 'Media', NULL, 157, NULL),
    ('Registro de datos', 'Documentación de la perforación', 'Baja', NULL, 157, NULL),
    ('Seguridad en perforación', 'Medidas para la seguridad del personal', 'Media', NULL, 157, NULL),
    ('Equipamiento de perforación', 'Selección y uso de maquinaria', 'Alta', NULL, 157, NULL),

    ('Voladura de yeso', 'Uso de explosivos para fragmentar el material', 'Alta', NULL, 158, NULL),
    ('Diseño de voladuras', 'Parámetros y planificación de explosiones', 'Media', NULL, 158, NULL),
    ('Control de seguridad', 'Medidas para la seguridad en voladuras', 'Baja', NULL, 158, NULL),
    ('Registro de datos', 'Documentación de las voladuras', 'Media', NULL, 158, NULL),
    ('Seguimiento de resultados', 'Verificación de la eficacia de las voladuras', 'Alta', NULL, 158, NULL),

    ('Carga de yeso', 'Transporte del material volado', 'Alta', NULL, 159, NULL),
    ('Transporte a planta', 'Envío del yeso a la planta de procesamiento', 'Media', NULL, 159, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 159, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación de equipos', 'Media', NULL, 159, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 159, NULL),

    ('Trituración de yeso', 'Reducción del tamaño del material', 'Alta', NULL, 160, NULL),
    ('Clasificación por tamaño', 'Separación de partículas trituradas', 'Media', NULL, 160, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 160, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 160, NULL),
    ('Almacenamiento temporal', 'Guardado del yeso procesado', 'Alta', NULL, 160, NULL),

-- arcilla

    ('Estudios geológicos', 'Análisis y evaluación del yacimiento de arcilla', 'Alta', NULL, 161, NULL),
    ('Prospectiva de recursos', 'Determinación de las reservas de arcilla', 'Media', NULL, 161, NULL),
    ('Planificación de la explotación', 'Definición de método y ritmo de explotación', 'Baja', NULL, 161, NULL),
    ('Ubicación de escombreras', 'Determinación de áreas para desechos', 'Media', NULL, 161, NULL),
    ('Instalaciones de acceso', 'Planificación de caminos y accesos', 'Alta', NULL, 161, NULL),

    ('Mapeo con drones', 'Captura de datos detallados del terreno', 'Alta', NULL, 162, NULL),
    ('Exploración geoquímica local', 'Muestreo de suelos y rocas', 'Media', NULL, 162, NULL),
    ('Mapeo geológico a detalle', 'Descripción precisa de la geología', 'Baja', NULL, 162, NULL),
    ('Exploración geofísica local', 'Métodos geofísicos para caracterizar el subsuelo', 'Media', NULL, 162, NULL),
    ('Perforación minera', 'Obtención de muestras del subsuelo', 'Alta', NULL, 162, NULL),

    ('Perforación de arcilla', 'Creación de perforaciones para muestreo', 'Alta', NULL, 163, NULL),
    ('Control de calidad', 'Verificación de la calidad del material perforado', 'Media', NULL, 163, NULL),
    ('Registro de datos', 'Documentación de la perforación', 'Baja', NULL, 163, NULL),
    ('Seguridad en perforación', 'Medidas para la seguridad del personal', 'Media', NULL, 163, NULL),
    ('Equipamiento de perforación', 'Selección y uso de maquinaria', 'Alta', NULL, 163, NULL),

    ('Carga de arcilla', 'Transporte del material extraído', 'Alta', NULL, 164, NULL),
    ('Transporte a planta', 'Envío de arcilla a la planta de procesamiento', 'Media', NULL, 164, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 164, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación de equipos', 'Media', NULL, 164, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 164, NULL),

    ('Trituración de arcilla', 'Reducción del tamaño del material', 'Alta', NULL, 165, NULL),
    ('Clasificación por tamaño', 'Separación de partículas trituradas', 'Media', NULL, 165, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 165, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 165, NULL),
    ('Almacenamiento temporal', 'Guardado de arcilla procesada', 'Alta', NULL, 165, NULL),

-- baritina

    ('Estudios geológicos', 'Análisis y evaluación del yacimiento de baritina', 'Alta', NULL, 166, NULL),
    ('Prospectiva de recursos', 'Determinación de las reservas de baritina', 'Media', NULL, 166, NULL),
    ('Planificación de la explotación', 'Definición de método y ritmo de explotación', 'Baja', NULL, 166, NULL),
    ('Ubicación de escombreras', 'Determinación de áreas para desechos', 'Media', NULL, 166, NULL),
    ('Instalaciones de acceso', 'Planificación de caminos y accesos', 'Alta', NULL, 166, NULL),

    ('Perforación de baritina', 'Creación de perforaciones para muestreo', 'Alta', NULL, 167, NULL),
    ('Control de calidad', 'Verificación de la calidad del material perforado', 'Media', NULL, 167, NULL),
    ('Registro de datos', 'Documentación de la perforación', 'Baja', NULL, 167, NULL),
    ('Seguridad en perforación', 'Medidas para la seguridad del personal', 'Media', NULL, 167, NULL),
    ('Equipamiento de perforación', 'Selección y uso de maquinaria', 'Alta', NULL, 167, NULL),

    ('Voladura de baritina', 'Uso de explosivos para fragmentar el material', 'Alta', NULL, 168, NULL),
    ('Diseño de voladuras', 'Parámetros y planificación de explosiones', 'Media', NULL, 168, NULL),
    ('Control de seguridad', 'Medidas para la seguridad en voladuras', 'Baja', NULL, 168, NULL),
    ('Registro de datos', 'Documentación de las voladuras', 'Media', NULL, 168, NULL),
    ('Seguimiento de resultados', 'Verificación de la eficacia de las voladuras', 'Alta', NULL, 168, NULL),

    ('Carga de baritina', 'Transporte del material extraído', 'Alta', NULL, 169, NULL),
    ('Transporte a planta', 'Envío de baritina a la planta de procesamiento', 'Media', NULL, 169, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 169, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación de equipos', 'Media', NULL, 169, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 169, NULL),

    ('Trituración de baritina', 'Reducción del tamaño del material', 'Alta', NULL, 170, NULL),
    ('Clasificación por tamaño', 'Separación de partículas trituradas', 'Media', NULL, 170, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 170, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 170, NULL),
    ('Almacenamiento temporal', 'Guardado de baritina procesada', 'Alta', NULL, 170, NULL),

-- bentonita

    ('Estudios geológicos', 'Análisis y evaluación del yacimiento de bentonita', 'Alta', NULL, 171, NULL),
    ('Prospectiva de recursos', 'Determinación de las reservas de bentonita', 'Media', NULL, 171, NULL),
    ('Planificación de la explotación', 'Definición de método y ritmo de explotación', 'Baja', NULL, 171, NULL),
    ('Ubicación de escombreras', 'Determinación de áreas para desechos', 'Media', NULL, 171, NULL),
    ('Instalaciones de acceso', 'Planificación de caminos y accesos', 'Alta', NULL, 171, NULL),

    ('Diseño de mina', 'Planificación detallada de la explotación', 'Alta', NULL, 172, NULL),
    ('Estudio de viabilidad económica', 'Análisis de costos y beneficios', 'Media', NULL, 172, NULL),
    ('Selección de maquinaria', 'Equipamiento necesario para la extracción', 'Baja', NULL, 172, NULL),
    ('Seguridad en diseño', 'Medidas para la seguridad en la mina', 'Media', NULL, 172, NULL),
    ('Planificación ambiental', 'Consideraciones ecológicas y de restauración', 'Alta', NULL, 172, NULL),

    ('Preparación del terreno', 'Acondicionamiento del área de explotación', 'Alta', NULL, 173, NULL),
    ('Infraestructura de la mina', 'Construcción de caminos, instalaciones, u otros', 'Media', NULL, 173, NULL),
    ('Equipamiento de seguridad', 'Implementación de medidas de prevención', 'Baja', NULL, 173, NULL),
    ('Control de calidad inicial', 'Verificación de los primeros materiales extraídos', 'Media', NULL, 173, NULL),
    ('Capacitación del personal', 'Formación para el trabajo en la mina', 'Alta', NULL, 173, NULL),

    ('Carga de bentonita', 'Transporte del material extraído', 'Alta', NULL, 174, NULL),
    ('Transporte a planta', 'Envío de bentonita a la planta de procesamiento', 'Media', NULL, 174, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL, 174, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación de equipos', 'Media', NULL, 174, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL, 174, NULL),

    ('Trituración de bentonita', 'Reducción del tamaño del material', 'Alta', NULL, 175, NULL),
    ('Clasificación por tamaño', 'Separación de partículas trituradas', 'Media', NULL, 175, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 175, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 175, NULL),
    ('Almacenamiento final', 'Guardado de bentonita procesada', 'Alta', NULL, 175, NULL),

	-- azufre
    ('Estudios geológicos', 'Análisis y evaluación del yacimiento de azufre', 'Alta', NULL, 176, NULL),
    ('Prospectiva de recursos', 'Determinación de las reservas de azufre', 'Media', NULL, 176, NULL),
    ('Planificación de la explotación', 'Definición de método y ritmo de explotación', 'Baja', NULL, 176, NULL),
    ('Ubicación de escombreras', 'Determinación de áreas para desechos', 'Media', NULL, 176, NULL),
    ('Instalaciones de acceso', 'Planificación de caminos y accesos', 'Alta', NULL, 176, NULL),

    ('Diseño de mina', 'Planificación detallada de la explotación', 'Alta', NULL, 177, NULL),
    ('Estudio de viabilidad económica', 'Análisis de costos y beneficios', 'Media', NULL, 177, NULL),
    ('Selección de maquinaria', 'Equipamiento necesario para la extracción', 'Baja', NULL, 177, NULL),
    ('Seguridad en diseño', 'Medidas para la seguridad en la mina', 'Media', NULL, 177, NULL),
    ('Planificación ambiental', 'Consideraciones ecológicas y de restauración', 'Alta', NULL, 177, NULL),

    ('Preparación del terreno', 'Acondicionamiento del área de explotación', 'Alta', NULL, 178, NULL),
    ('Infraestructura de la mina', 'Construcción de caminos, instalaciones, u otros', 'Media', NULL, 178, NULL),
    ('Equipamiento de seguridad', 'Implementación de medidas de prevención', 'Baja', NULL, 178, NULL),
    ('Control de calidad inicial', 'Verificación de los primeros materiales extraídos', 'Media', NULL, 178, NULL),
    ('Capacitación del personal', 'Formación para el trabajo en la mina', 'Alta', NULL, 178, NULL),

    ('Carga de azufre', 'Transporte del material extraído', 'Alta', NULL, 179, NULL),
    ('Transporte a planta', 'Envío de azufre a la planta de procesamiento', 'Media', NULL,  179, NULL),
    ('Monitoreo de calidad', 'Verificación del material extraído', 'Baja', NULL,  179, NULL),
    ('Mantenimiento de maquinaria', 'Cuidado y reparación de equipos', 'Media', NULL,  179, NULL),
    ('Seguridad en la mina', 'Control durante la extracción', 'Alta', NULL,  179, NULL),

    ('Trituración de azufre', 'Reducción del tamaño del material', 'Alta', NULL, 180, NULL),
    ('Clasificación por tamaño', 'Separación de partículas trituradas', 'Media', NULL, 180, NULL),
    ('Limpieza y separación', 'Eliminación de impurezas', 'Baja', NULL, 180, NULL),
    ('Control de calidad', 'Verificación durante el proceso', 'Media', NULL, 180, NULL),
    ('Almacenamiento final', 'Guardado de azufre procesado', 'Alta', NULL, 180, NULL);