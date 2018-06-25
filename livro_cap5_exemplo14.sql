# Exemplo 14: - "Exemplo de Trigger chamada tbaluno_AUD"

CREATE OR REPLACE TRIGGER tbaluno_AUD
    AFTER UPDATE OR DELETE ON tbaluno FOR EACH ROW
DECLARE
    woperacao VARCHAR2(15);
BEGIN
    IF updating THEN
        woperacao := 'Alterou';
    END IF;

    IF deleting THEN
        woperacao := 'Removeu';
    END IF;

    INSERT INTO tbalunoant (codigo, nome, idade, nota1, nota2, media, operacao)
        VALUES (
            :OLD.codigo,
            :OLD.nome,
            :OLD.idade,
            :OLD.nota1,
            :OLD.nota2,
            :OLD.media,
            woperacao
        );
END;
