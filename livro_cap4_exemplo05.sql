# Exemplo 5: - “Exemplo do uso da estrutura de repetição LOOP”

CREATE OR REPLACE PROCEDURE exemplo_loop (
    fim IN INTEGER
)
IS
    n INTEGER;
BEGIN
    n := 1;

    LOOP
        DBMS_OUTPUT.PUT_LINE('Número é ' || n);

        IF n = fim THEN
            EXIT;
        END IF;

        n := n + 1;
    END LOOP;

    n := 1;

    LOOP
        DBMS_OUTPUT.PUT_LINE('Número é ' || n);

        EXIT WHEN n = fim;

        n := n + 1;
    END LOOP;
END exemplo_loop;
