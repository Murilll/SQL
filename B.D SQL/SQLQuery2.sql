CREATE DATABASE BibliotecaD

USE BibliotecaD


CREATE TABLE Livros(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	ID_Editora INT,
	FOREIGN KEY (ID_Editora) REFERENCES Editora(ID) 
	)


CREATE TABLE Editora(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL
	)


INSERT Editora (Nome) VALUES ('Editora Arqueiro'),
							 ('Bloomsbury'),
							 ('Scholastic'),
							 ('Cia das Letras')

INSERT Livros (Nome, ID_Editora) Values ('CEM ANOS DE SOLIDÃO – GABRIEL GARCÍA MÁRQUEZ', 1),
										('CRIME E CASTIGO – FIÓDOR DOSTOYEVSKI', 1),
										('ORGULHO E PRECONCEITO – JANE AUSTEN', 4),
										('O SENHOR DOS ANÉIS -J.R.R. TOLKIEN', 3),
										('DOM QUIXOTE DE LA MANCHA- MIGUEL DE CERVANTES', 4),
										('O PEQUENO PRÍNCIPE – ANTOINE DE SAINT-EXUPÉRY', 2),
										('O GRANDE GATSBY – F. SCOTT FITZGERALD', 3),
										('1984- GEORGE ORWELL', 4),
										('A ILÍADA – HOMERO', 2),
										('FRANKENSTEIN – MARY SHELLY', 4)


SELECT * FROM Livros L
WHERE L.ID_Editora in (SELECT E.ID FROM Editora E WHERE E.Nome = 'Cia das Letras')

INSERT INTO teste(nome, bairro)(
select c.NOME, c.Bairro from TABELA de clientes c 
where c.bairro = 'tijuca' or c.bairro = 'jardins'
) 

select * from Editora
select * from Livros


CREATE TABLE Produtos_Caros(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NOME varchar(30),
	Preço NUMERIC(10,5)
	)

	alter table Produtos_Caros alter column NOME varchar(100)

INSERT Produtos_Caros (NOME,Preço) VALUES ('Anel de Diamante', 5.00),
										  ('Anel de Ouro', 2.00),
										  ('Anel de Lama', 7.00),
										  ('Anel de Madeira', 1.00),
										  ('Anel de Platina', 9.00)

INSERT INTO Produtos_Caros(NOME, Preço)(
	SELECT t.[NOME DO PRODUTO], t.[PREÇO DE LISTA] FROM [TABELA DE PRODUTOS] t
	WHERE t.[PREÇO DE LISTA] > 15.00 
)

SELECT * FROM Produtos_Caros
SELECT * FROM [TABELA DE PRODUTOS] y where y.[PREÇO DE LISTA] > 15.00