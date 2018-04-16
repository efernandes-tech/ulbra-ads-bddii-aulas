# Exemplo 7: - “Exemplo do uso de exception”

CREATE OR REPLACE PROCEDURE testeexception1 (
    v1 IN NUMBER,
    v2 IN NUMBER
)
IS
    resp NUMBER;
BEGIN
    resp := v1 / v2;

    DBMS_OUTPUT.PUT_LINE('A divisao é' || resp);

    EXCEPTION

    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('ERRO ==== divisão por ZERO ====');

    DBMS_OUTPUT.PUT_LINE('Não é possível dividir ' || v1 || ' por ' || v2);

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('ERRO == Ocorreu um erro na operação ==');
END testeexception1;
