// Exemplo 3: - “Script para criação da estrutura modelo dos exemplos”

create table tbproduto (
codigo integer not null,
nome varchar(20) not null,
estoque integer,
valor decimal(15,2),
primary key(codigo) );

insert into tbproduto(codigo, nome, estoque, valor) values
(1,’banana’,200,2.99);
insert into tbproduto(codigo, nome, estoque, valor) values (2,’uva’,150,5.25);
insert into tbproduto(codigo, nome, estoque, valor) values (3,’abacaxi’,75,2.75);
insert into tbproduto(codigo, nome, estoque, valor) values (4,’pera’,48,4.35);
