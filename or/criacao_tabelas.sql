CREATE TABLE tb_farmaceutico OF tp_farmaceutico (
    cpf PRIMARY KEY
);

CREATE TABLE tb_balconista OF tp_balconista (
    cpf PRIMARY KEY
);

CREATE TABLE tb_cliente OF tp_cliente (
    cpf PRIMARY KEY
);

CREATE TABLE tb_fornecedor OF tp_fornecedor (
    cnpj PRIMARY KEY
);

CREATE TABLE tb_composto OF tp_composto (
    id PRIMARY KEY
);

CREATE TABLE tb_medicamento_manipulado OF tp_medicamento_manipulado (
    id PRIMARY KEY
);

CREATE TABLE tb_produto OF tp_produto (
    id PRIMARY KEY
);

CREATE TABLE tb_promocao of tp_promocao (
    id PRIMARY KEY  
)

CREATE TABLE tb_fornecedor OF tp_fornecedor NESTED TABLE telefones STORE AS nt_telefones;