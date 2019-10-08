-- função para retorno do auxilio transporte a partir da cidade
CREATE OR REPLACE FUNCTION deslocamento
RETURN VARCHAR2;
IS
    cidade_ deslocamento VARCHAR2(20);
    vale_deslocamento NUMBER;

    CURSOR C IS
        SELECT cidade
        FROM endereco_funcionario;
BEGIN
    OPEN C;
    FETCH C INTO cidade_ deslocamento;
    CLOSE C;

    CASE cidade_ deslocamento
        WHEN 'Recife' THEN
            vale_deslocamento := 5;
        WHEN 'Olinda' THEN
            vale_deslocamento := 7;
        WHEN 'Jaboatão' THEN
            vale_deslocamento := 7;
        WHEN 'Camaragibe' THEN
            vale_deslocamento := 7;
        ELSE
            vale_deslocamento := 9;
    END CASE;

    RETURN vale_deslocamento;
END;