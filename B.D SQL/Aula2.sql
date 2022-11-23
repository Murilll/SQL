CREATE DATABASE	BancoExemplo

USE BancoExemplo

CREATE TABLE TabelaExemplo(
id INT IDENTITY(1,1) primary key,
nome VARCHAR(30) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
cpf VARCHAR(12) NOT NULL,
estado VARCHAR(2) NOT NULL,
dataNascimento DATE NOT NULL,
altura NUMERIC(3,2),     -- NUMERIC == FLOAT
peso NUMERIC(3,2)
)

SELECT DATEFORMAT FROM syslanguages WHERE NAME = @@LANGUAGE -- Verificando o formato da data

ALTER TABLE TabelaExemplo
ALTER COLUMN peso NUMERIC(4,2)

INSERT TabelaExemplo (nome, sobrenome, cpf, estado, dataNascimento, altura, peso) VALUES('José', 'da silva', '343254654-33', 'PR', '12-06-1989', 1.80, 70.5)

INSERT TabelaExemplo (nome, sobrenome, cpf, estado, dataNascimento, altura, peso) VALUES('Murilo', 'Sertorio', '1313343354', 'PR', '08.2.2004', 1.85, 70.0),
('Ana', 'Costa', '6543786899', 'PR', '11.2.1999', 1.85, 70.0),
('Caio', 'Fibonnaci', ' 56476574', 'SP', '9.3.2003', 1.85, 70.0),
('Leonardo', 'eita', '13133654', 'BA', '1.11.1990', 1.85, 70.0)

INSERT TabelaExemplo (nome, sobrenome, cpf, estado, dataNascimento, altura, peso) VALUES('Maria', 'tome', '435467553', 'PR', '08.2.2004', 1.85, 70.0),
('João', 'Costa', '4365765753', 'PR', '11.2.1999', 1.85, 70.0)



SELECT * FROM TabelaExemplo
SELECT IDENT_CURRENT('TabelaExemplo')

SELECT * FROM TabelaExemplo WHERE dataNascimento<'01/01/1900'

SELECT * FROM TabelaExemplo WHERE peso>70 and peso<80

SELECT * FROM TabelaExemplo where nome like'j%' -- Ele faz a busca usando a primeira letra colocada, no caso o J
SELECT * FROM TabelaExemplo where nome like'%O' -- Ele faz a busca usando a ultima letra colocada, no caso o O
SELECT * FROM TabelaExemplo where nome like'%o%' -- Ele faz a busca procurando por letras no meio da palavra, no caso procurando a letra O
SELECT * FROM TabelaExemplo where nome like'_a%' -- Ele faz a busca procurando pela segunda letra na palavra, no caso procurando todas as palavras que tem a segunda letra A

SELECT * FROM TabelaExemplo WHERE nome in ('joão', 'josé', 'maria')

SELECT * FROM TabelaExemplo WHERE peso in (70.0)

SELECT * FROM TabelaExemplo WHERE dataNascimento between '01/01/1989' and '1/12/2022'


UPDATE TabelaExemplo SET id_unidade = 3 WHERE id>16

select * from Unidade

SELECT * FROM TabelaExemplo JOIN unidade ON id_unidade = unidade.id
SELECT T.nome, T.sobrenome, U.nome FROM TabelaExemplo T JOIN unidade U ON T.id_unidade = U.id WHERE u.nome = 'SP'


CREATE TABLE TabelaExemplo2(                      -- Fazendo uma FOREIGN KEY
id INT IDENTITY (1,1) PRIMARY KEY,
nome VARCHAR(30),
id_unidade INT,
FOREIGN KEY (id_unidade) REFERENCES TabelaExemplo(id)
)

INSERT TabelaExemplo VALUES('José', 'da silva', '343254654-33', 'PR', '12-06-1989', 1.80, 70.5, 4)

SELECT * FROM TabelaExemplo2




