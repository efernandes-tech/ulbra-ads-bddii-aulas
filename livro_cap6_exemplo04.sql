// Exemplo 4: - “Exemplo 1 de utilização de cursores”

create or replace procedure exemploCur1
As
wcodigo tbproduto.codigo%type;
wnome tbproduto.nome%type;
CURSOR C1 IS SELECT codigo, nome FROM tbproduto order by codigo;
begin
OPEN C1; --Abrindo o cursor
loop --instrução de início do loop
if (C1%FOUND) then
dbms_output.put_line(‘Existe registros no cursor’ );
else
dbms_output.put_line(‘Não existe ninguém no cursor’ );
end if;
dbms_output.put_line(‘=====================’ );
FETCH C1 INTO wcodigo, wnome;
dbms_output.put_line(‘Código: ‘ || wcodigo);
dbms_output.put_line(‘Nome: ‘ || wnome);
dbms_output.put_line(‘Estou “varrendo” a linha ‘ || C1% ROWCOUNT);
exit when C1%NOTFOUND=true; --condição de saída do laço loop
end loop;
CLOSE C1;
if (C1%ISOPEN) then
dbms_output.put_line(‘O cursor está aberto!’);
else
dbms_output.put_line(‘O cursor foi fechado com sucesso!’);
end if;
end ;
