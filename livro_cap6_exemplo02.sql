# Exemplo 2: - "Exemplo de declaração de Cursor"

CREATE OR REPLACE PROCEDURE declaracursor
AS
    CURSOR c1 IS SELECT cod, nome, salario FROM tbfuncionario WHERE estado = 'SP';
BEGIN
: :
