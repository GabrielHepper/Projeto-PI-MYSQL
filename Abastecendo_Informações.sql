Gabriel Hepper
Paulo Willian
Yan Müller
João Vitor
Ezequiel 

CREATE DATABASE projectPI;
USE projectPI;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE cadastro(
cod_usuario			INT PRIMARY KEY NOT NULL,
cpf 				VARCHAR(20) NOT NULL,
email 				VARCHAR(50) NOT NULL,
senha				VARCHAR(15) NOT NULL,
numero_do_telefone 	VARCHAR (30) NULL);

CREATE TABLE entrar(
email			VARCHAR(50) NOT NULL,
senha			VARCHAR(15) NOT NULL,
CHECK (email = cadastro.email),
CHECK (senha = cadastro.senha));

CREATE TABLE posto(
cod_posto 		INT PRIMARY KEY NOT NULL,
posto 			VARCHAR(50) NOT NULL,
localizacao 	VARCHAR(60) NOT NULL,
nota 			VARCHAR(100) NULL,
CHECK (nota = avaliacao.nota));

CREATE TABLE avaliacao(
cod_usuario		INT PRIMARY KEY NOT NULL,
comentario		VARCHAR(100) NULL,
cod_do_posto 	VARCHAR(50) NOT NULL,
nota 			INT NULL,
CHECK (cod_usuario = cadastro.cod_usuario));

CREATE TABLE combustiveis(
cod_combustivel INT PRIMARY KEY NOT NULL,
combustivel		VARCHAR(30) NOT NULL,
preco 			VARCHAR(20) NOT NULL);


SELECT * FROM cadastro;
SELECT * FROM entrar;
SELECT * FROM posto;
SELECT * FROM avaliacao;
SELECT * FROM combustiveis;
