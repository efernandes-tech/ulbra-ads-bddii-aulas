# Exemplo 1: - “Criação do cenário para testar dos exemplos”

CREATE TABLE tbfuncionario (
    codfunc INTEGER NOT NULL,
    nomefunc VARCHAR(20),
    salariofunc NUMBER(15,2),
    CONSTRAINT funcionario_PK PRIMARY KEY(codfunc)
);

INSERT INTO tbfuncionario(codfunc, nomefunc, salariofunc)
    VALUES (1, 'Maria', 2000);
INSERT INTO tbfuncionario(codfunc, nomefunc, salariofunc)
    VALUES (2, 'Debora', 1500);
INSERT INTO tbfuncionario(codfunc, nomefunc, salariofunc)
    VALUES (3, 'Rosana', 3500);
