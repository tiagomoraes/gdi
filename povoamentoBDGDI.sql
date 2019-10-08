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

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('04304130170', NULL, 9664, to_date('03/08/02', 'dd/mm/yy'), 36, 'Apt 101', '78', 14);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('40080313752', NULL, 8543, to_date('10/08/02', 'dd/mm/yy'), 40, 'Apt 201', '29', 12);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('94512104909', '04304130170', 5342, to_date('15/08/02', 'dd/mm/yy'), 48, 'Apt 402', '38', 16);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('22827250349', '40080313752', 4567, to_date('15/08/02', 'dd/mm/yy'), 36, 'Apt 705', '79', 11);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('19876905910', '94512104909', 7456, to_date('19/08/02', 'dd/mm/yy'), 40, 'Apt 209', '80', 17);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('22343283060', '22827250349', 3567, to_date('26/08/02', 'dd/mm/yy'), 44, 'Apt 809', '33', 10);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('26467070615', '19876905910', 4578, to_date('20/08/02', 'dd/mm/yy'), 48, 'Apt 102', '23', 18);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('21779708149', '22343283060', 1356, to_date('30/08/02', 'dd/mm/yy'), 36, 'Apt 508', '81', 15);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('58142191571', '26467070615', 999, to_date('26/08/02', 'dd/mm/yy'), 40, 'Apt 502', '73', 11);

INSERT INTO funcionario (cpf_p, cpf_proximo_turno, salario, data_de_admissao, carga_horaria, complemento, numero, data_hora_troca)
            VALUES ('89249155255', '21779708149', 8001, to_date('29/08/02', 'dd/mm/yy'), 20, 'Apt 902', '71', 12);

UPDATE funcionario
SET cpf_proximo_turno = '58142191571'
WHERE cpf_p = '04304130170';

UPDATE funcionario
SET cpf_proximo_turno = '89249155255'
WHERE cpf_p = '40080313752';

--INSERINDO ENDERECO_FUNCIONARIO

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('56512360', 'Arcoverde', 'Sao Cristovao', '04304130170');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55200000', 'Pesqueira', 'Pedra Redonda', '40080313752');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55153065', 'Belo Jardim', 'Bom Conselho', '94512104909');

INSERT INTO endereco_funcionario (cep, cidade, bairro, cpf_p) 
            VALUES ('55130000', 'São Caetano', 'Sem bairro', '22827250349');

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
            VALUES ('50670350', 'Recife', 'Iputinga', '89249155255');

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

INSERT INTO cliente (cpf_p) 
            VALUES ('42937926193');

INSERT INTO cliente (cpf_p) 
            VALUES ('06018888980');

INSERT INTO cliente (cpf_p) 
            VALUES ('34938034867');

INSERT INTO cliente (cpf_p) 
            VALUES ('63469369054');

INSERT INTO cliente (cpf_p) 
            VALUES ('15051468446');

--INSERINDO COMPOSTO

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00001', 90, 30, 'Cloridato de Nafazolina');

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00010', 80, 35, 'Orfenadrina');

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00011', 120, 50, 'Losartan');

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00100', 30, 80, 'Sinvastatina');

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00101', 20, 300, 'Dipirona');

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00110', 240, 30, 'Rivotril');

INSERT INTO composto (id, custo, peso, nome) 
            VALUES ('00111', 250, 25, 'Puran T4');

--INSERINDO RECEITA MEDICA

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('42937926193', 'Kakashi');

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('06018888980', 'Asuma');

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('34938034867', 'Baki');

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('63469369054', 'Kurenai');

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('15051468446', 'Guy');

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('42937926193', 'Chiyo');

INSERT INTO receita_medica (cpf_cliente, medico)
            VALUES ('06018888980', 'Tsunade');

--INSERINDO MEDICAMENTO_MANIPULADO

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00001', '04304130170', '00001');

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00010', '94512104909', '00010');

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00011', '19876905910', '00011');

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00100', '26467070615', '00100');

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00101', '58142191571', '00101');

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00110', '19876905910', '00110');

INSERT INTO medicamento_manipulado (id, cpf_p, id_composto)
            VALUES  ('00111', '04304130170', '00111');

