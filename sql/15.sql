SELECT P.nome, P.cpf, EF.cep, F.numero, F.complemento, EF.bairro, EF.cidade
FROM pessoa P
INNER JOIN funcionario F
    ON P.cpf = F.cpf_p
INNER JOIN endereco_funcionario EF
    ON EF.cpf_p = P.cpf
    AND EF.bairro = 'Sao Cristovao';