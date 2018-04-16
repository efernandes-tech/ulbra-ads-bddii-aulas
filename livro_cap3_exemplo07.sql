# Exemplo 7: - “Exemplo de chamada de função”

SELECT * FROM tbfuncionario;

SELECT nomefunc, salariofunc, dobro(salariofunc) AS dobro_s FROM tbfuncionario;

SELECT * FROM tbfuncionario WHERE salariofunc > dobro(1000);

UPDATE tbfuncionario SET salariofunc = dobro(salariofunc) WHERE codfunc=2;
