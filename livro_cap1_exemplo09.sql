Exemplo 9 - “Criando Chave Primária ao Criar uma Tabela”
CREATE TABLE cidade(
codcid integer not null,
nomecid varchar(30) not null,
uf varchar(2),
PRIMARY KEY (codcid) );