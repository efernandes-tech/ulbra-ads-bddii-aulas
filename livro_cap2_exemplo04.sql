# Exemplo 4: - “Transações Simultâneas”

UPDATE produto SET valor=2.50 WHERE codigo=1;
:

SELECT * FROM produto ORDER BY codigo;
:

:
SELECT * FROM produto ORDER BY codigo;

:
DELETE FROM produto WHERE codigo=2;

:
SELECT * FROM produto ORDER BY codigo;

SELECT * FROM produto ORDER BY codigo;
:

COMMIT;

SELECT * FROM produto ORDER BY codigo;

COMMIT;
