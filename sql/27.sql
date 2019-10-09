SELECT f.data_de_admissao, count(*)
FROM funcionario f, pessoa p
WHERE f.carga_horaria >= 6 
AND f.cpf_p = p.cpf
GROUP BY f.data_de_admissao
HAVING count(*) > 1;