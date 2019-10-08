SELECT p.nome, m.data_hora
FROM pessoa p 
    INNER JOIN manipulou_medicamento m 
        ON m.cpf_p = p.cpf
    INNER JOIN famaceutico f
        ON f.cpf_p = m.cpf_p
WHERE f.formacao_academica = 'Doutor'