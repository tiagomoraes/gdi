CREATE VIEW ranking_balconistas AS 
SELECT p.nome, b.vendas_realizadas
FROM pessoa p, balconista b
WHERE p.cpf = b.cpf_p
ORDER BY b.vendas_realizadas DESC;

SELECT * FROM ranking_balconistas