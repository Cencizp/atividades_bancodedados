CREATE DATABASE Senai2;

USE Senai2;

CREATE TABLE Professor(
	id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE,
    cidade VARCHAR(50)
);

INSERT INTO Professor (nome, data_nascimento, cidade)
VALUES ('Alceu Matteucci Junior', '2000-12-18', 'Fraiburgo');

INSERT INTO Professor (nome, data_nascimento, cidade)
VALUES ('Leo Victor Corso', '1998-08-01', 'Água Doce');

INSERT INTO Professor (nome, data_nascimento, cidade)
VALUES ('Douglas Tibola Junior', '2005-11-07', 'Ibicaré');

CREATE TABLE Aluno(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE,
    telefone VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL
);

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Leonardo', '2008-12-30', '4999493796','Joaçaba');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Zagonel', '2006-02-21', '4998175430','Joaçaba');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Eric', '2008-04-17', '4998119824','Catanduvas');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Kauã', '2009-04-27', '4998217123','Treze Tílias');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Mayara', '2001-10-14', '4991776257','Catanduvas');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Jeyliel', '2007-02-02', '4999945943','Ouro');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Kaike', '2009-02-11', '4998378702','Herval D Oeste');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('João Vitor', '2004-12-17', '4991163228','Capinzal');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Calléu', '2006-08-14', '4999476690','Água Doce');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Artur', '2008-02-02', '4989091427','Joaçaba');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Gustavo Mauro', '2008-02-22', '4999907981','Catanduvas');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Bruno', '2009-01-05', '4998419202','Tangará');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Guilherme', '2008-10-02', '4999917657','Tangará');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Crystyan', '2008-10-20', '4999496584','Treze Tílias');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Mateus', '2009-02-17', '4999571481','Treze Tílias');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Cenci', '2006-12-05', '4991583807','Treze Tílias');

INSERT INTO Aluno (nome, data_nascimento, telefone, cidade)
VALUES ('Samuel', '2006-02-18', '4998175430','Joaçaba');

CREATE TABLE Disciplina(
	id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO Disciplina (nome)
VALUES ('Desenvolvimento de Sistemas');

INSERT INTO Disciplina (nome)
VALUES ('Mecânica e Manutenção Eletromecânica');

INSERT INTO Disciplina (nome)
VALUES ('Projetista de Máquinas');

INSERT INTO Disciplina (nome)
VALUES ('Eletrotécnica');

INSERT INTO Disciplina (nome)
VALUES ('Liderança de Processos e Pessoas');

INSERT INTO Disciplina (nome)
VALUES ('Automação');

INSERT INTO Disciplina (nome)
VALUES ('Informática para Internet');

CREATE TABLE Sala(
	id_sala INT PRIMARY KEY AUTO_INCREMENT,
    numero_sala VARCHAR(50) NOT NULL,
    tipo_sala VARCHAR(100) NOT NULL
);

INSERT INTO Sala (numero_sala, tipo_sala)
VALUES ('200', 'Gestão');

ALTER TABLE Sala
MODIFY tipo_sala VARCHAR(100);

INSERT INTO Sala (numero_sala, tipo_sala) VALUES

('202', 'Laboratório de Eletrônica'),
('203', 'Laboratório de Eletricidade Predial'),
('204', 'Laboratório de Eletricidade Industrial Avançada'),
('205', 'Laboratório de Aplicação 4.0'),
('206', 'Laboratório de Automação Industrial'),
('207', 'Laboratório de Eletricidade Industrial'),
('208', 'Laboratório SEP'),
('501', 'Comum'),
('502', 'Comum'),
('503', 'Comum'),
('504', 'Comum'),
('505', 'Comum'),
('506', 'Informática'),
('507', 'PCP'),
('508', 'Informática'),
('509', 'Informática'),
('511', 'Depósito'),
('512', 'Informática');

select * from Sala
