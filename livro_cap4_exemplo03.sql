# Exemplo 3: - “Exemplo do uso da estrutura CASE”

# 1
CREATE OR REPLACE PROCEDURE exemplo_case
# 2
( n1 IN NUMBER, n2 IN NUMBER )
# 3
IS
# 4
BEGIN
# 5
CASE
# 6
WHEN n1 > n2 THEN
# 7
DBMS_OUTPUT.PUT_LINE('N1 é MAIOR a N2');
# 8
WHEN n1 < n2 THEN
# 9
DBMS_OUTPUT.PUT_LINE('N1 é MENOR a N2');
# 10
ELSE
# 11
DBMS_OUTPUT.PUT_LINE('N1 é IGUAL a N2');
# 12
END CASE;
# 13
END exemplo_case;
