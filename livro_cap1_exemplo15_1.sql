# Exemplo 15: - “Definindo autorrelação”

CREATE TABLE empregado (
    codemp INTEGER NOT NULL PRIMARY KEY,
    nomeemp VARCHAR(20),
    salario NUMBER(15,2),
    codresp INTEGER,
    CONSTRAINT codresp_fk FOREIGN KEY(codresp)
        REFERENCES empregado(codemp)
);
