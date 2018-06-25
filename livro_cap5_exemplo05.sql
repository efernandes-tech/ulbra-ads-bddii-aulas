# Exemplo 5: - "Exemplo de NEXTVAL e CURRVAL"

CREATE SEQUENCE exemplo_sequence;

SELECT exemplo_sequence.NEXTVAL FROM dual;
SELECT exemplo_sequence.CURRVAL FROM dual;
SELECT exemplo_sequence.NEXTVAL FROM dual;
