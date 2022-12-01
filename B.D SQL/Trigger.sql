CREATE DATABASE testes_triggers
GO
USE testes_triggers

CREATE TABLE produto(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(30),
	qtde_estoque INT DEFAULT 0
	)

CREATE TABLE vendastchunai(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_produto INT FOREIGN KEY REFERENCES produto(id),
	qtde INT,
	)

INSERT produto values ('arroz', 10)
INSERT produto values ('feijão', 10)
INSERT produto values ('tomate', 10)
INSERT produto values ('biscoito', 10)
INSERT produto (nome) values ('alface')


CREATE TRIGGER atualiza_Estoque
ON vendas
AFTER INSERT 
AS
BEGIN
	DECLARE @id INT
	DECLARE @qtde INT
	SELECT @id = id_produto, @qtde = qtde FROM inserted
	UPDATE produto SET qtde_estoque = qtde_estoque - @qtde
	FROM produto WHERE id = @id
END

SELECT * FROM produto
SELECT * FROM vendastchunai
INSERT vendastchunai values (1,2)


CREATE TABLE aluno(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(30),
	ativo BIT DEFAULT 1
	)

INSERT aluno (nome) VALUES ('Murilo')
INSERT aluno (nome) VALUES ('Maria')

SELECT * FROM aluno


