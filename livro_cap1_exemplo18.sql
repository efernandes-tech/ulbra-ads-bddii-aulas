# Exemplo 18: - “Check permitindo armazenas apenas os estados RS, RO e RJ”

ALTER TABLE aluno ADD CONSTRAINT check_uf CHECK (estado IN ('RS', 'SC', 'SP'));
