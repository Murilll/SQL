
-- exemplos de like
select * from [TABELA DE CLIENTES] 
where Nome like '_e%'

select * from [TABELA DE CLIENTES] 
where Nome like 'e%'

select * from [TABELA DE CLIENTES] 
where Nome like '%e%'

select * from [TABELA DE CLIENTES] 
where Nome like '%e'

-- uso do DISTINCT (n�o mostra valores repetidos

select distinct [NOME DO PRODUTO], EMBALAGEM, TAMANHO 
from [TABELA DE PRODUTOS]




-- uso do comando TOP
select top 3 * from [TABELA DE PRODUTOS] 
where [PRE�O DE LISTA] >7


-- uso do order by
select * from [TABELA DE PRODUTOS] 
order by [NOME DO PRODUTO] desc

-- MOSTRE O PRODUTO MAIS CARO ENTRE OS PRODUTOS
-- QUE SEJAM PET DE 1 LITRO

select top 1 * from [TABELA DE PRODUTOS] 
where EMBALAGEM = 'pet' and TAMANHO = '1 litro'
order by [PRE�O DE LISTA] desc


select * 
from [TABELA DE CLIENTES]

-- fa�a um select mostrando por agrupamento de estado
-- e somando o limite de credito

select ESTADO, sum([LIMITE DE CREDITO]) as 'soma do limite' 
from [TABELA DE CLIENTES]
group by ESTADO having sum([LIMITE DE CREDITO]) > 900000

-- fa�a um select mostrando por agrupamento de estado
-- e somando o volume de compra e mostrando apenas
-- quem tem o volume de compra maior que 5000


select ESTADO, sum([VOLUME DE COMPRA]) as 'soma do volume' 
from [TABELA DE CLIENTES]
group by ESTADO having sum([VOLUME DE COMPRA]) > 150000

-- uso de group by com fun��o
select year([DATA]) as 'ano', count(*) as quantidade
from [NOTAS FISCAIS]
group by [DATA]

-- uso do case

select [NOME DO PRODUTO], [PRE�O DE LISTA], 
case when [PRE�O DE LISTA]>=12 
then 'produto caro'
when [PRE�O DE LISTA]>=7 
then 'produto em conta'
else 'produto barato' end as 'avalia��o'
from [TABELA DE PRODUTOS]












