select * from [NOTAS FISCAIS] where [DATA] = '01-01-2015' AND [IMPOSTO] = 0.1

select * from [NOTAS FISCAIS] where day([DATA]) = 12       -- pesquisa por dia
select * from [NOTAS FISCAIS] where month([DATA]) = 08	   -- pesquisa por mês
select * from [NOTAS FISCAIS] where year([DATA]) = 2018	   -- pesquisa por ano

select * from [TABELA DE CLIENTES] where Nome like 'a%'    -- like é como se fosse condição de igualdade, usado para fazer busca (a%, nomes que começam com A)
select * from [TABELA DE CLIENTES] where Nome like '%a'    -- %a, nomes que terminam com A
select * from [TABELA DE CLIENTES] where Nome like '%a%'    -- %a%, nomes que tem A no meio


-- uso do DISTINCT

select DISTINCT [NOME DO PRODUTO], EMBALAGEM, TAMANHO from [TABELA DE PRODUTOS]  -- filtra valores repitidos, limpa os repitidos


-- uso do comando TOP
select top 10 * from [TABELA DE PRODUTOS] where [PREÇO DE LISTA] < 7  -- top é usado para pegar os primeiros valores


-- uso do ORDER BY
select * from [TABELA DE PRODUTOS] where SABOR = 'laranja' order by [PREÇO DE LISTA] desc -- ORDER serve para ordenar a lista, usando o desc, você consegue ver a lista em ordem decrescente


-- uso do GROUP BY
select ESTADO, sum([LIMITE DE CREDITO]) as 'soma' from [TABELA DE CLIENTES] group by ESTADO having sum([LIMITE DE CREDITO]) < 900000  -- having usado para filtrar

select ESTADO, sum([VOLUME DE COMPRA]) as 'soma' from [TABELA DE CLIENTES] group by ESTADO having sum([VOLUME DE COMPRA]) > 5000

-- uso de GROUP BY com função 
select year([DATA]) as ano, count(*) as quantidade
from [NOTAS FISCAIS]
group by YEAR([DATA])

-- uso do CASE
select [NOME DO PRODUTO], [PREÇO DE LISTA],
	case when [PREÇO DE LISTA]>=12 
		then 'produto caro'
	when [PREÇO DE LISTA]>=7 
		then 'produto em conta'
	else 'produto barato' 
		end as 'avaliação'
from [TABELA DE PRODUTOS] 

--
select [TABELA DE VENDEDORES].MATRICULA, [TABELA DE VENDEDORES].NOME, count (*) from [TABELA DE VENDEDORES] a inner join [NOTAS FISCAIS] b on a.MATRICULA = b.MATRICULA


select c.NOME, count(*) from [TABELA DE CLIENTES] c left join [NOTAS FISCAIS] nf on c.CPF = nf.CPF group by c.NOME having COUNT(*) = 1

select * from [TABELA DE CLIENTES] t  -- descobrindo a pessoa que não tem nota fiscal
left join [NOTAS FISCAIS] nf
on t.CPF = nf.CPF
where nf.CPF is null

select c.nome, count (nf.CPF) as 'quantidade'   -- descobrindo a pessoa que não tem nota fiscal
from [TABELA DE CLIENTES] c left join [NOTAS FISCAIS] nf
on c.CPF =  nf.CPF
group by c.NOME


select * from [NOTAS FISCAIS]

select * from [TABELA DE CLIENTES]


select [TABELA DE CLIENTES].BAIRRO from [TABELA DE CLIENTES]
union
select [TABELA DE VENDEDORES].BAIRRO from [TABELA DE VENDEDORES]


-- SubSelect
select nome, bairro from [TABELA DE CLIENTES]
where bairro in (select bairro from [TABELA DE VENDEDORES])


INSERT INTO teste (NOME, Preço)(
	SELECT P.NOME, P.Preço from Produtos_Caros P
	WHERE P.Preço > 15.00
	)

SELECT * FROM [TABELA DE PRODUTOS]
