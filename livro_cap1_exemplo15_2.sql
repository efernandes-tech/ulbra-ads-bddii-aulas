# Exemplo 15: - “Aplicação em ORACLE do tipo Cascade ao remover”

ALTER TABLE aluno ADD CONSTRAINT aluno_codcid FOREIGN KEY (fkcodcid)
    REFERENCES cidade (codcid)
        ON DELETE CASCADE;
