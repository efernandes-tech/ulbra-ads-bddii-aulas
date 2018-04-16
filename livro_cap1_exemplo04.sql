// Exemplo 4: - “Definindo Cláusula UNIQUE ao criar uma tabela”
CREATE TABLE DadosUsuario (
    codigo integer not null,
    nome varchar(20) UNIQUE,
    numerofuncionarios integer,
    usuario varchar(20),
    senha varchar(20));