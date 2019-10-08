-- função para retorno de madicamento a partir do id
CREATE OR REPLACE FUNCTION nome_medicamento
RETURN VARCHAR(20);
IS
    med_nome VARCHAR(20);
BEGIN
    SELECT nome INTO med_nome
    FROM produto WHERE id = 5;
    RETURN med_nome;
END;
