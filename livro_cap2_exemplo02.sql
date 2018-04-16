# Exemplo 2: - “Exemplo de transação utilizando rollback”

UPDATE produto SET estoque=800 WHERE codigo=2;

DELETE FROM produto WHERE codigo=3;

INSERT INTO produto(codigo, nome, valor, estoque)
    VALUES(5, 'morango', 4.70, 50);

SELECT * FROM produto ORDER BY codigo;

ROLLBACK;

INSERT INTO produto(codigo, nome, valor, estoque)
    VALUES(6, 'pêssego', 1.50, 70);

SELECT * FROM produto ORDER BY codigo;

COMMIT;
