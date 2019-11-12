INSERT INTO tb_farmaceutico VALUES(
    tp_farmaceutico (
        '04304130170', 
        'Naruto', 
        to_date('10/10/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('81630154211')),
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
        to_date('23/07/00', 'dd/mm/yy'), 
        varray_fone(tp_fone('81767883214')),
        '04304130170', 
        5342, 
        to_date('15/08/02', 'dd/mm/yy'), 
        48, 
        16, 
        tp_endereco(
            '55153065',
            '29',
            'Apt 201',
            'Bom Conselho',
            'Belo Jardim'
        ),
        'Doutorando'
    )
);
/