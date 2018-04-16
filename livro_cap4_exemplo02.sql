# Exemplo 2: - “Exemplo do uso da estrutura IF”

# 1
CREATE OR REPLACE FUNCTION exemplo2_if
# 2
(num IN INTEGER) RETURN VARCHAR
# 3
IS
# 4
resp VARCHAR(10);
# 5
BEGIN
# 6
IF num >= 0 THEN
# 7
resp := 'Positivo';
# 8
ELSIF num < 0 THEN
# 9
resp := 'Negativo';
# 10
ELSIF num = 0 THEN
# 11
resp := 'Nulo';
# 12
END IF;
# 13
RETURN num;
# 14
END exemplo2_if;
