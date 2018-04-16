# Exemplo 9: - “Função que retorna maior código de funcionário”

# 1
CREATE OR REPLACE FUNCTION maior
# 2
RETURN INTEGER
# 3
IS
# 4
m INTEGER;
# 4
BEGIN
# 6
SELECT NVL(max(codfunc), 0) INTO m FROM tbfuncionario;
# 6
RETURN (m);
# 8
END maior;
