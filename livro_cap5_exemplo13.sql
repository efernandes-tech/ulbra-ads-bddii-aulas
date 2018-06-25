# Exemplo 13: - "Criar tabela que armazenará dados antigos de aluno"

CREATE TABLE tbalunoant(
    codigo INTEGER NOT NULL,
    nome VARCHAR2(30),
    idade INTEGER,
    nota1 NUMBER(15, 2),
    nota2 NUMBER(15, 2),
    media NUMBER(15, 2),
    operacao VARCHAR2(15)
);
