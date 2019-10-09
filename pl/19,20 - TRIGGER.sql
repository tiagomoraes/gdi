CREATE OR REPLACE TRIGGER check_formacao
BEFORE INSERT ON farmaceutico
FOR EACH ROW 

BEGIN 
IF :NEW.formacao_academica NOT IN ('Graduando', 'Graduado', 'Pos-Graduando', 'Pos-Graduado', 'Mestranda', 'Mestrando', 'Mestre', 'Doutor', 'Doutora', 'Doutorando', 'Doutoranda')
    THEN RAISE_APPLICATION_ERROR(-20101, 'Formação acadêmica inválida');
END IF;
END;

--Para teste
--INSERT INTO farmaceutico (cpf_p, formacao_academica)
--            VALUES ('04304130170', 'Meme');