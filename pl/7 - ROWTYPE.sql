-- output de composto a partir de ID
DECLARE
    CURSOR c_composto (composto.id%TYPE) IS
    SELECT *
    FROM composto;

    n_composto c_composto%ROWTYPE;

BEGIN
    OPEN c_composto (1);
    FETCH c_composto INTO n_composto;
    CLOSE c_composto;

    DBMS_OUTPUT.PUT_LINE('#' || n_composto.id);
    DBMS_OUTPUT.PUT_LINE('Nome' || n_composto.nome);
    DBMS_OUTPUT.PUT_LINE('Peso' || n_composto.peso);
    DBMS_OUTPUT.PUT_LINE('Custo' || n_composto.custo);
END;