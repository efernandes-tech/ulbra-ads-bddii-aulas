// Exemplo 6: - “Chamando sequence em INSERT”

insert into tbAluno(pkcodalu, nomealu, mediaalu)
values (exemplo_sequence.NEXTVAL, ‘Ana’,8.5);

insert into tbAluno(pkcodalu, nomealu, mediaalu)
values (exemplo_sequence.NEXTVAL, ‘Maria’,9.2);

insert into tbAluno(pkcodalu, nomealu, mediaalu)
values (exemplo_sequence.NEXTVAL, ‘Carla’,5.4);
