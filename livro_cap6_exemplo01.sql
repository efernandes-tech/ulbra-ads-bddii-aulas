# Exemplo 1: - "Exemplo de problema na execução do SELECT"

CREATE OR REPLACE FUNCTION funcaocomerro (
    codcategoria IN NUMBER
)
RETURN NUMBER
IS
    wvalor NUMBER;
BEGIN
    wvalor := 0;

    SELECT NVL(valorproduto, 0) INTO wvalor
    FROM tbproduto
    WHERE fkcodprod = codcategoria;

    RETURN (wvalor);
END funcaocomerro;
