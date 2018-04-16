# Exemplo 5: - “Exemplo de chamada da procedure aumenta_sal”

CREATE OR REPLACE PROCEDURE aumenta_salario_valor (
    codigo IN tbfuncionario.codfunc%TYPE,
    salario IN OUT number
)
IS
    antigosal tbfuncionario.salariofunc%type;
BEGIN
    SELECT NVL(salariofunc, 0) INTO antigosal FROM tbfuncionario
        WHERE codfunc=codigo;

    salario := salario + antigosal;

    UPDATE tbfuncionario SET
        salariofunc = salario WHERE codfunc = codigo;

    salario := antigosal;
END aumenta_salario_valor;
