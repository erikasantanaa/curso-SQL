/* select (selecionar)
Comando universal; seleciona as colunas da tabela.
from () 
seleciona a tabela.*/
SELECT coluna1,coluna2 FROM tabela;
SELECT * FROM tabela;

/* DISTINCT (distindo)
    usado para omitir dados duplicados de uma tabela.
    Retorna apenas dados unicos da tabela.*/
SELECT DISTINCT coluna1, coluna2 FROM tabela;

/*WHERE (onde)
usado para filtrar dados em um comando. É seguida por uma ecpressão lógica.
OPERADORES LÓGICOS
= , > , < , >= , <= , <> , AND, OR */
SELECT conluna1, coluna2, coluna_n FROM tabela WHERE condicao;

/*COUNT (Contar)
Retorna o número de linhas
DISTINCT: Retorna um numero de linhas de um campo especifico.*/
SELECT COUNT(*) FROM TABELA
SELECT COUNT(coluna1) FROM TABELA 
SELECT COUNT(DISTINCT coluna1) FROM Tabela

/*TOP:
Filtrar , limitar uma quantidade de dados de um SELECT.*/
SELECT TOP 10 * FROM tabela

/* ORDER BY
Permite que ordene os resultados por alguma coluna em ordem
crescente ou descrecente (asc/desc)*/
SELECT coluna1, coluna2 FROM tabela ORDER BY coluna1 asc/desc

/*BETWEEN
(Filtrar) - é usado para encontrar valor entre um valor mínimo e valor máximo.*/
valor BETWEEN mínimo AND máximo
--e a mesma coisa que dizer:
--valor >= minimo AND valor <= máximo

/* IN
Usar o operador IN junto ao  WHERE para verificar se um valor correspondem com qualquer
valor passado na lista de valores.*/
Valor IN (valor1, valor2)
--SUB SELECT ou  SUB QUERY
Valor IN (SELECT Valor FROM nomeDaTabela)


/*LIKE
Usado para encontrar, por exemplo uma pessoa no Banco de Dados que não se conhece 
todo o nome.*/

-- O % no final quer dizer que não se sabe o final da palavra.
select * from coluna where tabela like 'ovi%'
-- O % no inicio quer dizer que não se sabe o inicio da palrava
select * from coluna where tabela like '%to'
--O % no inicio e final da palavra, serve para encontrar a palavra com as letras do meio
select * from coluna where tabela like '%essa%'
--O _ no final se limita apenas a 1 caracter
select * from coluna where tabela like '%ro_'


/* MIN MAX SUN (totalGeral) AVG(media) 
Função de agregação: basicamente agregam ou combinam dados de uma tabela em 
um resultado.*/

select top 10 sum(coluna) AS "soma"
from tabela;

/* GROUP BY 
Divide o resultado da sua pesquisa em grupos.
Para cada grupo você pode aplicar uma função de agregação, por exemplo:

Contar o número de itens naquele grupo: */

select coluna1, funçãoAgregação(coluna2) 
from nomeTabela group by coluna1;

/* HAVING
O Having é basicamente muito usado em junção com o group by para filtrar resultados de um 
agrupamento

De uma forma mais simples de entender , ele é como basicamente um WHERE para dados agrupados

QUAL A DIFERENÇa:
é que o group by é aplicado depois que os dados já foram agrupados. Enquanto o where é 
aplicado antes dos dados serem agrupados */

select coluna1, funcaoAgregacao(coluna2)
from nomeTabela
group by coluna1
having coducao;


/*AS
Serve para renomear, dá apelido as colunas.
Sem aspas: caso seja somente um nome : as exemplo;
Com aspas: Caso seja mais de um nome: as "segundo exemplo".

Exemplo de renomear uma coluna*/
select top 10 avg(ListePrice) as "Preço Médio"
from Production.Product

/* INNER JOIN

Existem 3 tipos gerais de JOINS: INNER JOIN, OUTER JOIN e SELF-JOIN.
Ele junta informações de duas tabelas*/
--|2| Bruno | Rua Norte | São Paulo |
select C.ClienteId, C.Nome, E.Rua, E.Cidade
from Cliente C
INNER JOIN Endereco E ON E.EnderecoId = C.EnderecoId

--Tipos de JOIN: Pesquisar diagramas SQL JOINS.
/*1) INNER JOIN
retorna apenas os resultados que correspondem (existem) tanto na tabela A 
como na tabela B. */
select * from  TabelaA
inner join TabelaB 
on TabelaA.nome = TabelaB.nome

/*2) FULL OUTER JOIN
retorna um conjunto de todos registros correspondentes da TabelaA e TabelaB
quando são iguais. E além disso se não houver valores correspondentes,
ele simplesmente irá prenches esse lado com "null".*/
select * from TabelaA 
full outer join TabelaB 
on TabelaA.nome = TabelaB.nome

/*3) LEFT OUTER JOIN
retorna um conjunto de todos os registros da TabelaA, e alem disso, os registros 
correspondentes (quando disponíveis) na TabelaB. Se não houver registros 
correspondentes ele simplismente vai preencher com "null".*/
select * from TabelaA
left Join  TabelaB
on TabelaA.nome = TabelaB.nome

/*UNION
Combina doi ou mais resultados de um select em um resultado apenas.
Ele remove as dados duplicados.
Para não remover se Usa UNION ALL*/

select coluna1, coluna2
from tabela1
union 
select coluna1, coluna2
from tabela2

/*DATEPART
https://docs.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver15

*/