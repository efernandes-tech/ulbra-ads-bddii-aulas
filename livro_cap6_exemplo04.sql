# Exemplo 4: - "Exemplo 1 de utilização de cursores"

CREATE OR REPLACE PROCEDURE exemploCur1
AS
    wcodigo tbproduto.codigo%TYPE;
    wnome tbproduto.nome%TYPE;
    CURSOR c1 IS SELECT codigo, nome FROM tbproduto ORDER BY codigo;
BEGIN
    OPEN c1; -- Abrindo o cursor.

    LOOP -- Instrução de início do loop.
        IF (c1%FOUND) THEN
            dbms_output.put_line('Existe registros no cursor');
        ELSE
            dbms_output.put_line('Não existe ninguém no cursor');
        END IF;

        dbms_output.put_line('=====================' );

        FETCH c1 INTO wcodigo, wnome;

        dbms_output.put_line('Código: ' || wcodigo);
        dbms_output.put_line('Nome: ' || wnome);
        dbms_output.put_line('Estou "varrendo" a linha ' || c1%ROWCOUNT);

        EXIT WHEN c1%NOTFOUND = true; -- Condição de saída do laço loop.
    END LOOP;

    CLOSE c1;

    IF (c1%ISOPEN) THEN
        dbms_output.put_line('O cursor está aberto!');
    ELSE
        dbms_output.put_line('O cursor foi fechado com sucesso!');
    END IF;
END;
