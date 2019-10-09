CREATE OR REPLACE PACKAGE funcionalidades AS 

PROCEDURE insere_fornecedor
(
    cnpj IN fornecedor.cnpj%TYPE,
    complemento IN fornecedor.complemento%TYPE,
    numero IN fornecedor.numero%TYPE
);

FUNCTION nome_medicamento (id_prod IN VARCHAR2) RETURN VARCHAR2;

PROCEDURE listar_compostos;

END funcionalidades;