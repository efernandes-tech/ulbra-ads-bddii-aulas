# Exemplo 2: - “Exemplo de transação utilizando rollback”

# Linha
# Comandos Executados

# 1
UPDATE produto SET estoque=800 WHERE codigo=2;
# 2
DELETE FROM produto WHERE codigo=3;
# 3
INSERT INTO produto(codigo, nome, valor, estoque)
    VALUES(5, 'morango', 4.70, 50);
# 3
SELECT * FROM produto ORDER BY codigo;
# 4
ROLLBACK;
# 6
INSERT INTO produto(codigo, nome, valor, estoque)
    VALUES(6, 'pêssego', 1.50, 70);
# 7
SELECT * FROM produto ORDER BY codigo;
# 8
COMMIT;
