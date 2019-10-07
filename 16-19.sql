--preco e nome do usuário do produto com maior preco
SELECT p.preco, f.nome
FROM produto p , pessoa f
WHERE p.preco IN ( SELECT MAX(preco) FROM produto)
AND f.nome = p.nome 

--Quantos funcionários ganham abaixo da média salarial
SELECT COUNT(*) 
FROM funcionario f
WHERE f.salario < (SELECT AVG (salario) FROM funcionario)

--Compostos cujo o peso é maior 
SELECT c.nome
FROM composto c
WHERE c.peso > ALL (SELECT peso FROM produto)

--peso e o nome do remedio com menor peso
SELECT p.peso, p.nome
FROM produto p
WHERE p.preco IN ( SELECT MIN(peso) FROM produto)
