# Exemplo 16: - "Uso de :NEW e :OLD juntos"

CREATE OR REPLACE TRIGGER tbaluno_AUD
    AFTER UPDATE OR DELETE ON tbaluno FOR EACH ROW
DECLARE
    woperacao VARCHAR2(15);
BEGIN
    IF (updating) AND (
        :OLD.codigo <> :NEW.codigo OR :OLD.nome <> :NEW.nome
        OR :OLD.idade <> :NEW.idade OR :OLD.nota1 <> :NEW.nota1
        OR :OLD.nota2 <> :NEW.nota2 OR :OLD.media <> :NEW.media
    ) THEN
        woperacao := 'Alterou';
        INSERT INTO tbalunoant(codigo, nome, idade, nota1, nota2, media, operacao)
            VALUES (
                :OLD.codigo,
                :OLD.nome,
                :OLD.idade,
                :OLD.nota1,
                :OLD.nota2,
                :OLD.media,
                woperacao
            );
    END IF;

    IF deleting THEN
        woperacao := 'Removeu';
        INSERT INTO tbalunoant(codigo, nome, idade, nota1, nota2, media, operacao)
            VALUES (
                :OLD.codigo,
                :OLD.nome,
                :OLD.idade,
                :OLD.nota1,
                :OLD.nota2,
                :OLD.media,
                woperacao
            );
    END IF;
END;
