CREATE OR REPLACE TRIGGER TbAluno_BI
    BEFORE INSERT ON TbAluno
    FOR EACH ROW
DECLARE
    xcod tbaluno.codigo%TYPE;
BEGIN
    SELECT tbaluno_seq.NEXTVAL INTO xcod FROM dual;
    :new.codigo :=xcod; -- atribui para a coluna codalu o conteúdo de xcod
    :new.media:=(:new.nota1+:new.nota2)/2; --calcula a média e atribui o valor
    IF (:new.idade IS NULL) OR (:new.idade < 0) THEN
        :new.idade:=0;
    END IF;
END;

INSERT INTO TBALUNO(codigo,nome,idade,nota1,nota2,media) VALUES (5, 'Anderson',26, 8.5, 9.5, 6);
INSERT INTO TBALUNO(nome,idade,nota1,nota2) VALUES ('Sergio', -25,6.1, 8.3);
INSERT INTO TBALUNO(nome ,nota1,nota2) VALUES ('Juliano', 4.5, 5.7);
    
SELECT * FROM TBALUNO;
