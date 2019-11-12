--INSERINDO FARMACEUTICO

INSERT INTO tb_farmaceutico VALUES(
    tp_farmaceutico (
        '04304130170', 
        'Naruto', 
        to_date('10/10/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('630154211')),
        '58142191571', 
        9664, 
        to_date('03/08/02', 'dd/mm/yy'), 
        36, 
        14, 
        tp_endereco(
            '56512360',
            '78',
            'Apt 101',
            'Sao Cristovao',
            'Arcoverde'
        ),
        'Doutor'
    )
);
/

INSERT INTO tb_farmaceutico VALUES(
    tp_farmaceutico (
        '94512104909', 
        'Shikamaru', 
        to_date('22/09/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('767883214')),
        '04304130170', 
        5342, 
        to_date('15/08/02', 'dd/mm/yy'), 
        48, 
        16, 
        tp_endereco(
            '55153065',
            '38',
            'Apt 402',
            'Bom Conselho',
            'Belo Jardim'
        ),
        'Doutorando'
    )
);
/

INSERT INTO tb_farmaceutico VALUES(
    tp_farmaceutico (
        '19876905910', 
        'Gaara', 
        to_date('19/01/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('365154575')),
        '94512104909', 
        7456, 
        to_date('19/08/02', 'dd/mm/yy'), 
        40, 
        17, 
        tp_endereco(
            '55010280',
            '80',
            'Apt 209',
            'Divinopolis',
            'Caruaru'
        ),
        'Mestre'
    )
);
/

INSERT INTO tb_farmaceutico VALUES(
    tp_farmaceutico (
        '26467070615', 
        'Hinata', 
        to_date('27/12/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('335850308')),
        '19876905910', 
        4578, 
        to_date('20/08/02', 'dd/mm/yy'), 
        48, 
        18, 
        tp_endereco(
            '55644510',
            '23',
            'Apt 102',
            'Cruzeiro',
            'Gravatá'
        ),
        'Mestranda'
    )
);
/

INSERT INTO tb_farmaceutico VALUES(
    tp_farmaceutico (
        '58142191571', 
        'Neji', 
        to_date('03/07/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('934619008')),
        '26467070615', 
        999, 
        to_date('26/08/02', 'dd/mm/yy'), 
        40, 
        11, 
        tp_endereco(
            '56512360',
            '73',
            'Apt 502',
            'Sao Cristovao',
            'Arcoverde'
        ),
        'Pos-graduado'
    )
);
/

-- INSERINDO BALCONISTA

INSERT INTO tb_balconista VALUES(
    tp_balconista (
        '40080313752', 
        'Sasuke', 
        to_date('23/07/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('150938350')),
        '89249155255', 
        8543, 
        to_date('10/08/02', 'dd/mm/yy'), 
        40, 
        12, 
        tp_endereco(
            '55200000',
            '29',
            'Apt 201',
            'Pedra Redonda',
            'Pesqueira'
        ),
        79
    )
);
/

INSERT INTO tb_balconista VALUES(
    tp_balconista (
        '22827250349', 
        'Choji', 
        to_date('01/05/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('102727834')),
        '40080313752', 
        4567, 
        to_date('15/08/02', 'dd/mm/yy'), 
        36, 
        11, 
        tp_endereco(
            '55130000',
            '79',
            'Apt 705',
            'Sem bairro',
            'São Caetano'
        ),
        23
    )
);
/

INSERT INTO tb_balconista VALUES(
    tp_balconista (
        '22343283060', 
        'Edmilson Sá', 
        to_date('23/08/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('270543237')),
        '22827250349', 
        3567, 
        to_date('26/08/02', 'dd/mm/yy'), 
        44, 
        10, 
        tp_endereco(
            '55660000',
            '33',
            'Apt 809',
            'Iputinga',
            'Recife'
        ),
        2
    )
);
/

INSERT INTO tb_balconista VALUES(
    tp_balconista (
        '21779708149', 
        'Kiba', 
        to_date('07/07/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('520095708')),
        '22343283060', 
        1356, 
        to_date('30/08/02', 'dd/mm/yy'), 
        36, 
        15, 
        tp_endereco(
            '55602520',
            '81',
            'Apt 508',
            'Imbiribeira',
            'Recife'
        ),
        45
    )
);
/

INSERT INTO tb_balconista VALUES(
    tp_balconista (
        '89249155255', 
        'Tenten', 
        to_date('09/03/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('734743323')),
        '21779708149', 
        8001, 
        to_date('29/08/02', 'dd/mm/yy'), 
        20, 
        12, 
        tp_endereco(
            '50670350',
            '71',
            'Apt 902',
            'Iputinga',
            'Recife'
        ),
        12
    )
);
/

--INSERINDO CLIENTE

INSERT INTO tb_cliente VALUES(
    tp_cliente (
        '42937926193', 
        'Sakura', 
        to_date('28/03/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('585241075'))
    )
);
/

INSERT INTO tb_cliente VALUES(
    tp_cliente (
        '06018888980', 
        'Ino', 
        to_date('23/09/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('969963798'))
    )
);
/

INSERT INTO tb_cliente VALUES(
    tp_cliente (
        '34938034867', 
        'Kankuro', 
        to_date('05/05/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('663669949'))
    )
);
/

INSERT INTO tb_cliente VALUES(
    tp_cliente (
        '63469369054', 
        'Shino', 
        to_date('23/01/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('538961938'))
    )
);
/

INSERT INTO tb_cliente VALUES(
    tp_cliente (
        '15051468446', 
        'Rock Lee', 
        to_date('27/11/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('394191384'))
    )
);
/

--INSERINDO FORNECEDOR

INSERT INTO tb_fornecedor VALUES(
    tp_fornecedor (
        '71527969000163',
        tp_endereco(
            '56310380',
            '450',
            'Bloco 2',
            'Cohab',
            'Petrolina'
        ),
        tp_lista_fones(tp_fone('87','361050482'))
    )
);
/

INSERT INTO tb_fornecedor VALUES(
    tp_fornecedor (
        '09477207000126',
        tp_endereco(
            '55296160',
            '346',
            'Bloco 1',
            'Heliopolis',
            'Garanhuns'
        ),
        tp_lista_fones(tp_fone('368608189'))
    )
);
/

INSERT INTO tb_fornecedor VALUES(
    tp_fornecedor (
        '20270630000193',
        tp_endereco(
            '53402680',
            '28',
            'Bloco 2',
            'Fragoso',
            'Ipojuca'
        ),
        tp_lista_fones(tp_fone('041390277'))
    )
);
/

INSERT INTO tb_fornecedor VALUES(
    tp_fornecedor (
        '59500684000133',
        tp_endereco(
            '54410250',
            '789',
            'Bloco 3',
            'Piedade',
            'Brasilia'
        ),
        tp_lista_fones(tp_fone('401607655'))
    )
);
/

INSERT INTO tb_fornecedor VALUES(
    tp_fornecedor (
        '86493632000150',
        tp_endereco(
            '55192285',
            '456',
            'Bloco 1',
            'Centro',
            'Santa Cruz'
        ),
        tp_lista_fones(tp_fone('87','385156975'))
    )
);
/

--INSERINDO COMPOSTO

INSERT INTO tb_composto VALUES(
    tp_composto (
        '00001',
        90,
        30,
        'Cloridato de Nafazolina',
        (SELECT REF(F) FROM tb_fornecedor F WHERE F.cnpj = '71527969000163')
    )
);
/


INSERT INTO tb_composto VALUES(
    tp_composto (
        '00010',
        80,
        35,
        'Orfenadrina',
        (SELECT REF(F) FROM tb_fornecedor F WHERE F.cnpj = '20270630000193')
    )
);
/


INSERT INTO tb_composto VALUES(
    tp_composto (
        '00011',
        120,
        50,
        'Losartan',
        (SELECT REF(F) FROM tb_fornecedor F WHERE F.cnpj = '86493632000150')
    )
);
/


INSERT INTO tb_composto VALUES(
    tp_composto (
        '00100',
        30,
        80,
        'Sinvastatina',
        (SELECT REF(F) FROM tb_fornecedor F WHERE F.cnpj = '09477207000126')
    )
);
/


INSERT INTO tb_composto VALUES(
    tp_composto (
        '00101',
        20,
        300,
        'Dipirona',
        null
    )
);
/

INSERT INTO tb_composto VALUES(
    tp_composto (
        '00110',
        240,
        30,
        'Rivotril',
        (SELECT REF(F) FROM tb_fornecedor F WHERE F.cnpj = '59500684000133')
    )
);
/

INSERT INTO tb_composto VALUES(
    tp_composto (
        '00111',
        250,
        25,
        'Puran T4',
        (SELECT REF(F) FROM tb_fornecedor F WHERE F.cnpj = '59500684000133')
    )
);
/

--INSERINDO PRODUTO

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00001',
        to_date('01/09/20', 'dd/mm/yy'),
        300,
        'Neosoro',
        920,
        'Sakura',
        'Steve Rogers',
        '07/10/19 12:34'
    )
);
/

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00010',
        to_date('10/09/20', 'dd/mm/yy'),
        350,
        'Dorflex',
        820,
        'Ino',
        'Tony Stark',
        '07/10/19 15:44'
    )
);
/

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00011',
        to_date('20/09/20', 'dd/mm/yy'),
        500,
        'Losartana',
        1220,
        'Kankuro',
        'Peter Parker',
        '04/10/19 8:32'
    )
);
/

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00100',
        to_date('30/09/20', 'dd/mm/yy'),
        800,
        'Sinvastatina',
        320,
        'Hinata',
        'Stephen Strange',
        '03/10/19 9:15'
    )
);
/

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00101',
        to_date('10/10/20', 'dd/mm/yy'),
        3000,
        'Neosaldina',
        220,
        'Rock Lee',
        'Matheus Belfort',
        '02/10/19 11:08'
    )
);
/

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00110',
        to_date('20/10/20', 'dd/mm/yy'),
        300,
        'Rivotril',
        2420,
        'Sakura',
        'Natasha Romanoff',
        '02/10/19 15:22'
    )
);
/

INSERT INTO tb_produto VALUES(
    tp_produto (
        '00111',
        to_date('30/10/20', 'dd/mm/yy'),
        250,
        'Puran T4',
        2520,
        'Ino',
        'Thor',
        '02/10/19 16:38'
    )
);
/

--INSERINDO MEDICAMENTO_MANIPULADO

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00001'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '04304130170'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00001')
    )
);
/

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00010'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '94512104909'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00010')
    )
);
/

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00011'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '19876905910'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00011')
    )
);
/

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00100'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '26467070615'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00100')
    )
);
/

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00101'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '58142191571'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00101')
    )
);
/

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00110'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '19876905910'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00110')
    )
);
/

INSERT INTO tb_medicamento_manipulado VALUES(
    tp_medicamento_manipulado (
        (SELECT REF(P) FROM tb_produto P WHERE P.id = '00111'),
        (SELECT REF(F) FROM tb_farmaceutico F WHERE F.cpf = '04304130170'),
        (SELECT REF(C) FROM tb_composto C WHERE C.id = '00111')
    )
);
/

--INSERINDO PROMOCAO

INSERT INTO tb_promocao VALUES(
    tp_promocao (
        '00001',
        20,
        5
    )
);
/

INSERT INTO tb_promocao VALUES(
    tp_promocao (
        '00010',
        10,
        null
    )
);
/

INSERT INTO tb_promocao VALUES(
    tp_promocao (
        '00011',
        50,
        2
    )
);
/