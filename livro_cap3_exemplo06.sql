# Exemplo 6: - “Exemplo de criação de uma função”

# 1
CREATE OR REPLACE FUNCTION dobro
# 2
(NUMERO IN NUMBER)
# 3
RETURN NUMBER
# 4
IS
# 4
N NUMBER;
# 5
BEGIN
# 7
N := NUMERO*2;
# 8
RETURN (N);
# 9
END dobro;
