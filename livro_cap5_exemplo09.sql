// Exemplo 9: - “Estrutura base para testar os exemplos de trigger”

CREATE TABLE TBALUNO(
<<<<<<< HEAD
codigo integer NOT NULL,
nome VARCHAR2(30),
idade integer NOT NULL,
nota1 number(15,2),
nota2 number(15,2),
media number(15,2),
constraint tbaluno_pk primary key(codigo));
insert into TBALUNO(codigo,nome,idade,nota1,nota2,media) values (1, ‘Marta’,19, 9.5, 8.5, 9);
insert into TBALUNO(codigo,nome,idade,nota1,nota2,media) values (2, ‘Ana’, 17, 7.3, 8.5, 7.9);
insert into TBALUNO(codigo,nome,idade,nota1,nota2,media) values (3, ‘Carla’, 22, 5.8, 4.8, 5.3);
create sequence tbAluno_seq START WITH 20;
create or replace view alunoview as (select nome,media from tbaluno);
select * from tbaluno;
=======
    codigo integer NOT NULL,
    nome VARCHAR2(30),
    idade integer NOT NULL,
    nota1 number(15,2),
    nota2 number(15,2),
    media number(15,2),
    constraint tbaluno_pk primary key(codigo)
);

insert into TBALUNO(codigo,nome,idade,nota1,nota2,media) values (1, ‘Marta’,19, 9.5, 8.5, 9);
insert into TBALUNO(codigo,nome,idade,nota1,nota2,media) values (2, ‘Ana’, 17, 7.3, 8.5, 7.9);
insert into TBALUNO(codigo,nome,idade,nota1,nota2,media) values (3, ‘Carla’, 22, 5.8, 4.8, 5.3);

create sequence tbAluno_seq START WITH 20;

create or replace view alunoview as (select nome,media from tbaluno);

select * from tbaluno;

>>>>>>> ed02b7d4eee10120f5290adad56e0c10a40dba2b
Select * from alunoview;
