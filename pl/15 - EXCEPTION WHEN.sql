-- imprime o cpf e o salario dos 5 primeiros funcionarios cadastrados, caso existam.

DECLARE
    cur funcionario%ROWTYPE;
    CURSOR c1 is SELECT * FROM funcionario;
    ind number := 1;
    limite number := 5;
BEGIN
    OPEN c1;
    for m in 1..limite LOOP
        
        FETCH c1 into cur;
        
        CLOSE c1;
        exit when c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(m || ' - cpf: '|| cur.cpf_p);
        DBMS_OUTPUT.PUT_LINE('    salário: '|| cur.salario);
        
    END LOOP;
EXCEPTION
    WHEN INVALID_CURSOR THEN
        DBMS_OUTPUT.PUT_LINE('Erro: cursor inválido.');
        DBMS_OUTPUT.PUT_LINE('Referência feita sobre um cursor inexistente.');
    
END;
