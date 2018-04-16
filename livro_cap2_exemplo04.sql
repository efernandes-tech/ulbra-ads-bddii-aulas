# Exemplo 4: - “Transações Simultâneas”

# Representa o tempo percorrido no banco de dados
# Transação “A”
# Transação “B”

# t1
UPDATE produto SET valor=2.50 WHERE codigo=1;
:

# t2
SELECT * FROM produto ORDER BY codigo;
:

# t3
:
SELECT * FROM produto ORDER BY codigo;

# t4
:
DELETE FROM produto WHERE codigo=2;

# t5
:
SELECT * FROM produto ORDER BY codigo;

# t6
SELECT * FROM produto ORDER BY codigo;
:

# t7
COMMIT;

# t8
SELECT * FROM produto ORDER BY codigo;

# t9
COMMIT;
