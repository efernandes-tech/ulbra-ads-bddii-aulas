// Exemplo 1: - “Exemplo de problema na execução do SELECT”

create or replace
FUNCTION funcaocomerro (codcategoria IN NUMBER)
RETURN number
IS
wvalor NUMBER;
BEGIN
wvalor:=0;

select nvl(valorproduto,0) INTO wvalor from tbproduto
where fkcodprod=codcategoria;
RETURN (wvalor);
END funcaocomerro;
