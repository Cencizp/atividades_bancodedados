CREATE DATABASE youtube2;

USE youtube2;

-- Criação Tabela Pai (Independente)

CREATE TABLE Canais (
	id_canal INT PRIMARY KEY AUTO_INCREMENT,
    nome_canal VARCHAR(100) NOT NULL,
    criador VARCHAR(100)
);

-- Criação Tabela Filha (Dependentes)

CREATE TABLE Videos (
	id_video INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    id_canal_fk INT,
    CONSTRAINT fk_canal_video
    FOREIGN KEY (id_canal_fk) REFERENCES Canais (id_canal)
    ON DELETE CASCADE
);

INSERT INTO Canais (nome_canal, criador) VALUES
('Aula de Sql','Professor Léo');

SELECT * FROM Canais;

INSERT INTO Videos (titulo, id_canal_fk) VALUES
('Entendendo FKs', 1);

INSERT INTO Videos (titulo, id_canal_fk) VALUES
('Video Fantasma', 99);

SELECT * FROM Videos;

DELETE FROM Canais WHERE id_canal = 1;