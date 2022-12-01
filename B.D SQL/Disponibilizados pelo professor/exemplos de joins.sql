-- craição de tabelas sem uso de chaves para exemplificar as variações de join 

create table pessoa(
id int,
nome varchar(30)
)

create table hobby(
nome varchar(30),
id_pessoa int)

insert pessoa values (1, 'josé')
insert pessoa values (2, 'maria')
insert pessoa values (3, 'pedro')
insert pessoa values (4, 'claudia')

insert hobby values ('praia', 1)
insert hobby values ('futebol', 2)
insert hobby values ('fotografia', 0)
insert hobby values ('artesanato', 0)

-- join classico
select * from pessoa p join hobby h on p.id = h.id_pessoa 

-- join mostrando todas as informações da tabela da esquerda
select * from pessoa p left join hobby h 
on p.id = h.id_pessoa 

-- join mostrando todas as informações da tabela da direita
select * from pessoa p right join hobby h 
on p.id = h.id_pessoa 

-- join mostrando todas as informações de todas as tabelas
select * from pessoa p full join hobby h 
on p.id = h.id_pessoa 