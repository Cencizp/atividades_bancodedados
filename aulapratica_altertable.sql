
CREATE DATABASE AulaPratica1;

USE AulaPratica1;

CREATE TABLE Usuarios (
id INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE Produtos (
id INT PRIMARY KEY,
preco FLOAT,
estoque VARCHAR(10)
);

CREATE TABLE Tbl_Antiga (
id INT PRIMARY KEY, 
col_nome VARCHAR(50)
);

CREATE TABLE Backup_Sistema (
id INT PRIMARY KEY, 
nota_fiscal TEXT, 
lixo_digital VARCHAR(50)
);

CREATE TABLE Mensagens (
id INT PRIMARY KEY, 
texto VARCHAR(255), 
status VARCHAR(20)
);

INSERT INTO Mensagens 
VALUES (1, 'Olá!', 'Lida'), (2, 'SPAM detectado', 'Spam'), (3, 'Conta vencida', 'Spam');

ALTER TABLE Usuarios
ADD COLUMN email VARCHAR(100);

ALTER TABLE Usuarios
ADD COLUMN data_cadastro DATE;

ALTER TABLE Usuarios
ADD COLUMN cpf CHAR(11) UNIQUE;

ALTER TABLE Usuarios
ADD COLUMN status VARCHAR(30);

ALTER TABLE Usuarios
ADD COLUMN idade INT;

DESC Usuarios;

ALTER TABLE Produtos
MODIFY COLUMN preco DECIMAL(10,2);

ALTER TABLE Produtos
MODIFY COLUMN estoque INT;

ALTER TABLE Produtos
MODIFY COLUMN id INT NOT NULL;

ALTER TABLE Produtos
ADD COLUMN nome VARCHAR(150);

ALTER TABLE Produtos
MODIFY COLUMN nome VARCHAR(200);

ALTER TABLE Produtos
MODIFY COLUMN nome CHAR(15);

DESC Produtos;

ALTER TABLE Tbl_Antiga
RENAME COLUMN col_nome TO nome_completo;

ALTER TABLE Tbl_Antiga
ADD COLUMN temp VARCHAR(255);

ALTER TABLE Tbl_Antiga
RENAME COLUMN temp TO obsrvacoes;

ALTER TABLE Usuarios
RENAME COLUMN id TO id_usuario;

DESC Tbl_Antiga;

ALTER TABLE Backup_Sistema
DROP COLUMN lixo_digital;

ALTER TABLE Backup_Sistema
ADD COLUMN temp_data DATE;

ALTER TABLE Backup_Sistema
DROP COLUMN temp_data;

ALTER TABLE Backup_Sistema
DROP COLUMN note;

ALTER TABLE Usuarios
DROP COLUMN idade;

DESC Backup_Sistema;

DELETE FROM Mensagens
WHERE id = 1;

DELETE FROM Mensagens
WHERE status = 'Spam';

INSERT INTO Mensagens (id, texto, status) VALUES
(1, 'Teste', 'Normal');

DELETE FROM Mensagens
WHERE texto = 'Teste';

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE TesteDelete (
	id INT PRIMARY KEY auto_increment,
    nome VARCHAR(100)
);

INSERT INTO TesteDelete (nome) VALUES 
('João'),
('Maria'),
('Pedro'),
('Ana'),
('Carlos');

DELETE FROM TesteDelete;

SELECT * FROM TesteDelete;

DESC Mensagens;
DESC TesteDelete;