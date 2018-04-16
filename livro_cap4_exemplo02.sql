# Exemplo 2: - “Exemplo do uso da estrutura IF”

CREATE OR REPLACE FUNCTION exemplo2_if (
    num IN INTEGER
)
RETURN VARCHAR
IS
    resp VARCHAR(10);
BEGIN
    IF num >= 0 THEN
        resp := 'Positivo';
    ELSIF num < 0 THEN
        resp := 'Negativo';
    ELSIF num = 0 THEN
        resp := 'Nulo';
    END IF;

    RETURN num;
END exemplo2_if;
