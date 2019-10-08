-- Incrementa o número de vendas do balconista

UPDATE balconista
SET vendas_realizadas = vendas_realizadas + 1
WHERE cpf_p = '40080313752';