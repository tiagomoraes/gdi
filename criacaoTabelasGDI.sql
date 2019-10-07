DROP table pessoa;
DROP table telefone_pessoa;
DROP table funcionario;
DROP table endereco_funcionario;
DROP table farmaceutico;
DROP table balconista;
DROP table cliente;
DROP table composto;
DROP table formula;
DROP table manipulou_medicamento;
DROP table medicamento_manipulado;
DROP table dados_medicamento;
DROP table emissao_compra;
DROP table promocao;
DROP table cliente_balconista_medicamento;
DROP table desconto;
DROP table fornecedor;
DROP table endereco_fornecedor;
DROP table composto_fornecedor;
DROP table telefone_fornecedor;

CREATE table pessoa(
    cpf VARCHAR2(11) NOT NULL,
    nome VARCHAR2(20) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    CONSTRAINT pessoa_pk PRIMARY KEY (cpf)
);

CREATE table telefone_pessoa(
    cpf_p VARCHAR2(11),
    num VARCHAR2(11),
    CONSTRAINT telefone_pessoa_pk PRIMARY KEY (num),
    CONSTRAINT telefone_fornecedor_fk FOREIGN KEY (cpf_p) REFERENCES pessoa (cpf)
);

CREATE table funcionario(
    cpf_p VARCHAR2(11),
    cpf_proximo_turno VARCHAR2(11),
    salario NUMBER,
    data_de_admissao DATE NOT NULL,
    carga_horaria NUMBER,
    complemento VARCHAR2(20),
    numero VARCHAR2(6),
    data_hora_troca NUMBER,
    CONSTRAINT funcionario_pk PRIMARY KEY (cpf_p),
    CONSTRAINT funcionario_fk FOREIGN KEY (cpf_proximo_turno) REFERENCES funcionario (cpf_p),
    CONSTRAINT funcionario_ck CHECK (salario > 998)
);

CREATE table endereco_funcionario(
    cep VARCHAR2(8),
    cidade VARCHAR2(20),
    bairro VARCHAR2(20),
    cpf_p VARCHAR2(11),
    CONSTRAINT endereco_funcionario_pk PRIMARY KEY (cep),
    CONSTRAINT endereco_funcionario_fk FOREIGN KEY (cpf_p) REFERENCES funcionario (cpf_p)

);

CREATE table farmaceutico(
    cpf_p VARCHAR2(11),
    formacao_academica VARCHAR2(20) NOT NULL,
    CONSTRAINT farmaceutico_pk PRIMARY KEY (cpf_p),
    CONSTRAINT farmaceutico_fk FOREIGN KEY (cpf_p) REFERENCES funcionario (cpf_p) 
);

CREATE table balconista(
    cpf_p VARCHAR2(11),
    vendas_realizadas NUMBER,
    CONSTRAINT balconista_pk PRIMARY KEY (cpf_p),
    CONSTRAINT balconista_fk FOREIGN KEY (cpf_p) REFERENCES funcionario (cpf_p) 
);

CREATE table cliente(
    cpf_p VARCHAR2(11),
    CONSTRAINT cliente_pk PRIMARY KEY (cpf_p),
    CONSTRAINT cliente_fk FOREIGN KEY (cpf_p) REFERENCES pessoa (cpf) 
);

CREATE table composto(
    id VARCHAR2(5),
    custo NUMBER,
    peso NUMBER,
    nome VARCHAR2(4DAD0),
    CONSTRAINT composto_pk PRIMARY KEY (id)
);

CREATE sequence seq START WITH 1 INCREMENT BY 1;

CREATE table receita_medica(
    cpf_cliente VARCHAR2(11),
    qtd NUMBER DEFAULT seq.NEXTVAL,
    medico VARCHAR2(20),
    CONSTRAINT receita_medica_pk PRIMARY KEY (cpf_cliente, qtd),
    CONSTRAINT receita_medica_fk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_p)
);

CREATE table manipulou_medicamento(
    cpf_p VARCHAR2(11),
    data_hora VARCHAR2(20),
    CONSTRAINT manipulou_medicamento_pk PRIMARY KEY (cfp_p),
    CONSTRAINT manipulou_medicamento_fk FOREIGN KEY (cpf_p) references farmaceutico (cpf_p)
);

CREATE table medicamento_manipulado(
    id VARCHAR2(5),
    cpf_p VARCHAR2(11),
    id_composto VARCHAR2(5),
    CONSTRAINT medicamento_manipulado_pk PRIMARY KEY (id, cpf_p, id_composto),
    CONSTRAINT medicamento_manipulado_cpf_p_fk FOREIGN KEY (cpf_p) references farmaceutico(cpf_p)
    CONSTRAINT medicamento_manipulado_id_composto_fk FOREIGN KEY (id_composto) references composto(id),
);

