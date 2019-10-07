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
            VALUES (010);

--INSERINDO COMPOSTO

INSERT INTO composto (id_comp, custo, peso, nome) 
            VALUES ('000', 10, 408, 'Multigripe');

--INSERINDO PROMOCAO

INSERT INTO promocao (id_prom, percentual, intervalo_de_duracao) 
            VALUES (000, 20, 6);

--INSERINDO FORMULA

INSERT INTO formula (cpf_cli, id_form, medico) 
            VALUES (010, 000, 'Kakashi');

--INSERINDO DESCONTO


--INSERINDO COMPOSTO_FORNECEDOR

INSERT INTO composto_fornecedor (fornecedor, nome_composto) 
            VALUES (000, 'Cloridato de Fenilefrina');
INSERT INTO composto_fornecedor (fornecedor, nome_composto) 
            VALUES (000, 'Paracetamol');
INSERT INTO composto_fornecedor (fornecedor, nome_composto) 
            VALUES (000, 'Maleato de Clorfeniramina');

--INSERINDO TELEFONE_FORNECEDOR

INSERT INTO telefone_fornecedor (fornecedor, num) 
            VALUES (000, 01234567);

--INSERINDO COMPOSTO_COMPONENTE



--INSERINDO TELEFONE_PESSOA

INSERT INTO telefone_pessoa (pessoa, num) 
            VALUES (000, 12345678);

--INSERINDO COMPONENTE_MEDICAMENTO

--INSERINDO COMPONENTE_FORMULA

INSERT INTO componente_formula (formula, id, peso) 
            VALUES (010, 000, 816);

--INSERINDO DADOS_COMPONENTE

INSERT INTO dados_componente (id, nome, pessoa) 
            VALUES ()

--INSERINDO CRIOU_COMPONENTE

--INSERINDO COMPONENTE

--INSERINDO DADOS_MEDICAMENTO

--INSERINDO MANIPULOU_MEDICAMENTO

--INSERINDO MEDICAMENTO_MANIPULADO

--INSERINDO PRODUTO

--INSERINDO EMISSAO_COMPRA

--INSERINDO CLIENTE_BALCONISTA_MEDICAMENTO

--INSERINDO FUNCIONARIO

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horario
                        complemento, numero_func, data_hora_troca)
            VALUES (000, 0001, 2000, to_date('23/07/19', 'dd/mm/yy'), 6, 'A01', '16h');

--INSERINDO ENDERECO_FUNCIONARIO

INSERT INTO endereco_funcionario (cep_func, cidade, bairro, cpf_p);
            VALUES (10000, 'Recife', 'Iputinga', 000)

--INSERINDO FORNECEDOR

INSERT INTO fornecedor (cnpj, complemento, numero_forn)
            VALUES (123456, 'B202', 76543210)

--INSERINDO ENDERECO_FORNECEDOR

INSERT INTO endereco_fornecedor (cep_forn, cidade, bairro, cnpj_f)
            VALUES (10001, 'Recife', 'Boa Viagem', 123456)