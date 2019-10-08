SELECT p.nome, d.valor
FROM pessoa p, desconto d
WHERE p.nome IN (SELECT p.nome FROM pessoa p WHERE p.nome NOT LIKE 'N%')
AND p.cpf = d.cpf_c