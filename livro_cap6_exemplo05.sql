// Exemplo 5: - “Exemplo 2 de utilização de cursores”

create or replace procedure exemploCur2
As
wcodigo tbproduto.codigo%type;
wnome tbproduto.nome%type;
westoque tbproduto.estoque%type;

CURSOR C2 IS select codigo, nome, estoque from tbproduto
order by estoque;
begin
OPEN C2; --Abrindo o cursor
loop --instrução de início do loop
dbms_output.put_line(‘*******************************************’);
FETCH C2 INTO wcodigo, wnome,westoque;
if (not C2%FOUND) then --se não possuir dados sai do loop
exit;
end if;

dbms_output.put_line(‘Estou “varrendo” a linha ‘ ||
C2%rowcount );
dbms_output.put_line(‘Código do produto: ‘ || wcodigo);
dbms_output.put_line(‘Nome no produto: ‘ || wnome);
dbms_output.put_line(‘Estoque: ‘ || westoque);
end loop;
CLOSE C2; --fechando o cursor
end exemploCur2;
