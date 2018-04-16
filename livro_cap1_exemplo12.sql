# Exemplo 12: - “Definindo Chave Primária Composta”

CREATE TABLE produto (
    codigo INTEGER NOT NULL,
    codbarra INTEGER NOT NULL,
    nome VARCHAR(30) NOT NULL,
    estoque INTEGER DEFAULT 0,
    CONSTRAINT produto_pk PRIMARY KEY (codigo, codbarra)
);
