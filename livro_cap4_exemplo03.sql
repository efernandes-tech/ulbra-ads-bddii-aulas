# Exemplo 3: - “Exemplo do uso da estrutura CASE”

CREATE OR REPLACE PROCEDURE exemplo_case (
    n1 IN NUMBER,
    n2 IN NUMBER
)
IS
BEGIN
    CASE
        WHEN n1 > n2 THEN
            DBMS_OUTPUT.PUT_LINE('N1 é MAIOR a N2');
        WHEN n1 < n2 THEN
            DBMS_OUTPUT.PUT_LINE('N1 é MENOR a N2');
        ELSE
            DBMS_OUTPUT.PUT_LINE('N1 é IGUAL a N2');
    END CASE;
END exemplo_case;
