SELECT p.preco, f.nome
FROM produto p , pessoa f
WHERE p.preco IN ( SELECT MAX(preco) FROM produto)
AND f.cpf_p = p.cpf_p

SELECT COUNT(*) 
FROM funcionario f
WHERE f.salario < (SELECT AVG (salario) FROM funcionario)

SELECT c.nome
FROM composto c
WHERE c.peso > ALL (SELECT peso FROM dados_medicamendo)
