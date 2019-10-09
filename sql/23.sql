SELECT p.usuario
FROM produto p
WHERE p.medico = ANY(SELECT p.medico FROM produto p WHERE p.medico NOT LIKE '%Belfort%' OR p.medico NOT LIKE '%Stark%');