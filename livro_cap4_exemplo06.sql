# Exemplo 6: - “Exemplo do uso da estrutura de repetição FOR”

CREATE OR REPLACE FUNCTION somaintervalo (
    v1 IN NUMBER,
    v2 IN NUMBER
)
RETURN NUMBER
IS
    soma NUMBER;

    cont NUMBER;
BEGIN
    soma := 0;

    FOR cont IN v1..v2 LOOP
        soma := soma + cont;
    END LOOP;

    RETURN soma;
END somaintervalo;
