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