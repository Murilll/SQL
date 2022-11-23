CREATE TABLE Palestras(
id INT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(30)
)

CREATE TABLE Oficinas(
id INT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(30)
)

CREATE TABLE Forum(
id INT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(30)
)

CREATE TABLE Inscritos(
id INT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(30),
id_Palestra INT,
id_Oficina INT,
id_Forum INT,
FOREIGN KEY (id_Palestra) REFERENCES Palestras(id),
FOREIGN KEY (id_Oficina) REFERENCES Oficinas(id),
FOREIGN KEY (id_Forum) REFERENCES Forum(id)
)

CREATE TABLE Inspetor(        -- ADD a primary key depois. 
id INT IDENTITY (1,1),
id_Palestra INT
)

ALTER TABLE Inspetor		  -- ADD a primary key depois. 
ADD CONSTRAINT PK_Inspetor PRIMARY KEY(id)

ALTER TABLE Inspetor		  -- ADD a primary key depois. 
ADD CONSTRAINT FK_Inspetor FOREIGN KEY(id_Palestra)
REFERENCES Palestras(id)


INSERT Palestras VALUES ('Learn machine')
INSERT Oficinas VALUES ('Desenv. mobile')
INSERT Forum VALUES ('O mercado de ciencia de dados')

INSERT Inscritos VALUES ('Marcelo', 1,1,1)
INSERT Inscritos VALUES ('Romario', 2,2,2)

