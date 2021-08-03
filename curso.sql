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

/* APELIDO:
AS "  "
*/

