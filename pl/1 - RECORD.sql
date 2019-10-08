DECLARE
TYPE medicamento IS RECORD
(
medicamento_id VARCHAR2(5),
medicamento_cpf VARCHAR2(11),
composto_id VARCHAR2(5)
);

medicamento1 medicamento;
medicamento2 medicamento;

BEGIN
medicamento1.medicamento_id := '12345';
medicamento1.medicamento_cpf := '12425670467';
medicamento1.composto_id := '00001';

medicamento2.medicamento_id := '67890';
medicamento2.medicamento_cpf := '66658535434';
medicamento2.composto_id := '00002';

dbms_output.put_line('Medicamento 1 id : '|| medicamento1.medicamento_id);
dbms_output.put_line('Medicamento 1 cpf : '|| medicamento1.medicamento_cpf);
dbms_output.put_line('Medicamento 1 composto_id : '|| medicamento1.composto_id);

dbms_output.put_line('Medicamento 2 id : '|| medicamento2.medicamento_id);
dbms_output.put_line('Medicamento 2 cpf : '|| medicamento2.medicamento_cpf);
dbms_output.put_line('Medicamento 2 composto_id : '|| medicamento2.composto_id);
END;