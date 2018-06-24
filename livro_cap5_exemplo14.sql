// Exemplo 14: - “Exemplo de Trigger chamada TBALUNO_AUD”

create or replace trigger TBALUNO_AUD
AFTER update or delete on tbaluno
FOR EACH ROW
DECLARE
woperacao varchar2(15);
BEGIN
IF updating THEN
woperacao:=’Alterou’;
END IF;
IF deleting THEN
woperacao:=’Removeu’;
END IF;

insert into TBALUNOANT(codigo,nome,idade,nota1,nota2,media,operacao)
VALUES(:old.codigo,:old.nome,:old.idade,:old.nota1,:old.nota2,:old.media,woperacao);
END;
