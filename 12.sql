-- Query para o item 12

SELECT Fo.cnpj
FROM endereco_fornecedor E
WHERE E.cidade IN ('Brasilia', 'Ipojuca', 'Recife', 'Goiana');