// Exemplo 9: - “Exemplo 6 de utilização de cursores Dinâmicos”

create or replace procedure exemploCur6
As
TYPE tipoCursor IS REF CURSOR;
cursorDinamico tipoCursor;
wnome tbproduto.nome%type;
wnomecat tbcategoria.nomecat%type;
wcodcat tbcategoria.pkcodcat%type;
wquant number;
cursor ccat is select c.pkcodcat,c.nomecat,count(p.codigo) from tbcategoria c
left join tbproduto p on c.pkcodcat=p.fkcodcat
group by c.pkcodcat, c.nomecat order by c.nomecat;
begin
open ccat;
loop
dbms_output.put_line(‘*************************************************’);
fetch ccat into wcodcat, wnomecat,wquant;
exit when ccat%NOTFOUND=true;
dbms_output.put_line(‘Categoria ‘ || wnomecat);
dbms_output.put_line(‘Quantidade de produtos vinculados ‘ || wquant );

OPEN cursorDinamico FOR ‘SELECT nome FROM tbproduto p
where p.fkcodcat=’||wcodcat||’ ORDER BY nome’;
Loop
fetch cursorDinamico into wnome;
exit when cursorDinamico%NOTFOUND=true;
dbms_output.put_line(‘Produto vinculado a categoria ‘ || wnome);
end loop;
close cursorDinamico;
end loop;
close ccat;
end exemploCur6;
