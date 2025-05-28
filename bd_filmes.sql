CREATE DATABASE Filmes; 
USE Filmes;

CREATE TABLE nome_filmes(
filme_id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR (50),
genero VARCHAR (50)
);

CREATE TABLE clientes(
cliente_id INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR (50),
email VARCHAR (100)
);

CREATE TABLE inscricao(
inscricao_id INT AUTO_INCREMENT PRIMARY KEY,
cliente_id INT,
filme_id INT,
data_inscricao DATE NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
FOREIGN KEY (filme_id) REFERENCES nome_filmes (filme_id)
);

INSERT INTO nome_filmes (titulo, genero) VALUES
('Inception', 'Sci-Fi'),
('The Godfather', 'Crime'),
('The Dark Knight', 'Action'),
('Pulp Fiction', 'Drama'),
('Forrest Gump', 'Drama');

INSERT INTO clientes(nome_cliente, email) VALUES
('Alice', 'alice@gmail.com'),
('Bob', 'bob@gmail.com'),
('Charlie', 'teste@gmail.com'),
('David', 'david@outlook.com'),
('Eve', 'eve@outlook.com');

INSERT INTO inscricao (cliente_id, filme_id, data_inscricao) VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-02-01'),
(3, 3, '2023-03-01'),
(4, 4, '2023-04-01'),
(5, 5, '2023-05-01');

SELECT 
    inscricao.inscricao_id,
    inscricao.data_inscricao,
    nome_filmes.titulo
FROM 
    inscricao
INNER JOIN 
    clientes ON inscricao.cliente_id = clientes.cliente_id
INNER JOIN 
    nome_filmes ON inscricao.filme_id = nome_filmes.filme_id;

	
    
