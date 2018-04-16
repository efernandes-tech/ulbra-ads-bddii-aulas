# Exemplo 17: - “Check para não armazenar idade inferior a 0 ou superior a 150”

CREATE TABLE aluno (
    codaluno INTEGER NOT NULL PRIMARY KEY,
    nomealuno VARCHAR(30) NOT NULL,
    endereco VARCHAR(40),
    estado VARCHAR(2),
    email VARCHAR(100) NOT NULL UNIQUE,
    idade INTEGER CONSTRAINT check_idade CHECK (idade >= 0 AND idade <= 150)
);
