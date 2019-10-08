--preco e nome do produto com maior preco
SELECT p.nome, p.preco
FROM produto p
WHERE p.preco IN ( SELECT MAX(preco) FROM produto);

--Quantos funcionários ganham abaixo da média salarial
SELECT COUNT(*) 
FROM funcionario f
WHERE f.salario < (SELECT AVG (salario) FROM funcionario);

--Compostos cujo o custo é maior que o todos os preços dos produtos
SELECT c.nome, c.custo
FROM composto c
WHERE c.custo > ALL (SELECT preco FROM produto);

--peso e o nome do remedio com menor peso
SELECT  p.nome, p.peso
FROM produto p
WHERE p.peso IN ( SELECT MIN(peso) FROM produto);
