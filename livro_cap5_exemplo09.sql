# Exemplo 9: - "Estrutura base para testar os exemplos de trigger"

CREATE TABLE tbaluno(
    codigo INTEGER NOT NULL,
    nome VARCHAR2(30),
    idade INTEGER NOT NULL,
    nota1 NUMBER(15, 2),
    nota2 NUMBER(15, 2),
    media NUMBER(15, 2),
    CONSTRAINT tbaluno_pk PRIMARY KEY(codigo)
);

INSERT INTO tbaluno(codigo, nome, idade, nota1, nota2, media)
    VALUES (1, 'Marta', 19, 9.5, 8.5, 9);
INSERT INTO tbaluno(codigo, nome, idade, nota1, nota2, media)
    VALUES (2, 'Ana', 17, 7.3, 8.5, 7.9);
INSERT INTO tbaluno(codigo, nome, idade, nota1, nota2, media)
    VALUES (3, 'Carla', 22, 5.8, 4.8, 5.3);

CREATE SEQUENCE tbaluno_seq START WITH 20;

CREATE OR REPLACE VIEW alunoview AS (SELECT nome, media FROM tbaluno);

SELECT * FROM tbaluno;

SELECT * FROM alunoview;
