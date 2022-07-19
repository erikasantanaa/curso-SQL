CREATE DATABASE dbApiTarefas;

USE dbApiTarefas;

CREATE TABLE tarefas (
codigo INT PRIMARY KEY auto_increment,
tituloTarefa VARCHAR(60),
dataEntrega VARCHAR(10)
);

INSERT INTO tarefas (tituloTarefa, dataEntrega) VALUES ('corrigir prova de Ciências', '20220627');

SELECT * FROM tarefas; 

/**UPDATE ...*/

DROP DATABASE dbapitarefas