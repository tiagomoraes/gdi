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
        
        exit when c1%NOTFOUND;
        
        dbms_output.put_line(m || ' - cpf: '|| cur.cpf_p);
        dbms_output.put_line('    salário: '|| cur.salario);
        
    END LOOP;
    
END;

