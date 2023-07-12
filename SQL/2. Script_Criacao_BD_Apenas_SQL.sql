-- Projeto Integrador 2
-- Discentes: Bruna Mattioli de Oliveira e Gabriel Andrade Varga

-- Script de criação das bases de dados no PostgreSQL

CREATE TABLE uf (
	id_uf SERIAL PRIMARY KEY, 
	sigla_uf VARCHAR
);

CREATE TABLE municipio (
	id_municipio SERIAL PRIMARY KEY, 
	nome_municipio VARCHAR,
	id_uf INTEGER
);

CREATE TABLE desmatamento (
	id_desmatamento SERIAL PRIMARY KEY, 
	km_hidrografia NUMERIC(30,2),
	km_area_total NUMERIC(30,2),
	km_desmatado NUMERIC(30,2),
	km_n_floresta NUMERIC(30,2),
	km_nuvem NUMERIC(30,2),
	km_n_obs NUMERIC(30,2),
	km_floresta NUMERIC(30,2),
	id_municipio INTEGER,
	id_ano INTEGER
);

CREATE TABLE ano (
	id_ano SERIAL PRIMARY KEY, 
	ano INTEGER	
);

ALTER TABLE municipio
    ADD FOREIGN KEY (id_uf)
    REFERENCES uf (id_uf);
	
ALTER TABLE desmatamento
    ADD FOREIGN KEY (id_municipio)
    REFERENCES municipio (id_municipio);
	
ALTER TABLE desmatamento
    ADD FOREIGN KEY (id_ano)
    REFERENCES ano (id_ano);

	