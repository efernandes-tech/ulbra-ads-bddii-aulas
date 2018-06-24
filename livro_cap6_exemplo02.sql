// Exemplo 2: - “Exemplo de declaração de Cursor”

create or replace procedure declaracursor
AS
CURSOR C1 IS SELECT cod,nome,salario FROM
tbfuncionario where estado=’SP’;
BEGIN
: :