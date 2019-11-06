CREATE OR REPLACE TYPE tp_fone AS OBJECT (
	numero VARCHAR2(11)
);

CREATE OR REPLACE TYPLE tp_fones as VARRAY(5) OF tp_fone;

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT ( 
	cpf VARCHAR2(11),
	nome VARCHAR2(20),
	data_de_nascimento DATE,
	telefone tp_fones
) NOT FINAL;

CREATE OR REPLACE TYPE tp_endereco (
	cep VARCHAR2(8),
	numero VARCHAR2(6),
    complemento VARCHAR2(20),
	bairro VARCHAR2(20),
	cidade VARCHAR2(20)
);

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
	cpf_proximo_turno VARCHAR2(11),
	salario NUMBER,
	data_de_admissao DATE,
	carga_horaria NUMBER,
	data_hora_troca NUMBER,
	endereco tp_endereco
) NOT FINAL;

CREATE OR REPLACE TYPE tp_farmaceutico UNDER tp_funcionario (
	formacao_academica VARCHAR2(20)
);

CREATE OR REPLACE TYPE tp_balconista UNDER tp_funcionario (
	vendas_realizadas NUMBER
);

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (

);

CREATE OR REPLACE tp_fornecedor(
	cnpj VARCHAR2(14),
	endereco tp_endereco
	telefones tp_fones
);

CREATE OR REPLACE TYPE tp_composto (
	id VARCHAR2(5),
    custo NUMBER,
    peso NUMBER,
    nome VARCHAR2(30),
	fornecedor tp_fornecedor
);

CREATE OR REPLACE TYPE tp_receita_medica (
	cliente tp_cliente,
	codigo VARCHAR2(5),
	medico VARCHAR2(20)
);

CREATE OR REPLACE TYPE tp_medicamento_manipulado(
	id VARCHAR2(5),
	farmaceutico tp_farmaceutico,
	composto tp_composto
);

CREATE OR REPLACE TYPE tp_produto(
	id VARCHAR2(5),
    validade DATE NOT NULL,
    peso NUMBER,
    nome VARCHAR2(20),
    preco NUMBER,
    usuario VARCHAR2(20),
    medico VARCHAR2(20),
    data_hora VARCHAR2(20)
);

CREATE OR REPLACE TYPE tp_emissao_compra(
	cliente tp_cliente,
	balconista tp_balconista,
	data_hora VARCHAR2(20)
);

CREATE OR REPLACE tp_promocao(
	id VARCHAR2(5),
    percentual NUMBER,
    intervalo_de_duracao NUMBER
);

CREATE OR REPLACE tp_cliente_balconista_medicamento(
	cliente tp_cliente,
	balconista tp_balconista,
	medicamento tp_medicamento_manipulado
);

CREATE OR REPLACE tp_desconto(
	compra tp_cliente_balconista_medicamento,
	promocao VARCHAR2(5),
    valor NUMBER
);