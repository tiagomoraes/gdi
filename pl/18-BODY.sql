CREATE OR REPLACE PACKAGE BODY funcionalidades AS

PROCEDURE insere_fornecedor
(
    cnpj IN fornecedor.cnpj%TYPE,
    complemento IN fornecedor.complemento%TYPE,
    numero IN fornecedor.numero%TYPE
) AS
BEGIN
    INSERT INTO fornecedor VALUES (cnpj, complemento, numero);
    COMMIT;
END insere_fornecedor;

FUNCTION nome_medicamento (id_prod IN VARCHAR2)
RETURN VARCHAR2
IS
    med_nome VARCHAR2(20);
BEGIN
    SELECT P.nome INTO med_nome
    FROM produto P
    WHERE P.id = id_prod;
    
    RETURN med_nome;
END nome_medicamento;

PROCEDURE listar_compostos AS
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
END listar_compostos;

END funcionalidades;