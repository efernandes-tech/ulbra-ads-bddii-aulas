# Exemplo 8: - "Exemplo 5 de utilização de cursores Dinâmicos"

CREATE OR REPLACE PROCEDURE exemploCur5 (
    opcao IN INTEGER
)
AS
    TYPE tipoCursor IS REF CURSOR;
    cursorDinamico tipoCursor;
    wcodigo tbproduto.codigo%TYPE;
    wnome tbproduto.nome%TYPE;
    westvalor NUMBER;
BEGIN
    IF (opcao = 1) THEN
        OPEN cursorDinamico FOR 'SELECT codigo, nome ,estoque FROM tbproduto ORDER BY nome';
    ELSE
        OPEN cursorDinamico FOR 'SELECT codigo, nome, valor FROM tbproduto ORDER BY nome';
    END IF;

    LOOP
        dbms_output.put_line('**************************************************');

        FETCH cursorDinamico INTO wcodigo, wnome, westvalor;

        IF (NOT cursorDinamico%FOUND) THEN
            EXIT;
        END IF;

        dbms_output.put_line('Estou "varrendo" a linha ' || cursorDinamico%);
        dbms_output.put_line('Código do produto: ' || wcodigo);
        dbms_output.put_line('Nome no produto: ' || wnome);

        IF (opcao = 1) THEN
            dbms_output.put_line('Estoque do produto: ' || westvalor);
        ELSE
            dbms_output.put_line('Valor do produto: ' || westvalor);
        END IF;
    END LOOP;

    CLOSE cursorDinamico;
END exemploCur5;
