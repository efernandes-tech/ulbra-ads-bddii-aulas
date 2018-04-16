# Exemplo 10: - “Procedimento que insere novo registro”

# 1
CREATE OR REPLACE PROCEDURE GRAVAFUNC
# 2
(nome IN VARCHAR2,
# 3
salario IN NUMBER)
# 4
IS
# 5
proximo INTEGER;
# 6
BEGIN
# 7
proximo := maior() + 1;
# 8
INSERT INTO tbfuncionario (codfunc, nomefunc, salariofunc)
    VALUES (proximo, nome, salario);
# 9
END GRAVAFUNC;
