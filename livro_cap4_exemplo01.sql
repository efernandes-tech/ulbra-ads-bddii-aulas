# Exemplo 1: - “Exemplo do uso da estrutura IF”

CREATE OR REPLACE PROCEDURE exemplo1_if (
    n1 IN NUMBER,
    n2 IN NUMBER
)
IS
BEGIN
    IF n1 = n2 THEN
        DBMS_OUTPUT.PUT_LINE('n1 é igual a n2');
    END IF;

    IF (n1 > (n2 * 2)) THEN
        DBMS_OUTPUT.PUT_LINE('N1 é maior do que o dobro de N2');
    ELSE
        DBMS_OUTPUT.PUT_LINE('n1 não é maior do que o dobro de n2 ' );
    END IF;
END exemplo1_if;
