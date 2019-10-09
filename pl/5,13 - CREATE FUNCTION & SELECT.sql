-- função para retorno de madicamento a partir do id
BEGIN
    DBMS_OUTPUT.PUT_LINE(funcionalidades.nome_medicamento('00101'));
END;