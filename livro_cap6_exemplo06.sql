// Exemplo 6: - “Exemplo 3 de utilização de cursores e laço While”

create or replace procedure exemploCur3
As
wnome tbproduto.nome%type;
wvalor tbproduto.valor%type;
CURSOR C3 IS SELECT nome, valor FROM tbproduto ORDER BY valor;
begin
OPEN C3;
FETCH C3 INTO wnome, wvalor;
while (C3%found) loop
dbms_output.put_line(‘******************************************’);
dbms_output.put_line(‘Estou “varrendo” a linha ‘ || C3%rowcount );
dbms_output.put_line(‘Nome no produto: ‘ || wnome);
dbms_output.put_line(‘Valor: ‘ || wvalor);
FETCH C3 INTO wnome, wvalor;
end loop;
CLOSE C3;
end exemploCur3;
