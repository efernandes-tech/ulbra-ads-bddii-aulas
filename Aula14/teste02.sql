CREATE TABLE TbAluno(
    codigo INTEGER NOT NULL,
    nome VARCHAR2(30),
    idade INTEGER NOT NULL,
    nota1 NUMBER(15,2),
    nota2 NUMBER(15,2),
    media NUMBER(15,2),
    CONSTRAINT TbAluno_Pk PRIMARY KEY(codigo)
);

INSERT INTO TbAluno (codigo, nome, idade, nota1, nota2, media) VALUES (1, 'Marta', 19, 9.5, 8.5, 9);
INSERT INTO TbAluno (codigo, nome, idade, nota1, nota2, media) VALUES (2, 'Ana', 17, 7.3, 8.5, 7.9);
INSERT INTO TbAluno (codigo, nome, idade, nota1, nota2, media) VALUES (3, 'Carla', 22, 5.8, 4.8, 5.3);

CREATE SEQUENCE TbAluno_Seq START WITH 20;

CREATE OR REPLACE VIEW AlunoView AS (SELECT nome, media FROM TbAluno);

SELECT * FROM TbAluno;

SELECT * FROM AlunoView;
