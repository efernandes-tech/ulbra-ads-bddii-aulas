# Exemplo 9: - “Exemplo do uso de exceção programada”

CREATE OR REPLACE PROCEDURE testeexception2 (
    v1 IN NUMBER,
    v2 IN NUMBER
)
IS
    num NUMBER;
    excecaoprog EXCEPTION;
BEGIN
    IF v2 < v1 THEN
        RAISE excecaoprog;
    END IF;

    FOR num IN v1..v2 LOOP
        DBMS_OUTPUT.PUT_LINE('Número :' || num);
    END LOOP;

    EXCEPTION

    WHEN excecaoprog THEN
        DBMS_OUTPUT.PUT_LINE('O valor informado como segundo parâmetro é inferior ao primeiro');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERRO = Ocorreu um erro na operação =');
END testeexception2;
