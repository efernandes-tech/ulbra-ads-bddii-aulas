// Exemplo 11: - “Exemplo de Trigger chamada TBALUNO_BI”

create or replace TRIGGER tbaluno_BI
BEFORE INSERT ON tbaluno
FOR EACH ROW
declare
    xcod tbaluno.codigo%type;
BEGIN
select tbaluno_seq.NEXTVAL into xcod from dual;

:new.codigo :=xcod; -- atribui para a coluna codalu o conteúdo de xcod

:new.media:=(:new.nota1+:new.nota2)/2; --calcula a média e atribui o valor

if (:new.idade is null) or (:new.idade<0) then
    :new.idade:=0;
end if;

END;
