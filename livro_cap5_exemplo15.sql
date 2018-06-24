// Exemplo 15: - “Exemplos para chamada da trigger TBALUNO_AUD”

update tbaluno set idade=40 where codigo=23;
update tbaluno set idade=idade+1 where codigo<=3;
delete tbaluno where codigo=21;
select * from tbaluno;
select * from tbalunoant
