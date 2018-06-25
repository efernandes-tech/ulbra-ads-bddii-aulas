# Exemplo 15: - “Exemplos para chamada da trigger tbaluno_AUD”

UPDATE tbaluno SET idade = 40 WHERE codigo = 23;
UPDATE tbaluno SET idade = idade + 1 WHERE codigo <= 3;
DELETE tbaluno WHERE codigo = 21;
SELECT * FROM tbaluno;
SELECT * FROM tbalunoant;
