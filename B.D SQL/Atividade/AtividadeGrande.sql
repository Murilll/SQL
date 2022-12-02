CREATE DATABASE Escola_Virtual
USE Escola_Virtual
GO

CREATE TABLE Curso(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	Valor MONEY DEFAULT(200)
	)

CREATE TABLE Professor(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	CPF VARCHAR(12)
	)

CREATE TABLE Aluno(
	id INT IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(30),
	Dt_nasc DATE, CHECK(Dt_nasc > '01.01.1922'),
	CPF VARCHAR(12)
	)

CREATE TABLE Turma(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_Curso INT FOREIGN KEY REFERENCES Curso(id),
	Dt_Inicio DATE DEFAULT GETDATE(),
    Dt_Termino DATE DEFAULT DATEADD(MONTH, 6, GETDATE()),
	id_Professor INT FOREIGN KEY REFERENCES Professor(id)
	)

CREATE TABLE AlunoxTurma(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_Turma INT FOREIGN KEY REFERENCES Turma(id),
	id_Aluno INT FOREIGN KEY REFERENCES Aluno(id)
	)

ALTER TABLE Aluno
ADD Ativo BIT, Cidade VARCHAR(30)

ALTER TABLE Professor
ADD Ativo BIT, Cidade VARCHAR(30)

SELECT * FROM Aluno
SELECT * FROM Professor

INSERT Curso VALUES ('Engenharia de Software', 600.00)
INSERT Curso VALUES ('Engenharia Civil', 800.00)
INSERT Curso VALUES ('Medicina', 190.00)
INSERT Curso VALUES ('Engenharia de Alimentos', 150.00)
INSERT Curso(Nome) VALUES ('Desenvolvimento de Sistema')
INSERT Curso(Nome) VALUES ('Agropecuária')

SELECT * FROM Curso

INSERT Professor(Nome, CPF, Ativo, Cidade) VALUES ('Flavio Prada', '120.745.670-57', 1, 'Curitiba')
INSERT Professor(Nome, CPF, Ativo, Cidade) VALUES ('Amanda Nunes', '798.741.350-00', 1, 'Florianópolis')
INSERT Professor(Nome, CPF, Ativo, Cidade) VALUES ('Marli Maria', '000.079.750-23', 1, 'Niterói')
INSERT Professor(Nome, CPF, Ativo, Cidade) VALUES ('Cesar Paulo', '846.566.130-88', 0, 'Joaçaba')
INSERT Professor(Nome, CPF, Ativo, Cidade) VALUES ('Diogo Defante', '010.981.650-12', 1, 'Balneário Camboriú')
INSERT Professor(Nome, CPF, Ativo, Cidade) VALUES ('Paulo Edson', '819.928.820-53', 0, 'São Caetano do Sul')

DELETE FROM Professor


alter table Aluno	-- ALTERANDO O CODIGO DA COLUNA DA TABELA
alter column CPF varchar (14)	

INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Murilo', '25.08.2004', '978.132.860-65', 1, 'Tokyo')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Amanda', '11.09.2000', '960.412.820-57', 0, 'Porto')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Patricia', '01.12.2003', '423.274.900-49', 0, 'Tel Aviv')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Pedro', '28.08.2005', '467.787.100-04', 1, 'Praga')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Tiago', '07.01.2004', '750.114.790-64', 1, 'Montreal')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Gabriele', '24.10.2002', '121.571.710-53', 1, 'Nova York')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Leonardo', '10.11.2003', '830.909.890-18', 0, 'Copenhague')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Lucas', '19.07.2004', '922.042.760-57', 1, 'Manchester')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Vitor', '21.03.2002', '217.285.380-17', 1, 'Amsterdã')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Gabriel', '26.02.2000', '263.730.320-43', 1, 'San Francisco')
INSERT Aluno(Nome, Dt_nasc, CPF, Ativo, Cidade) VALUES ('Julia', '14.05.2001', '469.595.710-81', 0, 'Curitiba')


SELECT DATEFORMAT FROM syslanguages WHERE NAME = @@LANGUAGE -- Verificando o formato da data

INSERT Turma(id_Curso, Dt_Inicio, id_Professor) VALUES (7, '02.12.2022', 31)
INSERT Turma(id_Curso, Dt_Inicio, Dt_Termino, id_Professor) VALUES (9, '30.12.2022', '30.12.2024', 33)
INSERT Turma(id_Curso, Dt_Inicio, id_Professor) VALUES (10, '20.02.2023', 35)
INSERT Turma(id_Curso, Dt_Inicio, Dt_Termino, id_Professor) VALUES (12, '10.01.2023', '03.12.2026', 32)
INSERT Turma(id_Curso, Dt_Inicio, Dt_Termino, id_Professor) VALUES (11, '20.03.2023', '30.03.2028', 36)

INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (12, 1)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (13, 3)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (14, 5)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (15, 2)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (16, 4)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (17, 1)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (18, 3)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (19, 5)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (20, 2)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (21, 4)
INSERT AlunoxTurma(id_Aluno, id_Turma) VALUES (22, 1)

SELECT * FROM Turma T JOIN 
SELECT * FROM Aluno
SELECT * FROM Professor
SELECT * FROM Curso
SELECT * FROM AlunoxTurma









