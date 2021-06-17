/* select (selecionar)
Comando universal; seleciona as colunas da tabela.
from () 
seleciona a tabela.
*/
SELECT coluna1,coluna2 FROM tabela;
SELECT * FROM tabela;

/* DISTINCT (distindo)
    usado para omitir dados duplicados de uma tabela.
    Retorna apenas dados unicos da tabela.
*/
SELECT DISTINCT coluna1, coluna2 FROM tabela;

/*WHERE (onde)
usado para filtrar dados em um comando. É seguida por uma ecpressão lógica.
OPERADORES LÓGICOS
= , > , < , >= , <= , <> , AND, OR

*/

SELECT conluna1, coluna2, coluna_n FROM tabela WHERE condicao;

/*COUNT (Contar)


*/

SELECT COUNT(DISTINCT coluna1) FROM Tabela