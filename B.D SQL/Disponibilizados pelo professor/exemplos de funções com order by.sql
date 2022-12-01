-- tabela exemplo para testar o GROUP BY

create table agrupamentos(
letra char,
numero int)

-- INSERÇÃO DE VALORES ALEATORIOS
insert agrupamentos values ('a', 3)
insert agrupamentos values ('a', 1)
insert agrupamentos values ('a', 2)
insert agrupamentos values ('b', 2)
insert agrupamentos values ('c', 1)
insert agrupamentos values ('c', 3)
insert agrupamentos values ('d', 5)
insert agrupamentos values ('d', 6)

-- COMANDO GROUP BY com função de media
select letra, avg(numero) as 'media' from agrupamentos
group by letra

-- COMANDO GROUP BY com função de soma
select letra, sum(numero) as 'soma' from agrupamentos
group by letra

-- COMANDO GROUP BY com função de maior
select letra, max(numero) as 'maior valor' from agrupamentos
group by letra

-- COMANDO GROUP BY com função de menor
select letra, min(numero) as 'menor valor' from agrupamentos
group by letra

-- COMANDO GROUP BY com função de quantidade
-- com where e order by
select letra, count(numero) as 'quantidade' 
from agrupamentos
where letra = 'a' or letra = 'b'
group by letra
order by quantidade