CREATE DATABASE VETERINARIA;

USE VETERINARIA;

CREATE TABLE TIPOS_ANIMAIS(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ESPECIE VARCHAR(50)
);

CREATE TABLE ANIMAIS(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ESPECIE VARCHAR(50),
	NOME VARCHAR(100),
    DT_NASC CHAR(8),
    COR VARCHAR(15),
    PESO INT NOT NULL,
    ALTURA INT NOT NULL
);

CREATE TABLE VACINACAO(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ESPECIE VARCHAR(100),
	DT_APLIC CHAR(8),
	FOREIGN KEY (ID_ANIMAL)
        REFERENCES TIPOS_ANIMAIS(ID)
);