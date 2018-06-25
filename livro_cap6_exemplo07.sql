# Exemplo 7: - "Exemplo 4 de utilização de cursores com parâmetro"

SELECT * FROM tbproduto;

CREATE OR REPLACE PROCEDURE exemploCur4 (
    winicial IN VARCHAR2
)
AS
    wcodigo tbproduto.codigo%TYPE;
    wnome tbproduto.nome%TYPE;
    CURSOR c4 IS SELECT codigo, nome FROM tbproduto
        WHERE UPPER(nome) LIKE UPPER(winicial || '%') ORDER BY nome;
BEGIN
    OPEN c4;

    LOOP
        dbms_output.put_line('*********************************************');

        FETCH c4 INTO wcodigo, wnome;
        IF (NOT c4%found) THEN
            EXIT;
        END IF;
        dbms_output.put_line('Código do produto: ' || wcodigo);
        dbms_output.put_line('Nome no produto: ' || wnome);
    END LOOP;

    CLOSE c4;
END exemploCur4;
