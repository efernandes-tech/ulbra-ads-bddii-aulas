-- 1) Desenvolva todas as constraint de criação de Chave primária.

ALTER TABLE TbAluno ADD CONSTRAINT TbAluno_PkCodAluno PRIMARY KEY(PkCodAluno);

ALTER TABLE TbCurso ADD CONSTRAINT TbCurso_PkCodCurso PRIMARY KEY(PkCodCurso);

ALTER TABLE TbDisciplina ADD CONSTRAINT TbDisciplina_PkCodDisciplina PRIMARY KEY(PkCodDisciplina);

ALTER TABLE TbDisciplinaMatriculada ADD CONSTRAINT TbDiscMatriculada_PkCodRel PRIMARY KEY(PkCodRel);

ALTER TABLE TbDOC ADD CONSTRAINT TbDOC_PkNumDOC PRIMARY KEY(PkNumDOC);

ALTER TABLE TbMatricula ADD CONSTRAINT TbMatricula_PkCodMatri PRIMARY KEY(PkCodMatri);

ALTER TABLE TbProfessor ADD CONSTRAINT TbProfessor_PkCodProf PRIMARY KEY(PkCodProf);

ALTER TABLE TbTurma ADD CONSTRAINT TbTurma_PkCodTurma PRIMARY KEY(PkCodTurma);

-- 2) Desenvolva todas as constraint de criação de todas as chaves estrangeiras com método "cascate" definido.

