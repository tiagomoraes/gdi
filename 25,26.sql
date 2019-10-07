SELECT e.data_hora, p.nome
FROM emissao_compra e, pessoa p
WHERE p.cpf = e.cpf_b
ORDER BY e.data_hora DESC 

SELECT *
FROM endereco_funcionario e
WHERE e.cidade = 'Recife'
GROUP BY e.bairro