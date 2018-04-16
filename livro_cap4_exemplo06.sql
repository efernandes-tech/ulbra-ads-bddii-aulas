# Exemplo 6: - “Exemplo do uso da estrutura de repetição FOR”

# 1
CREATE OR REPLACE FUNCTION somaintervalo
# 2
( v1 IN NUMBER,
# 3
v2 IN NUMBER) RETURN NUMBER
# 4
IS
# 5
soma NUMBER;
# 6
cont NUMBER;
# 7
BEGIN
# 8
soma := 0;
# 9
FOR cont IN v1..v2 LOOP
# 10
soma := soma + cont;
# 11
END LOOP;
# 12
RETURN soma;
# 13
END somaintervalo;
