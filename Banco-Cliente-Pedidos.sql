CREATE DATABASE LOJA;
USE LOJA;
CREATE TABLE CLIENTES(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (50) NOT NULL,
	endereço VARCHAR (60) NOT NULL,
	Cidade VARCHAR (50) NOT NULL,
	Cep INT NOT NULL
);
    
SELECT * FROM CLIENTES;
INSERT INTO CLIENTES ( nome, endereço, Cidade, Cep)
VALUES
('joão','Rua Barão de Itapetininga numero: 223', 'SP', 8836490),
('vitor','Rua da Consolação numero:663 ', 'SP', 8836490),
('maria','Rua Galvão Bueno numero:6639','SP', 736393 ),
('lucas','Rua Frei Caneca numero: 33', 'SP', 8836490),
('pedro','Rua Oscar Freire numero: 623', 'SP', 8836490);
           
           
           
CREATE TABLE PEDIDOS(
	Num_Pedidos INT PRIMARY KEY AUTO_INCREMENT,
	Data_Pedidos DATE NOT NULL,
	Item VARCHAR (100) NOT NULL, 
	Preço FLOAT NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES (id_cliente)
);

SELECT * FROM PEDIDOS;

INSERT INTO PEDIDOS (Data_Pedidos, Item, Preço, id_cliente)
VALUES
('2006-02-02', 'Mesa', 20, 1),
('2006-02-02', 'Cama', 200, 2),
('2006-02-02', 'Carro', 20000, 3),
('2006-02-02', 'Moto', 40000, 4),
('2006-02-02', 'Cadeira',30, 5);

    