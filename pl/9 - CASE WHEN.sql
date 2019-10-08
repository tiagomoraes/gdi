-- função para retorno do auxilio transporte a partir da cidade
CREATE OR REPLACE FUNCTION deslocamento(cpf_funcionario funcionario.cpf_p%TYPE)
RETURN VARCHAR2
IS
    cidade_deslocamento VARCHAR2(20);
    vale_deslocamento NUMBER;

    CURSOR c_cidade IS
        SELECT E.cidade
        FROM endereco_funcionario E
        WHERE E.cpf_p = cpf_funcionario;
BEGIN
    OPEN c_cidade;
    FETCH c_cidade INTO cidade_deslocamento;
    CLOSE c_cidade;

    CASE cidade_deslocamento
        WHEN 'Recife' THEN
            vale_deslocamento := 5;
        WHEN 'Moreno' THEN
            vale_deslocamento := 7;
        WHEN 'Caruaru' THEN
            vale_deslocamento := 9;
        WHEN 'Pesqueira' THEN
            vale_deslocamento := 6;
        ELSE
            vale_deslocamento := 12;
    END CASE;

    RETURN vale_deslocamento;
END;