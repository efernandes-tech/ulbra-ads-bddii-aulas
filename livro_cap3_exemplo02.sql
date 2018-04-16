# Exemplo 2: - “Criar procedure aumenta_sal”

# 1
CREATE OR REPLACE PROCEDURE aumenta_sal
# 2
(codigo IN tbfuncionario.codfunc%TYPE,
# 3
perc IN NUMBER)
# 4
IS
# 5
BEGIN
# 6
# 7
UPDATE tbfuncionario SET
salariofunc = salariofunc + (salariofunc * perc / 100)
WHERE codfunc = codigo;
# 7
END aumenta_sal;
