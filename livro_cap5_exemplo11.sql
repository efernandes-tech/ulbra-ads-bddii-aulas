# Exemplo 11: - "Exemplo de Trigger chamada tbaluno_BI"

CREATE OR REPLACE TRIGGER tbaluno_BI
    BEFORE INSERT ON tbaluno FOR EACH ROW
DECLARE
    xcod tbaluno.codigo%TYPE;
BEGIN
    SELECT tbaluno_seq.NEXTVAL INTO xcod FROM dual;

    :NEW.codigo := xcod; -- Atribui para a coluna codigo o conteúdo de xcod.

    :NEW.media := (:NEW.nota1 + :NEW.nota2) / 2; -- Calcula a média e atribui o valor

    IF (:NEW.idade IS NULL) OR (:NEW.idade < 0) THEN
        :NEW.idade := 0;
    END IF;
END;
