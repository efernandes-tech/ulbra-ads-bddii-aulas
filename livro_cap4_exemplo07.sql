# Exemplo 7: - “Exemplo do uso de exception”

# 1
CREATE OR REPLACE PROCEDURE testeexception1
# 2
(v1 IN NUMBER,
# 3
v2 IN NUMBER)
# 4
IS
# 5
resp NUMBER;
# 6
BEGIN
# 7
resp := v1 / v2;
# 8
DBMS_OUTPUT.PUT_LINE('A divisao é' || resp);
# 9
EXCEPTION
# 10
WHEN ZERO_DIVIDE THEN
# 11
DBMS_OUTPUT.PUT_LINE('ERRO ==== divisão por ZERO ====');
# 12
DBMS_OUTPUT.PUT_LINE('Não é possível dividir ' || v1 || ' por ' || v2);
# 13
WHEN OTHERS THEN
# 14
DBMS_OUTPUT.PUT_LINE('ERRO == Ocorreu um erro na operação ==');
# 15
END testeexception1;
