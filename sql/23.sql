SELECT p.nome
FROM pessoa p, receita_medica r
WHERE r.medico = ANY(SELECT r.medico FROM receita_medica r WHERE r.medico LIKE '%Belfort%')
AND p.cpf = r.cpf_cliente