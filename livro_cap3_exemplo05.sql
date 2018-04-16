# Exemplo 5: - “Exemplo de chamada da procedure aumenta_sal”

# 1
CREATE OR REPLACE PROCEDURE aumenta_salario_valor
# 2
( codigo IN tbfuncionario.codfunc%TYPE,
# 3
salario IN OUT number)
# 3
IS
# 5
antigosal tbfuncionario.salariofunc%type;
# 5
BEGIN
# 7
SELECT NVL(salariofunc, 0) INTO antigosal FROM tbfuncionario
# 8
WHERE codfunc=codigo;
# 9
salario := salario + antigosal;
# 10
UPDATE tbfuncionario SET salariofunc = salario WHERE codfunc = codigo;
# 11
salario := antigosal;
# 12
END aumenta_salario_valor;
