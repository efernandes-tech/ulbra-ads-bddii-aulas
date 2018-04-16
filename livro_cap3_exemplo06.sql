# Exemplo 6: - “Exemplo de criação de uma função”


CREATE OR REPLACE FUNCTION dobro (
    numero IN NUMBER
)
RETURN NUMBER
IS
    n NUMBER;
BEGIN
    n := numero*2;

    RETURN (n);
END dobro;
