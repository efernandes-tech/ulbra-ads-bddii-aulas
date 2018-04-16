# Exemplo 8: - “Exemplo de criação de uma função dobro2”

CREATE OR REPLACE FUNCTION dobro2 (
    NUMERO IN NUMBER
)
RETURN VARCHAR2
IS
    n NUMBER;
    nome VARCHAR2(20);
BEGIN
    n := numero * 2;
    nome := ' O dobro é ' || N;
    RETURN (nome);
END dobro2;
