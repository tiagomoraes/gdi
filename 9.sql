-- Remove todos os balconistas que não vendem kk

DELETE FROM balconista
WHERE vendas_realizadas = 0;