--INSERINDO PRODUTO

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00001', to_date('01/09/20', 'dd/mm/yy'), 300, 'Neosoro', 920, 'Sakura', 'Steve Rogers', '07/10/19 12:34');

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00010', to_date('10/09/20', 'dd/mm/yy'), 350, 'Dorflex', 820, 'Ino', 'Tony Stark', '07/10/19 15:44');

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00011', to_date('20/09/20', 'dd/mm/yy'), 500, 'Losartana', 1220, 'Kankuro', 'Peter Parker', '04/10/19 8:32');

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00100', to_date('30/09/20', 'dd/mm/yy'), 800, 'Sinvastatina', 320, 'Hinata', 'Stephen Strange', '03/10/19 9:15');

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00101', to_date('10/10/20', 'dd/mm/yy'), 3000, 'Neosaldina', 220, 'Rock Lee', 'Matheus Belfort', '02/10/19 11:08');

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00110', to_date('20/10/20', 'dd/mm/yy'), 300, 'Rivotril', 2420, 'Sakura', 'Natasha Romanoff', '02/10/19 15:22');

INSERT into produto (id, validade, peso, nome, preco, usuario, medico, data_hora)
            VALUES ('00111', to_date('30/10/20', 'dd/mm/yy'), 250, 'Puran T4', 2520, 'Ino', 'Thor', '02/10/19 16:38');

--INSERINDO EMISSAO_COMPRA

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('42937926193', '22343283060', '08/10/19 16:38');

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('06018888980', '40080313752', '08/10/19 12:38');

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('34938034867', '22827250349', '08/10/19 11:45');

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('63469369054', '22343283060', '08/10/19 15:24');

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('15051468446', '89249155255', '08/10/19 09:36');

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('15051468446', '21779708149', '08/10/19 08:18');

INSERT into emissao_compra (cpf_c, cpf_b, data_hora)
            VALUES('06018888980', '21779708149', '08/10/19 17:29');

--INSERINDO PROMOCAO

INSERT into promocao (id, percentual, intervalo_de_duracao)
            VALUES ('00001', 20, 5);

INSERT into promocao (id, percentual, intervalo_de_duracao)
            VALUES ('00010', 10, 9);

INSERT into promocao (id, percentual, intervalo_de_duracao)
            VALUES ('00011', 50, 2);

--INSERINDO CLIENTE_BALCONISTA_MEDICAMENTO

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('42937926193', '22343283060', '00001', '04304130170', '00001');

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('06018888980', '40080313752', '00011', '19876905910', '00011');

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('34938034867', '22827250349', '00101', '58142191571', '00101');

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('63469369054', '22343283060', '00111', '04304130170', '00111');

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('15051468446', '89249155255', '00110', '19876905910', '00110');

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('15051468446', '21779708149', '00011', '19876905910', '00011');

INSERT into cliente_balconista_medicamento (cpf_c, cpf_b, id_medicamento, cpf_p_medicamento, id_composto_medicamento)
            VALUES ('06018888980', '21779708149', '00010', '94512104909', '00010');

--INSERINDO DESCONTO

INSERT into desconto (cpf_c, cpf_b, id_medicamento_cbm, cpf_p_medicamento_cbm, id_composto_medicamento_cbm, promocao, valor)
            VALUES ('34938034867', '22827250349', '00101', '58142191571', '00101', '00010', 30);

INSERT into desconto (cpf_c, cpf_b, id_medicamento_cbm, cpf_p_medicamento_cbm, id_composto_medicamento_cbm, promocao, valor)
            VALUES ('15051468446', '21779708149', '00011', '19876905910', '00011', '00011', 20);

INSERT into desconto (cpf_c, cpf_b, id_medicamento_cbm, cpf_p_medicamento_cbm, id_composto_medicamento_cbm, promocao, valor)
            VALUES ('42937926193', '22343283060', '00001', '04304130170', '00001', '00011', 10);

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

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('71527969000163', 'Cloridato de Nafazolina');

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('20270630000193', 'Orfenadrina');

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('86493632000150', 'Losartan');

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('09477207000126', 'Sinvastatina');

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('71527969000163', 'Dipirona');

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('59500684000133', 'Rivotril');

INSERT INTO composto_fornecedor (fornecedor, nome_composto)
            VALUES ('59500684000133', 'Puran T4');

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