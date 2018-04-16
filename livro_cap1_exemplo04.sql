# Exemplo 4: - “Definindo Cláusula UNIQUE ao criar uma tabela”

CREATE TABLE DadosUsuario (
    codigo INTEGER NOT NULL,
    nome VARCHAR(20) UNIQUE,
    numerofuncionarios INTEGER,
    usuario VARCHAR(20),
    senha VARCHAR(20)
);
