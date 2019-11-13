DECLARE
t tp_farmaceutico;
m varchar2(3);

BEGIN

    SELECT VALUE(r) INTO t FROM tb_farmaceutico r WHERE r.cpf = '94512104909';

    m := t.trabalhamuito();

    DBMS_OUTPUT.PUT_LINE('ESSE CARA TRABALHA MUITO? ' || TO_CHAR(m));

END;