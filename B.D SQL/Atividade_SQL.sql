CREATE DATABASE Mercado

USE Mercado

CREATE TABLE Cliente(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nome VARCHAR (30),
	cpf VARCHAR (15),
	data_Cadastro DATE
)

CREATE TABLE Produto(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nome VARCHAR (30),
	preço NUMERIC (6,2),
)

CREATE TABLE Venda(
	id INT IDENTITY (1,1) PRIMARY KEY,
	id_Cliente INT,
	id_Produto INT,
	data_Venda DATE,
	FOREIGN KEY (id_Cliente) REFERENCES Cliente(id),
	FOREIGN KEY (id_Produto) REFERENCES Produto(id)
)

INSERT Cliente (nome, cpf, data_Cadastro) VALUES ('Murilo', '131.564.325-64', '11-11-2022'),
												 ('Patrick', '131.564.325-64', '11-11-2022'),
												 ('Fabio', '131.564.325-64', '11-11-2022')

INSERT Produto (nome, preço) VALUES ('Cebola', '5.0'),
									('Tomate', '4.0'),
									('Alho', '3.99'),
									('Arroz', '10.0'),
									('Feijão', '8.0')

INSERT Venda (id_Cliente, id_Produto, data_Venda) VALUES (1, 1, '2.3.2000'),
														 (3, 2, '5.2.2003'),
														 (2, 5, '6.7.2005')

SELECT Cliente.nome as 'Nome Cliente', Produto.nome as 'Nome Produto', Venda.data_Venda				-- Join, usado para ligar tabelas
FROM Venda INNER JOIN Produto ON Produto.id = Venda.id_Produto INNER JOIN Cliente ON Cliente.id = Venda.id_Cliente
where Venda.data_Venda = '5.2.2003'  -- Consultar por uma data


