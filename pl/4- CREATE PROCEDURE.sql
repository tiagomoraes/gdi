CREATE OR REPLACE PROCEDURE insere_fornecedor
(
    f_cnpj  fornecedor.cnpj%TYPE,
    f_complemento fornecedor.complemento%TYPE
    f_numero fornecedor.numero%TYPE
) IS
BEGIN
    INSERT INTO fornecedor VALUES (f_cnpj, f_complemento, f_numero);
    COMMIT;
END insere_fornecedor;
    