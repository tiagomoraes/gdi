CREATE OR REPLACE TYPE tp_fone AS OBJECT (
	ddd VARCHAR2(2),
	numero VARCHAR2(9),
	CONSTRUCTOR FUNCTION tp_fone(fone VARCHAR2) RETURN SELF AS RESULT
);
/

CREATE OR REPLACE TYPE BODY tp_fone AS 
	CONSTRUCTOR FUNCTION tp_fone(fone VARCHAR2) RETURN SELF AS RESULT IS
		BEGIN
			ddd := '81';
			numero := fone;
			RETURN;
		END;
END;
/

CREATE OR REPLACE TYPE varray_fone as VARRAY(5) OF tp_fone;
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT ( 
	cpf VARCHAR2(11),
	nome VARCHAR2(20),
	data_de_nascimento DATE,
	telefone varray_fone
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
	cep VARCHAR2(8),
	numero VARCHAR2(6),
    complemento VARCHAR2(20),
	bairro VARCHAR2(20),
	cidade VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
	cpf_proximo_turno VARCHAR2(11),
	salario NUMBER,
	data_de_admissao DATE,
	carga_horaria NUMBER,
	data_hora_troca NUMBER,
	endereco tp_endereco,
	MEMBER PROCEDURE trocarsalario(novo NUMBER),
	MEMBER FUNCTION trabalhamuito RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_funcionario AS
	MEMBER PROCEDURE trocarsalario(novo NUMBER) IS
		BEGIN
			salario := novo;
		END;
		
	MEMBER FUNCTION trabalhamuito RETURN VARCHAR2 IS
		BEGIN

			IF (carga_horaria > 6) THEN
				RETURN 'SIM';
			END IF;

			RETURN 'NAO';
		END;
END;
/

CREATE OR REPLACE TYPE tp_farmaceutico UNDER tp_funcionario (
	formacao_academica VARCHAR2(20),
	OVERRIDING MEMBER FUNCTION trabalhamuito RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY tp_farmaceutico AS
	OVERRIDING MEMBER FUNCTION trabalhamuito RETURN VARCHAR2 IS
		BEGIN
			
			IF (carga_horaria > 4) THEN
				RETURN 'SIM';
			END IF;

			RETURN 'NAO';
		END;
END;
/

CREATE OR REPLACE TYPE tp_balconista UNDER tp_funcionario (
	vendas_realizadas NUMBER
);
/

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (

);
/

CREATE TYPE tp_lista_fones AS TABLE OF tp_fone;
/

CREATE OR REPLACE TYPE tp_fornecedor AS OBJECT (
	cnpj VARCHAR2(14),
	endereco tp_endereco,
	telefones tp_lista_fones
);
/

CREATE OR REPLACE TYPE tp_composto AS OBJECT (
	id VARCHAR2(5),
    custo NUMBER,
    peso NUMBER,
    nome VARCHAR2(30),
	fornecedor REF tp_fornecedor,
	MAP MEMBER FUNCTION custoporgrama RETURN NUMBER
);
/

CREATE OR REPLACE TYPE BODY tp_composto AS
	MAP MEMBER FUNCTION custoporgrama RETURN NUMBER IS
		BEGIN
			RETURN custo/peso;
		END;
END;
/

CREATE OR REPLACE TYPE tp_receita_medica AS OBJECT (
	cliente tp_cliente,
	codigo VARCHAR2(5),
	medico VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_produto AS OBJECT (
	id VARCHAR2(5),
    validade DATE,
    peso NUMBER,
    nome VARCHAR2(20),
    preco NUMBER,
    usuario VARCHAR2(20),
    medico VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_medicamento_manipulado AS OBJECT(
	produto REF tp_produto,
	farmaceutico REF tp_farmaceutico,
	composto REF tp_composto
);
/

ALTER TYPE tp_produto ADD ATTRIBUTE (data_hora VARCHAR2(20)) CASCADE;
/

CREATE OR REPLACE TYPE tp_emissao_compra AS OBJECT (
	cliente tp_cliente,
	balconista tp_balconista,
	data_hora VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_promocao AS OBJECT (
	id VARCHAR2(5),
    percentual NUMBER,
    intervalo_de_duracao NUMBER,
	ORDER MEMBER FUNCTION mesma(p tp_promocao) RETURN INTEGER
);
/

CREATE OR REPLACE TYPE BODY tp_promocao AS
	ORDER MEMBER FUNCTION mesma(p tp_promocao) RETURN INTEGER IS
		BEGIN
			
			IF percentual > p.percentual THEN
				RETURN 1;
			END IF;
			
			IF percentual = p.percentual THEN
				RETURN 0;
			END IF;

			RETURN -1;
			
		END;
END;
/
			
CREATE OR REPLACE TYPE tp_cliente_balconista_medicamento AS OBJECT (
	cliente tp_cliente,
	balconista tp_balconista,
	medicamento tp_medicamento_manipulado
);
/

CREATE OR REPLACE TYPE tp_desconto AS OBJECT (
	compra tp_cliente_balconista_medicamento,
	promocao VARCHAR2(5),
    valor NUMBER
) FINAL;
/