# Exemplo 10: - "Trigger de momento INSTEAD OF"

CREATE OR REPLACE TRIGGER alunoview_IOINS
    INSTEAD OF INSERT ON alunoview
BEGIN
    INSERT INTO tbaluno(codigo, nome, idade, nota1, nota2, media)
        VALUES (tbaluno_seq.NEXTVAL, :NEW.NOME, 0, :NEW.MEDIA, :NEW.MEDIA, :NEW.MEDIA);
END alunoview_IOINS;

INSERT INTO alunoview(nome, media) VALUES('Bruna', 6.7);

SELECT * FROM tbaluno;
