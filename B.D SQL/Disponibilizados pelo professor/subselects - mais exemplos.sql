-- uso de subselect como pesquisa
select * from [TABELA DE VENDEDORES] v
where v.BAIRRO in 
(select c.BAIRRO from [TABELA DE CLIENTES] c)

-- insert a partir de um subselect

-- inserindo nome e bairros de outra tabela
-- numa nova tabela a partir de um select
create table teste
(id int identity (1,1) primary key,
nome varchar(500),
bairro varchar(50))

insert into teste (nome, bairro) (
select c.NOME, c.BAIRRO from [TABELA DE CLIENTES] c 
where c.BAIRRO='tijuca' or c.BAIRRO='jardins'
)



-- criando uma tabela de produtos caros
-- e populando essa tabela a partir de um select de outra tabela
create table produtos_caros(
id int identity(1,1) primary key,
nome varchar(50),
preco smallmoney
)

insert produtos_caros (nome, preco)
(select p.[NOME DO PRODUTO], p.[PREÇO DE LISTA] 
from [TABELA DE PRODUTOS] p 
where p.[PREÇO DE LISTA]>15)

select * from produtos_caros


-- populando uma tabela a partir de um select
-- com joins, group by e count

create table clientexnotas(
id int identity(1,1) primary key,
nome varchar(50),
quantidade int
)

insert clientexnotas (nome, quantidade)(
select c.nome, count(nf.CPF) as 'quantidade'
from [TABELA DE CLIENTES]c LEFT join [NOTAS FISCAIS]nf
on c.CPF = nf.CPF
group by c.NOME
)

select * from clientexnotas