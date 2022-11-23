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


