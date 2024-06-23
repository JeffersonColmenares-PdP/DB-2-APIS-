-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS tabla_pais_español
(
    id_paises INTEGER NOT NULL,
    nombre_paises VARCHAR(50) NOT NULL,
    capital VARCHAR(50) NOT NULL,
    area_km DECIMAL(10, 4) NOT NULL,
    continente VARCHAR(30),
    poblacion INTEGER,
    PRIMARY KEY(id_paises)
);

CREATE TABLE IF NOT EXISTS tabla_nombre_pais_traducciones
(
    id_traduccion INTEGER NOT NULL,
    nombre_idioma VARCHAR(30),
    traduccion_oficial VARCHAR(30),
    traduccion_comun VARCHAR(30),
    fk_pais INTEGER,
    PRIMARY KEY(id_traduccion)
);

CREATE TABLE IF NOT EXISTS tabla_personajes
(
    id_personaje INTEGER NOT NULL,
    nombre_personaje VARCHAR(50) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    origen DECIMAL(10, 4) NOT NULL,
    fk_especie INTEGER,
    PRIMARY KEY(id_personaje)
);

CREATE TABLE IF NOT EXISTS tabla_especies
(
    id_especie INTEGER NOT NULL,
    nombre_especie VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_especie)
);

CREATE TABLE IF NOT EXISTS union_pais_personaje
(
    id_personaje_pais INTEGER NOT NULL,
    fk_pais INTEGER NOT NULL,
    fk_personaje INTEGER NOT NULL,
    PRIMARY KEY(id_personaje_pais)
);


-- Create FKs
ALTER TABLE tabla_nombre_pais_traducciones
    ADD    FOREIGN KEY (fk_pais)
    REFERENCES tabla_pais_español(id_paises)
    MATCH SIMPLE
;
    
ALTER TABLE tabla_personajes
    ADD    FOREIGN KEY (fk_especie)
    REFERENCES tabla_especies(id_especie)
    MATCH SIMPLE
;
    
ALTER TABLE union_pais_personaje
    ADD    FOREIGN KEY (fk_pais)
    REFERENCES tabla_pais_español(id_paises)
    MATCH SIMPLE
;
    
ALTER TABLE union_pais_personaje
    ADD    FOREIGN KEY (fk_personaje)
    REFERENCES tabla_personajes(id_personaje)
    MATCH SIMPLE
;

CREATE TABLE IF NOT EXISTS tabla_fronteras
(
    id_frontera INTEGER NOT NULL,
    nombre_frontera VARCHAR(50) NOT NULL,
    longitud_frontera INTEGER NOT NULL,
    descripcion_frontera VARCHAR(50) NOT NULL,
    tipo_frontera VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_frontera)
);

CREATE TABLE IF NOT EXISTS union_pais_fronteras
(
    fk_pais INTEGER NOT NULL,
    fk_frontera INTEGER NOT NULL,
    PRIMARY KEY(fk_pais, fk_frontera)
);


ALTER TABLE union_pais_fronteras
    ADD    FOREIGN KEY (fk_frontera)
    REFERENCES tabla_fronteras(id_frontera)
    MATCH SIMPLE
;
    
ALTER TABLE union_pais_fronteras
    ADD    FOREIGN KEY (fk_pais)
    REFERENCES tabla_pais_español(id_paises)
    MATCH SIMPLE
;

-- Create Indexes

