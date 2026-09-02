CREATE DATABASE SoundFlow;

USE SoundFlow;

CREATE TABLE Artistas (
	id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nome_artistico VARCHAR(100) NOT NULL,
    genero_musical VARCHAR(100)
);

CREATE TABLE Albuns (
	id_album INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    ano_lancamento INT,
    id_artista_fk INT,
    CONSTRAINT fk_artista_album
    FOREIGN KEY (id_artista_fk) REFERENCES Artistas (id_artista)
    ON DELETE CASCADE
);

INSERT INTO Artistas (nome_artistico, genero_musical) VALUES
('Taylor Swift', 'Pop'),
('The Weeknd', 'R&B / Pop'),
('Ed Sheeran', 'Pop'),
('Billie Eilish', 'Pop Alternativo'),
('Bruno Mars', 'Pop / R&B'),
('Adele', 'Pop / Soul'),
('Drake', 'Hip Hop / Rap'),
('Beyoncé', 'R&B / Pop'),
('Harry Styles', 'Pop / Rock'),
('Lady Gaga', 'Pop');

INSERT INTO Albuns (titulo, ano_lancamento, id_artista_fk) VALUES
('1989', 2014, 1),
('After Hours', 2020, 2),
('Divide', 2017, 3),
('Happier Than Ever', 2021, 4),
('24K Magic', 2016, 5),
('25', 2015, 6),
('Scorpion', 2018, 7),
('Lemonade', 2016, 8),
('Harry''s House', 2022, 9),
('The Fame', 2008, 10);

SELECT * FROM Artistas;
SELECT * FROM Albuns;