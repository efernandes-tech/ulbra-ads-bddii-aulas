# Exemplo 13: - “Definindo Chave estrangeira ao criar uma tabela”

CREATE TABLE avaliacao (
    codigoAvalia INTEGER NOT NULL PRIMARY KEY,
    numMatricula INTEGER,
    codcurso INTEGER,
    conceito NUMBER(15,2),
    CONSTRAINT codcurso_fk FOREIGN KEY(codcurso)
        REFERENCES curso(codcurso)
);
