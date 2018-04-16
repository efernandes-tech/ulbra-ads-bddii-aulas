# Exemplo 5: - “Exemplo do uso da estrutura de repetição LOOP”

# 1
CREATE OR REPLACE PROCEDURE exemplo_loop
# 2
( fim IN INTEGER )
# 3
IS
# 4
n INTEGER;
# 4
BEGIN
# 6
n := 1;
# 7
LOOP
# 8
DBMS_OUTPUT.PUT_LINE('Número é ' || n);
# 9
IF n = fim THEN
# 10
EXIT;
# 11
END IF;
# 12
n := n + 1;
# 13
END LOOP;
# 14
n := 1;
# 15
LOOP
# 16
DBMS_OUTPUT.PUT_LINE('Número é ' || n);
# 17
EXIT WHEN n = fim;
# 18
n := n + 1;
# 18
END LOOP;
# 20
END exemplo_loop;
