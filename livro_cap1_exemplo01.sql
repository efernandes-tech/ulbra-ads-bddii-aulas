// Exemplo 1: - “Definindo Cláusula NOT NULL ao criar tabela”
create table aluno(
    codigo integer not null,
    nome varchar(20) not null,
    idade integer,
    email varchar (150) not null,
    constraint alunopk primary key(codigo)
);