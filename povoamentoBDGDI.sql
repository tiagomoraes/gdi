--INSERINDO PESSOA

INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('04304130170', 'Naruto', to_date('10/10/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('42937926193', 'Sakura', to_date('28/03/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('40080313752', 'Sasuke', to_date('23/07/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('94512104909', 'Shikamaru', to_date('22/09/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('22827250349', 'Choji', to_date('01/05/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('06018888980', 'Ino', to_date('23/09/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('19876905910', 'Gaara', to_date('19/01/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('22343283060', 'Temari', to_date('23/08/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('34938034867', 'Kankuro', to_date('05/05/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('26467070615', 'Hinata', to_date('27/12/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('21779708149', 'Kiba', to_date('07/07/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('63469369054', 'Shino', to_date('23/01/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('58142191571', 'Neji', to_date('03/07/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('89249155255', 'Tenten', to_date('09/03/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES ('15051468446', 'Rock Lee', to_date('27/11/00', 'dd/mm/yy'));

--INSERINDO TELEFONE_PESSOA

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('04304130170', '81630154211');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('42937926193', '81585241075');
        
INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('40080313752', '81150938350');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('94512104909', '81767883214');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('22827250349', '81102727834');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('06018888980', '81969963798');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('19876905910', '81365154575');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('22343283060', '81270543237');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('34938034867', '81663669949');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('26467070615', '81335850308');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('21779708149', '81520095708');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('63469369054', '81538961938');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('58142191571', '81934619008');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('89249155255', '81734743323');

INSERT INTO telefone_pessoa (cpf_p, num) 
            VALUES ('15051468446', '81394191384');

-- INSERINDO FUNCIONARIO

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('04304130170', '94512104909', 9664, to_date('03/08/02', 'dd/mm/yy'), 'Apt 101', '78', 14);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('42937926193', '06018888980', 8543, to_date('10/08/02', 'dd/mm/yy'), 'Apt 201', '29', 12);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('94512104909', '19876905910', 5342, to_date('15/08/02', 'dd/mm/yy'), 'Apt 402', '38', 16);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('06018888980', '22343283060', 4567, to_date('15/08/02', 'dd/mm/yy'), 'Apt 705', '79', 11);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('19876905910', '26467070615', 7456, to_date('19/08/02', 'dd/mm/yy'), 'Apt 209', '80', 17);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('22343283060', '21779708149', 3567, to_date('26/08/02', 'dd/mm/yy'), 'Apt 809', '33', 10);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('26467070615', '58142191571', 4578, to_date('20/08/02', 'dd/mm/yy'), 'Apt 102', '23', 18);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('21779708149', '15051468446', 1356, to_date('30/08/02', 'dd/mm/yy'), 'Apt 508', '81', 15);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('58142191571', '04304130170', 999, to_date('26/08/02', 'dd/mm/yy'), 'Apt 502', '73', 11);

INSERT INTO funcionario (cpf-p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('15051468446', '42937926193', 8001, to_date('29/08/02', 'dd/mm/yy'), 'Apt 902', '71', 12);

--INSERINDO ENDERECO_FUNCIONARIO

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('56512360', 'Arcoverde', 'Sao Cristovao', '04304130170');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55200000', 'Pesqueira', 'Pedra Redonda', '42937926193');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55153065', 'Belo Jardim', 'Bom Conselho', '94512104909');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55130000', 'São Caetano', 'Sem bairro', '06018888980');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55010280', 'Caruaru', 'Divinopolis', '19876905910');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55660000', 'Bezerros', 'Gameleira', '22343283060');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55644510', 'Gravatá', 'Cruzeiro', '26467070615');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55602520', 'Vitória', 'Mangueira', '21779708149');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('53690000', 'Moreno', 'Joao Paulo II', '58142191571');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('50670350', 'Recife', 'Iputinga', '15051468446');

--INSERINDO FARMACEUTICO

INSERT INTO farmaceutico (cpf_p, formacao_academica)
            VALUES ('04304130170', 'Doutor');

INSERT INTO farmaceutico (cpf_p, formacao_academica)
            VALUES ('94512104909', 'Doutorando');

INSERT INTO farmaceutico (cpf_p, formacao_academica)
            VALUES ('19876905910', 'Mestre');

INSERT INTO farmaceutico (cpf_p, formacao_academica)
            VALUES ('26467070615', 'Mestranda');

INSERT INTO farmaceutico (cpf_p, formacao_academica)
            VALUES ('58142191571', 'Pos-graduado');

-- INSERINDO BALCONISTA
INSERT INTO balconista (cpf_p, vendas_realizadas) 
            VALUES ('40080313752', 79);

INSERT INTO balconista (cpf_p, vendas_realizadas) 
            VALUES ('22827250349', 23);

INSERT INTO balconista (cpf_p, vendas_realizadas) 
            VALUES ('22343283060', 26);

INSERT INTO balconista (cpf_p, vendas_realizadas) 
            VALUES ('21779708149', 45);

INSERT INTO balconista (cpf_p, vendas_realizadas) 
            VALUES ('89249155255', 12);

--INSERINDO CLIENTE

INSERT INTO cliente (cpf_cli) 
            VALUES ('42937926193');

INSERT INTO cliente (cpf_cli) 
            VALUES ('06018888980');

INSERT INTO cliente (cpf_cli) 
            VALUES ('34938034867');

INSERT INTO cliente (cpf_cli) 
            VALUES ('63469369054');

INSERT INTO cliente (cpf_cli) 
            VALUES ('15051468446');

--INSERINDO COMPOSTO

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('00001', 90, 400, 'Paracetamol');

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('00010', 30, 4, 'Maleato de Clorfeniramina');

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('00011', 20, 4, 'Cloridato de Fenilefrina'); -- Multigrip, Benegrip

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('00101', 200, 65, 'Cafeina');  -- Tylenol

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('00110', 60, 300, 'Dipirona');

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('01000', 76, 30, 'Mucato de Isometepteno'); -- Doralgina

--INSERINDO RECEITA MEDICA

--INSERINDO MANIPULOU_MEDICAMENTO

--INSERINDO MEDICAMENTO_MANIPULADO

--INSERINDO DADOS_MEDICAMENTO

--INSERINDO PRODUTO

--INSERINDO EMISSAO_COMPRA

--INSERINDO PROMOCAO

--INSERINDO CLIENTE_BALCONISTA_MEDICAMENTO

--INSERINDO DESCONTO

--INSERINDO FORNECEDOR

INSERT INTO fornecedor (cnpj, complemento, numero)
            VALUES ('71527969000163', 'Bloco 2', '450');

INSERT INTO fornecedor (cnpj, complemento, numero)
            VALUES ('09477207000126', 'Bloco 1', '346');

INSERT INTO fornecedor (cnpj, complemento, numero)
            VALUES ('20270630000193', 'Bloco 2', '28');

INSERT INTO fornecedor (cnpj, complemento, numero)
            VALUES ('59500684000133', 'Bloco 3', '789');

INSERT INTO fornecedor (cnpj, complemento, numero)
            VALUES ('86493632000150', 'Bloco 1', '456');

--INSERINDO ENDERECO_FORNECEDOR

INSERT INTO endereco_fornecedor (cep, cidade, bairro, cnpj_f)
            VALUES ('56310380', 'Petrolina', 'Cohab', '71527969000163');

INSERT INTO endereco_fornecedor (cep, cidade, bairro, cnpj_f)
            VALUES ('55296160', 'Garanhuns', 'Heliopolis', '09477207000126');

INSERT INTO endereco_fornecedor (cep, cidade, bairro, cnpj_f)
            VALUES ('53402680', 'Paulista', 'Fragoso', '20270630000193');

INSERT INTO endereco_fornecedor (cep, cidade, bairro, cnpj_f)
            VALUES ('54410250', 'Jaboatao', 'Piedade', '59500684000133');

INSERT INTO endereco_fornecedor (cep, cidade, bairro, cnpj_f)
            VALUES ('55192285', 'Santa Cruz', 'Centro', '86493632000150');

--INSERINDO COMPOSTO_FORNECEDOR

--INSERINDO TELEFONE_FORNECEDOR

INSERT INTO telefone_fornecedor (fornecedor, num)
            VALUES ('71527969000163', '87361050482');

INSERT INTO telefone_fornecedor (fornecedor, num)
            VALUES ('09477207000126', '81368608189');

INSERT INTO telefone_fornecedor (fornecedor, num)
            VALUES ('20270630000193', '81041390277');

INSERT INTO telefone_fornecedor (fornecedor, num)
            VALUES ('59500684000133', '81401607655');

INSERT INTO telefone_fornecedor (fornecedor, num)
            VALUES ('86493632000150', '87385156975');
