# Exemplo 9: - “Função que retorna maior código de funcionário”

CREATE OR REPLACE FUNCTION maior
RETURN INTEGER
IS
    m INTEGER;
BEGIN
    SELECT NVL(max(codfunc), 0) INTO m FROM tbfuncionario;

    RETURN (m);
END maior;
