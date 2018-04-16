# Exemplo 4: - “Exemplo do uso da estrutura de repetição WHILE”

# 1
CREATE OR REPLACE FUNCTION somatorio
# 1
( num IN INTEGER ) RETURN INTEGER
# 3
IS
# 4
n INTEGER;
# 5
r INTEGER;
# 6
BEGIN
# 7
n := 1;
# 8
r := 0;
# 9
WHILE n <= num LOOP
# 10
r := r + n;
# 11
n := n + 1;
# 12
END LOOP;
# 13
RETURN(r);
# 14
END somatorio;
