-- função para classificação de promoções
DECLARE
    percent_promo NUMBER;
    faixa_promo VARCHAR2(20);

    CURSOR c_promo IS
        SELECT P.percentual
        FROM promocao P;
BEGIN
    OPEN c_promo;
    FETCH c_promo INTO percent_promo;

    WHILE c_promo%FOUND
    LOOP
      FETCH c_promo INTO percent_promo;
      IF percent_promo <= 10 THEN
          faixa_promo := 'Desconto';
      ELSIF percent_promo > 10 and percent_promo <= 50 THEN
          faixa_promo := 'Promoção Incrível';
      ELSIF percent_promo > 50 and percent_promo < 100 THEN
          faixa_promo := 'Saldão';
      ELSE
          faixa_promo := 'Grátis';
      END IF;

      DBMS_OUTPUT.PUT_LINE('Faixa da promoção = ' || faixa_promo);
    END LOOP;

    CLOSE c_promo;

END;
