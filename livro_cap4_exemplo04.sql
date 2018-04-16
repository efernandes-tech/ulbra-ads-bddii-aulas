# Exemplo 4: - “Exemplo do uso da estrutura de repetição WHILE”

CREATE OR REPLACE FUNCTION somatorio (
    num IN INTEGER
)
RETURN INTEGER
IS
    n INTEGER;
    r INTEGER;
BEGIN
    n := 1;

    r := 0;

    WHILE n <= num LOOP
        r := r + n;

        n := n + 1;
    END LOOP;

    RETURN(r);
END somatorio;
