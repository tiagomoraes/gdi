-- função para gerar output de cpf a partir do id do medicamento
BEGIN
    SELECT * 
    FROM medicamento_manipulado
    WHERE id = 5

    DBMS_OUTPUT.PUT_LINE('CPF do Farmaceutico:' || TO_CHAR(medicamento_manipulado.cpf_p));
END;