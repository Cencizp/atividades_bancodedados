USE cinestream2;

CREATE TABLE Filmes (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento DATE,
    duracao_minutos VARCHAR(100) NOT NULL
);

CREATE TABLE Diretor (
	id_diretor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100),
    data_nascimento DATE NOT NULL
);

CREATE TABLE Usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    plano VARCHAR(50) NOT NULL
);

CREATE TABLE Categoria (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_genero VARCHAR(100) NOT NULL
);

INSERT INTO Filmes (titulo, ano_lancamento, duracao_minutos) VALUES
('O Poderoso Chefão', '1972-03-24', '175'),
('Interestelar', '2014-11-06', '169'),
('Titanic', '1997-12-19', '194'),
('Matrix', '1999-03-31', '136'),
('O Senhor dos Anéis: A Sociedade do Anel', '2001-12-19', '178'),
('Vingadores: Ultimato', '2019-04-26', '181'),
('Pulp Fiction', '1994-10-14', '154'),
('Forrest Gump', '1994-07-06', '142'),
('O Rei Leão', '1994-06-24', '88'),
('Coringa', '2019-10-04', '122');

INSERT INTO Diretor (nome, nacionalidade, data_nascimento) VALUES
('Francis Ford Coppola', 'Americana', '1939-04-07'),
('Christopher Nolan', 'Britânica', '1970-07-30'),
('James Cameron', 'Canadense', '1954-08-16'),
('Lana Wachowski', 'Americana', '1965-06-21'),
('Peter Jackson', 'Neozelandesa', '1961-10-31'),
('Anthony Russo', 'Americana', '1970-02-03'),
('Quentin Tarantino', 'Americana', '1963-03-27'),
('Robert Zemeckis', 'Americana', '1952-05-14'),
('Roger Allers', 'Americana', '1949-06-29'),
('Todd Phillips', 'Americana', '1970-12-20');

INSERT INTO Usuario (nome_completo, email, plano) VALUES
('João Silva', 'joao.silva@email.com', 'Premium'),
('Maria Oliveira', 'maria.oliveira@email.com', 'Básico'),
('Carlos Santos', 'carlos.santos@email.com', 'Premium'),
('Ana Souza', 'ana.souza@email.com', 'Básico'),
('Pedro Costa', 'pedro.costa@email.com', 'Família'),
('Juliana Alves', 'juliana.alves@email.com', 'Premium'),
('Lucas Pereira', 'lucas.pereira@email.com', 'Básico'),
('Beatriz Martins', 'beatriz.martins@email.com', 'Família'),
('Rafael Rodrigues', 'rafael.rodrigues@email.com', 'Premium'),
('Camila Ferreira', 'camila.ferreira@email.com', 'Básico');

INSERT INTO Categoria (nome_genero) VALUES
('Ação'),
('Aventura'),
('Comédia'),
('Drama'),
('Ficção Científica'),
('Terror'),
('Romance'),
('Fantasia'),
('Animação'),
('Crime');
