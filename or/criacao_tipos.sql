CREATE OR REPLACE TYPE tp_pessoa AS OBJECT ( 
	cpf VARCHAR2(11),
	nome VARCHAR2(20),
	data_de_nascimento DATE,
	telefone VARCHAR2(11)
);

CREATE OR REPLACE TYPE tp_endereco (
	cep VARCHAR2(8),
    cidade VARCHAR2(20),
    bairro VARCHAR2(20),
	complemento VARCHAR2(20),
	numero VARCHAR2(6)
);

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
	cpf_proximo_turno VARCHAR2(11),
	salario NUMBER,
	data_de_admissao DATE,
	carga_horaria NUMBER,
	data_hora_troca NUMBER,
	endereco tp_endereco
);

CREATE OR REPLACE TYPE tp_farmaceutico UNDER tp_funcionario (
	formacao_academica VARCHAR2(20)
);

CREATE OR REPLACE TYPE tp_balconista UNDER tp_funcionario (
	vendas_realizadas NUMBER
);

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (

);


