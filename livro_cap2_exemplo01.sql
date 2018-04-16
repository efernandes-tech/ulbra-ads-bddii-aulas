# Exemplo 1: - “Exemplo de transação com commit”

# Linha
# Comandos da Transação

# 1
SELECT * FROM produto;
# 2
INSERT INTO produto (codigo, nome, valor, estoque)
    VALUES(4, 'laranja', 3.4, 60);
# 3
UPDATE produto SET estoque=500 WHERE codigo=1;
# 4
COMMIT;
# 5
SELECT * FROM produto;
