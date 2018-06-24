// Exemplo 7: - “Exemplo 4 de utilização de cursores com parâmetro”

select * from tbprodutocreate or replace procedure exemploCur4
( WINICIAL IN varchar2)
As
wcodigo tbproduto.codigo%type;
wnome tbproduto.nome%type;
CURSOR C4 IS SELECT codigo,nome FROM tbproduto
where upper(nome) like upper(WINICIAL||’%’) ORDER BY nome;
begin
OPEN C4;
loop
dbms_output.put_line(‘*********************************************’);
FETCH C4 INTO wcodigo, wnome;
if (not C4%found) then
exit;
end if;
dbms_output.put_line(‘Código do produto: ‘ || wcodigo);
dbms_output.put_line(‘Nome no produto: ‘ || wnome);
end loop;
CLOSE C4;
end exemploCur4;
