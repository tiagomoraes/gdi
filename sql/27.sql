SELECT f.data_de_admissao, p.nome
FROM funcionario f, pessoa p
WHERE f.carga_horaria >= 24 
AND f.cpf_p = p.cpf
GROUP BY f.data_de_admissao
HAVING f.data_de_admissao > '12/09/2012'