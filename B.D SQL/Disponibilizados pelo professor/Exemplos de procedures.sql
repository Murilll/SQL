-- procedure que faz busca por valor recebido por parametro

CREATE procedure mostraClientes @estado varchar(2)
as
begin
select * from [TABELA DE CLIENTES] where ESTADO = @estado
end



-- procedure com insert

create procedure insere_Produto
@cod varchar(10),
@nome varchar(50),
@embalagem varchar(20),
@tamanho varchar(10),
@sabor varchar(20),
@preco smallmoney

as 
begin
	insert [TABELA DE PRODUTOS] 
	values (@cod,@nome,@embalagem,@tamanho,@sabor,@preco)
	
end

exec insere_Produto '777666','prod_teste', 'lata',
'200ml','laranja',10.5

select * from [TABELA DE PRODUTOS]



--------------------------------------
--exemplo de parametro de saida
------------------------------------
create table exemp_insere(
id int identity(1,1) primary key,
nome varchar(30)
)

create procedure insere_teste
@nome varchar(30),
@id int output
as
begin
insert exemp_insere values(@nome)
select  @id = id from exemp_insere  order by id
end

declare @id int
exec insere_teste 'guilherme', @id=@id output
select @id