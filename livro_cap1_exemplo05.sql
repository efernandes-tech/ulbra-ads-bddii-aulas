# Exemplo 5: - “Definindo Cláusula UNIQUE com dois ou mais atributos”

ALTER TABLE DadosUsuario ADD CONSTRAINT DadosUsuario_ususenha UNIQUE (usuario, senha);
