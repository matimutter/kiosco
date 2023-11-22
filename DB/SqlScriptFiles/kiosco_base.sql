create database if not exists kioscoDB;
use kioscoDB;

CREATE TABLE IF NOT EXISTS usuario (
    id VARCHAR(20) NOT NULL UNIQUE,
    clave VARCHAR(30) NOT NULL,
    ci INT(8) UNSIGNED,
    nombre VARCHAR(45),
	apellido VARCHAR(45),
    es_admin BOOLEAN NOT NULL,
    salario_por_hora DECIMAL(15,2),
    ultima_actividad TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP () ON UPDATE CURRENT_TIMESTAMP (),
    deshabilitado BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (`id`),
    UNIQUE 
);

CREATE TABLE IF NOT EXISTS producto (
    prducto_id SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    detalle VARCHAR(50),
    categoria VARCHAR(20),
    precio DECIMAL(5 , 2 ) NOT NULL,
    proveedor VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS producto_categoria (
    categoria_nombre VARCHAR(20) NOT NULL UNIQUE,
    PRIMARY KEY (`categoria_nombre`)
);
