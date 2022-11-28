select * from [NOTAS FISCAIS] where [DATA] = '01-01-2015' AND [IMPOSTO] = 0.1

select * from [NOTAS FISCAIS] where day([DATA]) = 12       -- pesquisa por dia
select * from [NOTAS FISCAIS] where month([DATA]) = 08	   -- pesquisa por m�s
select * from [NOTAS FISCAIS] where year([DATA]) = 2018	   -- pesquisa por ano

select * from [TABELA DE CLIENTES] where Nome like 'a%'    -- like � como se fosse condi��o de igualdade, usado para fazer busca (a%, nomes que come�am com A)
select * from [TABELA DE CLIENTES] where Nome like '%a'    -- %a, nomes que terminam com A
select * from [TABELA DE CLIENTES] where Nome like '%a%'    -- %a%, nomes que tem A no meio


-- uso do DISTINCT

select DISTINCT [NOME DO PRODUTO], EMBALAGEM, TAMANHO from [TABELA DE PRODUTOS]  -- filtra valores repitidos, limpa os repitidos


-- uso do comando TOP
select top 10 * from [TABELA DE PRODUTOS] where [PRE�O DE LISTA] < 7  -- top � usado para pegar os primeiros valores


-- uso do ORDER BY
select * from [TABELA DE PRODUTOS] where SABOR = 'laranja' order by [PRE�O DE LISTA] desc -- ORDER serve para ordenar a lista, usando o desc, voc� consegue ver a lista em ordem decrescente


-- uso do GROUP BY
select ESTADO, sum([LIMITE DE CREDITO]) as 'soma' from [TABELA DE CLIENTES] group by ESTADO having sum([LIMITE DE CREDITO]) < 900000  -- having usado para filtrar

select ESTADO, sum([VOLUME DE COMPRA]) as 'soma' from [TABELA DE CLIENTES] group by ESTADO having sum([VOLUME DE COMPRA]) > 5000

-- uso de GROUP BY com fun��o 
select year([DATA]) as ano, count(*) as quantidade
from [NOTAS FISCAIS]
group by YEAR([DATA])

-- uso do CASE
select [NOME DO PRODUTO], [PRE�O DE LISTA],
	case when [PRE�O DE LISTA]>=12 
		then 'produto caro'
	when [PRE�O DE LISTA]>=7 
		then 'produto em conta'
	else 'produto barato' 
		end as 'avalia��o'
from [TABELA DE PRODUTOS] 



