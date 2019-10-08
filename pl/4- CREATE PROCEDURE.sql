-- função para inserir dados do fornecedor
CREATE OR REPLACE PROCEDURE insere_fornecedor
(
    cnpj IN fornecedor.cnpj%TYPE,
    complemento IN fornecedor.complemento%TYPE,
    numero IN fornecedor.numero%TYPE
) AS
BEGIN
    INSERT INTO fornecedor VALUES (cnpj, complemento, numero);
    COMMIT;
END insere_fornecedor;