# Exemplo 14: - “Definindo Chave estrangeira ao alterar tabela”

ALTER TABLE avaliação ADD CONSTRAINT codcurso_fk FOREIGN KEY (codcurso)
    REFERENCES curso (codcurso);
