# Exemplo 19: - “Exemplo de Check validando uma coluna com o resultado de outra”

CREATE TABLE empregado(
    codemp INTEGER NOT NULL CONSTRAINT empr_PK PRIMARY KEY,
    nome VARCHAR(20),
    idade INTEGER,
    salario NUMBER(15,2),
    vale NUMBER(15,2),
    CONSTRAINT valeck CHECK (vale > salario)
);
