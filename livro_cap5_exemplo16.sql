// Exemplo 16: - “Uso de :NEW e :OLD juntos”

create or replace trigger TBALUNO_AUD
AFTER update or delete on tbaluno
FOR EACH ROW
declare
woperacao varchar2(15);
begin
IF (updating) AND

(:old.codigo<>:new.codigo or :old.nome<>:new.nome
or :old.idade<>:new.idade or:old.nota1<>:new.nota1
or :old.nota2<>:new.nota2 or :old.media<>:new.media) THEN
woperacao:=’Alterou’;

insert into TBALUNOANT(codigo,nome,idade,nota1,nota2,media,
operacao) VALUES(:old.codigo,:old.nome,:old.idade,:old.nota1,
:old.nota2,:old.media,woperacao);
END IF;
IF deleting THEN
woperacao:=’Removeu’;

insert into TBALUNOANT(codigo,nome,idade,nota1,nota2,media,
operacao) VALUES(:old.codigo,:old.nome,:old.idade,:old.nota1,
:old.nota2,:old.media,woperacao);
END IF;
END;
