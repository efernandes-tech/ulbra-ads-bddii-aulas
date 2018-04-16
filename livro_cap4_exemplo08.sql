# Exemplo 8: - “Exemplo do uso de SQLCODE e SQLERRM”

:
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Erro ao executar o procedimento');
DBMS_OUTPUT.PUT_LINE('Código do erro : ' || SQLCODE);
DBMS_OUTPUT.PUT_LINE('Erro : ' || SQLERRM);
:
