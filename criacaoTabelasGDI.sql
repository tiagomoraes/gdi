DROP table pessoa;
DROP table telefone_pessoa;
DROP table funcionario;
DROP table endereco_funcionario;
DROP table farmaceutico;
DROP table balconista;
DROP table cliente;
DROP table composto;
DROP table criou_componente;
DROP table componente;
DROP table dados_componente;
DROP table composto_componente;
DROP table componente_formula;
DROP table formula;
DROP table manipulou_medicamento;
DROP table medicamento_manipulado;
DROP table dados_medicamento;
DROP table componente_medicamento;
DROP table produto;
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
    nome VARCHAR2(40),
    CONSTRAINT composto_pk PRIMARY KEY (id)
);

CREATE table criou_componente(
    cpf_p VARCHAR2(11),
    data_e_hora VARCHAR2(20),
    CONSTRAINT criou_componente_fk FOREIGN KEY (cpf_p) references farmaceutico (cpf_p)
);

CREATE table componente(
    id VARCHAR2(5),
    cpf_p VARCHAR2(11),
    id_composto VARCHAR2(5),
    CONSTRAINT componente_pk PRIMARY KEY (id, cpf_p, id_composto),
    CONSTRAINT componente_cpf_fk FOREIGN KEY (cpf_p) references farmaceutico (cpf_p),
    CONSTRAINT componente_id_composto_fk FOREIGN KEY (id_composto) references composto (id)
);

CREATE table dados_componente(
    id VARCHAR2(5),
    nome VARCHAR2(20),
    peso NUMBER,
    CONSTRAINT dados_componente_pk PRIMARY KEY (id)
);

CREATE table composto_componente(
    id_componente VARCHAR2(5),
    cpf_p_componente VARCHAR2(11),
    id_composto_componente VARCHAR2(5),
    id VARCHAR2(5),
    peso NUMBER,
    CONSTRAINT composto_componente_pk PRIMARY KEY (id_componente, cpf_p_componente, id_composto_componente, id),
    CONSTRAINT composto_componente_id_componente_fk FOREIGN KEY (id_componente) references componente (id),
    CONSTRAINT composto_componente_cpf_p_fk FOREIGN KEY (cpf_p_componente) references componente (cpf_p),
    CONSTRAINT composto_componente_id_composto_componente_fk FOREIGN KEY (id_composto_componente) references componente (id_composto)
);

CREATE table formula(
    cpf_cliente VARCHAR2(11),
    id VARCHAR2(5),
    medico VARCHAR2(20),
    CONSTRAINT formula_pk PRIMARY KEY (cpf_cliente, id),
    CONSTRAINT formula_fk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_p)
);

CREATE table componente_formula(
    id_formula VARCHAR2(5),
    id VARCHAR2(5),
    cpf_p VARCHAR2(11),
    peso NUMBER,
    CONSTRAINT componente_formula_pk PRIMARY KEY (id_formula, id, cpf_p),
    CONSTRAINT componente_formula_cpf_p_fk FOREIGN KEY (cpf_p) references formula (cpf_cliente),
    CONSTRAINT componente_formula_id_formula_fk FOREIGN KEY (id_formula) references formula (id)
);

CREATE table manipulou_medicamento(
    cpf_p VARCHAR2(11),
    data_hora VARCHAR2(20),
    CONSTRAINT manipulou_medicamento_fk FOREIGN KEY (cpf_p) references farmaceutico (cpf_p)
);

CREATE table medicamento_manipulado(
    id VARCHAR2(5),
    cpf_p VARCHAR2(11),
    id_componente VARCHAR2(5),
    cpf_p_componente VARCHAR2(11),
    id_composto_componente VARCHAR2(5),
    CONSTRAINT medicamento_manipulado_pk PRIMARY KEY (id, cpf_p, id_componente, cpf_p_componente, id_composto_componente),
    CONSTRAINT medicamento_manipulado_id_componente_fk FOREIGN KEY (id_componente) references componente(id),
    CONSTRAINT medicamento_manipulado_cpf_p_componente_fk FOREIGN KEY (cpf_p_componente) references componente(cpf_p),
    CONSTRAINT medicamento_manipulado_id_composto_componente_fk FOREIGN KEY (id_composto_componente) references componente(id_composto)
);

CREATE table dados_medicamento(
    id VARCHAR2(5),
    validade DATE NOT NULL,
    peso NUMBER,
    nome VARCHAR2(20),
    preco NUMBER,
    usuario VARCHAR2(20),
    medico VARCHAR2(20),
    CONSTRAINT dados_medicamento_pk PRIMARY KEY (id)
);

CREATE table componente_medicamento(
    id VARCHAR2(5),
    peso NUMBER,
    id_medicamento VARCHAR2(5),
    cpf_p_medicamento VARCHAR2(11),
    id_componente_medicamento VARCHAR2(5),
    cpf_p_componente_medicamento VARCHAR2(5),
    id_composto_componente_medicamento VARCHAR2(5),
    CONSTRAINT componente_medicamento_pk PRIMARY KEY (id, id_medicamento, cpf_p_medicamento, id_componente_medicamento, cpf_p_componente_medicamento, id_composto_componente_medicamento),
    CONSTRAINT componente_medicamento_id_medicamento_fk FOREIGN KEY (id_medicamento) REFERENCES medicamento_manipulado(id),
    CONSTRAINT componente_medicamento_cpf_p_medicamento_fk FOREIGN KEY (cpf_p_medicamento) REFERENCES medicamento_manipulado(cpf_p),
    CONSTRAINT componente_medicamento_id_componente_medicamento_fk FOREIGN KEY (id_componente_medicamento) REFERENCES medicamento_manipulado(id_componente),
    CONSTRAINT componente_medicamento_cpf_p_componente_medicamento_fk FOREIGN KEY (cpf_p_componente_medicamento) REFERENCES medicamento_manipulado(cpf_p_componente),
    CONSTRAINT componente_medicamento_id_composto_componente_medicamento_fk FOREIGN KEY (id_composto_componente_medicamento) REFERENCES medicamento_manipulado(id_composto_componente)
);

CREATE table produto(
    id_medicamento VARCHAR2(5),
    cpf_p_medicamento VARCHAR2(11),
    id_componente_medicamento VARCHAR2(5),
    cpf_p_componente_medicamento VARCHAR2(5),
    id_composto_componente_medicamento VARCHAR2(5),
    preco NUMBER,
    CONSTRAINT produto_pk PRIMARY KEY (id_medicamento, cpf_p_medicamento, id_componente_medicamento, cpf_p_componente_medicamento, id_composto_componente_medicamento),
    CONSTRAINT produto_id_medicamento_fk FOREIGN KEY (id_medicamento) REFERENCES medicamento_manipulado(id),
    CONSTRAINT produto_cpf_p_medicamento_fk FOREIGN KEY (cpf_p_medicamento) REFERENCES medicamento_manipulado(cpf_p),
    CONSTRAINT produto_id_componente_medicamento_fk FOREIGN KEY (id_componente_medicamento) REFERENCES medicamento_manipulado(id_componente),
    CONSTRAINT produto_cpf_p_componente_medicamento_fk FOREIGN KEY (cpf_p_componente_medicamento) REFERENCES medicamento_manipulado(cpf_p_componente),
    CONSTRAINT produto_id_composto_componente_medicamento_fk FOREIGN KEY (id_composto_componente_medicamento) REFERENCES medicamento_manipulado(id_composto_componente)
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
    id_componente_medicamento VARCHAR2(5),
    cpf_p_componente_medicamento VARCHAR2(5),
    id_composto_componente_medicamento VARCHAR2(5),
    CONSTRAINT cbm_pk PRIMARY KEY (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_componente_medicamento, cpf_p_componente_medicamento, id_composto_componente_medicamento),
    CONSTRAINT cbm_id_medicamento_fk FOREIGN KEY (id_medicamento) REFERENCES medicamento_manipulado(id),
    CONSTRAINT cbm_cpf_p_medicamento_fk FOREIGN KEY (cpf_p_medicamento) REFERENCES medicamento_manipulado(cpf_p),
    CONSTRAINT cbm_id_componente_medicamento_fk FOREIGN KEY (id_componente_medicamento) REFERENCES medicamento_manipulado(id_componente),
    CONSTRAINT cbm_cpf_p_componente_medicamento_fk FOREIGN KEY (cpf_p_componente_medicamento) REFERENCES medicamento_manipulado(cpf_p_componente),
    CONSTRAINT cbm_id_composto_componente_medicamento_fk FOREIGN KEY (id_composto_componente_medicamento) REFERENCES medicamento_manipulado(id_composto_componente)
);

CREATE table desconto(
    cpf_c VARCHAR2(11),
    cpf_b VARCHAR2(11),
    id_medicamento VARCHAR2(5),
    cpf_p_medicamento VARCHAR2(11),
    id_componente_medicamento VARCHAR2(5),
    cpf_p_componente_medicamento VARCHAR2(5),
    id_composto_componente_medicamento VARCHAR2(5),
    promocao VARCHAR2(5),
    valor NUMBER,
    CONSTRAINT desconto_pk PRIMARY KEY (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_componente_medicamento, cpf_p_componente_medicamento, id_composto_componente_medicamento, promocao),
    CONSTRAINT desconto_cpf_c_cbm_fk FOREIGN KEY (cpf_c) REFERENCES cliente_balconista_medicamento(cpf_c),
    CONSTRAINT desconto_cpf_b_cbm_fk FOREIGN KEY (cpf_b) REFERENCES cliente_balconista_medicamento(cpf_b),
    CONSTRAINT desconto_id_medicamento_cbm_fk FOREIGN KEY (id_medicamento) REFERENCES cliente_balconista_medicamento(id_medicamento),
    CONSTRAINT desconto_cpf_p_medicamento_cbm_fk FOREIGN KEY (cpf_p_medicamento) REFERENCES cliente_balconista_medicamento(cpf_p_medicamento),
    CONSTRAINT desconto_id_componente_medicamento_cbm_fk FOREIGN KEY (id_componente_medicamento) REFERENCES cliente_balconista_medicamento(id_componente_medicamento),
    CONSTRAINT desconto_cpf_p_componente_medicamento_cbm_fk FOREIGN KEY (cpf_p_componente_medicamento) REFERENCES cliente_balconista_medicamento(cpf_p_componente_medicamento),
    CONSTRAINT desconto_id_composto_componente_cbm_fk FOREIGN KEY (id_composto_componente_medicamento) REFERENCES cliente_balconista_medicamento(id_composto_componente_medicamento),
    CONSTRAINT desconto_promocao_fk FOREIGN KEY (promocao) REFERENCES promocao(id)
);

CREATE table fornecedor(
    cnpj VARCHAR2(14),
    complemento VARCHAR2(20),
    numero NUMBER,
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