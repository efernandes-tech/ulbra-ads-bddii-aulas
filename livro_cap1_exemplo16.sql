# Exemplo 16: - “Aplicação em Firebird de tipos de integridade referencial dependendo da ação”

ALTER TABLE aluno ADD CONSTRAINT aluno_codcid FOREIGN KEY (fkcodcid)
    REFERENCES tbcidade (pkcodcid)
        ON DELETE CASCADE
        ON UPDATE SET NULL;
