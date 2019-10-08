-- função para classificação de promoções
CREATE OR REPLACE FUNCTION faixa_de_promocao
RETURN VARCHAR2;
IS
    percent_promo NUMBER;
    faixa_promo VARCHAR2(20);

    CURSOR C IS
        SELECT percentual
        FROM promocao;
BEGIN
    OPEN C;
    FETCH C INTO percent_promo;
    CLOSE C;

    IF percent_promo <= 10 THEN
        faixa_promo := 'Desconto';
    ELSIF percent_promo > 10 and percent_promo <= 50 THEN
         faixa_promo := 'Promoção Incrível';    
    ELSIF percent_promo > 50 and percent_promo < 100 THEN
        faixa_promo := 'Saldão';
    ELSE
        faixa_promo := 'Grátis';
    END IF;

    RETURN faixa_promo;
END;
