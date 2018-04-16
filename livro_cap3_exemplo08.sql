# Exemplo 8: - “Exemplo de criação de uma função dobro2”

# 1
CREATE OR REPLACE FUNCTION dobro2
# 2
(NUMERO IN NUMBER)
# 3
RETURN VARCHAR2
# 3
IS
# 5
N NUMBER;
# 6
NOME VARCHAR2(20);
# 6
BEGIN
# 8
N := NUMERO * 2;
# 9
NOME := ' O dobro é ' || N;
# 10
RETURN (NOME);
# 11
END dobro2;
