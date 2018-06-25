# Exemplo 5: - "Exemplo 2 de utilização de cursores"

CREATE OR REPLACE PROCEDURE exemploCur2
AS
    wcodigo tbproduto.codigo%TYPE;
    wnome tbproduto.nome%TYPE;
    westoque tbproduto.estoque%TYPE;
    CURSOR c2 IS SELECT codigo, nome, estoque FROM tbproduto ORDER BY estoque;
BEGIN
    OPEN c2; -- Abrindo o cursor.

    LOOP -- Instrução de início do loop.
        dbms_output.put_line('*******************************************');
        FETCH c2 INTO wcodigo, wnome, westoque;
        IF (NOT c2%FOUND) THEN -- Ce não possuir dados sai do loop.
            exit;
        END IF;
        dbms_output.put_line('Estou "varrendo" a linha ' || c2%ROWCOUNT );
        dbms_output.put_line('Código do produto: ' || wcodigo);
        dbms_output.put_line('Nome no produto: ' || wnome);
        dbms_output.put_line('Estoque: ' || westoque);
    END LOOP;
    CLOSE c2; -- Fechando o cursor.
END exemploCur2;
