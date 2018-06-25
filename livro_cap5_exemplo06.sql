# Exemplo 6: - "Chamando sequence em INSERT"

INSERT INTO tbAluno(pkcodalu, nomealu, mediaalu)
    VALUES (exemplo_sequence.NEXTVAL, 'Ana', 8.5);

INSERT INTO tbAluno(pkcodalu, nomealu, mediaalu)
    VALUES (exemplo_sequence.NEXTVAL, 'Maria', 9.2);

INSERT INTO tbAluno(pkcodalu, nomealu, mediaalu)
    VALUES (exemplo_sequence.NEXTVAL, 'Carla', 5.4);
