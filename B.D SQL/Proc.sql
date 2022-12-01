USE TESTE_NOTAS_FISCAIS

CREATE PROCEDURE MOSTRAR_CLIENTES
AS BEGIN
	SELECT * FROM [TABELA DE CLIENTES]
END

EXEC  MOSTRAR_CLIENTES


-- PRIMEIRO VOCÊ DA UM CREATE E DPS O ALTER
ALTER PROC get_table_2 @name_table VARCHAR(30)
AS BEGIN
	IF @name_table = 'cliente'
		SELECT * FROM [TABELA DE CLIENTES]
	ELSE IF @name_table = 'vendedor'
		SELECT * FROM [TABELA DE VENDEDORES]
	ELSE IF @name_table = 'produto'
		SELECT * FROM [TABELA DE PRODUTOS]
	ELSE
		PRINT 'Tabela Invalida'
END

EXEC get_table_2 'produto'


alter proc VerificandoGastos_saida 
@cpf varchar(12), 
@ano int,
@gastosEita smallmoney output,
@qtdNotas int output
as begin
	select @gastosEita = sum(inf.PREÇO), @qtdNotas = count(nf.CPF) from [NOTAS FISCAIS] nf
	JOIN [ITENS NOTAS FISCAIS] inf on inf.NUMERO = nf.NUMERO
	where nf.CPF = @cpf and YEAR(nf.[DATA]) = @ano;   -- WHERE SÃO FILTROS
end

declare @gastosEita smallmoney, 
@qtdNotas int

exec VerificandoGastos_saida '19290992743', 2015,
@gastosEita = @gastosEita output,
@qtdNotas = @qtdNotas output

select @gastosEita as 'Gastos' , @qtdNotas as 'QTD'


ALTER PROC VerificandoCpf 
@cpf VARCHAR
AS BEGIN
	declare @gasto SMALLMONEY 

	SELECT @gasto = sum(inf.PREÇO * inf.QUANTIDADE) FROM [NOTAS FISCAIS] nf
	JOIN [ITENS NOTAS FISCAIS] inf ON inf.NUMERO = nf.NUMERO
	WHERE nf.CPF = @cpf;

	SELECT nf.CPF, sum(inf.QUANTIDADE * inf.PREÇO) FROM [NOTAS FISCAIS] nf
	JOIN [ITENS NOTAS FISCAIS] inf ON inf.NUMERO = nf.NUMERO
	GROUP BY nf.CPF
	HAVING sum(inf.QUANTIDADE * inf.PREÇO) > @gasto;

	SELECT @gasto as 'valor do cpf original'
END

declare @cpf varchar

EXEC VerificandoCpf '7771579779'
SELECT @cpf AS 'Gastos'

select * from [NOTAS FISCAIS]
select * from [ITENS NOTAS FISCAIS]





