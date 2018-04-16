# Exemplo 1: - “Definindo Cláusula NOT NULL ao criar tabela”

CREATE TABLE aluno (
    codigo INTEGER NOT NULL,
    nome VARCHAR(20) NOT NULL,
    idade INTEGER,
    email VARCHAR(150) NOT NULL,
    CONSTRAINT alunopk PRIMARY KEY(codigo)
);
