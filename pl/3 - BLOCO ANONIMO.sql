BEGIN
    SELECT * 
    FROM medicamento_manipulado
    
    DBMS_OUTPUT.PUT_LINE('Medicamento ID:' || TO_CHAR(medicamento_manipulado.id));
END;