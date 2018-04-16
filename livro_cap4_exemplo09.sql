# Exemplo 9: - “Exemplo do uso de exceção programada”

# 1
CREATE OR REPLACE PROCEDURE testeexception2
# 2
(v1 IN NUMBER,
# 3
v2 IN NUMBER)
# 4
IS
# 5
num NUMBER;
# 6
excecaoprog EXCEPTION;
# 7
BEGIN
# 7
IF v2 < v1 THEN
# 9
RAISE excecaoprog;
# 10
END IF;
# 11
FOR num IN v1..v2 LOOP
# 12
DBMS_OUTPUT.PUT_LINE('Número :' || num);
# 12
END LOOP;
# 14
EXCEPTION
# 15
WHEN excecaoprog THEN
# 16
DBMS_OUTPUT.PUT_LINE('O valor informado como segundo parâmetro é inferior ao primeiro');
# 17
WHEN OTHERS THEN
# 18
DBMS_OUTPUT.PUT_LINE('ERRO = Ocorreu um erro na operação =');
# 19
END testeexception2;
