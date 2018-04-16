# Exemplo 1: - “Exemplo do uso da estrutura IF”

# 1
CREATE OR REPLACE
# 2
PROCEDURE exemplo1_if
# 3
( n1 IN NUMBER, n2 IN NUMBER )
# 4
IS
# 4
BEGIN
# 6
IF n1 = n2 THEN
# 7
DBMS_OUTPUT.PUT_LINE('n1 é igual a n2');
# 8
END IF;
# 9
IF (n1 > (n2 * 2)) THEN
# 10
DBMS_OUTPUT.PUT_LINE('N1 é maior do que o dobro de N2');
# 11
ELSE
# 12
DBMS_OUTPUT.PUT_LINE('n1 não é maior do que o dobro de n2 ' );
# 13
END IF;
# 14
END exemplo1_if;
