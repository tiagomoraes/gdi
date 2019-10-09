-- criar tabela pessoa | telefone
SELECT pessoa.nome, telefone_pessoa.num
FROM pessoa
FULL OUTER JOIN telefone_pessoa
ON  pessoa.cpf=telefone_pessoa.cpf_p
ORDER BY pessoa.nome;