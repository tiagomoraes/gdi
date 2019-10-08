-- output de composto a partir de ID
DECLARE
    CURSOR c_composto IS
    SELECT *
    FROM composto;

    n_composto c_composto%ROWTYPE;

BEGIN
    OPEN c_composto;

    LOOP
    FETCH c_composto INTO n_composto;
    EXIT WHEN c_composto%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('#: ' || n_composto.id);
    DBMS_OUTPUT.PUT_LINE('Nome: ' || n_composto.nome);
    DBMS_OUTPUT.PUT_LINE('Peso: ' || n_composto.peso);
    DBMS_OUTPUT.PUT_LINE('Custo: ' || n_composto.custo);
    DBMS_OUTPUT.PUT_LINE(chr(13) || chr(10));

    END LOOP;

    CLOSE c_composto;
END;