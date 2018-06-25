# Exemplo 3: - "Script para criação da estrutura modelo dos exemplos"

CREATE TABLE tbproduto (
    codigo INTEGER NOT NULL,
    nome VARCHAR(20) NOT NULL,
    estoque INTEGER,
    valor DECIMAL(15, 2),
    PRIMARY KEY(codigo)
);

INSERT INTO tbproduto(codigo, nome, estoque, valor)
    VALUES (1, 'banana', 200, 2.99);
INSERT INTO tbproduto(codigo, nome, estoque, valor)
    VALUES (2, 'uva', 150, 5.25);
INSERT INTO tbproduto(codigo, nome, estoque, valor)
    VALUES (3, 'abacaxi', 75, 2.75);
INSERT INTO tbproduto(codigo, nome, estoque, valor)
    VALUES (4, 'pera', 48, 4.35);
