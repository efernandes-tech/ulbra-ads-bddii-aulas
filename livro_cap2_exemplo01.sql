# Exemplo 1: - “Exemplo de transação com commit”

SELECT * FROM produto;

INSERT INTO produto (codigo, nome, valor, estoque)
    VALUES(4, 'laranja', 3.4, 60);

UPDATE produto SET estoque=500 WHERE codigo=1;

COMMIT;

SELECT * FROM produto;
