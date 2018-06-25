# Exemplo 9: - "Exemplo 6 de utilização de cursores Dinâmicos"

CREATE OR REPLACE PROCEDURE exemploCur6
AS
    TYPE tipoCursor IS REF CURSOR;
    cursorDinamico tipoCursor;
    wnome tbproduto.nome%TYPE;
    wnomecat tbcategoria.nomecat%TYPE;
    wcodcat tbcategoria.pkcodcat%TYPE;
    wquant NUMBER;
    CURSOR ccat IS SELECT c.pkcodcat, c.nomecat, COUNT(p.codigo)
        FROM tbcategoria c
        LEFT JOIN tbproduto p ON c.pkcodcat = p.fkcodcat
        GROUP BY c.pkcodcat, c.nomecat ORDER BY c.nomecat;
BEGIN
    OPEN ccat;

    LOOP
        dbms_output.put_line('*************************************************');

        FETCH ccat INTO wcodcat, wnomecat, wquant;

        EXIT WHEN ccat%NOTFOUND = true;

        dbms_output.put_line('Categoria ' || wnomecat);
        dbms_output.put_line('Quantidade de produtos vinculados ' || wquant);

        OPEN cursorDinamico FOR 'SELECT nome FROM tbproduto p where p.fkcodcat = ' || wcodcat || ' ORDER BY nome';

        LOOP
            FETCH cursorDinamico INTO wnome;

            EXIT WHEN cursorDinamico%NOTFOUND = true;

            dbms_output.put_line('Produto vinculado a categoria ' || wnome);
        END LOOP;

        CLOSE cursorDinamico;
    END LOOP;

    CLOSE ccat;
END exemploCur6;
