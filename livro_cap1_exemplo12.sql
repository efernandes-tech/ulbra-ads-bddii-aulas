// Exemplo 12: - “Definindo Chave Primária Composta”
CREATE TABLE produto(
codigo integer not null,
codbarra integer not null,
nome varchar(30) not null,
estoque integer default 0,
CONSTRAINT produto_pk PRIMARY KEY (codigo,codbarra) );