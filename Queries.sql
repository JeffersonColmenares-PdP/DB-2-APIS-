--UPDATE

-- actualizar personaje viaje 7
UPDATE public.union_pais_personaje 
	SET fk_personaje=1
	WHERE id_personaje_pais=7;

-- actualizar origen en indefinido
UPDATE public.tabla_personajes
	SET origen ='Marte'
	WHERE origen = 'unknown' and genero = 'Male';

-- actualizar capital a pais
UPDATE public.tabla_pais_espanol
	SET capital='Bucaramanga'
	WHERE id_paises=3;

--actualizar nombre del idioma
UPDATE public.tabla_nombre_pais_traducciones
	SET nombre_idioma='francia'
	WHERE nombre_idioma='fra';

--actualizar genero en tabla personajes cuando el nombre de la especie en la tabla especie sea alien
UPDATE tabla_personajes
SET genero = 'Female'
FROM tabla_especies
WHERE tabla_personajes.fk_especie = tabla_especies.id_especie
AND tabla_especies.nombre_especie = 'Alien';


--SELECT

--mostrar nombre de personaje que viajo a colombia y la capital del pais
SELECT p.nombre_personaje, pe.capital
FROM tabla_personajes AS p
JOIN union_pais_personaje AS upp ON p.id_personaje = upp.fk_personaje
JOIN tabla_pais_espanol AS pe ON pe.id_paises = upp.fk_pais
WHERE pe.nombre_paises = 'Colombia';


--mostrar nombre de personaje especie humano
SELECT p.nombre_personaje
FROM tabla_personajes AS p
JOIN tabla_especies AS e ON p.fk_especie = e.id_especie
WHERE e.nombre_especie = 'Human';


--mostrar traducciones del nombre del pais cuando nombre del pais es ecuador
SELECT t.traduccion_oficial, t.traduccion_comun, t.nombre_idioma
FROM tabla_nombre_pais_traducciones t
JOIN tabla_pais_espanol p ON t.fk_pais = p.id_paises
WHERE p.nombre_paises = 'Ecuador';

--mostrar todos los datos de la tabla personajes cuando el origen sea la tierra 137
SELECT *
FROM tabla_personajes 
WHERE origen = 'Earth (C-137)';

--mostrar nombre de personajes femeninos
SELECT nombre_personaje
FROM tabla_personajes
WHERE genero = 'Female';