SELECT p.nome, r.medico
FROM pessoa p, receita_medica r
WHERE r.medico LIKE 'Sa%'
AND p.cpf = r.cpf_cliente

SELECT *
FROM promocao p
WHERE p.intervalo_de_duracao IS NULL

