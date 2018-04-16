# Exemplo 3: - “Exemplo de transação utilizando savepoint”

# Linha
# Comandos Executados

# 1
UPDATE produto SET estoque=400 WHERE codigo=4;
# 2
UPDATE produto SET estoque=900 WHERE codigo=6;
# 3
SAVEPOINT ponto1;
# 4
INSERT INTO produto(codigo, nome, valor, estoque)
    VALUES(7, 'melão', 6.80, 20);
# 5
DELETE FROM produto WHERE codigo=2;
# 6
SAVEPOINT ponto2;
# 7
DELETE FROM produto WHERE codigo=1;
# 8
ROLLBACK TO SAVEPOINT ponto1;
# 9
UPDATE produto SET estoque=700 WHERE codigo=3;
# 10
COMMIT;
