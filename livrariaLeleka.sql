CREATE TABLE cliente (
  id_cliente int,
  nome varchar(20),
  cpf int,
  cep int, 
  email VARCHAR(20),
  data_criacao DATETIME,
  telefone int
);

CREATE TABLE livro (
  id_livro int,
  nome varchar(20),
  qtd_pagina int,
  editora VARCHAR(20),
  edicao INT,
  autor text,
  resumo text,
  preco double,
  categoria varchar(20),
  idioma varchar(20),
  isbn INT
);

CREATE TABLE compra (
  id_compra int,
  id_cliente int,
  id_livro int,
  valor_compra double,
  data_compra datetime,
  forma_pag varchar(20)
);

INSERT INTO cliente (id_cliente, nome, cpf,cep, email, data_criacao, telefone)
VALUES (1, 'Maria da Silva',345522,349595, 'maria.silv@gmail.com', '2020-12-31', 993345677);

INSERT INTO cliente (id_cliente, nome, cpf,cep, email, data_criacao, telefone)
VALUES (2, 'joao barros',95898592,44556, 'joao.barros@gmail.com', '2020-11-29', 9540305134);

INSERT INTO cliente (id_cliente, nome, cpf,cep, email, data_criacao, telefone)
VALUES (3, 'joana ferreira',459905505,49595, 'joana.ferreira@gmail.com', '2019-10-25', 993949585);

INSERT INTO cliente (id_cliente, nome, cpf,cep, email, data_criacao, telefone)
VALUES (4, 'aurelio guerreiro',345555,44567333, 'aurelio.guerreiro@gmail.com', '2018-09-15', 9954336);

INSERT INTO cliente (id_cliente, nome, cpf,cep, email, data_criacao, telefone)
VALUES (5, 'tiago figueredo',4885873,388583, 'tiago.figueiredo@gmail.com', '2017-05-15', 9879444);

INSERT INTO cliente (id_cliente, nome, cpf,cep, email, data_criacao, telefone)
VALUES (6, 'fabiana soares',496896,495959, 'fabiana,soares@gmail.com', '2016-04-20', 0000000);

INSERT INTO livro (id_livro, nome, qtd_pagina, editora, edicao, autor, resumo, preco, categoria,  idioma,  isbn) VALUES
(1,'As Coisas Que Você Só Vê Quando Desacelera',330,'Elite',1,'Helen Ramos',' simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 25.90,'ficção','pt-br',3949);
INSERT INTO livro (id_livro, nome, qtd_pagina, editora, edicao, autor, resumo, preco, categoria,  idioma,  isbn) VALUES
(2,'Sql para analise',150,'Intrinseca',2,'Augusto Melo',' simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 43.33,'tecnologia','pt-br',3559);
INSERT INTO livro (id_livro, nome, qtd_pagina, editora, edicao, autor, resumo, preco, categoria,  idioma,  isbn) VALUES
(3,'ciência de dados',150,'Oreilly',3,'Silvana Motta',' simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 240.00,'tecnologia','en',3567);
INSERT INTO livro (id_livro, nome, qtd_pagina, editora, edicao, autor, resumo, preco, categoria,  idioma,  isbn) VALUES
(4,'Como convencer com dados',150,'Oreilly',4,'Silvana Motta',' simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 78.00,'tecnologia','esp',3998);

INSERT INTO compra (id_compra, id_cliente, id_livro,valor_compra, data_compra, forma_pag) VALUES
(1, 1,1, 25.00,'2020-10-15','debito');
INSERT INTO compra (id_compra, id_cliente, id_livro,valor_compra, data_compra, forma_pag) VALUES
(1, 1,3, 240.00,'2020-10-15','debito');
INSERT INTO compra (id_compra, id_cliente, id_livro,valor_compra, data_compra, forma_pag) VALUES
(1, 2,1, 25.90,'2021-08-15','credito');
INSERT INTO compra (id_compra, id_cliente, id_livro,valor_compra, data_compra, forma_pag) VALUES
(1, 3,3, 77.90,'2021-09-01','credito');

drop TABLE cliente; 
drop TABLE livro;
drop TABLE compra;

select * from cliente

select * from livro

select * from compra

select * from livro where idioma ='pt-br'

select * from livro where nome like '%dados%'

select * from cliente  where nome like '%joao%'

SELECT *
FROM CLIENTE
LEFT JOIN LIVRO
ON CLIENTE.id_cliente = LIVRO.id_livro;


SELECT LIVRO.NOME, livro.categoria FROM LIVRO WHERE CATEGORIA IN (SELECT categoria
FROM CLIENTE
LEFT JOIN LIVRO
ON CLIENTE.id_cliente = LIVRO.id_livro 
WHERE cliente.nome like '%joao%');



SELECT livro.nome, livro.categoria FROM livro WHERE categoria IN (SELECT categoria 
FROM cliente
LEFT JOIN livro
ON cliente.id_cliente = livro.id_livro
WHERE cliente.nome LIKE '%Joao%');

--https://docs.microsoft.com/pt-br/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver15

--https://www.w3schools.com/sql/sql_datatypes.asp