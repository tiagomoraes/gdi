-- função para retorno de madicamento a partir do id
CREATE OR REPLACE FUNCTION nome_medicamento (id_prod IN VARCHAR2)
RETURN VARCHAR2
IS
    med_nome VARCHAR2(20);
BEGIN
    SELECT P.nome INTO med_nome
    FROM produto P
    WHERE P.id = id_prod;
    
    RETURN med_nome;
END;