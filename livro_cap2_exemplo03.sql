# Exemplo 3: - “Exemplo de transação utilizando savepoint”

UPDATE produto SET estoque=400 WHERE codigo=4;

UPDATE produto SET estoque=900 WHERE codigo=6;

SAVEPOINT ponto1;

INSERT INTO produto(codigo, nome, valor, estoque)
    VALUES(7, 'melão', 6.80, 20);

DELETE FROM produto WHERE codigo=2;

SAVEPOINT ponto2;

DELETE FROM produto WHERE codigo=1;

ROLLBACK TO SAVEPOINT ponto1;

UPDATE produto SET estoque=700 WHERE codigo=3;

COMMIT;
