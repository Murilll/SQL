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

