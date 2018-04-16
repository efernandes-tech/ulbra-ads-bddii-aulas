# Exemplo 20: - “Asserção não permitindo notas negativas”

CREATE ASSERT nota_negativa CHECK (
    NOT EXISTS (SELECT * FROM notas WHERE notas < 0)
);
