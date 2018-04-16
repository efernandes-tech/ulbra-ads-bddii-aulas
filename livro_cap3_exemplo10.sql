# Exemplo 10: - “Procedimento que insere novo registro”

CREATE OR REPLACE PROCEDURE GRAVAFUNC (
    nome IN VARCHAR2,
    salario IN NUMBER
)
IS
    proximo INTEGER;
BEGIN
    proximo := maior() + 1;

    INSERT INTO tbfuncionario (codfunc, nomefunc, salariofunc)
        VALUES (proximo, nome, salario);
END GRAVAFUNC;
