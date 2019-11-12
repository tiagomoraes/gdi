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