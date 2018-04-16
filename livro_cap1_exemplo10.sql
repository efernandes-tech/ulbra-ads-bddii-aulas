# Exemplo 10: - “Criando Chave Primária ao Criar uma Tabela”

CREATE TABLE cidade (
    codcid INTEGER NOT NULL,
    nomecid VARCHAR(30) NOT NULL,
    uf VARCHAR(2),
    CONSTRAINT cidade_pk PRIMARY KEY(codcid)
);
