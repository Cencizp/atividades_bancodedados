CREATE DATABASE aulaupdate;

USE aulaupdate;

CREATE TABLE produtos (
	id INT PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO produtos (nome, preco, estoque, categoria) values
('Smartphone X', 2500.00, 15, 'Eletrônicos'),
('Notebook Y', 4200.00, 8, 'Eletrônicos'),
('Cadeira Gamer', 890.00, 0, 'Móveis');

SELECT * FROM produtos;

UPDATE produtos
SET preco = 2300.00
WHERE id = 1;

UPDATE produtos
SET preco = 950.00, estoque = 20
WHERE id = 3;

UPDATE produtos
SET nome = "Headset", preco = 500.00, estoque = 15, categoria = "Periféricos"
WHERE id = 2;

SET SQL_SAFE_UPDATES = 0;

UPDATE produtos
SET preco = 0.00;

CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10, 2),
    estoque INT,
    categoria VARCHAR(50),
    data_cadastro DATE
);

INSERT INTO livros VALUES
(1, 'O Programador Pragmático', 'Andy Hunt', 120.00, 8, 'Tecnologia', '2025-01-10'),
(2, 'Dom Casmurro', 'Machado de Assis', 35.00, 15, 'Literatura', '2025-01-12'),
(3, 'Sapiens', 'Yuval Noah', 80.00, 0, 'História', '2025-02-01'),
(4, 'Clean Code', 'Robert Martin', 150.00, 5, 'Tecnologia', '2025-02-15'),
(5, 'Flores para Algernon', 'Daniel Keyes', 45.00, 12, 'Literatura', '2025-03-01');

SELECT * FROM livros;

UPDATE livros
SET preco = 29.90
WHERE id = 2;

UPDATE livros
SET estoque = 10
WHERE id = 3;

UPDATE livros
SET categoria = "Ciências Humanas"
WHERE id = 3;

UPDATE livros
SET preco = 135.00, estoque = 12
WHERE id = 4;

UPDATE livros
SET categoria = "Clássicos"
WHERE autor = "Machado de Assis";

UPDATE livros
SET preco = preco * 1.10
WHERE categoria = "Tecnologia";

UPDATE livros
SET estoque = estoque - 3
WHERE id = 1;