-- menghitung total lembur
DELIMITER $$

CREATE FUNCTION fn_total_lembur(
    p_jam DECIMAL(5,2),
    p_tarif DECIMAL(12,2)
)
RETURNS DECIMAL(12,2)

DETERMINISTIC

BEGIN

RETURN p_jam * p_tarif;

END$$

DELIMITER ;
SELECT fn_total_lembur(5,50000);