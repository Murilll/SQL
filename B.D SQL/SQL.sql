create table tabela1(
id int NOT NULL, 
nome varchar(30) NOT NULL,  -- CRIANDO TABELA
data_nasc date
)

delete from tabela1  -- DELETANDO AS INFOS DA TABELA

INSERT INTO tabela1 (id, nome, data_nasc, cpf) values (1, 'Murilo Sertorio', getdate(), '131644809-62'),  -- INSERINDO INFOS NA TABELA
(2, 'Leonardo Falango', getdate(), '43245785378'),


alter table tabela1   -- ADD NOVA COLUNA NA TABELA
add cpf varchar (12)

SELECT * from tabela1    -- MOSTRANDO TODA A TABELA
DELETE FROM tabela1 WHERE (id = 1)    -- DELETANDO UM INFORMÃÇÃO ESPECIFICA DA TABELA

ALTER TABLE tabela1   -- EXCLUINDO UMA COLUNA DA TABELA
DROP COLUMN id    

ALTER TABLE tabela1			-- ADD UM ID AUTOMATICO
ADD id INT PRIMARY KEY IDENTITY NOT NULL	


alter table tabela1		-- ALTERANDO O CODIGO DA COLUNA DA TABELA
alter column nome varchar (100)		


delete from tabela1			-- DELETANDO AS INFOS DA TABELA
INSERT INTO tabela1 (nome, data_nasc, cpf) values ('Murilo Sertorio', getdate(), '131644809-62'),		 -- INSERINDO INFOS NA TABELA
('Leonardo Falango', getdate(), '32435435324'),
('Gabu Fialkoski', getdate(), '32543564634'),
('Lucas Fortunato', getdate(), '342543431231')

DROP TABLE tabela2			-- EXCLUINDO A TABELA

CREATE TABLE tabela2(
id INT PRIMARY KEY IDENTITY NOT NULL,   -- VALOR NOT NULL NÃO PODE FICAR SEM DADOS
nome VARCHAR (30),
cpf VARCHAR (12) NOT NULL
)

SELECT * from tabela2
DELETE FROM tabela2
INSERT INTO tabela2 (nome, cpf, telefone) values ('Murilin', '13164480962', '33493532'),
('Leozin', '324324234', '93483493'),
('BAH', '43254354', '43543654')

INSERT INTO tabela2 (cpf, telefone) values ('54356435', '343254353')   -- COMO O NOME NÃO ESTA COM NOT NULL, ELE PODE FICAR COM O VALOR ZERADO


ALTER TABLE tabela2
ADD telefone VARCHAR (9)

SELECT * from tabela2
SELECT nome FROM tabela2

SELECT * FROM tabela2 WHERE id = 5 or telefone = '33493532'  -- BUSCAR INFORMAÇÕES ESPECIFICAS NA TABELA
UPDATE tabela2 set nome = 'Murilin' where id = 12 

create database bosch

use bosch

create table funcionario(
	id int,
	nome varchar(30),
	dia_pgto int default 05)  -- int default, serve para quando não é colocado o valor, o valor é colocado automaticamente (05 é o valor default)

select * from funcionario

insert funcionario (id, nome) values(3, 'guilherme')
insert funcionario values(4 , 'guilherme', 10)

create table funcionario2(
	id int,
	nome varchar(30),
	dia_pgto int default 5,  -- tem como usar o default e o check junto
	check(dia_pgto < 31))    -- o check serve para não colocar valores que você não queira (dia_pgto < 31), estourando em um erro.


insert funcionario2 values(4, 'murilo', 31)
insert funcionario2 values(3, 'murilo', 35)
insert funcionario2 values(1, 'murilo', 2)
insert funcionario2 values(6, 'murilo', 50)

create table pessoa(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nome varchar(30),
	estado_civil char, -- Char é para letras
	check(estado_civil in ('s', 'c', 'd', 'v')) -- da para fazer o check com in, ou com or, mas com in é mais facil check(estado_civil = 's') or estado_civil = 'c'
	)

insert pessoa values('guilherme', 't')
insert pessoa values('murilo', 's')

select * from pessoa

create table teste_check(
	id INT IDENTITY (1,1) PRIMARY KEY,
	estado_civil char,
	dia_pgto int)

alter table teste_check
add constraint Default_dia_pgto Default 5 for dia_pgto

alter table teste_check
add constraint check_estado_civil check(estado_civil in('s','c','v','d'))

-- também tem como fazer assim

-- alter table teste_check
-- add constraint Default_dia_pgto Default 5 for dia_pgto, check(estado_civil in('s','c','v','d'))




