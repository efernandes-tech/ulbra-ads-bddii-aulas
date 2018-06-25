# Exemplo 6: - "Exemplo 3 de utilização de cursores e laço While"

CREATE OR REPLACE PROCEDURE exemploCur3
AS
    wnome tbproduto.nome%TYPE;
    wvalor tbproduto.valor%TYPE;
    CURSOR c3 IS SELECT nome, valor FROM tbproduto ORDER BY valor;
BEGIN
    OPEN c3;

    FETCH c3 INTO wnome, wvalor;

    WHILE (c3%FOUND) LOOP
        dbms_output.put_line('******************************************');
        dbms_output.put_line('Estou "varrendo" a linha ' || c3%ROWCOUNT);
        dbms_output.put_line('Nome no produto: ' || wnome);
        dbms_output.put_line('Valor: ' || wvalor);

        FETCH c3 INTO wnome, wvalor;
    END LOOP;

    CLOSE c3;
END exemploCur3;
