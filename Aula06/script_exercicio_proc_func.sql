CREATE TABLE TbAluno (
    PkcodAluno INTEGER NOT NULL,
    NomeAluno VARCHAR(20),
    QuantMatriculas INTEGER
);

CREATE TABLE TbDisciplina (
    PkCodDisciplina INTEGER NOT NULL,
    NomeDisciplina VARCHAR(20)
);

CREATE TABLE TbCurso (
    PkCodCurso INTEGER NOT NULL,
    NomeCurso VARCHAR(20),
    QuantMatriculas INTEGER
);

CREATE TABLE TbProfessor (
    PkCodProf INTEGER NOT NULL,
    NomeProfessor VARCHAR(20)
);

CREATE TABLE TbMatricula (
    PkCodMatri INTEGER NOT NULL,
    FkCodAluno INTEGER,
    FkCodCurso INTEGER,
    ValorJaPago NUMBER(15,2),
    ValorAberto NUMBER(15,2),
    QuantParcelas INTEGER
);

CREATE TABLE TbDOC (
    PkNumDOC INTEGER NOT NULL,
    ValorDOC NUMBER(15,2),
    StatusDOC INTEGER,
    FkCodMatri INTEGER
);

CREATE TABLE TbDisciplinaMatriculada (
    PkCodRel INTEGER NOT NULL,
    G1 NUMBER(15,2),
    G2 NUMBER(15,2),
    Media NUMBER(15,2),
    Subst NUMBER(15,2),
    NotaFinal NUMBER(15,2),
    FkCodTurma INTEGER,
    FkCodMatri INTEGER
);

CREATE TABLE TbTurma (
    PkCodTurma INTEGER,
    NomeTurma VARCHAR(20),
    FkCodDisciplina INTEGER,
    FkCodProf INTEGER,
    NumAlunos INTEGER
);

CREATE TABLE TbDiscProfessor (
    FkCodProf INTEGER,
    FkCodDisciplina INTEGER
);

INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (1, 'Ana', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (2, 'Maria', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (3, 'Carla', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (4, 'Caroline', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (5, 'Adriana', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (6, 'Mariana', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (7, 'Beatriz', 0);
INSERT INTO TbAluno (PkCodAluno, NomeAluno, QuantMatriculas) VALUES (8, 'Margarida', 0);

INSERT INTO TbCurso (PkCodCurso, NomeCurso, QuantMatriculas) VALUES (1, 'Informatica', 0);
INSERT INTO TbCurso (PkCodCurso, NomeCurso, QuantMatriculas) VALUES (2, 'Matematica', 0);

INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (1, 'Introduçao');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (2, 'Java');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (3, 'Calculo I');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (4, 'Banco ');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (5, 'Estatistica');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (6, 'Calculo II');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (7, 'Redes');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (8, 'Algebra ');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (9, 'Segurança');
INSERT INTO TbDisciplina (PkCodDisciplina, NomeDisciplina) VALUES (10, 'Formação');

INSERT INTO TbProfessor (PkCodProf, NomeProfessor) VALUES (1, 'Xuxa');
INSERT INTO TbProfessor (PkCodProf, NomeProfessor) VALUES (5, 'Bozo');
INSERT INTO TbProfessor (PkCodProf, NomeProfessor) VALUES (6, 'Papai Papudo');
INSERT INTO TbProfessor (PkCodProf, NomeProfessor) VALUES (2, 'Eliana');
INSERT INTO TbProfessor (PkCodProf, NomeProfessor) VALUES (3, 'Faustão');
INSERT INTO TbProfessor (PkCodProf, NomeProfessor) VALUES (4, 'Gugu');

INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (1, 2);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (1, 3);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (1, 5);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (1, 4);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (1, 9);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (2, 6);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (2, 8);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (3, 3);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (3, 4);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (3, 9);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (3, 10);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (3, 8);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (4, 7);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (4, 9);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (4, 3);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (4, 10);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (4, 2);
INSERT INTO TbDiscProfessor (FkCodProf, FkCodDisciplina) VALUES (4, 1);

INSERT INTO TbMatricula (PkCodMatri, FkCodAluno, FkCodCurso, ValorJaPago, ValorAberto, QuantParcelas) VALUES (1, 2, 1, 500, 500, 0);
INSERT INTO TbMatricula (PkCodMatri, FkCodAluno, FkCodCurso, ValorJaPago, ValorAberto, QuantParcelas) VALUES (2,3,1,500,500,0);
INSERT INTO TbMatricula (PkCodMatri, FkCodAluno, FkCodCurso, ValorJaPago, ValorAberto, QuantParcelas) VALUES (3,1,2,500,500,0);
INSERT INTO TbMatricula (PkCodMatri, FkCodAluno, FkCodCurso, ValorJaPago, ValorAberto, QuantParcelas) VALUES (4, 4, 2, 500, 500, 0);

INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (1, 250, 0, 1);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (2, 250, 0, 1);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (3, 100, 0, 2);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (4, 100, 0, 2);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (5, 100, 0, 2);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (6, 100, 0, 2);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (7, 250, 0, 3);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (8, 200, 0, 3);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (9, 50, 0, 3);
INSERT INTO TbDOC (PkNumDOC, ValorDOC, StatusDOC, FkCodMatri) VALUES (10, 500, 0, 4);

INSERT INTO TbTurma (PkCodTurma, NomeTurma, FkCodDisciplina, FkCodProf, NumAlunos) VALUES (1, 'Basico', 1, 2, 0);
INSERT INTO TbTurma (PkCodTurma, NomeTurma, FkCodDisciplina, FkCodProf, NumAlunos) VALUES (2, 'Intermediario', 3, 3, 0);
INSERT INTO TbTurma (PkCodTurma, NomeTurma, FkCodDisciplina, FkCodProf, NumAlunos) VALUES (3, 'Avan?ado', 1, 1, 0);
INSERT INTO TbTurma (PkCodTurma, NomeTurma, FkCodDisciplina, FkCodProf, NumAlunos) VALUES (4, 'Basico', 4, 2, 0);

INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (1, 0, 0, 0, 0, '0', 1, 1);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (2, 0, 0, 0, 0, '0', 2, 1);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (3, 0, 0, 0, 0, '0', 3, 1);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (4, 0, 0, 0, 0, '0', 4, 2);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (5, 0, 0, 0, 0, '0', 2, 2);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (6, 0, 0, 0, 0, '0', 2, 3);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (7, 0, 0, 0, 0, '0', 1, 3);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (8, 0, 0, 0, 0, '0', 3, 3);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (9, 0, 0, 0, 0, '0', 4, 3);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (10, 0, 0, 0, 0, '0', 2, 4);
INSERT INTO TbDisciplinaMatriculada (PkCodRel, G1, G2, Media, Subst, NotaFinal, FkCodTurma, FkCodMatri) VALUES (11, 0, 0, 0, 0, '0', 1, 4);
