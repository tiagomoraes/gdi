-- Query para o item 12

SELECT E.cnpj
FROM endereco_fornecedor E
WHERE E.cidade IN ('Brasilia', 'Ipojuca', 'Recife', 'Goiana');