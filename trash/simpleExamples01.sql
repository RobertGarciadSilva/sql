
-- ALGUNS SIMPLES EXERCICIOS

CREATE DATABASE `sql_learn_clinica`;
USE `sql_learn_clinica`;

CREATE TABLE AMBULATORIOS (
nroa INT PRIMARY KEY,
andar NUMERIC(3) NOT NULL,
capacidade SMALLINT
);

CREATE TABLE MEDICOS (
codm INT PRIMARY KEY,
nome VARCHAR (40) NOT NULL,
idade SMALLINT NOT NULL,
especialidade CHAR (20),
CPF NUMERIC (11), -- UNIQUE,
cidade VARCHAR (30),
nroa INT,
CONSTRAINT NROA_FK FOREIGN KEY (nroa) REFERENCES AMBULATORIOS (nroa)
);

-- alterando coluna cpf para adquirer atributo UNIQUE;
ALTER TABLE MEDICOS
MODIFY cpf NUMERIC (11) UNIQUE;

CREATE TABLE PACIENTES (
codp INT PRIMARY KEY,
nome VARCHAR (40) NOT NULL,
idade SMALLINT NOT NULL,
cidade CHAR (30),
cpf NUMERIC (11) UNIQUE,
doenca VARCHAR (40) NOT NULL
);

CREATE TABLE FUNCIONARIOS (
codf INT PRIMARY KEY,
nome VARCHAR (40) NOT NULL,
idade SMALLINT,
cpf NUMERIC (11) UNIQUE,
cidade VARCHAR (30), 
salario NUMERIC (10),
cargo VARCHAR (20)
);

CREATE TABLE CONSULTAS (
codm INT,
codp INT,
datac DATE,
hora TIME,
CONSTRAINT CONSULTAS_PK PRIMARY KEY (codm, datac, hora),
CONSTRAINT CONSULTAS_MEDICO_FK FOREIGN KEY (codm) REFERENCES
MEDICOS (codm)
);

-- apagando foreign key da tabela CONSULTAS
ALTER TABLE CONSULTAS
DROP FOREIGN KEY CONSULTAS_MEDICO_FK;

-- adicionando novamente constraint foreign key
-- na tabela consultas
ALTER TABLE CONSULTAS
ADD CONSTRAINT CONSULTAS_MEDICO_FK FOREIGN KEY (codm) REFERENCES
MEDICOS (codm);

-- ADICIONANDO UMA COLUNA
ALTER TABLE FUNCIONARIOS
ADD nroa INT;

-- CRIANDO UM INDEX
CREATE UNIQUE INDEX ind_medicos_CPF ON MEDICOS (cpf);

-- APAGANDO O INDEX CRIADO ACIMA
DROP INDEX ind_medicos_CPF ON MEDICOS;


CREATE UNIQUE INDEX ind_pacientes_doenca ON PACIENTES (doenca);

DROP INDEX ind_pacientes_doenca ON PACIENTES;

ALTER TABLE FUNCIONARIOS
DROP COLUMN nroa;

ALTER TABLE FUNCIONARIOS
DROP COLUMN cargo;



-- -------- simples exemplos, populando tabelas

-- usando nomes dos atributos
INSERT INTO AMBULATORIOS (nroa, andar, capacidade) VALUES (1,1,30);

-- sem a utilização dos nomes dos atributos
INSERT INTO AMBULATORIOS VALUES (2,1,50);

INSERT INTO AMBULATORIOS (nroa, andar, capacidade) VALUES (3,2,40);
INSERT INTO AMBULATORIOS VALUES (4,2,25);
INSERT INTO AMBULATORIOS VALUES (5,2,55);

INSERT INTO MEDICOS (codm, nome, idade, especialidade, cpf, cidade, nroa) VALUES
(1,'João', 40, 'ortopedia',10000100000, 'florianopolis', 1);
INSERT INTO MEDICOS VALUES 
(2, 'Maria', 42, 'traumatologista', 10000110000, 'Blumenau', 2);

-- ATUALIZANDO UM REGISTRO
UPDATE MEDICOS SET cidade = 'Florianopolis' WHERE codm = 1;

INSERT INTO MEDICOS VALUES (3, 'Pedro', 51, 'pediatria', 11000100000, 'São José', 2);

-- deixando de passar um valor
INSERT INTO MEDICOS (codm, nome, idade, especialidade, cpf, cidade) VALUES (4, 'Carlos', 28, 'ortopedia', 11000110000, 'Joinvile');

INSERT INTO MEDICOS VALUES (5, 'Marcia', 33, 'neurologico', 11000111000, 'Biguacu', 3);


-- ALGUNS COMENTÁRIOS GERAIS

-- ALTER TABLE PEDITO DROP FOREIGN KEY PEDIDO_CLIENTE_FK;    -- DELETANDO UMA CONTRAINT FOREIGN KEY
