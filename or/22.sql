SELECT F.numero
FROM tp_farmaceutico FA, table(FA.telefone) F
WHERE FA.cpf = '04304130170';