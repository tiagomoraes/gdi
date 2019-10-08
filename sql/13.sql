SELECT p.nome, r.medico
FROM pessoa p, receita_medica r
WHERE r.medico LIKE 'Sa%'
AND p.cpf = r.cpf_cliente;