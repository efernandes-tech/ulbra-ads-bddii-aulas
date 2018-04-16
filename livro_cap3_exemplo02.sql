# Exemplo 2: - “Criar procedure aumenta_sal”

CREATE OR REPLACE PROCEDURE aumenta_sal (
    codigo IN tbfuncionario.codfunc%TYPE,
    perc IN NUMBER
)
IS
BEGIN
    UPDATE tbfuncionario SET
        salariofunc = salariofunc + (salariofunc * perc / 100)
        WHERE codfunc = codigo;
END aumenta_sal;
