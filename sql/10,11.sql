-- Query para os itens 10 e 11

SELECT P.nome, P.data_de_nascimento
FROM pessoa P
WHERE P.data_de_nascimento BETWEEN to_date('22/03/2000', 'dd/mm/yyyy')
AND to_date('10/08/2000', 'dd/mm/yyyy');