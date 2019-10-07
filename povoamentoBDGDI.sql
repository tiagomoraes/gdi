--INSERINDO PESSOA

INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES (000, 'Naruto', to_date('10/10/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES (001, 'Sakura', to_date('28/03/00', 'dd/mm/yy'));
INSERT INTO pessoa (cpf, nome, data_de_nascimento) 
            VALUES (010, 'Sasuke', to_date('23/07/00', 'dd/mm/yy'));

--INSERINDO FARMACEUTICO

INSERT INTO farmaceutico (cpf_farm, formacao_academica) 
            VALUES (000, 'Graduacao');

--INSERINDO BALCONISTA

INSERT INTO balconista (cpf_balc, vendas_realizadas) 
            VALUES (001, 30);

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