CREATE OR REPLACE TYPE tp_fone AS OBJECT (
	numero VARCHAR2(11),
	CONSTRUCTOR FUNCTION tp_fone(fone VARCHAR2(11)) RETURN SELF AS RESULT
);

CREATE OR REPLACE TYPE BODY tp_fone AS 
	CONSTRUCTOR FUNCTION tp_fone(fone VARCHAR2(11)) RETURN SELF AS RESULT IS
		BEGIN
			numero := fone
		END;
END;

CREATE OR REPLACE TYPE tp_fones as VARRAY(5) OF tp_fone;

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT ( 
	cpf VARCHAR2(11),
	nome VARCHAR2(20),
	data_de_nascimento DATE,
	telefone tp_fones
) NOT FINAL NOT INSTANTIABLE;

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
	endereco tp_endereco,
	MEMBER PROCEDURE trocarsalario(novo NUMBER),
	MEMBER FUNCTION trabalhamuito RETURN VARCHAR2(3)
) NOT FINAL;


CREATE OR REPLACE TYPE BODY tp_funcionario AS
	MEMBER PROCEDURE trocarsalario(novo NUMBER) IS
		BEGIN
			salario := novo;
		END;
	MEMBER FUNCTION trabalhamuito IS
		resposta VARCHAR2(3);
		BEGIN:
			IF (carga_horaria > 6) THEN
				resposta := 'SIM';
			ELSE
				resposta := 'NAO';
			END IF;
			RETURN resposta;
		END;
END;

CREATE OR REPLACE TYPE tp_farmaceutico UNDER tp_funcionario (
	formacao_academica VARCHAR2(20)
	OVERRIDING MEMBER FUNCTION trabalhamuito RETURN VARCHAR2(3)
);

CREATE OR REPLACE TYPE BODY tp_farmaceutico AS
	MEMBER FUNCTION trabalhamuito IS
		resposta VARCHAR2(3);
		BEGIN:
			IF (carga_horaria > 4) THEN
				resposta := 'SIM';
			ELSE
				resposta := 'NAO';
			END IF;
			RETURN resposta;
		END;
END;

CREATE OR REPLACE TYPE tp_balconista UNDER tp_funcionario (
	vendas_realizadas NUMBER
);

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (

);

CREATE TYPE tp_lista_fones AS TABLE OF tp_fone;

CREATE OR REPLACE tp_fornecedor(
	cnpj VARCHAR2(14),
	endereco tp_endereco
	telefones tp_lista_fones
);

CREATE OR REPLACE TYPE tp_composto (
	id VARCHAR2(5),
    custo NUMBER,
    peso NUMBER,
    nome VARCHAR2(30),
	fornecedor REF tp_fornecedor,
	MAP MEMBER FUNCTION custoporgrama RETURN NUMBER
);

CREATE OR REPLACE TYPE BODY tp_composto AS
	MAP MEMBER FUNCTION custoporgrama RETURN NUMBER IS
		BEGIN
			RETURN custo / peso
		END;
END;

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

CREATE OR REPLACE TYPE tp_promocao(
	id VARCHAR2(5),
    percentual NUMBER,
    intervalo_de_duracao NUMBER,
	ORDER MEMBER FUNCTION promocaomaior (p tp_periodo) RETURN INTEGER;
);

CREATE OR REPLACE TYPE BODY tp_promocao AS
	ORDER MEMBER FUNCTION mesma(p tp_periodo) RETURN INTEGER IS
		BEGIN
			IF self.percentual > p.percentual
				RETURN 1;
			ELSIF self.percentual = p.percentual
				RETURN 0;
			ELSE
				RETURN -1;
			END IF;
		END;
END;
			
CREATE OR REPLACE tp_cliente_balconista_medicamento(
	cliente tp_cliente,
	balconista tp_balconista,
	medicamento tp_medicamento_manipulado
);

CREATE OR REPLACE tp_desconto(
	compra tp_cliente_balconista_medicamento,
	promocao VARCHAR2(5),
    valor NUMBER
) FINAL;