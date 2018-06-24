// Exemplo 10: - “Trigger de momento INSTEAD OF”

create or replace
trigger alunoview_IOINS INSTEAD OF insert on alunoview
BEGIN
insert into TBALUNO(codigo,nome,idade,nota1,nota2,media)
values (tbaluno_seq.NEXTVAL, :NEW.NOME, 0, :NEW.MEDIA, :NEW.MEDIA, :NEW.MEDIA);
END alunoview_IOINS;

insert into alunoview(nome,media) values(‘Bruna’,6.7);
Select * from tbaluno;
