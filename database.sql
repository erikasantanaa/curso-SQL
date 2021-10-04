
--Criar banco de dados
create database EcomerceLeleka

--verificar tabela
select * from clientes

--criar tabelas
create table clientes 
(
	codigo int not null,
	nome varchar(100) not null,
	tipoPessoa char(1) not null,
	dataCriacao datetime null
)

create table pedido
(
	codigo int not null,
	dataSolicitacao datetime not null,
	flagPago float not null,
	totalPedido float not null,
	codigoCliente int not null
)

create table pedidoItem
(
	codigo int not null,
	codigoProduto int not null,
	preco float not null,
	quantidade int not null
)

create table produtos
(
	codigo int null,
	nome varchar(100) null,
	descricao varchar(200) null,
	preco float null
)

--verificar tabela
select * from clientes
select * from produtos
select * from pedido
select * from pedidoItem


--Inserir dados nas tabelas: O getdate() retorna a data e hora atual

insert into clientes (codigo, nome, tipoPessoa, dataCriacao) 
values (1, 'Erika Santana', 'F', null)

select isnull(dataCriacao, getdate()), * from clientes --retornar data e hora dos registros

insert produtos values (1, 'Caneca', 'Caneca Star Wars', 27)

insert pedido values(1, getdate(), 0, 22.50, 3)

insert pedidoItem values (5, 5, 55.35, 2)


-- incluir coluna na tabela existente
alter table clientes add  dataCriação datetime null 


--Deletar dados da tabela

delete from pedido where codigo in(3) --deletar todas as linhas com codigo 3

delete from clientes where dataCriacao

--Tipo decisão para SELECT e converter data
select *, 
	case 
	when TipoPessoa = 'J' then 'Juridica'
	when TipoPessoa = 'F' then 'Fisica'
	else 'Pessoa Indefinida'
     end + convert(varchar, GETDATE(), 103)
from clientes
