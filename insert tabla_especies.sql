--contenido tabla_especies
INSERT INTO public.tabla_especies(id_especie, nombre_especie)VALUES (1, 'Human');
INSERT INTO public.tabla_especies(id_especie, nombre_especie)VALUES (2, 'Alien');
INSERT INTO public.tabla_especies(id_especie, nombre_especie)VALUES (3, 'Humanoid');
INSERT INTO public.tabla_especies(id_especie, nombre_especie)VALUES (4, 'Cronenberg');
INSERT INTO public.tabla_especies(id_especie, nombre_especie)VALUES (5, 'Animal');
INSERT INTO public.tabla_especies(id_especie, nombre_especie)VALUES (6, 'Mytological Creature');

--correcion tipo de dato columna origen
ALTER TABLE tabla_personajes
ALTER COLUMN origen TYPE varchar
USING origen::varchar;

--contenido tabla_personajes
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (1, 'Alien Rick', 'Male', 'unknown', 2);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (2, 'Woman Rick', 'Female', 'unknown', 2);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (3, 'Rick Sanchez', 'Male', 'Earth (C-137)', 1);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (4, 'Adjudicator Rick', 'Male', 'unknown', 1);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (5, 'Doofus Rick', 'Male', 'Earth (J197)', 1);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (6, 'Fascist Shrimp Rick', 'Male', 'Earth (Fascist Shrimp Dimension)', 5);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (7, 'Cronenberg Rick', 'Male', 'Cronenberg Earth', 4);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (8, 'Truth Tortoise', 'Male', 'unknown', 6);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (9, 'Vampire Master', 'Male', 'Earth (Replacement Dimension)', 6);
INSERT INTO public.tabla_personajes(id_personaje, nombre_personaje, genero, origen, fk_especie)VALUES (10, 'Zeep Xanflorp', 'Male', 'Ricks Battery Microverse', 3);

--correccion de error ñ
ALTER TABLE tabla_pais_español RENAME TO tabla_pais_espanol;

--correccion tipo de dato de entrada
ALTER TABLE tabla_pais_espanol ALTER COLUMN area_km TYPE INTEGER;
ALTER TABLE tabla_pais_espanol ALTER COLUMN poblacion TYPE INTEGER;


--contenido tabla_pais_espanol
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (1, 'Ecuador', 'Quito', 276841, 'South America', 17643060);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (2, 'Bolivia', 'Sucre', 1098581, 'South America', 11673029);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (3, 'Colombia', 'Bogotá', 1141748, 'South America', 50882884);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (4, 'Honduras', 'Tegucigalpa', 112492, 'North America', 9904608);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (5, 'Costa Rica', 'San José', 51100, 'North America', 5094114);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (6, 'Dominican Republic', 'Santo Domingo', 48671, 'North America', 10847904);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (7, 'Spain', 'Madrid', 505992, 'Europe', 47351567);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (8, 'Chile', 'Santiago', 756102, 'South America', 19116209);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (9, 'El Salvador', 'San Salvador', 21041, 'North America', 6486201);
INSERT INTO public.tabla_pais_espanol(id_paises, nombre_paises, capital, area_km, continente, poblacion)VALUES (10, 'Equatorial Guinea', 'Malabo', 28051, 'Africa', 1402985);


--correccion longitud varchar
ALTER TABLE tabla_nombre_pais_traducciones ALTER COLUMN traduccion_comun TYPE VARCHAR(80);
ALTER TABLE tabla_nombre_pais_traducciones ALTER COLUMN traduccion_oficial TYPE VARCHAR(80);


--contenido tabla_nombre_pais_traducciones
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (1, 'fra', 'République de Guinée équatoriale', 'Guinée équatoriale', 10);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (2, 'zho', '赤道几内亚共和国', '赤道几内亚', 10);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (3, 'por', 'Reino de Espanha', 'Espanha', 7);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (4, 'tur', 'Kolombiya Cumhuriyeti', 'Kolombiya', 3);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (5, 'hrv', 'Dominikanska Republika', 'Dominikanska Republika', 6);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (6, 'fra', 'République Dominicaine', 'République dominicaine', 6);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (7, 'ces', 'Ekvádorská republika', 'Ekvádor', 1);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (8, 'pol', 'Ekwador', 'Ekwador', 1);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (9, 'tur', 'Ekvador Cumhuriyeti', 'Ekvador', 1);
INSERT INTO public.tabla_nombre_pais_traducciones(id_traduccion, nombre_idioma, traduccion_oficial, traduccion_comun, fk_pais)VALUES (10, 'bre', 'Stad Liesvroadel Bolivia', 'Bolivia', 2);

--contenido tabla union_pais_personaje
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (1, 1, 10);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (2, 2, 9);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (3, 3, 8);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (4, 4, 7);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (5, 5, 6);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (6, 6, 6);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (7, 7, 4);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (8, 8, 3);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (9, 9, 10);
INSERT INTO public.union_pais_personaje(id_personaje_pais, fk_pais, fk_personaje) VALUES (10, 10, 10);