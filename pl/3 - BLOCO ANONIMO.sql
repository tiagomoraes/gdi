-- função para gerar output de cpf a partir do id do medicamento

DECLARE
    v_mm_cpf VARCHAR2(11);

BEGIN
    SELECT M.cpf_p INTO v_mm_cpf
    FROM medicamento_manipulado M
    WHERE M.id = '00001';

    DBMS_OUTPUT.PUT_LINE('CPF do Farmaceutico: ' || v_mm_cpf);
END;