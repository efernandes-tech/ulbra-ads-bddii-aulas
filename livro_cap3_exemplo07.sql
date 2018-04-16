# Exemplo 7: - “Exemplo de chamada de função”

# 1
SELECT * FROM tbfuncionario;
# 2
SELECT nomefunc, salariofunc, dobro(salariofunc) AS dobro_s FROM tbfuncionario;
# 3
SELECT * FROM tbfuncionario WHERE salariofunc > dobro(1000);
# 4
UPDATE tbfuncionario SET salariofunc = dobro(salariofunc) WHERE codfunc=2;
