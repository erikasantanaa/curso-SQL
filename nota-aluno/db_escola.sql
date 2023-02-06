use db_Escola

create table tbl_alunos 
(nota1 smallint not null,
nota2 smallint not null,
nota3 smallint not null,
nota4 smallint not null,
nome_aluno varchar(50) not null)

select * from tbl_alunos


insert into tbl_alunos (nota1, nota2, nota3, nota4, nome_aluno) 
values (8, 4, 2, 4, 'Maria')

insert into tbl_alunos (nota1, nota2, nota3, nota4, nome_aluno) 
values (10, 10, 10, 10, 'Alice')