CREATE table produto(
    id VARCHAR2(5),
    validade DATE NOT NULL,
    peso NUMBER,
    nome VARCHAR2(20),
    preco NUMBER,
    usuario VARCHAR2(20),
    medico VARCHAR2(20),
    CONSTRAINT dados_medicamento_pk PRIMARY KEY (id)
);

CREATE table emissao_compra(
    cpf_c VARCHAR2(11),
    cpf_b VARCHAR2(11),
    data_hora VARCHAR2(20),
    CONSTRAINT emissao_compra_pk PRIMARY KEY (cpf_c, cpf_b),
    CONSTRAINT emissao_compra_cpf_c_fk FOREIGN KEY (cpf_c) references cliente (cpf_p),
    CONSTRAINT emissao_compra_cpf_b_fk FOREIGN KEY (cpf_b) references balconista (cpf_p)
);

CREATE table promocao(
    id VARCHAR2(5),
    percentual NUMBER,
    intervalo_de_duracao NUMBER,
    CONSTRAINT promocao_pk PRIMARY KEY (id)
);

CREATE table cliente_balconista_medicamento(
    cpf_c VARCHAR2(11),
    cpf_b VARCHAR2(11),
    id_medicamento VARCHAR2(5),
    cpf_p_medicamento VARCHAR2(11),
    id_composto_medicamento VARCHAR2(5),
    CONSTRAINT cbm_pk PRIMARY KEY (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento),
    CONSTRAINT cbm_id_medicamento_fk FOREIGN KEY (id_medicamento) REFERENCES medicamento_manipulado(id),
    CONSTRAINT cbm_cpf_p_medicamento_fk FOREIGN KEY (cpf_p_medicamento) REFERENCES medicamento_manipulado(cpf_p),
    CONSTRAINT cbm_id_componente_medicamento_fk FOREIGN KEY (id_composto_medicamento) REFERENCES medicamento_manipulado(id_composto)
);

CREATE table desconto(
    cpf_c VARCHAR2(11),
    cpf_b VARCHAR2(11),
    id_medicamento_cbm VARCHAR2(5),
    cpf_p_medicamento_cbm VARCHAR2(11),
    id_composto_medicamento_cbm VARCHAR2(5),
    promocao VARCHAR2(5),
    valor NUMBER,
    CONSTRAINT desconto_pk PRIMARY KEY (cpf_c, cpf_b, id_medicamento_cbm, cpf_p_cbm, id_composto_cbm, promocao),
    CONSTRAINT desconto_cpf_c_cbm_fk FOREIGN KEY (cpf_c) REFERENCES cliente_balconista_medicamento(cpf_c),
    CONSTRAINT desconto_cpf_b_cbm_fk FOREIGN KEY (cpf_b) REFERENCES cliente_balconista_medicamento(cpf_b),
    CONSTRAINT desconto_id_medicamento_cbm_fk FOREIGN KEY (id_medicamento_cbm) REFERENCES cliente_balconista_medicamento(id_medicamento),
    CONSTRAINT desconto_cpf_p_medicamento_cbm_fk FOREIGN KEY (cpf_p_medicamento_cbm) REFERENCES cliente_balconista_medicamento(cpf_p_medicamento),
    CONSTRAINT desconto_id_composto_medicamento_cbm_fk FOREIGN KEY (id_composto_medicamento_cbm) REFERENCES cliente_balconista_medicamento(id_composto_medicamento),
    CONSTRAINT desconto_promocao_fk FOREIGN KEY (promocao) REFERENCES promocao(id)
);

CREATE table fornecedor(
    cnpj VARCHAR2(14),
    complemento VARCHAR2(20),
    numero VARCHAR2(5),
    CONSTRAINT fornecedor_pk PRIMARY KEY (cnpj)
);

CREATE table endereco_fornecedor(
    cep VARCHAR2(8),
    cidade VARCHAR2(20) NOT NULL,
    bairro VARCHAR2(20) NOT NULL,
    cnpj_f VARCHAR2(14),
    CONSTRAINT endereco_fornecedor_pk PRIMARY KEY (cep),
    CONSTRAINT endereco_fornecedor_fk FOREIGN KEY (cnpj_f) REFERENCES fornecedor (cnpj) 
);

CREATE table composto_fornecedor(
    fornecedor VARCHAR2(14),
    nome_composto VARCHAR2(50),
    CONSTRAINT composto_fornecedor_pk PRIMARY KEY (fornecedor, nome_composto),
    CONSTRAINT composto_fornecedor_fk FOREIGN KEY (fornecedor) REFERENCES fornecedor (cnpj)
);

CREATE table telefone_fornecedor(
    fornecedor VARCHAR2(14),
    num VARCHAR2(11),
    CONSTRAINT telefone_fornecedor_pk PRIMARY KEY (fornecedor, num),
    CONSTRAINT telefone_fornecedor_fk FOREIGN KEY (fornecedor) REFERENCES fornecedor (cnpj)
);