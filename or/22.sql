SELECT F.numero
FROM tb_farmaceutico FA, table(FA.telefone) F
WHERE FA.cpf = '04304130170';